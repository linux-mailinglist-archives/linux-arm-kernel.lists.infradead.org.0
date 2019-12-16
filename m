Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7A411FD31
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 04:19:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CW4JQ1JOCSaeDHlzPXhzVaCRyWj4UVMh6lBVWaYEFU0=; b=XWQTqEtBsw0Ebc
	V3bNsdoRnGLfqSiezkL8FXKJkrmy9daJX+HKg4EHdjUVUKI/T5Jlh+QbWq+K3DG3TKx2HFJpNkVXD
	hzq7TwvfgwBntflTyPhw7BPdaSWm3oSDJLcDvjmnTUG08mdZIFQwh+MBnvhrsVUrwirlpFgao9dCJ
	/MfAH2/S9/AUeGFkWWEvJAiSFMZVVsc/ALGa8bgkEjrAmwKhFOnzMfO44ot+LtPeoOm90CRI4SZGV
	YJZIT2u3yCNGV6gWXcGOdpGTNjwDbiK5+BR0FLbZQd70FphhwqUeITTntlJGhJiHSvCPWyOmv2ryQ
	Z+CvkF2kUiDTqWBC3daw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igguT-0005AR-Km; Mon, 16 Dec 2019 03:19:01 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igguJ-0005A0-UI
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 03:18:54 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20191216031845epoutp010c8ca1b26e3f335c5571cbfce2661f78~gu8VhEo-70247402474epoutp01G
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 03:18:45 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20191216031845epoutp010c8ca1b26e3f335c5571cbfce2661f78~gu8VhEo-70247402474epoutp01G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576466326;
 bh=ZJCIjDn2s9Um6sHxiH6xBi+qPqqPTRf2QjAwESKWwhU=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=RZt4/GWw2B6wLtijJ+3cRIIY10y/E7d1zqzYMD2QS65wDyMR1z7kZCgPw52vj3dNc
 oVO4QpONd4TGf4DQ1XLRur0Mp4nfT32x4nQn3dwoRnOA/Jd4VpjyCXs4NNA86wk36z
 dpbG1+wWsfKE6intasCyno9s3f35gG/06aDADerw=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191216031844epcas1p2a1b673b3a41a0ec9fa60ee70caabd014~gu8Ubgh_H3058330583epcas1p2Q;
 Mon, 16 Dec 2019 03:18:44 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.155]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 47bmgw67CvzMqYkV; Mon, 16 Dec
 2019 03:18:36 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 8C.02.51241.C87F6FD5; Mon, 16 Dec 2019 12:18:36 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20191216031836epcas1p45c82be466e27d0828435110274460710~gu8MSWTOq1908719087epcas1p4f;
 Mon, 16 Dec 2019 03:18:36 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191216031836epsmtrp25476e923f27f329af36026c04a983b6b~gu8MRNFtu1704317043epsmtrp2Q;
 Mon, 16 Dec 2019 03:18:36 +0000 (GMT)
X-AuditID: b6c32a39-14bff7000001c829-9b-5df6f78c8057
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 59.58.06569.B87F6FD5; Mon, 16 Dec 2019 12:18:35 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191216031835epsmtip1f6c463c02acccd480d5ce1585d398c45~gu8Lzz3Ut1441514415epsmtip1K;
 Mon, 16 Dec 2019 03:18:35 +0000 (GMT)
Subject: Re: [PATCH RFC v6 1/9] dt-bindings: interconnect: Add bindings for
 imx8m noc
From: Chanwoo Choi <cw00.choi@samsung.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Georgi Djakov
 <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>
