Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0A211FC72
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 02:06:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YWkThsi/VoVV9l3Z9eIBU8x5GjD9wCB6szyXvD3gS0w=; b=lx2iusRRTOLgaV
	jTIIjZRHZ8G2Z0rYs7LgxSkM7496UyWe8SJgZiiKLgGqe0NJODq9Wl72sRHKGqqWyAy9ROlVfKiX+
	mjdFcgdkwMZxVpFjQB1wYy+Eo1+B7XvU/2ONmHPHQcBkRAOBaKLxKJ+U7pc+p4eHaoIBULjoYty3c
	jApswusWP1ILh5mHb8QII4s0VkqK9XmnFCf4eezwPAGHvrYHi1wP6xxqEaFfGzNMvJLLflOS+Uk8j
	kqQ5TicSJlJj2gMfrdKVVBKe9taepT7tq9DNPY1tqZRbz5m086Bpt4YHyuN40pDfwKcBStNCE/BBe
	iwzLC/wrQxsYiHENrtdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igepj-0004wM-5Y; Mon, 16 Dec 2019 01:05:59 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igepa-0004vk-05
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 01:05:52 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20191216010546epoutp030fb2875e637b27b1825beb65b468da77~gtIOG0HhG3113831138epoutp03Y
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 01:05:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20191216010546epoutp030fb2875e637b27b1825beb65b468da77~gtIOG0HhG3113831138epoutp03Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576458346;
 bh=3PGC1UPOQOfejREl3m8Ds/ShxDCphrmBpVvbUYlrXgM=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=cYDbCQfH5SzrY2FpXTgJ0aCj8SPVJB0vOgtwy/pgRheTZbumocrofVcMauz5+wK15
 ZZDulUR+MmO9Ewt39gh9DeqV7xN714oYdvvVkvtXAKFSr2aAeRfA3es2ZTW26Is+Bn
 lzAX6VV6pQVCcPG/gZk5e+To1G20S8eqlWKykUrU=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191216010545epcas1p4888c05bc57a34a1fce024726030e4d12~gtINOdTYT1186711867epcas1p41;
 Mon, 16 Dec 2019 01:05:45 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.154]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 47bjkZ1vxgzMqYkV; Mon, 16 Dec
 2019 01:05:42 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 36.CD.57028.668D6FD5; Mon, 16 Dec 2019 10:05:42 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20191216010541epcas1p4c0c10a13206eebde75baa616e973b6e1~gtIJAqQSn1184911849epcas1p4q;
 Mon, 16 Dec 2019 01:05:41 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191216010541epsmtrp1f68fa3b208ecfd9afebf2f3837f30f0a~gtII-h7-Q3034430344epsmtrp1m;
 Mon, 16 Dec 2019 01:05:41 +0000 (GMT)
X-AuditID: b6c32a35-50bff7000001dec4-65-5df6d866b79b
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 E7.1A.10238.468D6FD5; Mon, 16 Dec 2019 10:05:40 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191216010540epsmtip288c02507f4dc4130f7bd4d167d8f72d1~gtIIkmG5n0394703947epsmtip2g;
 Mon, 16 Dec 2019 01:05:40 +0000 (GMT)
Subject: Re: [PATCH RFC v6 1/9] dt-bindings: interconnect: Add bindings for
 imx8m noc
To: Leonard Crestez <leonard.crestez@nxp.com>, Georgi Djakov
 <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <c1c03b30-d82a-6f2b-156d-0e1948e0df5b@samsung.com>
