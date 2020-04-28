Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AD41BC5BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:50:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=W5o8dcBRGV5gTGJbQjF+mJZ9rZ4FtgcmuQNoSks8pZk=; b=LEY
	b3pePUvOOHVE0cNTLahQYySR8N9CyeypXGOB9ZkvvPHOZBYEySHDjZv4Yc+HGFiL3p4J+tJnr3QPi
	hjqi6lFk5OS2QifcN+FcrMUf3aTNmX6UYxsv4Uw3/HriLfQZzMS123rls4RyqKscjifKktSJs0k/2
	AjgTMGNCSHUR/tJMGTZcT6ltTzPeQ2LmWifMtQ2NlkvFIJvFmfS3/bX5p/E6e0Lm92IXAQs4/jkcj
	CWTYBoYVeD07NROOJM2WA/L1Ya0lLIFD7Plyynvucc/J3/ncEz2u8dALSYS+uEngx/lYIuw+X9yGp
	/+7zFLP5KYIhUZm3KexLnIvlSdWsoRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTQm-0004S1-8d; Tue, 28 Apr 2020 16:50:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTQG-0004Ac-PG
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:49:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CAFE130E;
 Tue, 28 Apr 2020 09:49:26 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 02B953F305;
 Tue, 28 Apr 2020 09:49:25 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	will@kernel.org
Subject: [PATCHv2 0/4]  arm64: vdso: cleanups
Date: Tue, 28 Apr 2020 17:49:17 +0100
Message-Id: <20200428164921.41641-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_094928_883039_74168212 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, vincenzo.frascino@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

While attempting to review an arm64 vdso patch, I noticed some of the existing
code was somewhat baroque, making it harder than necessary to understand and
extend. These patches attempt to improve this by making the code more
consistent and avoiding unnecessary duplication.

The series is based on v5.7-rc3 and can be found in my arm64/vdso-cleanup
branch [1].

Since v1 [2]:
* Drop merged patch
* Fix broken AARCH32/AA32 naming in final two patches

I've build-tested each patch in this series with and without CONFIG_COMPAT_VDSO
selected, atop of defconfig, using the GCC 8.1.0 kernel.org cross toolchains
for arm64 and arm.

Thanks,
Mark.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=arm64/vdso-cleanup

Mark Rutland (4):
  arm64: vdso: remove aarch32_vdso_pages[]
  arm64: vdso: simplify arch_vdso_type ifdeffery
  arm64: vdso: use consistent 'abi' nomenclature
  arm64: vdso: use consistent 'map' nomenclature

 arch/arm64/kernel/vdso.c | 149 +++++++++++++++++++++--------------------------
 1 file changed, 68 insertions(+), 81 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
