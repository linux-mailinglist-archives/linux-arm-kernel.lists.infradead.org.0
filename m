Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFED141F39
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 18:43:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jtPYemx6Awqy9i6c9n4mkIeFSK1yqTw9Dnqxd/S62dY=; b=iNzbACXXspmXQ7
	tJ+WtQoPOG24VMSLraNKVDRos0a5h86zgnMIFvUaZBUZL5OliOU4AJPEiqgN7BY7nbdaynb4vRFmx
	aaYHpLpDQ1NQsJob2Gu6uyie1QPx79KIUPpX0BH8WXiOlmZov5aOQla00vtv5P9mE6WeEyrng3nyz
	YuXEryB+Fz4rq7CmzRDWqjmCAZHxMJ0m5FvzPO3vZFE2v0gwNowsnp+f7Vn0Voed9bPbPVkDiQxb1
	IxiD/ISKcnB5pvhjo9qJ3QXP+pinDz+TdAL6ZrtMFrFE/GdRb2uhSWyBC480PL3EXPgOQXFJTSMWK
	Md3ZLFZ/ipRonJDLQvgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itEbs-0003KY-8V; Sun, 19 Jan 2020 17:43:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itEbk-0003K6-A4
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 17:43:34 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 01D4320674;
 Sun, 19 Jan 2020 17:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579455811;
 bh=R0N0qdRvwA0CSQsT/alDM97aT/J/0dgnyJzGEbfyDhM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=RmLd1ry7lvMf/1dyH4I/wdco57Za4aj+As791DgPUn2DNnmdDV+6tnrt+HS+AWocT
 uTjnpfDYIuUpZ8yHToVG8n4Aa32cyZe/DIZAYjNfuJKmSQ91ADCQBXVcWJ04j5UBQd
 wDW5WgEHkPIau9KIyF3uJY1j3D3QKFsI4h0oKyeo=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1itEbg-0004D7-P4; Sun, 19 Jan 2020 17:43:28 +0000
Date: Sun, 19 Jan 2020 17:43:27 +0000
From: Marc Zyngier <maz@kernel.org>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH v2] arm64: kvm: fix IDMAP overlap with HYP VA
Message-ID: <20200119174327.4b2c514e@why>
In-Reply-To: <E1ilAiY-0000MA-RG@rmk-PC.armlinux.org.uk>
References: <E1ilAiY-0000MA-RG@rmk-PC.armlinux.org.uk>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: rmk+kernel@armlinux.org.uk, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_094332_369959_FC27ADA9 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 28 Dec 2019 11:57:14 +0000
Russell King <rmk+kernel@armlinux.org.uk> wrote:

> Booting 5.4 on LX2160A reveals that KVM is non-functional:
> 
> kvm: Limiting the IPA size due to kernel Virtual Address limit
> kvm [1]: IPA Size Limit: 43bits
> kvm [1]: IDMAP intersecting with HYP VA, unable to continue
> kvm [1]: error initializing Hyp mode: -22
> 
> Debugging shows:
> 
> kvm [1]: IDMAP page: 81a26000
> kvm [1]: HYP VA range: 0:22ffffffff
> 
> as RAM is located at:
> 
> 80000000-fbdfffff : System RAM
> 2080000000-237fffffff : System RAM
> 
> Comparing this with the same kernel on Armada 8040 shows:
> 
> kvm: Limiting the IPA size due to kernel Virtual Address limit
> kvm [1]: IPA Size Limit: 43bits
> kvm [1]: IDMAP page: 2a26000
> kvm [1]: HYP VA range: 4800000000:493fffffff
> ...
> kvm [1]: Hyp mode initialized successfully
> 
> which indicates that hyp_va_msb is set, and is always set to the
> opposite value of the idmap page to avoid the overlap. This does not
> happen with the LX2160A.
> 
> Further debugging shows vabits_actual = 39, kva_msb = 38 on LX2160A and
> kva_msb = 33 on Armada 8040. Looking at the bit layout of the HYP VA,
> there is still one bit available for hyp_va_msb. Set this bit
> appropriately. This allows kvm to be functional on the LX2160A, but
> without any HYP VA randomisation:
> 
> kvm: Limiting the IPA size due to kernel Virtual Address limit
> kvm [1]: IPA Size Limit: 43bits
> kvm [1]: IDMAP page: 81a24000
> kvm [1]: HYP VA range: 4000000000:62ffffffff
> ...
> kvm [1]: Hyp mode initialized successfully
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

I've applied this to kvmarm-next with a couple of cleanups, and
preserving the fallback when the tag is zero (only the mask gets
applied, without any ROR or ADD).

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
