Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7E8FD409
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 06:18:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSfricX6bvSQv92DG3bhgX44lS/QScwMPibVF5Ep6yM=; b=SOz8cDFxx5QYug
	UlZpZGa20SmNP8QTFJY89Ub/mA8zORfDcpGC5tYwZq4XVV//PpZqhhGPuD0oYBHlfWpMv+jL37wQI
	y85y/1VkTRRiAt61ntTh/KrdT18FqeZjtaQKfbhvNWyXMlijcucLlKVHjwZRkYdqzsO6G8vlcv3iE
	6O9dLDDtqGJR3VpzkgHvO5utTUX/mX5coiilB4CmBsH5KZa+JztTod8fXQiKN2VL/Fx+StpgQCcRx
	nevrwxe0EiOVkx622ydM9Qdc0m/tm66WHYWoujOT1c9Ao8hD+rHFvNQAK1GlFGIV1CJUJkmKrbm3c
	TVDPaIRylC10HBahX/zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVTzY-00064K-1X; Fri, 15 Nov 2019 05:17:56 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVTzP-00063P-8j
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 05:17:49 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20191115051742epoutp03fd42df59cf9ec1f2339a990debdc924a~XPkVykmsZ1089210892epoutp03W
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 05:17:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20191115051742epoutp03fd42df59cf9ec1f2339a990debdc924a~XPkVykmsZ1089210892epoutp03W
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1573795062;
 bh=p1sABqGlkGLf3lAdgyltr1ZXoyt31InAM+Rr2aci+AU=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=DEVcYwdWfJY1t3KiPnsCtWc8Cpff19Au9rUclFK6Ro0IIoKVonkYbdbrbBJksaBf0
 /tfPEDm+5CPk8NNVW2s7yvFvvH9NwrZEQ6HxRSUdV/s891PbEBe5pkoEs5SEh4e4aF
 SvIA9cNSCETCrn0l4N77EU8xCHO9jRW8dpgLL3Nw=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191115051742epcas1p4704cf1665590255431d0bce0967ff104~XPkVHU3RH1161511615epcas1p4d;
 Fri, 15 Nov 2019 05:17:42 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.156]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 47DmnZ5DrWzMqYkj; Fri, 15 Nov
 2019 05:17:38 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 F9.93.04135.2F43ECD5; Fri, 15 Nov 2019 14:17:38 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20191115051738epcas1p4ebf0f6882c8680650d3e0eda3126f5c1~XPkRmezXe1161511615epcas1p4O;
 Fri, 15 Nov 2019 05:17:38 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191115051738epsmtrp19837af5cd85989cda4f5e45f904a5a4a~XPkRlSXjP0881308813epsmtrp1w;
 Fri, 15 Nov 2019 05:17:38 +0000 (GMT)
X-AuditID: b6c32a36-7e3ff70000001027-13-5dce34f2def4
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 5F.8A.24756.2F43ECD5; Fri, 15 Nov 2019 14:17:38 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191115051737epsmtip13739d01d4fe43a292e77a29f76fc3485~XPkRItzze0235902359epsmtip1a;
 Fri, 15 Nov 2019 05:17:37 +0000 (GMT)
Subject: Re: [PATCH v6 3/5] dt-bindings: memory: Add bindings for imx8m ddr
 controller