Organization: Samsung Electronics
Message-ID: <afd618d6-d78c-a989-2d1e-60c368ec267f@samsung.com>
Date: Mon, 16 Dec 2019 12:25:11 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <c1c03b30-d82a-6f2b-156d-0e1948e0df5b@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Te0xbVRz29D56IdZdy5AjmRvcaQw4WC+s82AGzojkJi5KsswlS0i9wg1g
 S1t7WzIkcTiFlWbTIeuEzjlih2FItrV0PBoJo0MXMOMxYyGyh5OHsMyCFnCyQOzldpH/vt93
 vu/3OvlRmPqiMpEqNVoFi5E3MGQs3nEtJT3t+D/LBZq2myxa+mkQoG9v/gDQotOPocm7EwB1
 Nhaic/1DBPK0T+Doyx4viVqd3TgaHr6sRDeOPlCiltt/Ecg7GSSQY+UChsIn+gFqHhtVoGBL
 HYHClycBGh18A0183EKi74b6SHR20Ymh6p5+JXIEVkm0FvTgaNaXgJrdQQx5lri9WzinowVw
 bV+3AW5+vFrJnakaxbkmr43zttaS3K3g9yTXfv4I5wl1KbjPVzXcyrV47jNfK+DC3q35qkP6
 PSUCXyRYkgRjoamo1Ficzby5X/e6Trtbw6axWehlJsnIlwnZTO6+/LS8UkNkH0xSOW+wRah8
 XhSZnTl7LCabVUgqMYnWbEYwFxnMWeZ0kS8Tbcbi9EJT2SusRpOhjQjf1Ze09jcQ5qkdh/2d
 nXgV6Ex2gBgK0rvg1em7pAPEUmq6C8BeT7VSDv4GcOH8nWiwDOCJK23YY8vCSgchP/QAWFc/
 HPXPA/jHSEghqeLog9DZXrvuIOlU2Ds7Tkp4M10JT944uq7B6NNK+MiZJeFNdDL85eEkcACK
 UtE5sKF7k0Tj9AtwJOgjJBxPvwMHOj4FElbRT8OBxilcwjH0q9A52EbIKRPgr1Pnoum3wc4/
 v8Kk3iDto+BSXbdSniAXXpleJWQcB+9f90X5RBgO9ZAyroQXBvpJ2WwH0Nc7EjVkwt7meoXU
 KEanwEv+nTKdDLsfnQVy4adgaOk4IUkgrYL2GrUs2Q5//u22QsbPQvexWvIkYFwbxnFtGMG1
 YQTX/8WaAN4KnhHMYlmxILJm7cbf9oL1W0nN6gI/Du0LAJoCzJOqvfrlAjXBl4sVZQEAKYzZ
 rBJeCheoVUV8xYeCxaSz2AyCGADayLbrsMT4QlPk8oxWHavNyMzMRLvY3VqWZRJU1MPRAjVd
 zFsFvSCYBctjn4KKSawCH5CXMixb+qYbVwN3csPvudcq3PubhHm78vTFyqok8r5r6tR227Ga
 ewcW6+3k87NDTQdyOtRv3ZrrjbU/5x/rmzv8yfjWroKZ1wYX1s5Qti/8MxjjNujeDjWUzj2R
 9++hg/yLNR/tOPX+Awxf02/7JjZvcCyuPOXqvenx36/PHCHS8hhcLOHZVMwi8v8B0VtDh0EE
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA02SW0iTYRjHe/cd9qmNPqe21xkeBlpqeYigVxAzKvouvBAiy0B06oeaTsc+
 XVoXebxwltXFUlceKI+bFzrFeSx0WmqkzXBKVkJbZahpeEhMO8wRePfj+f9/PM/FQ2HCKkJM
 pWVms4pMaYaEdMS7jBLPE2U/N+NCClVhaOPVOECNUyMArat7MWSZnwPIUJWEaocnCNTeMYej
 igE9ibTqHhxNTrbx0evCJT5q/vCDQHqLmUCq7RYMrd0dBqhhxsRD5uYHBFprswBkGr+A5gqa
 SaSbGCRR9boaQyUDw3ykGtol0W9zO44WOkWo4akZQ+0bTOQRRq1qBkxrTStgVmZL+MyjfBPO
 1OlzGL22lGTem/tJpqP+NtP+vZvH3NsNYbaNbkx5pxYwa3rPaME1x/BkNiNNySqCIxIcU7XD
 lYTcejy312DA84HBRwUcKEifgqvbXYQKOFJCug/AkoU7PHvgDh+aRjAVoP6xCzQaOXtnGcCl
 GhNm67jQV6C6o3SPSToAPl+YJW3sSt+CO19eYjYBozV8aC0z4Xa7ggd1lXbjEO0Dp7cswLZB
 QEfAyp5DtjFO+8I35k7Cxm50DOypt+wdJKCd4ViVFbexA30Gqsdb9zoYfRTu1ExhdhbBd9Za
 np29oGH5MXYfuGj26Zp9imafotmn1AFcC9xZOSdLkXGh8pOZ7I0gTirjcjJTgpKyZHqw9zAB
 Ad1gdDR+CNAUkBwURKZvxgkJqZLLkw0BSGESVwEbuBYnFCRL826yiqx4RU4Gyw0BDwqXiARe
 WS9ihXSKNJtNZ1k5q/if8igHcT7w++aXVZ49Y86N9u7P5kS4ZvFyL8pPEPOOVV8/LZ5QT4qa
 /D8OBjb6FyRuzw+II/x8z9OJuqhLTivxwUiuSY7Xea+fa5puaQp59lYcrhwb3bp44Nemh7Wo
 wClK/7UoZiT2CSz+jB3uKDZWX13Uq0xnVz/9WVA6F/fpBpmKsFQJzqVKQwMwBSf9C35c1pYs
 AwAA
X-CMS-MailID: 20191216031836epcas1p45c82be466e27d0828435110274460710
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191114201051epcas5p2a6b58f0d86fb8bed72a206ecd5df295d
References: <cover.1573761527.git.leonard.crestez@nxp.com>
 <CGME20191114201051epcas5p2a6b58f0d86fb8bed72a206ecd5df295d@epcas5p2.samsung.com>
 <6db2ce55ee62dd8548aa8e1e0ecdf8c06eda868f.1573761527.git.leonard.crestez@nxp.com>
 <c1c03b30-d82a-6f2b-156d-0e1948e0df5b@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_191852_482903_43BC05EA 
