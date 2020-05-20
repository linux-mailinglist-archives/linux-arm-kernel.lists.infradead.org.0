Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C83B1DC15E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 23:29:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GVPEo2BBynYOlTOlcLJOPwYWqRLsoOlxFAXjcLAcXrA=; b=RKnY7/9p4k0k8c
	p0Rj1+RBCBu/RV/xV5ox+oSS8ORRdZN8au1JRiYsF6/u5RaABiwkE9D4+DbL8S0/vG8u4bdq6JYjv
	oGMgVRvPpB/jG0pF2Deu77JF94Ieu5K+gjANWC05UTMgA9AeL1hU9G9hPVu/1wDfZUdPvxPAQ1Vi0
	1kHpu9lEJ4bSL6RUPyhxc95WRxr7iEtTKDXus6tL8o6AJ/yYgIdUArwu8RqTzfbUrgPkxAu7XhVx6
	aZzGH5PnebrW/3cqczdZzttx9MDKVKqd2jrTJeINC8lMuYi4FLJKh5ryS3i4FiCUA/T+CbDbmDHKB
	SaJInqK4tMNKuFKq/8Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbWHG-0001Lu-CO; Wed, 20 May 2020 21:29:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbWH6-0001Ky-FW
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 21:29:17 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 63703207F9;
 Wed, 20 May 2020 21:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590010156;
 bh=tNeHg18J8KpIUbnkvwoUOTfv+q14yZF+X4qaszsqdL4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cuBGoPqfHeYx1FqXipdaSEJ1UDMiiyPZiH2iuG7zGzREsRYHjkswEcFbv78fo9BS/
 Fyc5ytsi8JMe/DclVaIrMRT4ND0qgnWV66V6mV7K1O0G/mzgvfj59V/IRK32zIdvOP
 ZI+bn1f9Q0z9WAvWecyPY697SYlsWEbzUqw7DhfU=
From: Will Deacon <will@kernel.org>
To: Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 0/7] firmware: smccc: Add basic SMCCC v1.2 +
 ARCH_SOC_ID support
Date: Wed, 20 May 2020 22:29:10 +0100
Message-Id: <158999823818.135150.13263761266508812198.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518091222.27467-1-sudeep.holla@arm.com>
References: <20200518091222.27467-1-sudeep.holla@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_142916_542639_4002D561 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>, harb@amperecomputing.com,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 18 May 2020 10:12:15 +0100, Sudeep Holla wrote:
> This patch series adds support for SMCCCv1.2 ARCH_SOC_ID.
> This doesn't add other changes added in SMCCC v1.2 yet. They will
> follow these soon along with its first user SPCI/PSA-FF.
> 
> This is tested using upstream TF-A + the patch[3] fixing the original
> implementation there.
> 
> [...]

Applied to arm64 (for-next/smccc), thanks!

[1/7] firmware: smccc: Add HAVE_ARM_SMCCC_DISCOVERY to identify SMCCC v1.1 and above
      https://git.kernel.org/arm64/c/e5bfb21d98b6
[2/7] firmware: smccc: Update link to latest SMCCC specification
      https://git.kernel.org/arm64/c/15c704ab6244
[3/7] firmware: smccc: Add the definition for SMCCCv1.2 version/error codes
      https://git.kernel.org/arm64/c/0441bfe7f00a
[4/7] firmware: smccc: Drop smccc_version enum and use ARM_SMCCC_VERSION_1_x instead
      https://git.kernel.org/arm64/c/ad5a57dfe434
[5/7] firmware: smccc: Refactor SMCCC specific bits into separate file
      https://git.kernel.org/arm64/c/f2ae97062a48
[6/7] firmware: smccc: Add function to fetch SMCCC version
      https://git.kernel.org/arm64/c/a4fb17465182
[7/7] firmware: smccc: Add ARCH_SOC_ID support
      https://git.kernel.org/arm64/c/ce6488f0ce09

Arnd -- Sudeep's reply to you about the sysfs groups seemed reasonable to me,
but please shout if you'd rather I dropped this in order to pursue an
alternative approach.

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
