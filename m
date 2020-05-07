Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9971C84A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 10:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XwOOoWxXT0j98F8nC5IP9DQiqklu8bwUkcc92OaeTRs=; b=B1yjBZ1ti4MpNy
	MjOJQu/YW3/sBRy38iferRXZsjNaK1ZYbqz2gJYsMeIXjzxFyqvp6CRUbI/6XHpn/0sXSwxIrQL/l
	OT5vVQU6OaYiWG97hYiowz7TN91V4qU3mtAQw4CWQlA8nBN5cvBfsDbo2JgFcs3CznsQRNEoMVkZr
	A/gJiJkDePr68GYE6t3mKh7KDPfnxLpmwCmYL6Dnn+hzCSHoEce/aTJ178zoIfM43OyTCLV/FTFpm
	swnZenScuAxLxHW+bBAriwnuBGVio3Qz9RiiEdQa+upjtL5gda2i9gW6dG1wZz7gcmIcI1GJb4TQX
	I6lrdhC/C0luJXqOHdQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWblS-0007nI-5g; Thu, 07 May 2020 08:20:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWbl9-0007ak-4a
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 08:20:00 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 221B820753;
 Thu,  7 May 2020 08:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588839598;
 bh=3gbWMUd5CO+cTYDj/4z9OV5jX0t6dXsMaqIYbZgFlpY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=lr7yTnWBq42d7rxJ0Gg4BdkKXNv6Fg/DgGgRnd3b42jDQGDShOtmC7lD2OobaaUU8
 RNP+Dy569psqAbJSuxu3H6OZ+NCqxM9pBPDRiOKYPimNF5oGDEUW64fdrozNhLPS6i
 QLyB/mQc66gTJWgMbSh8urRrtf24s35UG9G+HgHA=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jWbl6-00ACFm-4L; Thu, 07 May 2020 09:19:56 +0100
Date: Thu, 7 May 2020 09:19:53 +0100
From: Marc Zyngier <maz@kernel.org>
To: Luke Nelson <lukenels@cs.washington.edu>
Subject: Re: [RFC PATCH bpf-next 1/3] arm64: insn: Fix two bugs in encoding
 32-bit logical immediates
Message-ID: <20200507091953.70505638@why>
In-Reply-To: <20200507010504.26352-2-luke.r.nels@gmail.com>
References: <20200507010504.26352-1-luke.r.nels@gmail.com>
 <20200507010504.26352-2-luke.r.nels@gmail.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: lukenels@cs.washington.edu, bpf@vger.kernel.org,
 luke.r.nels@gmail.com, xi.wang@gmail.com, catalin.marinas@arm.com,
 will@kernel.org, daniel@iogearbox.net, ast@kernel.org, zlim.lnx@gmail.com,
 kafai@fb.com, songliubraving@fb.com, yhs@fb.com, andriin@fb.com,
 john.fastabend@gmail.com, kpsingh@chromium.org, mark.rutland@arm.com,
 gregkh@linuxfoundation.org, tglx@linutronix.de, christoffer.dall@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, clang-built-linux@googlegroups.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_011959_224930_8BDA951E 
X-CRM114-Status: GOOD (  33.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Will Deacon <will@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>, clang-built-linux@googlegroups.com,
 Zi Shen Lim <zlim.lnx@gmail.com>, Yonghong Song <yhs@fb.com>,
 Andrii Nakryiko <andriin@fb.com>, Xi Wang <xi.wang@gmail.com>,
 Luke Nelson <luke.r.nels@gmail.com>, KP Singh <kpsingh@chromium.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, bpf@vger.kernel.org,
 Martin KaFai Lau <kafai@fb.com>,
 Christoffer Dall <christoffer.dall@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Luke,

Thanks a lot for nailing these bugs.

On Wed,  6 May 2020 18:05:01 -0700
Luke Nelson <lukenels@cs.washington.edu> wrote:

> This patch fixes two issues present in the current function for encoding
> arm64 logical immediates when using the 32-bit variants of instructions.
> 
> First, the code does not correctly reject an all-ones 32-bit immediate
> and returns an undefined instruction encoding, which can crash the kernel.

You make it sound more dramatic than it needs to be! ;-) As you pointed
out below, nothing in the kernel calls this code to encode a 32bit
immediate, so triggering a crash is not possible (unless you manage to
exploit something else to call into this code). It definitely needs
fixing though!

