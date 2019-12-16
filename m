Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F3011FF44
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 08:56:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=19LkiZJeDnWScHf00UIyPULPcAbzocjjtlPSiSJaEbk=; b=scsSJflzFAU5ZG
	EjABpLRaNZQIK8+Ks06rHcAHYtGH/YpD2LTJhtaf06zL5D43+H2PwKfbyGVZv4FXxhcRNr8bRI4uq
	e/l9eIqWWb8CnxPVDe7LXjxuW/G0JELNI//ITNnafWD5flDwEUU5kFainPaqrtvJrMGrs63LF7nrQ
	SqZbEatPU830lsSYq5soptocBduI3NEKk6r4xD5LbMrK9DAXt2CURI0K3NkiV2YqfOSK+axceHdTL
	/WaYLoFkA4TmoyI9D2jy5bG6SWg/ZVFdUMksGqUm54UEbUsOuUdrMD/3olQJTQzwT+6he9piKjSeo
	zgv5g9gAwdw1sZAXgfzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iglEV-0000v5-IO; Mon, 16 Dec 2019 07:55:59 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iglEL-0000uA-97
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 07:55:50 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id A5EAD43B4E;
 Mon, 16 Dec 2019 07:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 in-reply-to:content-disposition:content-type:content-type
 :mime-version:references:message-id:subject:subject:from:from
 :date:date:received:received:received; s=mta-01; t=1576482940;
 x=1578297341; bh=BWfwqYX21S2KCFxyZoimHOBsY3YUgME5n7pLkWB60bE=; b=
 B+V2ZbgOx+qPVvZsiFz2PdKkhU81IxBp4SDALFFClriCfZzrKvVM2HZbPf325V4r
 QmOifWLexJldu0z/Wef2gRJaSBMjU/DZGgUPx+MYqaRXtYdnDnHWXZWyJpONfTWz
 CR93bmQbZga3Z7+W47xJ5Q8RX3CBmUqNI4kHTQR9X3M=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MNlYISM0A_mb; Mon, 16 Dec 2019 10:55:40 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id 3E66E411FF;
 Mon, 16 Dec 2019 10:55:40 +0300 (MSK)
Received: from localhost (172.17.14.115) by T-EXCH-02.corp.yadro.com
 (172.17.10.102) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Mon, 16
 Dec 2019 10:55:39 +0300
Date: Mon, 16 Dec 2019 10:55:39 +0300
From: "Alexander A. Filippov" <a.filippov@yadro.com>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH] ARM: dts: aspeed: AST2400 disables hw checksum
Message-ID: <20191216075539.GA13054@bbwork.lan>
References: <20191216064132.78015-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216064132.78015-1-joel@jms.id.au>
X-Originating-IP: [172.17.14.115]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_235549_688289_516EBFA9 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Jeffery <andrew@aj.id.au>, Tao Ren <taoren@fb.com>,
 Alexander Filippov <a.filippov@yadro.com>, linux-aspeed@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reviewed-by: Alexander Filippov <a.filippov@yadro.com>

On Mon, Dec 16, 2019 at 05:41:32PM +1100, Joel Stanley wrote:
> There is no need to specify this property in the device tree as the
> AST2400 does not have working hardware checksum and disables it in the
> driver.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts | 1 -
>  arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts  | 1 -
>  arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts        | 3 ---
>  3 files changed, 5 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts
> index b1e10f0c85c9..322587b7b67d 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts
> @@ -76,7 +76,6 @@ &uart5 {
>  
>  &mac1 {
>  	status = "okay";
> -	no-hw-checksum;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_rgmii2_default &pinctrl_mdio2_default>;
>  };
> diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts
> index aaa77a597d1a..54e508530dce 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts
> @@ -75,7 +75,6 @@ &uart5 {
>  
>  &mac1 {
>  	status = "okay";
> -	no-hw-checksum;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_rgmii2_default &pinctrl_mdio2_default>;
>  };
> diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts b/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
> index affd2c8743b1..041f28e3ac10 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
> @@ -107,10 +107,7 @@ flash@0 {
>  
>  &mac0 {
>  	status = "okay";
> -
>  	use-ncsi;
> -	no-hw-checksum;
> -
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_rmii1_default>;
>  };
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
