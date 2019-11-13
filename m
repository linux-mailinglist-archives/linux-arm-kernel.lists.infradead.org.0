Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3892FA67F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 03:32:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtAPjhpjqbBfKFqGOsJ5wzsSk2iyd5yaafHyZ9LutwQ=; b=YBev8WUMXKp+c3
	JyzdI3aYUP1FPOCAQ6ppQ2HjQiR87/f/f8kRPpKdZBEWhlZHrNwCUjh8airB91pIVGQ4E4gL8ZV1P
	DfTb4ALw9m0CkXCByUITm2Ka1mCUUN35QnXl1EhyIcnH/VysFm39Ud9bL23q2Wp3uJPkYeAinFVSr
	UjBUo5LReWWBNJiyxKCXnkDoCcAeQ/O4j+d0ywCzuK9nNKLjYNdxPqptwE7G66NGXAbQbRyJx6SCw
	L4SiygIDlTrdVJJrf9spYlPCrUcLdhh2av9Ok/O8eusIFF3wHPdtOzAaGjalvoNfMBhWM3XtxHfLV
	oAS9nHsbAK0ZV9bK9QVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUiSd-0001Go-8J; Wed, 13 Nov 2019 02:32:47 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUiSU-0001G5-Rf
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 02:32:40 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20191113023233epoutp04d0f800918d2925c4a4240da092138caa~WmBkrqbE22002720027epoutp04h
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 02:32:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20191113023233epoutp04d0f800918d2925c4a4240da092138caa~WmBkrqbE22002720027epoutp04h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1573612353;
 bh=HqyXzdJ3AjuSt7SH09CRf/9Jcl557b203Jlf7rfi2s8=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Qky3NylimLcSKBkQNPkLzP80hhIGE94zhVtYn/ofBWtgJhhoNTXVtLzmCLX3ow5+V
 MKHgVVeUFtMomPJnvDUBFg3x/9t8z0XM5RzcexlxxEgYY9q9rPrTgAkDXVb36ajiIY
 To2lV+mY/Uq30hm6y4MCxSRZkJdG5D9tr866GyXI=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191113023233epcas1p2a6109d9c5304298ddddb9523da6d1e0d~WmBkFhEV22174821748epcas1p2C;
 Wed, 13 Nov 2019 02:32:33 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.155]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 47CTCr0SR3zMqYm4; Wed, 13 Nov
 2019 02:32:24 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 5D.38.04068.73B6BCD5; Wed, 13 Nov 2019 11:32:24 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20191113023223epcas1p3a84c3ad4a2350261e3a5c9f02cbe89ed~WmBbT_yhY1542115421epcas1p31;
 Wed, 13 Nov 2019 02:32:23 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191113023223epsmtrp1d92a4530dc242f4c140f8f8a1dd260e3~WmBbSWoZI0312203122epsmtrp1r;
 Wed, 13 Nov 2019 02:32:23 +0000 (GMT)
X-AuditID: b6c32a39-f47ff70000000fe4-f8-5dcb6b3743d0
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 83.58.24756.73B6BCD5; Wed, 13 Nov 2019 11:32:23 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191113023223epsmtip1be8f89686cee1ded86550db051b0c7a1~WmBa2a4t_2785227852epsmtip17;
 Wed, 13 Nov 2019 02:32:23 +0000 (GMT)
Subject: Re: [PATCH v5 3/5] dt-bindings: memory: Add bindings for imx8m ddr
 controller