> The fix is to add a check for this case.
> 
> Second, the code incorrectly rejects some 32-bit immediates that are
> actually encodable as logical immediates. The root cause is that the code
> uses a default mask of 64-bit all-ones, even for 32-bit immediates. This
> causes an issue later on when the mask is used to fill the top bits of
> the immediate with ones, shown here:
> 
>   /*
>    * Pattern: 0..01..10..01..1
>    *
>    * Fill the unused top bits with ones, and check if
>    * the result is a valid immediate (all ones with a
>    * contiguous ranges of zeroes).
>    */
>   imm |= ~mask;
>   if (!range_of_ones(~imm))
>           return AARCH64_BREAK_FAULT;
> 
> To see the problem, consider an immediate of the form 0..01..10..01..1,
> where the upper 32 bits are zero, such as 0x80000001. The code checks
> if ~(imm | ~mask) contains a range of ones: the incorrect mask yields
> 1..10..01..10..0, which fails the check; the correct mask yields
> 0..01..10..0, which succeeds.
> 
> The fix is to use a 32-bit all-ones default mask for 32-bit immediates.

Paging this thing back in is really hard (I only had one coffee, more
needed). Yes, I see what you mean. Duh! I think this only happens if
mask hasn't been adjusted by the "pattern spotting" code the first place
though.

> 
> Currently, the only user of this function is in
> arch/arm64/kvm/va_layout.c, which uses 64-bit immediates and won't
> trigger these bugs.
> 
> We tested the new code against llvm-mc with all 1,302 encodable 32-bit
> logical immediates and all 5,334 encodable 64-bit logical immediates.

That, on its own, is awesome information. Do you have any pointer on
how to set this up?

> 
> Fixes: ef3935eeebff ("arm64: insn: Add encoder for bitwise operations using literals")
> Co-developed-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
> ---
>  arch/arm64/kernel/insn.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
> index 4a9e773a177f..42fad79546bb 100644
> --- a/arch/arm64/kernel/insn.c
> +++ b/arch/arm64/kernel/insn.c
> @@ -1535,7 +1535,7 @@ static u32 aarch64_encode_immediate(u64 imm,
>  				    u32 insn)
>  {
>  	unsigned int immr, imms, n, ones, ror, esz, tmp;
> -	u64 mask = ~0UL;
> +	u64 mask;
>  
>  	/* Can't encode full zeroes or full ones */
>  	if (!imm || !~imm)
> @@ -1543,13 +1543,15 @@ static u32 aarch64_encode_immediate(u64 imm,
>  
>  	switch (variant) {
>  	case AARCH64_INSN_VARIANT_32BIT:
> -		if (upper_32_bits(imm))
> +		if (upper_32_bits(imm) || imm == 0xffffffffUL)

nit: I don't like the fact that this create a small dissymmetry in the
way we check things (we start by checking !~imm, which is not relevant
to 32bit constants).

>  			return AARCH64_BREAK_FAULT;
>  		esz = 32;
> +		mask = 0xffffffffUL;
>  		break;
>  	case AARCH64_INSN_VARIANT_64BIT:
>  		insn |= AARCH64_INSN_SF_BIT;
>  		esz = 64;
> +		mask = ~0UL;

I'd rather we generate the mask in a programmatic way, which is pretty
easy to do since we have the initial element size.

>  		break;
>  	default:
>  		pr_err("%s: unknown variant encoding %d\n", __func__, variant);

To account for the above remarks, I came up with the following patch:

diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index 4a9e773a177f..422bf9a79ed6 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -1535,11 +1535,7 @@ static u32 aarch64_encode_immediate(u64 imm,
 				    u32 insn)
 {
 	unsigned int immr, imms, n, ones, ror, esz, tmp;
-	u64 mask = ~0UL;
-
-	/* Can't encode full zeroes or full ones */
-	if (!imm || !~imm)
-		return AARCH64_BREAK_FAULT;
+	u64 mask;
 
 	switch (variant) {
 	case AARCH64_INSN_VARIANT_32BIT:
@@ -1556,6 +1552,11 @@ static u32 aarch64_encode_immediate(u64 imm,
 		return AARCH64_BREAK_FAULT;
 	}
 
+	/* Can't encode full zeroes or full ones */
+	mask = GENMASK_ULL(esz - 1, 0);
+	if (!imm || !(~imm & mask))
+		return AARCH64_BREAK_FAULT;
+
 	/*
 	 * Inverse of Replicate(). Try to spot a repeating pattern
 	 * with a pow2 stride.

which is of course completely untested (it does compile though).

Thoughts?

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
