Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E27751C7A24
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 21:22:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IHCG160TUZcQC3Nso2HTA99SxOFE4TRNsQbw5q79cHE=; b=q4MpBIBfiTIIghiFUQbydCl6I
	1DGFNELWxU3zxY8nNxSN623m4C4D909FSrtv6UhXQ/q1JoFOhIAN6/2q4K9vmWZY6lqmlBOeNGr77
	k/3dJVZpTu6b6Td0e5QbWDJTAA3IplwUODurwO2WIBgfL0klYIhVCL/ZMnYbBEvw6KmSwfNybLGBh
	s8XRosoGML+3zqPCO6kJ87quEqshunjhnxE7zXuNjiLE4ykrcl4LZP4VrqvL5Bt5EBpj9jdSpUTkF
	J1o/A4J1MtkiLCFk/xCXFY9EHkaHur1d4sWcVwMH/qR6w2ubKFH7JSJ1j4VBUEDd+PxV+x/GU/Mmk
	7IzXic54A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWPcA-0001MG-G7; Wed, 06 May 2020 19:21:54 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWPc2-0001Lj-KI
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 19:21:48 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 046JLgZS028342;
 Wed, 6 May 2020 14:21:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588792902;
 bh=z5KTFZ7VsGaMFwyM2iAcVcZw6DjwHKoZZe2pBriK/n0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=lFQlkU6ESPbepNcpPREgDX19r22YhEr5KgjPoE2oAgCvRtppWkQ13Yq6td+xP64mk
 y/fXD1yb1m/ZSTMa17u2i1xMmejfT1k15jOtKkJ0fU/VA88etCpUONoD2MjnQXmVdi
 583O4CnEh4Eqb4pMj7OSLkLEn08t43l3/Xmw/9mQ=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 046JLglC023628
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 6 May 2020 14:21:42 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 6 May
 2020 14:21:42 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 6 May 2020 14:21:41 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 046JLbBp056569;
 Wed, 6 May 2020 14:21:39 -0500
Subject: Re: [PATCH v2 1/2] dt-bindings: soc: ti: add binding for k3 platforms
 chipid module
To: Santosh Shilimkar <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>
References: <20200505193417.2112-1-grygorii.strashko@ti.com>
 <20200505193417.2112-2-grygorii.strashko@ti.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <a523caa4-bd34-35e3-8e3a-7668a168931d@ti.com>
Date: Wed, 6 May 2020 22:21:36 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200505193417.2112-2-grygorii.strashko@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_122146_750318_337A6140 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nishanth Menon <nm@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 05/05/2020 22:34, Grygorii Strashko wrote:
> Add DT binding for Texas Instruments K3 Multicore SoC platforms chipid
> module which is represented by CTRLMMR_xxx_JTAGID register and contains
> information about SoC id and revision.
> 
> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
> Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
>   .../bindings/soc/ti/k3-socinfo.yaml           | 40 +++++++++++++++++++
>   1 file changed, 40 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/soc/ti/k3-socinfo.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/ti/k3-socinfo.yaml b/Documentation/devicetree/bindings/soc/ti/k3-socinfo.yaml
> new file mode 100644
> index 000000000000..a1a8423b2e2e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/ti/k3-socinfo.yaml
> @@ -0,0 +1,40 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/ti/k3-socinfo.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments K3 Multicore SoC platforms chipid module
> +
> +maintainers:
> +  - Tero Kristo <t-kristo@ti.com>
> +  - Nishanth Menon <nm@ti.com>
> +
> +description: |
> +  Texas Instruments (ARM64) K3 Multicore SoC platforms chipid module is
> +  represented by CTRLMMR_xxx_JTAGID register which contains information about
> +  SoC id and revision.
> +
> +properties:
> +  $nodename:
> +    pattern: "^chipid@[0-9a-f]+$"
> +
> +  compatible:
> +    items:
> +      - const: ti,am654-chipid
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    chipid@43000014 {
> +        compatible = "ti,am654-chipid";
> +        reg = <0x43000014 0x4>;
> +    };
> 

Rob, Do you have any comments here?

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
