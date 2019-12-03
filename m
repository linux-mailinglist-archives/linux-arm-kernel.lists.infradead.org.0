Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BACC710F831
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 07:58:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uywXLmMV3PFXzLGoCV3bKxqo5CVYbxcPCNuEc85IkQg=; b=lj/JhnYzrgfukg
	gHAo4X6vcRo+opPltAFgiJtR4moLOfDSB9E2hJJWFFiSPaOle/YF+fxCfmlvrJDTP9JSMjmPxDrLM
	WGxN2LX8/qggdPn+7qCuKm8UiHYU2fa/wTPPyTQeOYDqWo90MNT6CwQ59lUhykL5nw0ZzLLcLgFUS
	IAx5i9XH89v07+1ComnXFG2hZphPm1z9DwnMn0rAPD5rY8q9Sx5zccy9IWl9IXQu+eBMMURS05jc+
	LopgOhUfqi9Y3OEEdQUDMh3mkV7SEhse6CrrICmMa3PdeJi3ZMBumLqiY2g2jObbRcl7sx7QsQE9R
	m0/moxEAbmGamhs1sBkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic28f-0007pF-Pf; Tue, 03 Dec 2019 06:58:25 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic28W-0007nv-D7
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 06:58:20 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: EsL320TzSSXEuYAKN7rUavHCfzrytzh3c5AYr8n6uN8LVXRI7hcIGmjw3K5+EpGcXy7UoKZJnB
 V8s7tIonVXD5nLaJfif12KarPV0dwET3ZpVpAepVMpuVYIEbrC3yxk5/aAK1GKuKYpTxcWs2f5
 +bxIQscJv3l+dMduJY02hWkW3HXt6oauezXfFkcMiZj2YjAdJjuda4iUffxmbc/ZqOch/z21LB
 1NCTWgzdCYxA20vEHeDKPmlBsH0DnShF1bhau5qTmq4YbGKhnBCnkYWmg+qod3grC/in15bmVt
 X5k=
X-IronPort-AV: E=Sophos;i="5.69,272,1571727600"; d="scan'208";a="57585459"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Dec 2019 23:58:06 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Dec 2019 23:58:00 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 2 Dec 2019 23:58:01 -0700
Date: Tue, 3 Dec 2019 07:57:51 +0100
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Eugen Hristev - M18282 <Eugen.Hristev@microchip.com>
Subject: Re: [PATCH 1/3] dt-bindings: i2c: at91: cosmetic formatting of
 compatible list
Message-ID: <20191203065751.fgwwko3e63antodb@M43218.corp.atmel.com>
Mail-Followup-To: Eugen Hristev - M18282 <Eugen.Hristev@microchip.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "peda@axentia.se" <peda@axentia.se>,
 Codrin Ciubotariu - M19940 <Codrin.Ciubotariu@microchip.com>,
 Nicolas Ferre - M43238 <Nicolas.Ferre@microchip.com>
References: <1575276957-5615-1-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575276957-5615-1-git-send-email-eugen.hristev@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_225816_448865_6D11F1BB 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>, Codrin
 Ciubotariu - M19940 <Codrin.Ciubotariu@microchip.com>,
 "peda@axentia.se" <peda@axentia.se>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 09:56:35AM +0100, Eugen Hristev - M18282 wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Format the list of compatibles with one compatible per line.
> 
> Suggested-by: Peter Rosin <peda@axentia.se>
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com> 

Thanks

> ---
>  Documentation/devicetree/bindings/i2c/i2c-at91.txt | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-at91.txt b/Documentation/devicetree/bindings/i2c/i2c-at91.txt
> index 2210f43..d35cd63 100644
> --- a/Documentation/devicetree/bindings/i2c/i2c-at91.txt
> +++ b/Documentation/devicetree/bindings/i2c/i2c-at91.txt
> @@ -1,10 +1,16 @@
>  I2C for Atmel platforms
>  
>  Required properties :
> -- compatible : Must be "atmel,at91rm9200-i2c", "atmel,at91sam9261-i2c",
> -     "atmel,at91sam9260-i2c", "atmel,at91sam9g20-i2c", "atmel,at91sam9g10-i2c",
> -     "atmel,at91sam9x5-i2c", "atmel,sama5d4-i2c", "atmel,sama5d2-i2c" or
> -     "microchip,sam9x60-i2c"
> +- compatible : Must be one of:
> +	"atmel,at91rm9200-i2c",
> +	"atmel,at91sam9261-i2c",
> +	"atmel,at91sam9260-i2c",
> +	"atmel,at91sam9g20-i2c",
> +	"atmel,at91sam9g10-i2c",
> +	"atmel,at91sam9x5-i2c",
> +	"atmel,sama5d4-i2c",
> +	"atmel,sama5d2-i2c",
> +	"microchip,sam9x60-i2c".
>  - reg: physical base address of the controller and length of memory mapped
>       region.
>  - interrupts: interrupt number to the cpu.
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
