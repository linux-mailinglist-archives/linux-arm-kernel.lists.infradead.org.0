Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F9CA3393
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:19:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0pkWytBBQux0wCdCwapeZxqQKTr3dlZG3iZS7ivK7gk=; b=aFu+SzOV90YSVo/pn/1U1iksH
	Kq+tUgzJVYfaW7h0bqxTCHnhVVNtu2W+cyMAuCADqqHCgaGZge9OmQ6VxP+5dxavUuYh1FMZnVGio
	/BGxTJ6PA/prOt66QQuAMIC1EJxMOvHg6veY65JXkfnwsDk4tDGEvshbM2g3RfcvsQ3klYsbW8yQ9
	nroVmOSuxLal0qS/olLRt7tWVkRg+8XHgLYmQixq9ujfrmL0j97vDQIWQPvnugeqGPhv1J0yMk4R8
	s9NUui+4BnY3ESl4nDYQnaZFeWfuwwwmSYMeSn1UqlOw1P0PPX2yOdDCeIRdptWqqxqe9Q0aux5gn
	UkQNoRzLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3d3b-0007oU-Gu; Fri, 30 Aug 2019 09:18:59 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3d3R-0007o6-Cc
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:18:50 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7U9Ik5I061172;
 Fri, 30 Aug 2019 04:18:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567156726;
 bh=nzwNbK2OHYnA8jNkBzWmQDsCh69Jnha6jJdyXynf8qw=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=hbLgoM0frQ+0TOMbEOlLJXa89Upu5w3g2WySk9ImU48FQ8tQrbGCgCCFKhXPFg/LQ
 X8GBZEyrwvmG9p66HcxMpcidKM6ezkc7vn23AvaJ+x26kl5Uhd1mlIof/pwU8maXco
 zV8CWxpIKSOxDd3QMQ9R7Qxj9xomQ3c4DX23DobY=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7U9IkVP052106
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 30 Aug 2019 04:18:46 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 30
 Aug 2019 04:18:45 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 30 Aug 2019 04:18:45 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7U9IhL9130186;
 Fri, 30 Aug 2019 04:18:43 -0500
Subject: Re: [PATCHv2 01/11] dt-bindings: omap: add new binding for PRM
 instances
From: Tero Kristo <t-kristo@ti.com>
To: <ssantosh@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-omap@vger.kernel.org>, <robh+dt@kernel.org>,
 <p.zabel@pengutronix.de>
References: <20190828071941.32378-1-t-kristo@ti.com>
 <20190828071941.32378-2-t-kristo@ti.com>
Message-ID: <8f4bcd94-6555-26cc-2458-51b0e8712f68@ti.com>
Date: Fri, 30 Aug 2019 12:18:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190828071941.32378-2-t-kristo@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_021849_515245_C498FEFE 
X-CRM114-Status: GOOD (  20.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

Quick question below based on some discussion on the implementation 
details of the PRM support.

On 28/08/2019 10:19, Tero Kristo wrote:
> Add new binding for OMAP PRM (Power and Reset Manager) instances. Each
> of these will act as a power domain controller and potentially as a reset
> provider.
> 
> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> ---
>   .../devicetree/bindings/arm/omap/prm-inst.txt | 31 +++++++++++++++++++
>   1 file changed, 31 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/arm/omap/prm-inst.txt
> 
> diff --git a/Documentation/devicetree/bindings/arm/omap/prm-inst.txt b/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
> new file mode 100644
> index 000000000000..7c7527c37734
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
> @@ -0,0 +1,31 @@
> +OMAP PRM instance bindings
> +
> +Power and Reset Manager is an IP block on OMAP family of devices which
> +handle the power domains and their current state, and provide reset
> +handling for the domains and/or separate IP blocks under the power domain
> +hierarchy.
> +
> +Required properties:
> +- compatible:	Must be one of:
> +		"ti,am3-prm-inst"
> +		"ti,am4-prm-inst"
> +		"ti,omap4-prm-inst"
> +		"ti,omap5-prm-inst"
> +		"ti,dra7-prm-inst"

Each of these bindings describes multiple PRM instances, like 
ti,dra7-prm-inst maps eventually into 21 different PRM instances. I end 
up matching these in the kernel based on base address to map additional 
details, like support for reset handling, supported reset bits, etc.

What is your take on this, should I just provide individual compatible 
strings for these all, the total amount of them would end up being like 
70+, or keep them like this? I find it rather cumbersome if I would have 
to deal with 70+ different compatibles... Also, I would need to keep 
updating the bindings doc once I add new instances on the supported list.

-Tero

> +- reg:		Contains PRM instance register address range
> +		(base address and length)
> +
> +Optional properties:
> +- #reset-cells:	Should be 1 if the PRM instance in question supports resets.
> +- clocks:	Associated clocks for the reset signals if any. Certain reset
> +		signals can't be toggled properly without functional clock
> +		being active for them.
> +
> +Example:
> +
> +prm_dsp2: prm@1b00 {
> +	compatible = "ti,dra7-prm-inst";
> +	reg = <0x1b00 0x40>;
> +	#reset-cells = <1>;
> +	clocks = <&dsp2_clkctrl DRA7_DSP2_MMU0_DSP2_CLKCTRL 0>;
> +};
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
