Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F7B815D0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:47:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zc1ujetFW/HzOPuzsmGXUMjYsWj2bjwklFFJnmKrKFE=; b=WArvL3jiTuy6z/
	yJmxSY4CAb3sQNJrRG9bHOEW/IycNMzQ46F2+NbcH8U5Y9y6pMnZkJIr8+n08akL8xOhtmvtZ+GM4
	aYwVfjpJak4mFpEswivnjOfHaL31JBCoE5s1GviRKophOW8Z3yK91VUhIe7EOUAWFpgQ0QgKuiQLa
	JFKBQ1qbnHmODPAugBAWFaQSIdWztC7H9tNnoNXWS9Bl/x1vO0WeFr1XvNt4YxJ2r2tIvVEnuDToB
	DABOKOpXSs5Sx6dcIKbKN1XJ2e0jUYdChF8XJGVRZjHoARi2gHi6p4Bhp5ChMfXPxSP834wnEHgN2
	zWYrz+AyjyGDnj2BprGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZan-0006bt-Kp; Mon, 05 Aug 2019 09:47:49 +0000
Received: from ox4u.de ([212.118.221.216] helo=s1.ox4u.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZaa-0006Qq-O6
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 09:47:38 +0000
Received: by s1.ox4u.de (Postfix, from userid 65534)
 id B84D026019D; Mon,  5 Aug 2019 11:47:31 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on s1.ox4u.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED
 autolearn=disabled version=3.4.1
Received: from ws-140106.localnet (unknown [212.185.67.146])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by s1.ox4u.de (Postfix) with ESMTPSA id B3B6526014C;
 Mon,  5 Aug 2019 11:47:29 +0200 (CEST)
From: Alexander Stein <alexander.stein@systec-electronic.com>
To: Hui Song <hui.song_1@nxp.com>
Subject: Re: [PATCH v1] gpio: mpc8xxx: Add new platforms GPIO DT node
 description
Date: Mon, 05 Aug 2019 11:47:26 +0200
Message-ID: <2908964.pz7DIX2Qck@ws-140106>
In-Reply-To: <20190805091432.9656-2-hui.song_1@nxp.com>
References: <20190805091432.9656-1-hui.song_1@nxp.com>
 <20190805091432.9656-2-hui.song_1@nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_024736_939688_ED60BB2D 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.118.221.216 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-devel@linux.nxdi.nxp.com, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Monday, August 5, 2019, 11:14:32 AM CEST Hui Song wrote:
> From: Song Hui <hui.song_1@nxp.com>
> 
> Update the NXP GPIO node dt-binding file for QorIQ and
> Layerscape platforms, and add one more example with
> ls1028a GPIO node.
> 
> Signed-off-by: Song Hui <hui.song_1@nxp.com>
> ---
>  Documentation/devicetree/bindings/gpio/gpio-mpc8xxx.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-mpc8xxx.txt b/Documentation/devicetree/bindings/gpio/gpio-mpc8xxx.txt
> index 69d4616..fbe6d75 100644
> --- a/Documentation/devicetree/bindings/gpio/gpio-mpc8xxx.txt
> +++ b/Documentation/devicetree/bindings/gpio/gpio-mpc8xxx.txt
> @@ -28,7 +28,7 @@ gpio0: gpio@1100 {
>  Example of gpio-controller node for a ls2080a SoC:

   ^^^^^^^                               ^^^^^^^
This is an example for ls2080a...

>  gpio0: gpio@2300000 {
> -	compatible = "fsl,ls2080a-gpio", "fsl,qoriq-gpio";
> +	compatible = "fsl,ls1028a-gpio","fsl,ls2080a-gpio", "fsl,qoriq-gpio";

so I doubt there should be a ls1028a compatible here though.

>  	reg = <0x0 0x2300000 0x0 0x10000>;
>  	interrupts = <0 36 0x4>; /* Level high type */
>  	gpio-controller;

Best regards,
Alexander




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
