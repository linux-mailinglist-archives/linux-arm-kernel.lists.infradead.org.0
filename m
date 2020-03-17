Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9B0189170
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 23:30:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ifxdr+oG3eDQF3ciUjicxkPQtGvcmdZTVn8e0AqlaUU=; b=iohf38VQXQztpb
	naRxN56hYGRKBV/a/jwKZwRj37BdLzvD7Ppkt7kybG8P1ec3yeTNnWwmvagtpeqLvxoOfpYX93sJ+
	Qiv76zf8gYABPlkFa5xo8fFMzwOMQvMOHZpiDnGb5h8ea2/cTCoLp5PdNnprTDt2NduAHxUzgNqtW
	5H0SfA4uqlAgOHy+BGEKBFTzW1igf4XDhkbRdvJFsd5R7dEXpqBNiRk7rCN/s6BygggRDTfb/ka2W
	57MpIekqVxIPVRZiZONXi11jMFSVf4BNckC9LtAyMgoWbA3eIw0TrwJLlv2s8WoYQKVN6SgiO+5xt
	yKKaFH0Dkf//nVkwftlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEKj3-0008G1-Rb; Tue, 17 Mar 2020 22:30:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEKiv-0008E1-G1
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 22:30:10 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 342BF20409;
 Tue, 17 Mar 2020 22:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584484209;
 bh=o8ZNCMkXZjVnIlo9/wMZey1YXi3Jg07cUnvtiDRqlOI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=N0uISv0MXfN6mCvtsByqJuSFHOxfBHEz2Ww6PSCrBJNmgm0VsEilxLpEjyFfgtj+K
 ptyPhLFLzZsBdWn6S2UTAn72S/WbdqB3YLIjGp5jij2oVW12Z/PNOM8cZjCbC6Rgkr
 ABD173ZaoHIBhzzUF4NDmMo4s5PF4fDIBnwku7Ys=
Date: Tue, 17 Mar 2020 22:30:05 +0000
From: Will Deacon <will@kernel.org>
To: =?iso-8859-1?Q?R=E9mi?= Denis-Courmont <remi@remlab.net>
Subject: Re: [PATCH 1/3] arm64: clean up trampoline vector loads
Message-ID: <20200317223004.GJ20788@willie-the-truck>
References: <20200316124046.103844-1-remi@remlab.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316124046.103844-1-remi@remlab.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_153009_559308_AF4320D7 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 02:40:44PM +0200, R=E9mi Denis-Courmont wrote:
> From: R=E9mi Denis-Courmont <remi.denis.courmont@huawei.com>
> =

> This switches from custom instruction patterns to the regular large
> memory model sequence with ADRP and LDR. In doing so, the ADD
> instruction can be eliminated in the SDEI handler, and the code no
> longer assumes that the trampoline vectors and the vectors address both
> start on a page boundary.
> =

> Signed-off-by: R=E9mi Denis-Courmont <remi.denis.courmont@huawei.com>
> ---
>  arch/arm64/kernel/entry.S | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> =

> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index e5d4e30ee242..24f828739696 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -805,9 +805,9 @@ alternative_else_nop_endif
>  2:
>  	tramp_map_kernel	x30
>  #ifdef CONFIG_RANDOMIZE_BASE
> -	adr	x30, tramp_vectors + PAGE_SIZE
> +	adrp	x30, tramp_vectors + PAGE_SIZE
>  alternative_insn isb, nop, ARM64_WORKAROUND_QCOM_FALKOR_E1003
> -	ldr	x30, [x30]
> +	ldr	x30, [x30, #:lo12:__entry_tramp_data_start]
>  #else
>  	ldr	x30, =3Dvectors
>  #endif
> @@ -953,9 +953,8 @@ SYM_CODE_START(__sdei_asm_entry_trampoline)
>  1:	str	x4, [x1, #(SDEI_EVENT_INTREGS + S_ORIG_ADDR_LIMIT)]
>  =

>  #ifdef CONFIG_RANDOMIZE_BASE
> -	adr	x4, tramp_vectors + PAGE_SIZE
> -	add	x4, x4, #:lo12:__sdei_asm_trampoline_next_handler
> -	ldr	x4, [x4]
> +	adrp	x4, tramp_vectors + PAGE_SIZE
> +	ldr	x4, [x4, #:lo12:__sdei_asm_trampoline_next_handler]
>  #else
>  	ldr	x4, =3D__sdei_asm_handler
>  #endif

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
