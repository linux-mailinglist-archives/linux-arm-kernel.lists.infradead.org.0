Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5F11C35E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 11:38:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+u7/6I4R2QKC6HgcR8iXqz4CPJnp2QNP8Nkjnmyn7YI=; b=ZGkYwFFzhDJSWJmcuAubSxqmN
	JNsFZb+n9FwyR1VSGi/ZdwJKbHqP7+DCoD9hxeJRZGmqHt4e0VRe7NHbFZ3tvSLQn/TpYHHDCbkMF
	EHWsvhALgDF3spl5gXfB1F7r+MYPduRt5Qkdhp5yFEHKtii7kYOef+GFtNxgV1xVexMc9QLh3FOtD
	YwkKZYGInasjI8ngM4ZKCgIUbrQs3Ey7IzALAKjQ/jux0qHSJqdLejH251VKMV8j0VyJCwfhkdMFo
	/uHrd2X0Eeg461k92kBc+/ILJ84KV9NTG0lwRgQGB9tFJ87nXit/At7a2YGfKaEcN8bu2xGAmZUYd
	7yxQM/NMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVXYj-0002Dy-D6; Mon, 04 May 2020 09:38:45 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVXYc-0002Cn-He
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 09:38:40 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0449cUal125935;
 Mon, 4 May 2020 04:38:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588585110;
 bh=+cbr2QlNAaibYB5T0a54zsT/SDvBAOzBQ5jH0LGi8Y0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Lbf9qoq4Jk0OowNS2ngnfusqKPqnL9Obkrk7KFF+xBVDdk2RtsXgK1uTsdo6hYGkW
 g41z1b0+4k5UB4N2R92yGWGzY2lp9X948/d8cJqg3kad2k9HSiWHIWrjHEXZOMutKu
 2Y+HVo0bqqKuzpzYm6Cqx/xGuoZ/hGsTY2aTv0jM=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0449cTdd116394;
 Mon, 4 May 2020 04:38:29 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 4 May
 2020 04:38:29 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 4 May 2020 04:38:29 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0449cPB8118676;
 Mon, 4 May 2020 04:38:26 -0500
Subject: Re: [PATCH 1/5] dt-bindings: soc: ti: add binding for k3 platforms
 chipid module
To: Dave Gerlach <d-gerlach@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>, 
 Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>, Rob Herring
 <robh+dt@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Lokesh Vutla <lokeshvutla@ti.com>
References: <20200423180545.13707-1-grygorii.strashko@ti.com>
 <20200423180545.13707-2-grygorii.strashko@ti.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <0c677af8-5a5a-8b34-0670-c63f9dfe7f2f@ti.com>
Date: Mon, 4 May 2020 12:38:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200423180545.13707-2-grygorii.strashko@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_023838_662100_2F995EAB 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 23/04/2020 21:05, Grygorii Strashko wrote:
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

Do you have any comments here?

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