To: Leonard Crestez <leonard.crestez@nxp.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <08a89e18-ec63-79c3-e018-0cd2f3baad78@samsung.com>
Date: Fri, 15 Nov 2019 14:23:22 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <58f3aea574bf3a38a42075e313fc2a5592c96ed2.1573756360.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Tf0xTVxTHc/t+tKgdzwrj0i0O35wJhEJLgV02MZtz5CXDBGOymEWGL/AC
 BPra9FEy3BLZFlAb/DkIow7phiBWE2ipgIzKQMbGD3EwrCiimxB1ZNQhK0MQtrYPM/77nnM+
 53xzzs2VYYouqVKWyxdwRp7Np8l1eMu1SLXqafxQunqpLxJ1916WIu9AP0D1Iz8C9HdFO4Ym
 748D1FqViWp6hghkbx7HUaXLQSJbxRUc3bjRJEXXv/hTihomZgnkmHQTaLbsHoHMixcwNHes
 B6C6W8MS5G44RaC5pkmAhvvfR+OfN5Do4lAXiQYHRghU4uqRInP3MolW3HYcPXaGobpaN4bs
 XuadzUyFuQEwl85eAsyTsRIpc6Z4GGesDhPjsB0lmbvuDpJpPneIsXvaJEyXp0PCnFhWM4vX
 QhnnzcM4c9xpA8ycY3Na8Ed523M4NoszRnB8pj4rl89Opj/Ym/FeRkKiWqPSJKE36Qie1XHJ
 9K7UNFVKbr7vRnREIZtv8qXSWEGgY3dsN+pNBVxEjl4oSKY5Q1a+IckQI7A6wcRnx2TqdW9p
 1Oq4BB94IC+nyvU7YahRflLd+JAoBh0hZhAkg1Q8nPf0kmawTqag2gA87RySiMFTABes1VIx
 mAfw7D0n+aLF8nwBFwsuAHtXVlapJwAuTRwPUJuofXDs2bKPkslCKCMs64vyMxj1rxS2WH/G
 /AxJRcHOx2MBPpjaAm8uTAK/llM7YO8/gwGNU2/AAW896Z8T6ps54GVFZCPsq5oKjA+iPoaj
 9m3+NEaFwTtTNRJRvwZbZ77B/LaQGpXB2Zbm1QV2wdGpR6t6E5z+ySkVtRL+caJ0VX8KL/T1
 kGLzEQCdnb8QYkELO+u+kviNMSoSNrbHiukt8MpSNRCNX4IebxnhRyAlh0dKFSLyOvz1twmJ
 qMNh7eGj5ElAW9ZsY1mzgmXNCpb/zawAt4GXOYOgy+YEjSFu7WM7QOD7RCW2ge+GUrsBJQP0
 Bjm8cz1dQbCFQpGuG0AZRofIy2cG0xXyLLboIGfUZxhN+ZzQDRJ8tz6FKUMz9b7PyBdkaBLi
 tFotitckJmg0dJj83fN16Qoqmy3g8jjOwBlf9ElkQcpiEM7PW4qlSfXnirhjk+d3fi+3ydN3
 cx9GTwdvO+TK3McXchd1u41tKfSGt58/fDRXvv62tclVfnBrq61l/9XYVyu/fOWz9lqV6uTt
 xv3fPnDfL/X81R/jwU43fX134daeZwdS108TfGXJzpQfFsP5BzPRG0dYtza8SxLdwTdil/mr
 e2lcyGE1UZhRYP8DxCDSglQEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHeXcuO4rD06b4amS0sIvmZSD0fgjJSjrQF6sPmWK65kEtN8eO
 l4wuGli5MhUv5bpoeGEtJTctzRRx01FuKtNc4qXImQWlkiaZeMlpgd9+vP/f/3meDy+FCesI
 HypZkcaqFNIUMemKvzKJfQPnQvtiQ0ydFDKaX/LRgqUHoNqBboB+lbZiyPFpFKDmchmq6Ooj
 kL5xFEf32w0k0pW+xlF/fwMf9d74wUfa8Z8EMjjsBPp59yOB1EvPMDSf3wVQzQcbD9m1RQSa
 b3AAZOuJQKM5WhI97+skkdUyQKDc9i4+UhtXSLRq1+PoW5MXqqmyY0i/wBz2ZUrVWsDUPakD
 zOxwLp95mG3DmUpDOmPQ5ZHMmL2NZBqrrzP6mRYe0znTxmMKVkKYJZMn0zR0C2fuNekAM2/w
 jXSPdj2UwKYkZ7Cq4LB416Ty9s+EssLn0uMXU0Q2aPNQAxcK0qFQs7yIq4ErJaTfADiwZiY2
 A29YZuvG1IBaZxE0mbhNZxpA24Mp4HREdBQc/rOCO9mDVsHW2gK+U8LoXArWW8r5zkBITwBY
 33XAySTtDzu+DZNOdqd3waFFx8YgAR0Gzb+tG4zTftCyULvheK4v+No8/M/ZBt+VT+LOg1zo
 c/C9fo/zGaP3wuUnA9gme8GRyQreJu+EzdOPsEIg0mxpa7ZUNFsqmi2VSoDrgDer5OSJck6i
 lCjYzCBOKufSFYlBslS5AWz8If/9LWCwOs4IaAqI3QRwpDdWSEgzuCy5EUAKE3sISqatsUJB
 gjTrMqtKjVOlp7CcEWyncLGX4IvCfFZIJ0rT2Issq2RV/1Me5eKTDURX44U13qesq0fC/a3n
 tePHg5X7vu8+6giI8iuOm3U7HO13LCD8bOFtiU9VhPrtTF1DcfRJ0XT4pYP1gYGDUSVDKunQ
 iZj4XAkpS94RWVUUEzGVDyx37shQfdua5NDNhrQrMU19sgxzkHyi7Om1jrmZ4Mz54tNzOZ5n
 oi7sseWNiXEuSSrxx1Sc9C+wmLuuPwMAAA==