X-CRM114-Status: GOOD (  27.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
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

Hi,

On 12/16/19 10:12 AM, Chanwoo Choi wrote:
> On 11/15/19 5:09 AM, Leonard Crestez wrote:
>> Add initial dt bindings for the interconnects inside i.MX chips.
>> Multiple external IPs are involved but SOC integration means the
>> software controllable interfaces are very similar.
>>
>> Main NOC node acts as interconnect provider if #interconnect-cells is
>> present.
>>
>> Multiple interconnects can be present, each with their own OPP table.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>  .../bindings/interconnect/fsl,imx8m-noc.yaml  | 104 ++++++++++++++++++
>>  1 file changed, 104 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml b/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
>> new file mode 100644
>> index 000000000000..5cd94185fec3
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
>> @@ -0,0 +1,104 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +%YAML 1.2
>> +---
>> +$id: https://protect2.fireeye.com/url?k=0c13f3e0-51df3f45-0c1278af-0cc47a30d446-77e809543b673ffd&u=http://devicetree.org/schemas/interconnect/fsl,imx8m-noc.yaml#
>> +$schema: https://protect2.fireeye.com/url?k=87c672dc-da0abe79-87c7f993-0cc47a30d446-414d3b4d0127419a&u=http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Generic i.MX bus frequency device
>> +
>> +maintainers:
>> +  - Leonard Crestez <leonard.crestez@nxp.com>
>> +
>> +description: |
>> +  The i.MX SoC family has multiple buses for which clock frequency (and
>> +  sometimes voltage) can be adjusted.
>> +
>> +  Some of those buses expose register areas mentioned in the memory maps as GPV
>> +  ("Global Programmers View") but not all. Access to this area might be denied
>> +  for normal (non-secure) world.
>> +
>> +  The buses are based on externally licensed IPs such as ARM NIC-301 and
>> +  Arteris FlexNOC but DT bindings are specific to the integration of these bus
>> +  interconnect IPs into imx SOCs.
>> +
>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - items:
>> +        - enum:
>> +          - fsl,imx8mn-nic
>> +          - fsl,imx8mm-nic
>> +          - fsl,imx8mq-nic
>> +        - const: fsl,imx8m-nic
>> +      - items:
>> +        - enum:
>> +          - fsl,imx8mn-noc
>> +          - fsl,imx8mm-noc
>> +          - fsl,imx8mq-noc
>> +        - const: fsl,imx8m-noc
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  operating-points-v2: true
>> +  opp-table: true
>> +
>> +  devfreq:
>> +    $ref: "/schemas/types.yaml#/definitions/phandle"
>> +    description:
>> +      Phandle to another devfreq device to match OPPs with by using the
> 
> Better to use 'parent' instead of 'another' word for improving the understanding.

I think that 'devfreq' is not proper way to get the parent node
in devicetree. Because 'devfreq' name is linuxium. The property name
didn't indicate the any h/w device. So, I'll make 'devfreq' property deprecated.

So, you better to make the specific property for this device driver
like as following: and use devfreq_get_devfreq_by_node() function
which is developed by you in order to get the devfreq instance node.

	fsl,parent-device = <&parent devfreq device>;

[1] [PATCH RFC v5 04/10] PM / devfreq: Add devfreq_get_devfreq_by_node

> 
>> +      passive governor.
>> +
>> +  '#interconnect-cells':
>> +    description:
>> +      If specified then also act as an interconnect provider. Should only be
>> +      set once per soc on main noc.
>> +    const: 1
>> +
>> +  fsl,scalable-node-ids:
>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>> +    description:
>> +      Array of node ids for scalable nodes. Uses same numeric identifier
>> +      namespace as the consumer "interconnects" binding.
>> +
>> +  fsl,scalable-nodes:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      Array of phandles to scalable nodes. Must be of same length as
>> +      fsl,scalable-node-ids.
>> +
>> +required:
>> +  - compatible
>> +  - clocks
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
> 
> Is it enough example to understand the relation between
> imx8m-ddrc.c, imx-devfreq.c and imx interconnect driver?
> 
> In my case, if possible, hope to show the more detailed
> example. This example seems that don't contain the ddrc
> dt node (imx8m-ddrc.c).
> 
>> +    #include <dt-bindings/clock/imx8mq-clock.h>
>> +    #include <dt-bindings/interconnect/imx8mq.h>
>> +    noc: interconnect@32700000 {
>> +            compatible = "fsl,imx8mq-noc", "fsl,imx8m-noc";
>> +            reg = <0x32700000 0x100000>;
>> +            clocks = <&clk IMX8MQ_CLK_NOC>;
>> +            #interconnect-cells = <1>;
>> +            fsl,scalable-node-ids = <IMX8MQ_ICN_NOC>,
>> +                                    <IMX8MQ_ICS_DRAM>;
>> +            fsl,scalable-nodes = <&noc>,
>> +                                 <&ddrc>;
>> +            operating-points-v2 = <&noc_opp_table>;
>> +
>> +            noc_opp_table: opp-table {
>> +                    compatible = "operating-points-v2";
>> +
>> +                    opp-133M {
>> +                            opp-hz = /bits/ 64 <133333333>;
>> +                    };
>> +                    opp-800M {
>> +                            opp-hz = /bits/ 64 <800000000>;
>> +                    };
>> +            };
>> +    };
>>
> 
> 


-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