To: Leonard Crestez <leonard.crestez@nxp.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <296a7e8a-78e5-62bb-e4e1-8f5a9095cb6d@samsung.com>
Date: Wed, 13 Nov 2019 11:38:09 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <872fb6e3117955b679678280483f82b3d73dd376.1573595319.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01TbUxTVxjO6f1oMatci4xjExUuWaJs1ZZSd1iEbEHcdeMHmz82Zxje0Tsg
 lLbrbZlsyYYmgjagY6Yjdoofk1mKYVKrYlfCKCijOD5cYITKcJYsonwMsM5gWNbLZRn/nvec
 53mf87wnrwxT+KRKWbHRylmMrIEm1+DXO7eqVKikN0/tbwcocPuaFEV6gwB9f/cWQE8cPgyF
 x0MA3ThVgM529RGo5WoIR3VtHhK5HTdx1N9/RYp+OTwlRa6xOQJ5wsMEmqv+nUD2xUYMLdR0
 AdTw26AEDbtqCbRwJQzQYDAbhQ65SNTU10GiO713CXSkrUuK7IElEv0z3IKjh94E1BJhXt/I
 OOwuwFyuvwyY2ZEjUubbikGcOeexMR73MZK5N+wnmasXv2RaZlolTMeMX8KcWFIzi53xjHeo
 CmeOe92AWfBsyo39oGRnEcfqOUsiZyww6YuNhRn023vzs/J1O9QalSYdvUonGtlSLoPelZOr
 2l1siI6HTixjDbboUS7L8/T2zJ0Wk83KJRaZeGsGzZn1BnO6eRvPlvI2Y+G2AlPpaxq1OlUX
 JR4oKWp2vGOuizvY8PUSVgEG1tqBTAapNHjxm7fsIEamoFoBfDBUZgdrongewEqXXyoWTwEc
 v+fBBJYgCP/Vj4sXbQBW/XRNIhazANbXBUiBFUe9D88/6yYEi/WUBVb3pAgcjBqUwsf1jyUC
 h6RSYPvDkWV+LJUEh56FgYDlVCb8239GKmCceglebw4BoU98tGdvhBUp62DPqQlcwDHUh7Bz
 zLncBqMS4OjEWYmIN8Mb06cxwRdSd2Rw8dAjQkywC46fvr+SJg4+6vZKRayEkycqV/DnsLGn
 ixTFRwH0tg+siLWwveGkRHgQRm2FP/i2i8dJ8ObzM0A0XgtnItWEOF45PFqpECnJ8Nf7YxIR
 b4DfVR0jvwK0c1Uc56oIzlURnP+bnQO4G7zImfnSQo7XmHWrv9oDlvcmJb0V3O7LCQBKBugX
 5PB8ME9BsGV8eWkAQBlGr5e3Hvw5TyHXs+WfcRZTvsVm4PgA0EWHXYsp4wtM0S00WvM1ulSt
 VovSNDt0Gg2dIH/jUkOegipkrVwJx5k5y386iSxGWQH6RjVNBZvmHU3NwYk9h4OZ83THF08v
 uGMdG0OTs5/UnMwenfZteOC4tXdz4M+JuX0/TlXbsssXidrdk0QO+Wb3u937U3tqOrhGwqPf
 4un3zn/qO5BZN2V5eWb60uyIHaQ9iTyvUr33cVJ9RlZxclaDYtyb/Mf+j/YptzTGDDQff0VL
 43wRq0nBLDz7L0EBDD1NBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHe3cuO9OWx03x1UppGKFQqQS9QlhBlxMVKRVlYbbq4HVTdrwV
 UhqpOSotsnIuL6CypoWbpkuNanNls9QpXshbOCOj1EQlkYzcVuC3H8/z+/+fLw+FiTSEDxUn
 T2EVcmmihHTBG00S3607Ezqigsw1Psj49jkfLXRYAKruMQM0X9SMIdvYEEBNxRdRWVsngXT1
 Qzh6+FJPIm3RCxx1ddXx0cfrP/hIMzJLIL2tn0Czt0YJpFx6gqG5220AVQ1Yeahfc5dAc3U2
 gKyW/WgoW0Oims43JPrQ0UOgnJdtfKQ0LpPoT78OR5MNXki3wOzZyBQpNYCpLa0FzMxgDp8p
 ybLiTLk+ldFr80lmuL+VZOorrzG6aQOPeTPdymMKloOYJZMn09CXhzN3GrSAmdP7hrudcdl1
 iU2MS2MV28POu8Q+K4pIfijOqLq3jGWB7nVKIKAgvQPafnbhSuBCiegWANu/fSadC2/4wGrG
 lIBaYTE0mTinMwVgyUI33+6I6dOwYvEdYWcPWgGbqwv4dgmjB/gw7/UH0pkYB9DSN4rbLZIO
 hK8mBx0X3OhNsG/RBuwspMPgr9bHjlac3gwbnw055p4rF742Df5z3OH74glHj4A+B00jKkcP
 Rm+Bv0t7MCd7wU8TZTwn+8GmKTVWCMSqVXHVqohqVUS1KlIOcC3wZpM5WYyMC04OlrPp2zip
 jEuVx2y7mCTTA8f/BAYYQG9ltBHQFJCsFcIKS5SIkKZxl2VGAClM4iE0ZLRHiYSXpJevsIqk
 aEVqIssZwXoKl3gJv8jfRoroGGkKm8Cyyazi/5ZHCXyygEa95XjrjYPqI66qkHDfCyEzS+JH
 w0sncuOs8+Yq9w2Zx5Ky63in1vkn+rdvfdob2x28XhF9NjR0zT7X+xlue+OVx3rnIwIy448e
 iGwP4sGmSVXu1Zspu/1Lx3UnS9P9xvWm92nFWlO3ocw8ehi16BZkWuP49zFBvkFTWByiXjwk
 wblYaXAgpuCkfwF5YIi5OwMAAA==
X-CMS-MailID: 20191113023223epcas1p3a84c3ad4a2350261e3a5c9f02cbe89ed
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191112215123epcas5p13e9eec7f2209a73bb1a6f09434ec91ba
References: <cover.1573595318.git.leonard.crestez@nxp.com>
 <CGME20191112215123epcas5p13e9eec7f2209a73bb1a6f09434ec91ba@epcas5p1.samsung.com>
 <872fb6e3117955b679678280483f82b3d73dd376.1573595319.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_183239_132104_4BACD47B 
X-CRM114-Status: GOOD (  21.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>, linux-arm-kernel@lists.infradead.org,
 Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/13/19 6:50 AM, Leonard Crestez wrote:
> Add devicetree bindings for the i.MX DDR Controller on imx8m series
> chips. It supports dynamic frequency switching between multiple data
> rates and this is exposed to Linux via the devfreq subsystem.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  .../memory-controllers/fsl/imx8m-ddrc.yaml    | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml b/Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
> new file mode 100644
> index 000000000000..7c98e3509f75
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
> @@ -0,0 +1,57 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/memory-controllers/fsl/imx8m-ddrc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: i.MX8M DDR Controller
> +
> +maintainers:
> +  - Leonard Crestez <leonard.crestez@nxp.com>
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

The probe() function doesn't get the IORESOURCE_MEM from dt?
Is it needed?

> +        clock-names = "core", "pll", "alt", "apb";
> +        clocks = <&clk IMX8MM_CLK_DRAM_CORE>,
> +                 <&clk IMX8MM_DRAM_PLL>,
> +                 <&clk IMX8MM_CLK_DRAM_ALT>,
> +                 <&clk IMX8MM_CLK_DRAM_APB>;
> +        operating-points-v2 = <&ddrc_opp_table>;
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