X-CMS-MailID: 20191115051738epcas1p4ebf0f6882c8680650d3e0eda3126f5c1
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191114183338epcas1p2e3ded933b5a88056b97ddafd85e0be2a
References: <cover.1573756360.git.leonard.crestez@nxp.com>
 <CGME20191114183338epcas1p2e3ded933b5a88056b97ddafd85e0be2a@epcas1p2.samsung.com>
 <58f3aea574bf3a38a42075e313fc2a5592c96ed2.1573756360.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_211747_549031_28FBA70B 
X-CRM114-Status: GOOD (  23.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leonard,

On 11/15/19 3:33 AM, Leonard Crestez wrote:
> Add devicetree bindings for the i.MX DDR Controller on imx8m series
> chips. It supports dynamic frequency switching between multiple data
> rates and this is exposed to Linux via the devfreq subsystem.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  .../memory-controllers/fsl/imx8m-ddrc.yaml    | 72 +++++++++++++++++++
>  1 file changed, 72 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml b/Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
> new file mode 100644
> index 000000000000..c9e6c22cb5be
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
> @@ -0,0 +1,72 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: https://protect2.fireeye.com/url?k=7d43eac6-20dfeba6-7d426189-0cc47a31307c-fcd69516893e0615&u=http://devicetree.org/schemas/memory-controllers/fsl/imx8m-ddrc.yaml#
> +$schema: https://protect2.fireeye.com/url?k=b9d87e43-e4447f23-b9d9f50c-0cc47a31307c-9fbd3b55b25cfa6d&u=http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: i.MX8M DDR Controller
> +
> +maintainers:
> +  - Leonard Crestez <leonard.crestez@nxp.com>
> +
> +description:
> +  The DDRC block is integrated in i.MX8M for interfacing with DDR based
> +  memories.
> +
> +  It supports switching between different frequencies at runtime but during
> +  this process RAM itself becomes briefly inaccessible so actual frequency
> +  switching is implemented by TF-A code which runs from a SRAM area.
> +
> +  The Linux driver for the DDRC doesn't even map registers (they're included
> +  for the sake of "describing hardware"), it mostly just exposes firmware
> +  capabilities through standard Linux mechanism like devfreq and OPP tables.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +        - fsl,imx8mn-ddrc
> +        - fsl,imx8mm-ddrc
> +        - fsl,imx8mq-ddrc
> +      - const: fsl,imx8m-ddrc
> +
> +  reg:
> +    maxItems: 1
> +    description:
> +      Base address and size of DDRC CTL area.
> +      This is not currently mapped by the imx8m-ddrc driver.
> +
> +  clocks:
> +    maxItems: 4
> +
> +  clock-names:
> +    items:
> +      - const: core
> +      - const: pll
> +      - const: alt
> +      - const: apb
> +
> +  operating-points-v2: true
> +  opp-table: true
> +
> +required:
> +  - reg
> +  - compatible
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mm-clock.h>
> +    ddrc: memory-controller@3d400000 {
> +        compatible = "fsl,imx8mm-ddrc", "fsl,imx8m-ddrc";
> +        reg = <0x3d400000 0x400000>;
> +        clock-names = "core", "pll", "alt", "apb";
> +        clocks = <&clk IMX8MM_CLK_DRAM_CORE>,
> +                 <&clk IMX8MM_DRAM_PLL>,
> +                 <&clk IMX8MM_CLK_DRAM_ALT>,
> +                 <&clk IMX8MM_CLK_DRAM_APB>;
> +        operating-points-v2 = <&ddrc_opp_table>;
> +    };
> 

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>


-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
