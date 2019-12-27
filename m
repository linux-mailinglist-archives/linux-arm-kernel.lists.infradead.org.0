Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE88D12B462
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 12:57:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0IOI0PaJM6b0VqhyVERyrkfDC2WMnFRWKo3aTfM1g8M=; b=IVeYvcjlYMwqip
	qM9FJz7uj3xlUMu0jKMkhBRJLJxG7mawOX+WaDY5g+PfH9b7Uvwt1/axBX9KtdU3TQOU1RubCxpAe
	GKjEB/Im2ShPX4GZ5QXQog/xmSduERvpDEaRJiU+YODvFTeu7Z55IQ06Fum7FoU9KdSKRxBMZYdMd
	YimpCQQLxys0JFj3SKoYfXm5s9YyeNThB0oEuAWzRNwhYR+S6K1q4sDGtSXPUbZXScuE6y6UigA6i
	vCeZLxmn8cF/cGWJI8SLt7FZe7eZK+drJqlSvhxCYtcKVppwhLy25aLqDKHt7Mhd5m9gGUf1kVtwj
	ZcXMqCTMkOP61ITT/QXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikoEh-0003eP-Fz; Fri, 27 Dec 2019 11:56:55 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikoEV-0002Mc-Cy
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 11:56:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qr9miIs9WQW7vqo7ItdbjVSYBex2fP4MFqWTQon6uAA=; b=ut98aeOQ/+KejD3vxtUmeRNX+
 6i2yAO4HsvmHGdvzZpUy/uEDnb2yJBImJ3MSj2l0I9lmlmiKXD1l2EGyxQ6J8Ek32j4WLU27Ttuhs
 epBInAO6FZY92XdHKGYh0G/k9boHRjreVFiKZyLnTzIIWkMgQW9VFxAWlQL23QAUVgLpBGmwAFncS
 9IK/0xCqcnu98/f4RvcDNBIxqHJSIrrbEYPfPJjcZFJss311bcRJBY022/+PjVhFz7CXCCX5kiYMR
 2V6FjcPXLRnYPchOG1wJZFoe6DvI++1p+Dp6qdvIHyn9N4BLkhVvg79A2NSzNwHs+CuUUqIJn05oa
 W6uXUY0Fw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:46962)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ikoCM-0001BR-E3; Fri, 27 Dec 2019 11:54:30 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ikoCJ-0004ee-VR; Fri, 27 Dec 2019 11:54:27 +0000
Date: Fri, 27 Dec 2019 11:54:27 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] arm64: kvm: fix IDMAP overlap with HYP VA
Message-ID: <20191227115427.GV25745@shell.armlinux.org.uk>
References: <E1iko5f-0000z2-Tx@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1iko5f-0000z2-Tx@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_035643_440800_F0249B9F 
X-CRM114-Status: GOOD (  25.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Fri, Dec 27, 2019 at 11:47:35AM +0000, Russell King wrote:
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
> ---

I assume it's not possible for kva_msb >= vabits_actual ?

>  arch/arm64/kvm/va_layout.c | 22 +++++++++++++++-------
>  1 file changed, 15 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/kvm/va_layout.c b/arch/arm64/kvm/va_layout.c
> index 2cf7d4b606c3..83f8b3f51cf4 100644
> --- a/arch/arm64/kvm/va_layout.c
> +++ b/arch/arm64/kvm/va_layout.c
> @@ -22,6 +22,17 @@ static u8 tag_lsb;
>  static u64 tag_val;
>  static u64 va_mask;
>  
> +/*
> + * We want to generate a hyp VA with the following format:
> + *
> + *  63 ... V |     V-1    | V-2 .. tag_lsb | tag_lsb - 1 .. 0
> + *  ---------------------------------------------------------
> + * | 0000000 | hyp_va_msb |    random tag  |  kern linear VA |
> + *
> + * which does not conflict with the idmap regions. This means that hyp_va_msb
> + * must always be present. Luckily, when kva_msb == (vabits_actual - 1) we
> + * still have one bit for this, but no bits for the random tag.
> + */
>  static void compute_layout(void)
>  {
>  	phys_addr_t idmap_addr = __pa_symbol(__hyp_idmap_text_start);
> @@ -39,19 +50,16 @@ static void compute_layout(void)
>  		/*
>  		 * No space in the address, let's compute the mask so
>  		 * that it covers (vabits_actual - 1) bits, and the region
> -		 * bit. The tag stays set to zero.
> +		 * bit.
>  		 */
> -		va_mask  = BIT(vabits_actual - 1) - 1;
> -		va_mask |= hyp_va_msb;
> +		tag_lsb = kva_msb;
> +		va_mask = BIT(vabits_actual - 1) - 1;
> +		tag_val = hyp_va_msb >> tag_lsb;
>  	} else {
>  		/*
>  		 * We do have some free bits to insert a random tag.
>  		 * Hyp VAs are now created from kernel linear map VAs
>  		 * using the following formula (with V == vabits_actual):
> -		 *
> -		 *  63 ... V |     V-1    | V-2 .. tag_lsb | tag_lsb - 1 .. 0
> -		 *  ---------------------------------------------------------
> -		 * | 0000000 | hyp_va_msb |    random tag  |  kern linear VA |
>  		 */
>  		tag_lsb = kva_msb;
>  		va_mask = GENMASK_ULL(tag_lsb - 1, 0);
> -- 
> 2.20.1
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
