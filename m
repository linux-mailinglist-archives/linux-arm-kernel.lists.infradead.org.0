Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E05877FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 12:56:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o3vikFfN0zaz3Rk5bMy587a6I78BoRDBUzxxBW0FgkU=; b=YvyrhJXXqQIGQCG/eSzPpNlSr
	rg1XJ09BXiD1RLfcyGHCEG7xThCoWNRifAV2zdcb8OOn/teYcnR+b4qSWaDtvoSqm3jTAxLOHMYIY
	XXYzoOjQlhMlluvy2298ExOz70gHY18nMf0B/8zVXqbROE21F2Hqe37TK648rhqdrAFdoy1scF4C7
	u8aChXDFAH6KUksTFFAZbrKPsUvb8SXuMDcfG3Oub0LUr6A2DxhX8gZcMnE8h16GA/uS2dB8b2EKC
	XA+F1dd5uc15mv06xsv3kbI2k5zuLJ5dOFtAJWJWOd2BRLYE4fXURoFc2Q5OaG04ue6YcqKH7EpYC
	KRXPHYwJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw2Z3-000305-Nf; Fri, 09 Aug 2019 10:56:05 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw2YF-0002HL-C9
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 10:55:17 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x79At644119000;
 Fri, 9 Aug 2019 05:55:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565348106;
 bh=EuFRbPO24ydwIrvN4X9jukmq4Ulhmnp4FtEkRmDum1c=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=lv0eUFWtcdzYUOYpKZ9h6xZmtzW1Wg8fBnZ/xS0RypnEJok9ZZ6x6+jJLcLLksRqh
 HF5q9XuSnJXac9PXQ3H6xXt8BJ/EJPhhmoahDgtGInKNjCYT+h6MRhhr5u5sH57spL
 ENc3OQBWtOzrJsS+8swz3rHfG6U2FrUdUm5hzDNc=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x79At6uu000734
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 9 Aug 2019 05:55:06 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 9 Aug
 2019 05:55:04 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 9 Aug 2019 05:55:04 -0500
Received: from [172.24.191.45] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x79At1cW079749;
 Fri, 9 Aug 2019 05:55:02 -0500
Subject: Re: [PATCH 1/6] dt-bindings: gpio: davinci: Add new compatible for
 J721E SoCs
To: Lokesh Vutla <lokeshvutla@ti.com>, Tero Kristo <t-kristo@ti.com>, Nishanth
 Menon <nm@ti.com>, <linus.walleij@linaro.org>
References: <20190809082947.30590-1-lokeshvutla@ti.com>
 <20190809082947.30590-2-lokeshvutla@ti.com>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <3d001f23-6389-d5c2-4037-9a36e057db41@ti.com>
Date: Fri, 9 Aug 2019 16:25:38 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190809082947.30590-2-lokeshvutla@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_035516_106511_9686B01B 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Device Tree Mailing List <devicetree@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/08/19 1:59 PM, Lokesh Vutla wrote:
> J721e SoCs have same gpio IP as K2G davinci gpio. Add a new compatible to
> handle J721E SoCs.

Reviewed-by: Keerthy <j-keerthy@ti.com>

> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
>   Documentation/devicetree/bindings/gpio/gpio-davinci.txt | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-davinci.txt b/Documentation/devicetree/bindings/gpio/gpio-davinci.txt
> index bc6b4b62df83..cd91d61eac31 100644
> --- a/Documentation/devicetree/bindings/gpio/gpio-davinci.txt
> +++ b/Documentation/devicetree/bindings/gpio/gpio-davinci.txt
> @@ -6,6 +6,7 @@ Required Properties:
>   						66AK2E SoCs
>   			"ti,k2g-gpio", "ti,keystone-gpio": for 66AK2G
>   			"ti,am654-gpio", "ti,keystone-gpio": for TI K3 AM654
> +			"ti,j721e-gpio", "ti,keystone-gpio": for J721E SoCs
>   
>   - reg: Physical base address of the controller and the size of memory mapped
>          registers.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
