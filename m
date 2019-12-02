Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CA410E43C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 02:31:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/qpfsUPFggXcrauQrUdkzC8XOGFp/4YVs4yEmz+3lw=; b=P6g1vaPDPVC4LF
	kcbEYZWSZiJEY3MdYY/9vT9AMlbsyrzsc9Ev27bsp2Gj092BQm2sJHohhs0HM/HmTe1YZ7r1HveCo
	jeU1VQauLxNlMahkx5ODEhw3YPxlzKa6w1TMwvzQZHyWYs4Ec/DbP5oMtQ0LDhTSSuuMqVWviZWxn
	/XcRWnokTUM5j4HnmFGBj3PEA6/ROaPbGRPytxBCNDodMgLRJA/y7hPpxS+bmj0PkswzKPFXL0mDO
	LpC+YDI2b9EpepkvcpzuqeMGV9ezTY/GEoYHV0AIOCreaoQmTHrbZvXz1wY7+OUcqxFDj5IwrEMWZ
	/ZR+SlJ0GyJQTWsdx0iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibaYw-0002GO-Ce; Mon, 02 Dec 2019 01:31:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibaYq-0002G3-4A
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 01:31:37 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4CDAA20881;
 Mon,  2 Dec 2019 01:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575250295;
 bh=9JANFZx2tFet5PdtmZUXdwch5IZW/Tsqka4c15W0cUA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=clHCsp4meXa3v8NkMgJRiRTXSYFwl09W4/3CzqCZMrOswdGpnhM3h54e4XHNk1g5/
 Jk/OKBcr1WmTVOwz1MB6R9fAtdDDX38APOzXMLI4R8WF6ukGV2NTcnt52FbTSN+mU2
 XZbaPKPh90RW8elwHvBCH7M9OB11vPLnSlmQ/XsY=
Date: Mon, 2 Dec 2019 09:31:25 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: fsl: Document i.MX7ULP Embedded
 Artists COM board
Message-ID: <20191202013124.GA9767@dragon>
References: <20191029152337.23827-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029152337.23827-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_173136_184058_3C804F30 
X-CRM114-Status: GOOD (  11.85  )
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
Cc: linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 12:23:36PM -0300, Fabio Estevam wrote:
> Add an entry for the Embedded Artists i.MX7ULP COM board.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Please copy DT folks for any bindings change.

Shawn

> ---
> Changes since v1:
> - None
> 
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index b08ae59cc57f..e75f03bf8fbb 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -234,6 +234,7 @@ properties:
>        - description: i.MX7ULP based Boards
>          items:
>            - enum:
> +              - ea,imx7ulp-com           # i.MX7ULP Embedded Artists COM Board
>                - fsl,imx7ulp-evk           # i.MX7ULP Evaluation Kit
>            - const: fsl,imx7ulp
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
