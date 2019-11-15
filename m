Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B53FDDDF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 13:30:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yT/4gkRpmd0umR6oe/K5f8dhlxdZ7uLcbuSVnDBz+PE=; b=jRY7wijvu6TKPut+rcvj86tka
	hHv4GETPMmTvxSWtW1RHBjrEaorpG+O+84YfsxE4jVktDp/fe44+O/PixwncjAbL3rRN7aBJrwdTF
	IHU3Lwyz/5Vuqs8cz8UAcwXGmVsMINB5sYGNcE4I0dh7VkyUdXP8UHsujcHya30aGhtSkVnNbHRmT
	u72DoJqGb8Nuhmbe0DKa+zkBYJ9Fc0jxvw3YOR0gki6jQCyD6RqUiX6kMZLCtwaWcRPDcMnxgkSfy
	lIPq2rfBIMce0vN1ZAu9sDFjR9oVxBGyCVoITLXeS2a0r0rUrlg9RJZVl69eI5EIAvUehKT41u9r1
	cgzETh6uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVajv-0006AR-ID; Fri, 15 Nov 2019 12:30:15 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVajd-00069j-QM
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 12:29:59 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iVajP-0004hB-MN; Fri, 15 Nov 2019 13:29:43 +0100
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 2/2] arm64: export =?UTF-8?Q?=5F=5Fhyp=5Fstub=5Fvector?=
 =?UTF-8?Q?s?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 15 Nov 2019 12:29:43 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1573810972-2159-2-git-send-email-peng.fan@nxp.com>
References: <1573810972-2159-1-git-send-email-peng.fan@nxp.com>
 <1573810972-2159-2-git-send-email-peng.fan@nxp.com>
Message-ID: <863d923961a505af307ba679fe3cbb32@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: peng.fan@nxp.com, catalin.marinas@arm.com, will@kernel.org,
 alice.guo@nxp.com, jan.kiszka@siemens.com, linux-kernel@vger.kernel.org,
 ralf.ramsauer@oth-regensburg.de, james.morse@arm.com, allison@lohutok.net,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_042958_000628_47743B46 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alice Guo <alice.guo@nxp.com>, catalin.marinas@arm.com,
 ralf.ramsauer@oth-regensburg.de, linux-kernel@vger.kernel.org,
 james.morse@arm.com, linux-arm-kernel@lists.infradead.org,
 jan.kiszka@siemens.com, tglx@linutronix.de, will@kernel.org,
 allison@lohutok.net, dl-linux-imx <linux-imx@nxp.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-15 09:45, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
>
> External hypervisors, like Jailhouse, need this address when they are
> deactivated, in order to restore original state.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm64/include/asm/virt.h | 2 ++
>  arch/arm64/kernel/hyp-stub.S  | 1 +
>  2 files changed, 3 insertions(+)
>
> diff --git a/arch/arm64/include/asm/virt.h 
> b/arch/arm64/include/asm/virt.h
> index 0958ed6191aa..b1b48353e3b3 100644
> --- a/arch/arm64/include/asm/virt.h
> +++ b/arch/arm64/include/asm/virt.h
> @@ -62,6 +62,8 @@
>   */
>  extern u32 __boot_cpu_mode[2];
>
> +extern char __hyp_stub_vectors[];
> +
>  void __hyp_set_vectors(phys_addr_t phys_vector_base);
>  void __hyp_reset_vectors(void);
>
> diff --git a/arch/arm64/kernel/hyp-stub.S 
> b/arch/arm64/kernel/hyp-stub.S
> index f17af9a39562..22b728fb14bd 100644
> --- a/arch/arm64/kernel/hyp-stub.S
> +++ b/arch/arm64/kernel/hyp-stub.S
> @@ -38,6 +38,7 @@ ENTRY(__hyp_stub_vectors)
>  	ventry	el1_fiq_invalid			// FIQ 32-bit EL1
>  	ventry	el1_error_invalid		// Error 32-bit EL1
>  ENDPROC(__hyp_stub_vectors)
> +EXPORT_SYMBOL(__hyp_stub_vectors);

NAK.

There is no in-tree users of this. If you're using jailhouse, you're
already patching your kernel, and you can carry this. Mainline doesn't
need this at all.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
