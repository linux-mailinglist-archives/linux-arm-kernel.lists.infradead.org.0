Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3983913C5FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:29:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GdM63AP7iDQE1i1pIJMSQQjxEvei/PdtbwSZI+UXSZk=; b=ZODIEtFa5F+0Em
	oXb3DTLGFjytfQx93fABwYqk4Cz93HiKRIH6F4B9CPuQAvxN0HJaRocwiVGMpxykL9nqSwrQpDC91
	WL3qHgBB2+BbcDmdZUvX58VCxCAXbN6fXUQ0yOi8SKWaVYmDjbZStZfeaFUEdQdZwAGghfxFwH94l
	pM3QUGFZq5h86jMlKJwjhb/4UVmIEf4RQNldoEz/lqkkeGnyu66F3u08AZ3gsWv+HfnmrPBCJwZOy
	8MMB3S0qH38bqFceB7YIpbZD6tEG7WGCBjoCIQMZ0skvQK2YBJVRWPZyA8J85hB8WZ70XWE9Q3XJO
	+bGbXJOp+F9xqV8+xcqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjfe-0007Y4-37; Wed, 15 Jan 2020 14:29:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjfP-0007X1-TA
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 14:29:10 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 18F302073A;
 Wed, 15 Jan 2020 14:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579098547;
 bh=Hv+akzynYYjXAjpTmIgZOtomlLCLx3UqVKzVrZIUuzY=;
 h=From:To:Cc:Subject:Date:From;
 b=lfcS5WmT/wcXX/3llrbC04k9gvRw3g/Aqui84iscxn//zxZfnDiEgdK0r6a27+VPj
 J21hzli8F3s7Aj9jevPM49XPbSejPWnGd1n8y9wICq22SI1yTOgejQa15GjcxYkRIy
 vHGd0M/xYymmB2Ylpt324BElygQfO8dkeHSjLA70=
From: Will Deacon <will@kernel.org>
To: broonie@kernel.org
Subject: [PATCH 0/2] A couple of cleanups on top of for-next/e0pd
Date: Wed, 15 Jan 2020 14:28:58 +0000
Message-Id: <20200115142900.28976-1-will@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_062907_961610_524E4455 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kernel-team@android.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Marc Zyngier <maz@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

I've queued the E0PD patches for 5.6 (thanks!), but in reading them a
final time I noticed a couple of cleanups that I think we can make to
kaslr_requires_kpti(). I don't have a TX1 to test them on, but I think
the logic is sound.

Please take a look, as I'd like to queue these on top.

Thanks.

Will

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Marc Zyngier <maz@kernel.org>

--->8

Will Deacon (2):
  arm64: Simplify early check for broken TX1 when KASLR is enabled
  arm64: Use register field helper in kaslr_requires_kpti()

 arch/arm64/kernel/cpufeature.c | 21 +++++++--------------
 1 file changed, 7 insertions(+), 14 deletions(-)

-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
