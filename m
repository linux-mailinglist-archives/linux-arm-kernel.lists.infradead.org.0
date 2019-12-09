Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 506351166DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 07:25:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKg3VU2A1iIXSU/aACRexX3jG0duI2xJyQwM4PwGjKs=; b=nkrb2UoUwLcYMl
	Bv7ArbvyyX5TiTXO31V3sVjaSTew5rj81r22NE60oALPGdDqAhW5NK+ruzrjmuSbIWsrzoQP6yUq9
	r4+Dau6W47PKuDLs5J3vu61VUoqTuG4+zDsJiZ9g81SQQRo0a3RfxEXD3ObHknHFWIXbjxDF1EiSK
	e0Q5bqRfY+XmF+uiGlu8hI230LEuONeFpmGhT1K3u16WSanrRg6C5WK5mhEqXXE6Rfr1QFGgKRuLD
	DlSyQbg6qZPxxTOwSfIizLQnVnr6IToNJGcZxnwXmzLOGKlwyNG32gyB70dM01mp38XUhzOg/Gub7
	Oa4MnB97Z1PkVM3z476Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieCTc-0007We-Iz; Mon, 09 Dec 2019 06:25:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieCTV-0007W1-B4
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 06:24:54 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BB27C206D3;
 Mon,  9 Dec 2019 06:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575872693;
 bh=NvleXuUnPknYKUhTVZzMMKvbLBOUqsyyrdsMf7qmcsQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rBW1x5yG8jYDoDPIRBN/OWZV1Y616bQ2ge84/I4SZA1MT5dD/LkqCrpWb6+r3YqVS
 X7uvQlQGiMSa0xtCmmRn3jcm3kG3w3mGSo3bJSdg2Vs0bbrJIfkJxvodbwkEogTq0x
 eVjzuPHoyqAblOE3sWjuo6J33uY2L8uNHYy+1QaU=
Date: Mon, 9 Dec 2019 14:24:37 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Michael Walle <michael@walle.cc>, Yuantian Tang <andy.tang@nxp.com>
Subject: Re: [PATCH 1/4] arm64: dts: ls1028a: fix typo in TMU calibration data
Message-ID: <20191209062436.GB3365@dragon>
References: <20191123201317.25861-1-michael@walle.cc>
 <20191123201317.25861-2-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191123201317.25861-2-michael@walle.cc>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_222453_399934_0DA9BB50 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+ Yuantian Tang, who is the author of existing code.

On Sat, Nov 23, 2019 at 09:13:14PM +0100, Michael Walle wrote:
> This was tested on a custom board.

Can you add more info about why this is an error and how it is being
identified?

Shawn

> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index dc75534a4754..f2e71fd57b20 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -573,7 +573,7 @@
>  					       0x00010004 0x0000003d
>  					       0x00010005 0x00000045
>  					       0x00010006 0x0000004d
> -					       0x00010007 0x00000045
> +					       0x00010007 0x00000055
>  					       0x00010008 0x0000005e
>  					       0x00010009 0x00000066
>  					       0x0001000a 0x0000006e
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