Date: Mon, 16 Dec 2019 10:12:16 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <6db2ce55ee62dd8548aa8e1e0ecdf8c06eda868f.1573761527.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01TbUxTZxTO23t7e3HrvFaRd52ZeMk0soC9QtkLEcI2XW42s5B9mS1BvCnX
 QuiXva1B2SIjw0EzRaaVFKeyKUvtDB9tA/jRkAKbAQNalxVGxWHqFvwYKghD1LG2t2b8e85z
 nvM+55w3h8QULTIlWWqw8GYDp6OJJXhH7/r0tJ0js4Uqx6gczVweAOjHaz8D9Mh+HkPhP0IA
 dTo06GTfkBS1e0I4avC5CeSyn8PRlSttMjRYdU+GnGMPpcgdDkqRbf4MhqYP9AHUPByQoKCz
 Xoqm28IABQa2oNCXTgL9NOQn0PFHdgxV+/pkyNbzjED/BttxNOFNQs2nghhqn2HzV7F2mxOw
 Z0+cBez9kWoZe6wygLNNbivrdtUS7PXgRYL1nN7Htk92Sdi6Zyp2vjeRPeh1AXba/WqB/LOy
 TSU8V8ybk3mDxlhcatDm0u99WPR2kTpLxaQx2egNOtnA6flcevPWgrR3SnWRfdDJuzmdNUIV
 cIJAb8jbZDZaLXxyiVGw5NK8qVhnyjalC5xesBq06RqjPodRqTaqI8IdZSXX637BTA/Wlg+7
 L2CVwL/KBhJISGXCqhN3CRtYQiqoLgBbLnbgYjAF4NXHLokYzAL4j8eHPy/5dqpBEsUKygdg
 dwMURfcBHK1pjSWWU9ug3VOLRfEKqgIeGqyK8Rh1VAaf2LOjmKBSYffECBHFS6k18Le5MIhi
 OZUHfQvfy6IYp16D4/U3Ynwi9Qns7/gqrlkG+x23Yg0lUNvh78e8uPh+Ehy9dTLutRp2/v0d
 Fm0OUl4SDkw8lokTbIaOSadExMvhnUveOK+Et+v2x3EFPNPfR4jFNQB6u69KxUQG7G4+HCkm
 Iw7rYev5DSK9Bp57chyIxi/ByZlvpFEJpOSwZr9ClKTAX8fH4rYvw1Nf1xKHAN24aJzGRSM0
 Lhqh8X+zJoC7wEreJOi1vMCYmMW/7QaxW0lVd4EjQ1t7AEUC+kV5ftlsoULK7Rb26HsAJDF6
 hZx/fbpQIS/m9uzlzcYis1XHCz1AHdl2PaZM1Bgjl2ewFDHqjRkZGSiTyVIzDJ0kJ+cChQpK
 y1n4Mp438ebndRIyQVkJsvzbO+2a01/cXH1XfmDo6WHt8F858+X3QlOuwOeDf3auqz7ybvmO
 S7vmlHf2PvAsvPXx5bEEx/sFH1S23nb/UK17mno0vHQh1Hszfx2bvUVIX2v56IKxwj031dYk
 sVfwKTea9r2S8ua2g1XX1Ls+3TmeOegfbVk5mauer/E/zFkG8oIv0LhQwjGpmFng/gMa6faK
 QQQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02SW0hTcRjA+++cnR2l4XFq/jVLHHSzWho9/ClRH4oO9RI9FCpqS09T5ubY
 UUvtopmUMzODJc7rSGWaD26Kl0zCexop8zKnLpVmIXmrvCCmXbYR+Pbj+34/vpePxAQarjcZ
 L09ilHJxgpBwxpu6hL4nY80bkQF9T8+i9Q8DAFUP9wC0pn6DIevMFEDNRTGovHuQi/QNUzgq
 bDcQqFbdiqOhoXoe+vhwkYd0n35wkcFq4iLVVg2GVvO6AaoaN3KQSVfARav1VoCMAxfQVKaO
 QK8HOwhUuqbGUHZ7Nw+pOncI9Nukx9F8oyeqemXCkH6dDvWh1SodoOvK6gC9Ys7m0cUZRpyu
 MCTThtocgraY3hJ0Q+UDWr/cwqHzdwLorS4P+lljLaBXDQev8MOdg2KZhPgURnkq+IZznCW/
 F1N8P3xn3NCGZYAOHxVwIiF1Br74WchRAWdSQLUB2NqiA46FF3xp7MFUgPzHbrCri3U4SwBq
 F0s5NseNug7VDTmYjd2pdLj9tQ+zSRil4cG5XCPuKD4DWGPMtFsE5Q/fzZsJG7tQfnBs02q/
 xqeCYfsfLc/GOHUIzhZM2+ce1DXYWmnlOBxX2F80h9vYiYqCE8WNdsaoI3C7bBhzsCecnCvn
 ONgXNi+VYM+Bm2ZXrtmVaHYlml1JBcBrgRejYGUSGRuoCJQzt0WsWMYmyyWimESZAdg/xv9Y
 CxipjO4EFAmEe/mh0o1IAVecwqbKOgEkMaE7nzm+Gingx4pT0xhlYrQyOYFhO8F+Ehd68r/I
 e8MElEScxEgZRsEo/285pJN3BkgQbWojuJMTWfSo6pp0coWvyJEMnRgJT5eEHK1uWq76dVMr
 2udSn5Qs5i1k7Vy8ZdhjGR3PP9AvCAu5zJ8N853xWVt6XBdnSTKzQY9y7/KerJTpJ8xpoabz
 1PvcAeaS9F6E62kVOqe9/y2kSm+UTrf5iaKu5i2MNZV0WxSupBBn48SB/piSFf8FFK49aS0D
 AAA=
