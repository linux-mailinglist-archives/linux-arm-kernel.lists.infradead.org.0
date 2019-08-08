Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4602585C7F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 10:09:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YTZTwVRU50uW3R9sro3cDYTcp7I73iSCAo46BzbgQTw=; b=NdQ2KTtQxcsQPF
	7TcuU6cf/8Nngnne1U8UkR8bwF+NXwsYmBZFvaSUGDuUyy2NB8+6VrPwgnyQLT8slKDw/AKpllqdV
	JXfeVRRppHGGpdJF87Geac6E2135Yb8rZbPEMa8Nh4feDdoZ51kxLWeGgR+pALVwNq1pvlc+FnA6a
	J7TehLHBVzp1NMJZ7kv8s7zveRK4EWkE+JHM5159gGzZYZpCsXfqJ3yfMDpsm8ob4Gq6ruia77eI3
	ccRlP5Cl6Qr9sGJqBjerw10tKPsabUhOM5KvSNtdIVNJGpomqJCOLfzGMWDRPFN/T2QVueKvBYCVC
	S2nOZh7P3zJzbJ8dDClw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvdTo-00016h-9A; Thu, 08 Aug 2019 08:09:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvdTU-00015f-45
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 08:08:41 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 987222187F;
 Thu,  8 Aug 2019 08:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565251719;
 bh=LEJBdGF3+zKiZ/gDRK/GSLC+1nib/flq+adxh2DDplc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BOa6iG5SmZfPC3g1w7HTtZx+ntqjy7vtMoKRrOB40Y1IAJadxT/a1qUH7M1hcWNN7
 W8qiRDWZYvufdHdGDu+qM1d8a1ZVlDor3TTEdzdRnqhOaZb7tBU7wRwv+eqaHSlT7g
 lxSTZpDBXTzZEgo0HCx0IGQcI53ACbHG1ptXyEHE=
Date: Thu, 8 Aug 2019 09:08:33 +0100
From: Will Deacon <will@kernel.org>
To: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
Subject: Re: [PATCH 5/6] tty: serial: Add linflexuart driver for S32V234
Message-ID: <20190808080832.nleult5bknmzr3ze@willie-the-truck>
References: <20190802194702.30249-1-stefan-gabriel.mirea@nxp.com>
 <20190802194702.30249-6-stefan-gabriel.mirea@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802194702.30249-6-stefan-gabriel.mirea@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_010840_216775_71C6115C 
X-CRM114-Status: GOOD (  22.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Larisa Ileana Grigore <larisa.grigore@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 07:47:23PM +0000, Stefan-gabriel Mirea wrote:
> Introduce support for LINFlex driver, based on:
> - the version of Freescale LPUART driver after commit b3e3bf2ef2c7 ("Merge
>   4.0-rc7 into tty-next");
> - commit abf1e0a98083 ("tty: serial: fsl_lpuart: lock port on console
>   write").
> In this basic version, the driver can be tested using initramfs and relies
> on the clocks and pin muxing set up by U-Boot.
> 
> Remarks concerning the earlycon support:
> 
> - LinFlexD does not allow character transmissions in the INIT mode (see
>   section 47.4.2.1 in the reference manual[1]). Therefore, a mutual
>   exclusion between the first linflex_setup_watermark/linflex_set_termios
>   executions and linflex_earlycon_putchar was employed and the characters
>   normally sent to earlycon during initialization are kept in a buffer and
>   sent afterwards.
> 
> - Empirically, character transmission is also forbidden within the last 1-2
>   ms before entering the INIT mode, so we use an explicit timeout
>   (PREINIT_DELAY) between linflex_earlycon_putchar and the first call to
>   linflex_setup_watermark.
> 
> - U-Boot currently uses the UART FIFO mode, while this driver makes the
>   transition to the buffer mode. Therefore, the earlycon putchar function
>   matches the U-Boot behavior before initializations and the Linux behavior
>   after.
> 
> [1] https://www.nxp.com/webapp/Download?colCode=S32V234RM
> 
> Signed-off-by: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>
> Signed-off-by: Adrian.Nitu <adrian.nitu@freescale.com>
> Signed-off-by: Larisa Grigore <Larisa.Grigore@nxp.com>
> Signed-off-by: Ana Nedelcu <B56683@freescale.com>
> Signed-off-by: Mihaela Martinas <Mihaela.Martinas@freescale.com>
> Signed-off-by: Matthew Nunez <matthew.nunez@nxp.com>
> [stefan-gabriel.mirea@nxp.com: Reduced for upstreaming and implemented
>                                earlycon support]
> Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
> ---
>  .../admin-guide/kernel-parameters.txt         |   6 +
>  drivers/tty/serial/Kconfig                    |  15 +
>  drivers/tty/serial/Makefile                   |   1 +
>  drivers/tty/serial/fsl_linflexuart.c          | 956 ++++++++++++++++++
>  include/uapi/linux/serial_core.h              |   3 +
>  5 files changed, 981 insertions(+)
>  create mode 100644 drivers/tty/serial/fsl_linflexuart.c
> 
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index 46b826fcb5ad..4d545732aadc 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -1090,6 +1090,12 @@
>  			the framebuffer, pass the 'ram' option so that it is
>  			mapped with the correct attributes.
>  
> +		linflex,<addr>
> +			Use early console provided by Freescale LinFlex UART
> +			serial driver for NXP S32V234 SoCs. A valid base
> +			address must be provided, and the serial port must
> +			already be setup and configured.

Why isn't earlycon= sufficient for this?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
