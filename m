Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A403F7A637
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 12:48:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=marTa/xUuOUIGkEvhoOytyMZX83Btvm+PSeZJyaIpM4=; b=WwWoPsNTlndjUq
	3GHjmVtUl8wBpewrfh21CT7YJoiAEMuLkEBWBG+pDfMCo3JMFZoVMTVKz3ugkfFtLuuAb9gwBQuvf
	KsWx7uq1qFpLdT6nPk7xXLUbqxZMA0WD7WSBeXaCX90SP0tJoHroEa+LI+1FqgRHfSKg0ffoiTudc
	GhaKtwo4SY8y8gsQ6gWKTG1t1lkOaAH999BikEzBC7M/FIyuzR6nAn30Vy5SwwrkFR3Lhfs9ewhUA
	0mFIuy5O58QXOWThpYCgvEbuxsw93OUiNdHOrNFj3uh3tWJ/v8GNLrUXKj0wrQy4v+1v2rlsb0Zwe
	aEsmGprE1SLPsLl3ybfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsPfn-0007ep-2W; Tue, 30 Jul 2019 10:48:03 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsPfg-0007dq-Gv
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 10:47:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xd8aJIuQ1HAMcxnsxnnuGT/Zwd/6CK6dCjhjivBsWNs=; b=jAcfv0YI5u+CH+N2xxZBD077X
 WgPpgKKibt8++BpMBtcf9BAXQ8oFUcuoDC70jjU39pPG3tid3H8ga+UqhyTX39kFQot/+W5SGRhtZ
 U7sgVOW0uVo/V0OOkQv7kWAwNOVvLl33RGXZd+JCPvhlBidCwWCnr/w+Ah9SsPNtPJfD7wSraJnyH
 uLrMbjSgdsAR23fZAMkWTULEojIblZ4vIuBsOCCD/w8jwAvSZ0X1UzMIbKoLvaw6mCE5qwveg7Suv
 LcB73+GkpPPNpiWRyUyeWmoa6OthCKPb75BAvAyurJrXBULiJdEdaphLttxaPnNZuEiRri6aKNmLw
 3EEIbVnxQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:46346)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hsPfY-0004j6-DF; Tue, 30 Jul 2019 11:47:48 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hsPfW-00029f-Ts; Tue, 30 Jul 2019 11:47:46 +0100
Date: Tue, 30 Jul 2019 11:47:46 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Luis Araneda <luaraneda@gmail.com>
Subject: Re: [RFC PATCH] ARM: zynq: Use memcpy_toio instead of memcpy on smp
 bring-up
Message-ID: <20190730104746.GA1330@shell.armlinux.org.uk>
References: <20190730044326.1805-1-luaraneda@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730044326.1805-1-luaraneda@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_034756_597732_42C4FEC0 
X-CRM114-Status: GOOD (  22.42  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: michal.simek@xilinx.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 12:43:26AM -0400, Luis Araneda wrote:
> This fixes a kernel panic (read overflow) on memcpy when
> FORTIFY_SOURCE is enabled.
> 
> The computed size of memcpy args are:
> - p_size (dst): 4294967295 = (size_t) -1
> - q_size (src): 1
> - size (len): 8
> 
> Additionally, the memory is marked as __iomem, so one of
> the memcpy_* functions should be used for read/write
> 
> Signed-off-by: Luis Araneda <luaraneda@gmail.com>
> ---
> 
> For anyone trying to reproduce / debug this, it panics
> before the console has any output.
> I used JTAG to find the panic, but I had to comment-out
> the call to "zynq_slcr_cpu_stop" as it stops the JTAG
> interface and the connection is dropped, at least with OpenOCD.
> 
> I run-tested this on a Digilent Zybo Z7 board
> ---
>  arch/arm/mach-zynq/platsmp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-zynq/platsmp.c b/arch/arm/mach-zynq/platsmp.c
> index a7cfe07156f4..407abade7336 100644
> --- a/arch/arm/mach-zynq/platsmp.c
> +++ b/arch/arm/mach-zynq/platsmp.c
> @@ -57,7 +57,7 @@ int zynq_cpun_start(u32 address, int cpu)
>  			* 0x4: Jump by mov instruction
>  			* 0x8: Jumping address
>  			*/
> -			memcpy((__force void *)zero, &zynq_secondary_trampoline,
> +			memcpy_toio(zero, &zynq_secondary_trampoline,
>  							trampoline_size);
>  			writel(address, zero + trampoline_size);

I'm not convinced that this is correct.  It looks like
zynq_secondary_trampoline could be either ARM or Thumb code - there is
no .arm directive before it.  If it's ARM code, then this is fine.  If
Thumb code, then zynq_secondary_trampoline will be offset by one, and
we will miss copying the first byte of code.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
