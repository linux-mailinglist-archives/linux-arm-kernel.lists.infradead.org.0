Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383DD141FD6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 20:44:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C1WnvCGqFeC0g9W+f4aVAHo2OsKbG4aDcguVKxJft20=; b=oU69yXvn1Kfd1x
	rs8Pq2K/8/WppCtGi9J2NEQbMs718BLFkeDVgOwYqbsHw48eVGy95NuOKfLRX4J5zb0CXVJWf/vUZ
	gIRW52HgJlAITotdQdPrE7AjmY45vob69meia2rV8qcfhs9cqj3WvkrAIhszW1nCyuvsBHcoinOYh
	n0FIgrPURpf75EyqmHACV4WqFaNliP3HscjMhnM2k8XoUFatFQT8HLXeYq3Infb4JpCm2A1L6ZoRl
	a/A433OYUlfZYqMpkR2XPlXK6t1TQtjGTZcB7FvnNZVdnTDasfrZ05qS4UlJKxk/vTKzZEPTN/HrR
	JgGs4ZyeILWJRgu7BEpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itGUW-0007oT-LL; Sun, 19 Jan 2020 19:44:12 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itGUO-0007nu-1Z
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 19:44:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3z7zbcC6+n0ijVHwdWGh6TJYkP0ZMZNW/76LdpCfz2M=; b=lnGZsRNopbJxj2FTf8JDa48y7
 B1t1nQaMIi9rDCTtt3Hsz8CzHM+mudBxXR5dgMaU7tFbqU3BkIORoSTa1gR+xjukxXR6ijxKCxwEL
 L2pjo0pMQsVD5JGYaJRCvZhSALLq9Xhj2YBQjpFVPHR8sIP1ExLNwyvd0Kze4FRz9WD+4xUyRM0Bb
 soGTxz1ERuZtAmDWnHTVLls9gT+lwIVNVohPYBZBn8S6nh6gNI+f5/2ItaYrdX7Pxs/6MIIXWuFnJ
 lGWb2kVMVYSzD+rj0MovK/ZBYuzr6PIMMZljI73ZUvIgzPYN6PLJ8/JcDfsE1EiRvzOOW16QFRd/V
 pL9hFXS1g==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:40530)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1itGU4-0001ez-Cy; Sun, 19 Jan 2020 19:43:44 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1itGU0-00025u-NL; Sun, 19 Jan 2020 19:43:40 +0000
Date: Sun, 19 Jan 2020 19:43:40 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2] arm64: kvm: fix IDMAP overlap with HYP VA
Message-ID: <20200119194340.GW25745@shell.armlinux.org.uk>
References: <E1ilAiY-0000MA-RG@rmk-PC.armlinux.org.uk>
 <20200119174327.4b2c514e@why>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200119174327.4b2c514e@why>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_114404_248661_B796776C 
X-CRM114-Status: GOOD (  20.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Sun, Jan 19, 2020 at 05:43:27PM +0000, Marc Zyngier wrote:
> On Sat, 28 Dec 2019 11:57:14 +0000
> Russell King <rmk+kernel@armlinux.org.uk> wrote:
> 
> > Booting 5.4 on LX2160A reveals that KVM is non-functional:
> > 
> > kvm: Limiting the IPA size due to kernel Virtual Address limit
> > kvm [1]: IPA Size Limit: 43bits
> > kvm [1]: IDMAP intersecting with HYP VA, unable to continue
> > kvm [1]: error initializing Hyp mode: -22
> > 
> > Debugging shows:
> > 
> > kvm [1]: IDMAP page: 81a26000
> > kvm [1]: HYP VA range: 0:22ffffffff
> > 
> > as RAM is located at:
> > 
> > 80000000-fbdfffff : System RAM
> > 2080000000-237fffffff : System RAM
> > 
> > Comparing this with the same kernel on Armada 8040 shows:
> > 
> > kvm: Limiting the IPA size due to kernel Virtual Address limit
> > kvm [1]: IPA Size Limit: 43bits
> > kvm [1]: IDMAP page: 2a26000
> > kvm [1]: HYP VA range: 4800000000:493fffffff
> > ...
> > kvm [1]: Hyp mode initialized successfully
> > 
> > which indicates that hyp_va_msb is set, and is always set to the
> > opposite value of the idmap page to avoid the overlap. This does not
> > happen with the LX2160A.
> > 
> > Further debugging shows vabits_actual = 39, kva_msb = 38 on LX2160A and
> > kva_msb = 33 on Armada 8040. Looking at the bit layout of the HYP VA,
> > there is still one bit available for hyp_va_msb. Set this bit
> > appropriately. This allows kvm to be functional on the LX2160A, but
> > without any HYP VA randomisation:
> > 
> > kvm: Limiting the IPA size due to kernel Virtual Address limit
> > kvm [1]: IPA Size Limit: 43bits
> > kvm [1]: IDMAP page: 81a24000
> > kvm [1]: HYP VA range: 4000000000:62ffffffff
> > ...
> > kvm [1]: Hyp mode initialized successfully
> > 
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> 
> I've applied this to kvmarm-next with a couple of cleanups, and
> preserving the fallback when the tag is zero (only the mask gets
> applied, without any ROR or ADD).

If only the mask is applied, then it will overlap with the IDMAP
region, and KVM will fail - so I think it would be a good idea in
that case to print something a little more useful, rather than
attributing the KVM failure to an overlap of IDMAP and the KVM
range.

The real problem is there aren't enough VA bits to allow the KVM
range to be adequately placed, rather than the overlap itself.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