X-CMS-MailID: 20191216010541epcas1p4c0c10a13206eebde75baa616e973b6e1
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191114201051epcas5p2a6b58f0d86fb8bed72a206ecd5df295d
References: <cover.1573761527.git.leonard.crestez@nxp.com>
 <CGME20191114201051epcas5p2a6b58f0d86fb8bed72a206ecd5df295d@epcas5p2.samsung.com>
 <6db2ce55ee62dd8548aa8e1e0ecdf8c06eda868f.1573761527.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_170550_540530_F844C4A8 
X-CRM114-Status: GOOD (  26.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/15/19 5:09 AM, Leonard Crestez wrote:
> Add initial dt bindings for the interconnects inside i.MX chips.
> Multiple external IPs are involved but SOC integration means the
> software controllable interfaces are very similar.
> 
> Main NOC node acts as interconnect provider if #interconnect-cells is
> present.
> 
> Multiple interconnects can be present, each with their own OPP table.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  .../bindings/interconnect/fsl,imx8m-noc.yaml  | 104 ++++++++++++++++++
>  1 file changed, 104 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml b/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
> new file mode 100644
> index 000000000000..5cd94185fec3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
> @@ -0,0 +1,104 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: https://protect2.fireeye.com/url?k=0c13f3e0-51df3f45-0c1278af-0cc47a30d446-77e809543b673ffd&u=http://devicetree.org/schemas/interconnect/fsl,imx8m-noc.yaml#
> +$schema: https://protect2.fireeye.com/url?k=87c672dc-da0abe79-87c7f993-0cc47a30d446-414d3b4d0127419a&u=http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Generic i.MX bus frequency device
> +
> +maintainers:
> +  - Leonard Crestez <leonard.crestez@nxp.com>
> +
> +description: |
> +  The i.MX SoC family has multiple buses for which clock frequency (and
> +  sometimes voltage) can be adjusted.
> +
> +  Some of those buses expose register areas mentioned in the memory maps as GPV
> +  ("Global Programmers View") but not all. Access to this area might be denied
> +  for normal (non-secure) world.
> +
> +  The buses are based on externally licensed IPs such as ARM NIC-301 and
> +  Arteris FlexNOC but DT bindings are specific to the integration of these bus
> +  interconnect IPs into imx SOCs.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +        - enum:
> +          - fsl,imx8mn-nic
> +          - fsl,imx8mm-nic
> +          - fsl,imx8mq-nic
> +        - const: fsl,imx8m-nic
> +      - items:
> +        - enum:
> +          - fsl,imx8mn-noc
> +          - fsl,imx8mm-noc
> +          - fsl,imx8mq-noc
> +        - const: fsl,imx8m-noc
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  operating-points-v2: true
> +  opp-table: true
> +
> +  devfreq:
> +    $ref: "/schemas/types.yaml#/definitions/phandle"
> +    description:
> +      Phandle to another devfreq device to match OPPs with by using the

Better to use 'parent' instead of 'another' word for improving the understanding.

> +      passive governor.
> +
> +  '#interconnect-cells':
> +    description:
> +      If specified then also act as an interconnect provider. Should only be
> +      set once per soc on main noc.
> +    const: 1
> +
> +  fsl,scalable-node-ids:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    description:
> +      Array of node ids for scalable nodes. Uses same numeric identifier
> +      namespace as the consumer "interconnects" binding.
> +
> +  fsl,scalable-nodes:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      Array of phandles to scalable nodes. Must be of same length as
> +      fsl,scalable-node-ids.
> +
> +required:
> +  - compatible
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |

Is it enough example to understand the relation between
imx8m-ddrc.c, imx-devfreq.c and imx interconnect driver?

In my case, if possible, hope to show the more detailed
example. This example seems that don't contain the ddrc
dt node (imx8m-ddrc.c).

> +    #include <dt-bindings/clock/imx8mq-clock.h>
> +    #include <dt-bindings/interconnect/imx8mq.h>
> +    noc: interconnect@32700000 {
> +            compatible = "fsl,imx8mq-noc", "fsl,imx8m-noc";
> +            reg = <0x32700000 0x100000>;
> +            clocks = <&clk IMX8MQ_CLK_NOC>;
> +            #interconnect-cells = <1>;
> +            fsl,scalable-node-ids = <IMX8MQ_ICN_NOC>,
> +                                    <IMX8MQ_ICS_DRAM>;
> +            fsl,scalable-nodes = <&noc>,
> +                                 <&ddrc>;
> +            operating-points-v2 = <&noc_opp_table>;
> +
> +            noc_opp_table: opp-table {
> +                    compatible = "operating-points-v2";
> +
> +                    opp-133M {
> +                            opp-hz = /bits/ 64 <133333333>;
> +                    };
> +                    opp-800M {
> +                            opp-hz = /bits/ 64 <800000000>;
> +                    };
> +            };
> +    };
> 


-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
