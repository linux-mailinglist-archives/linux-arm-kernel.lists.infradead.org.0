Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F54C35711
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 08:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BtNgQGLSATixBW/YRq0jqOhRHoi4iaFnoDC8io+cFk=; b=QrOouPIkBqv4U/
	uWeP6QzZcj+sy1gc7wQ/ljmz34n6h0+MQCN7cA2S9gg2jnLTIlArvl5AL9pM7lC/quzgY4dZsNC47
	uSlK+PpG/RvNOMBEh0yjyzc8IBUPV94FAC2niCN44J5NGt35Hgdn2bd9QPKJn3Fh4Ar1IkLxc6Zm2
	NaguDUUSP6k4JWR3GFVjeTyUTiJzy+7Wg8sxCPGyehgCx9B95AG9+g3jIrgW32A66u4Wm4p3zsua9
	6ABItA8kaZXiBNLZenEDpUPkeRoHvu4QmduRKkxnD1iczf5j6aH7t4A6eGdyd+hejwZYlOdBrp+2A
	3slW0d7dODd5icY4sTmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYPVx-0007G1-OO; Wed, 05 Jun 2019 06:35:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYPVr-0006yM-9X
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 06:35:08 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A0C5E2083E;
 Wed,  5 Jun 2019 06:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559716506;
 bh=G1fCjyvuMI8j4lJIOPDrdCk2asa1xcNItBYzsfAa+b8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RqRNxR+h7FMuAZfrxmvdDUYFY92bSMASxPOtEC8ZNn/Yd1Qw/C4Fe2BvN/f7Fd/BT
 rqgjDOQWs+K3DSzeCHuzfduZAxJ6Q/4c8Gl6idrwDC3T70CKVYe9uttwEfTI74Si+d
 kPn7wVGJ3T0glV1dXNU4ea9sk4EAuEj6GNUwxhds=
Date: Wed, 5 Jun 2019 14:34:50 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Pramod Kumar <pramod.kumar_1@nxp.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: nxp: Add device tree binding
 for ls1046a-frwy board
Message-ID: <20190605063449.GG29853@dragon>
References: <20190527123404.30858-1-pramod.kumar_1@nxp.com>
 <20190527123404.30858-2-pramod.kumar_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527123404.30858-2-pramod.kumar_1@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_233507_359095_F6B17850 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Aisheng Dong <aisheng.dong@nxp.com>,
 "Michal.Vokac@ysoft.com" <Michal.Vokac@ysoft.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Vabhav Sharma <vabhav.sharma@nxp.com>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 12:32:09PM +0000, Pramod Kumar wrote:
> Add "fsl,ls1046a-frwy" bindings for ls1046afrwy board based on ls1046a SoC
> 
> Signed-off-by: Vabhav Sharma <vabhav.sharma@nxp.com>
> Signed-off-by: Pramod Kumar <pramod.kumar_1@nxp.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

I cannot apply patch from message using 'Content-Transfer-Encoding: base64'.

> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 407138ebc0d0..09ff1999ce96 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -241,6 +241,7 @@ properties:
>            - enum:
>                - fsl,ls1046a-qds
>                - fsl,ls1046a-rdb
> +              - fsl,ls1046a-frwy

It might be better to keep the list alphabetically sorted.

Shawn

>            - const: fsl,ls1046a
>  
>        - description: LS1088A based Boards
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
