Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A3D1B9419
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 23:00:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oiOhpY884jSvM2ZbQDc/jZWmPEEzRuH818ERfoYM7lg=; b=AD9rKh4v2PfzLQ
	oekLezUYf4tfhMYQIq7Dkhq4r9KwRx2WKYxYS3PtOfyP14rqsdYDEEE4921P7OXCQEZWT8XEuOetn
	AUvqoXrtzLyEnpHGziHN+oNCuImyi5eCW33x1zsDlNlOhx6+7X9Q52bcQMmvAATHxWsCaA2X3OuW7
	d4pi1WtrE3dio1ckMPtglcCLVFimam2NEupr8VmhbUIhZbC+CGu0LpFnh32k4tiWZ2d5kxPdB5cDR
	HH1MmVdGfBsV94N+QY24yRcEO4pYCRtPdv1kseNBML52iQO7pp6sez4WEkqWvLHq9ERUV8+qxw7Nd
	tPPTC0dMxd7CBVbuj7JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSoNe-0004gX-BI; Sun, 26 Apr 2020 21:00:02 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSoNS-0004ct-S9
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 20:59:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1587934779;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=tBYDlL7NzsOjZoE8VbUARgLNfJnA9ln8lbc1BWfhqMY=;
 b=rPFnsysPauQahgimReSrNwqZM6AvrLLiHhnyIokPn/HbadZX5Cz2czAy8za7vqmv5n
 4qqpdvj1cTV/LjKOuymUztbRMo7sJGEHZqUUjmJLZyKKjaElP4D1mijo/gXqU0fYnO92
 6Z5Io0pRBnmPB0zgBTMMEvlZPWpOCZXUD6O+OgmlGeetD3FBwN0IdADLNYC1Ont+eaQH
 EDyfJZvJG8+SRLI8EtVwZ3MluAmAeqxL9585/hPJ7Cpb/X89BGSa6FTYvntkK9APSxhr
 mc0Z+JPad5+YG2+NJrufNQak6+ILhfqkw2t0mVa36q6/a9pu44woZtC5VSUKTiGYub2d
 AsQg==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/PtwDOjwps="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.6.2 DYNA|AUTH)
 with ESMTPSA id R0acebw3QKxSHt5
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Sun, 26 Apr 2020 22:59:28 +0200 (CEST)
Subject: Re: [PATCH v7 01/12] dt-bindings: add img,
 pvrsgx.yaml for Imagination GPUs
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <9d9998cc-33bf-7d8f-658b-8d6218338135@gmail.com>
Date: Sun, 26 Apr 2020 22:59:28 +0200
Message-Id: <0D48517E-8F66-4B27-953B-1C27F8A8DE0A@goldelico.com>
References: <cover.1587760454.git.hns@goldelico.com>
 <3a451e360fed84bc40287678b4d6be13821cfbc0.1587760454.git.hns@goldelico.com>
 <9d9998cc-33bf-7d8f-658b-8d6218338135@gmail.com>
To: Philipp Rossak <embed3d@gmail.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_135951_506764_C0E0DC48 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, Jonathan Bakker <xc-racer2@live.ca>,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 Paul Cercueil <paul@crapouillou.net>, linux-samsung-soc@vger.kernel.org,
 letux-kernel@openphoenux.org, Paul Burton <paulburton@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 devicetree@vger.kernel.org,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Daniel Vetter <daniel@ffwll.ch>, kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Philipp,

> Am 26.04.2020 um 21:36 schrieb Philipp Rossak <embed3d@gmail.com>:
> 
> Hi Nikolaus,
> 
> On 24.04.20 22:34, H. Nikolaus Schaller wrote:
>> The Imagination PVR/SGX GPU is part of several SoC from
>> multiple vendors, e.g. TI OMAP, Ingenic JZ4780, Intel Poulsbo,
>> Allwinner A83 and others.
>> With this binding, we describe how the SGX processor is
>> interfaced to the SoC (registers and interrupt).
>> The interface also consists of clocks, reset, power but
>> information from data sheets is vague and some SoC integrators
>> (TI) deciced to use a PRCM wrapper (ti,sysc) which does
>> all clock, reset and power-management through registers
>> outside of the sgx register block.
>> Therefore all these properties are optional.
>> Tested by make dt_binding_check
>> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
>> ---
>>  .../devicetree/bindings/gpu/img,pvrsgx.yaml   | 150 ++++++++++++++++++
>>  1 file changed, 150 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml
>> diff --git a/Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml b/Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml
>> new file mode 100644
>> index 000000000000..33a9c4c6e784
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml
>> @@ -0,0 +1,150 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/gpu/img,pvrsgx.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Imagination PVR/SGX GPU
>> +

...

>> +      - description: SGX544-112 based SoC
>> +        items:
>> +          - const: ti,omap4470-sgx544-112
>> +          - const: img,sgx544-112
>> +          - const: img,sgx544
>> +
>> +      - description: SGX544-115 based SoC
>> +        items:
>> +          - enum:
>> +            - allwinner,sun8i-a31-sgx544-115
>> +            - allwinner,sun8i-a31s-sgx544-115
> those two bindings are wrong.
> It should be allwinner,sun6i-a31-sgx544-115 and allwinner,sun6i-a31s-sgx544-115. I did a copy paste error in the patches that I provided for this series.

Ok, noted for v8.

BR and thanks,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
