Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C839C116DFF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 14:33:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TCAOWa6hQZa9b5r4Uo8e5umglt01RHB+S2h1E4ha6Rs=; b=b1QATn7wGNG5QuFK1Y0fBPspp
	4Ol9qA6JZWME5duJJ1kOODnuoDGr2RzAPk8onWs4iHs1rWsxkYLMZDZTem56/k9khL6yGvTlzeLVV
	ArgaBiF0/GC/CZYcULPGUxK8yVqPcYILD32rrerlu0sgNGTQpWkAi+gkq4xlkJ4KjPga5pltI6N9v
	WrWloZhsDhPmJ4Nqdz0HHMfAUcE+IoqgVTZagvkshk6QBm48JbdpurCaC2qafcCjolc4Kg/3lC5aN
	yfrIg67+1vxY5raU7PLD4GcT/zjEaYkleNvKXzARSA36HkTiNR3sFprjyozNph2Izt3fMcNTpo0xV
	1PJNzIu5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieJA8-0007lL-GL; Mon, 09 Dec 2019 13:33:20 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieJA1-0007kp-EA
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 13:33:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1575898389; x=1578490389;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZvMCSjdJbVZac2F8bcYMul/sOO8A2aMaXq5Bl5ynDSM=;
 b=PQllKqhqFuqpazx3wP6CWciKQz6FIX8bGLb+BFM+6vqxpltgk0ZUQHNjHtfTZt2L
 NHN8S+7EHwKLIb1RD5p6EXnd+jcbtXuQXuUmUldCrGGcYCjhri0mlbzBqT6L7PmA
 UqWrHkCla85x1YgmAOmIvGeti+EqP834ZoleWhijArE=;
X-AuditID: c39127d2-df9ff7000000408f-4e-5dee4d0e35f1
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id E1.83.16527.E0D4EED5;
 Mon,  9 Dec 2019 14:33:07 +0100 (CET)
Received: from [172.16.23.108] ([172.16.23.108])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019120914330285-69242 ;
 Mon, 9 Dec 2019 14:33:02 +0100 
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: fsl: Add PHYTEC i.MX6 UL/ULL
 devicetree bindings
To: linux-arm-kernel@lists.infradead.org, Mark Rutland <mark.rutland@arm.com>
References: <1568980346-385840-1-git-send-email-s.riedmueller@phytec.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <f2084e4d-8e62-80fc-e578-d3d4be50af2f@phytec.de>
Date: Mon, 9 Dec 2019 14:33:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1568980346-385840-1-git-send-email-s.riedmueller@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 09.12.2019 14:33:02,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 09.12.2019 14:33:07, Serialize complete at 09.12.2019 14:33:07
X-TNEFEvaluated: 1
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFuplkeLIzCtJLcpLzFFi42JZI8DApSvq+y7WoPMyv0Vzh63F/CPnWC0e
 XvW32PT4GqtF16+VzBaXd81hs7jb0slqsfT6RSaL1r1H2C3+bt/EYvFii7gDt8eaeWsYPXbO
 usvusWlVJ5vHnWt72Dw2L6n32PhuB5NH/18Dj8+b5AI4orhsUlJzMstSi/TtErgyJi/cwVhw
 UKBi0rqgBsZH3F2MnBwSAiYSW79fYu1i5OIQEtjKKLFv7xkmCOcUo8T6Z2sYQaqEBRIk5h/f
 xA5iiwj4Slxf0cgCYjMLHGKSeNkGNklIwEOi6dApsDibgJPE4vMdbCA2r4CNxJZLW8FsFgEV
 ifntk8DmiApESDzffoMRokZQ4uTMJ2C9nAKeEu+vL2YHOUJCoJFJYnvjQxaIU4UkTi8+ywyx
 WF5i+9s5ULaZxLzND6FscYlbT+YzTWAUmoVk7iwkLbOQtMxC0rKAkWUVo1BuZnJ2alFmtl5B
 RmVJarJeSuomRmCUHZ6ofmkHY98cj0OMTByMhxglOJiVRHiXTHwVK8SbklhZlVqUH19UmpNa
 fIhRmoNFSZx3A29JmJBAemJJanZqakFqEUyWiYNTqoExYMKi50xf/pz7bb3efW9mmW6ZxrKC
 nfyTVgpsbGb6+G5TfpXHGt0zy7f91Oc5EHPf8PFmWbHps498O8Wi2Wc3NSTRQjEl/KSstOs8
 JRVDrutu9i8F7v1bq3i1QbDl/V1Hs3I/m4XrE0uVWE0a1z/dt8ZUIFEhRnd78bIejj/PVHzF
 10tdm3pYiaU4I9FQi7moOBEACOJCtqACAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_053313_623698_53FC259F 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: devicetree@vger.kernel.org, Andrew Smirnov <andrew.smirnov@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-imx@nxp.com, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Fabio Estevam <festevam@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I just wanted to send a gentle ping for these two patches.

Regards,
Stefan


On 20.09.19 13:52, Stefan Riedmueller wrote:
> Add devicetree bindings for i.MX6 UL/ULL based phyCORE-i.MX6 UL/ULL and
> phyBOARD-Segin.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
> Changes in v2:
>   - Use seperate description for each board instead of squashing them into
>     the standard board.
> ---
>   Documentation/devicetree/bindings/arm/fsl.yaml | 18 ++++++++++++++++++
>   1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 1b4b4e6573b5..c926ff6eac67 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -164,6 +164,15 @@ properties:
>                 - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
>             - const: fsl,imx6ul
>   
> +      - description: i.MX6UL PHYTEC phyBOARD-Segin
> +        items:
> +          - enum:
> +              - phytec,imx6ul-pbacd10-emmc
> +              - phytec,imx6ul-pbacd10-nand
> +          - const: phytec,imx6ul-pbacd10  # PHYTEC phyBOARD-Segin with i.MX6 UL
> +          - const: phytec,imx6ul-pcl063   # PHYTEC phyCORE-i.MX 6UL
> +          - const: fsl,imx6ul
> +
>         - description: Kontron N6310 S Board
>           items:
>             - const: kontron,imx6ul-n6310-s
> @@ -183,6 +192,15 @@ properties:
>                 - fsl,imx6ull-14x14-evk     # i.MX6 UltraLiteLite 14x14 EVK Board
>             - const: fsl,imx6ull
>   
> +      - description: i.MX6ULL PHYTEC phyBOARD-Segin
> +        items:
> +          - enum:
> +              - phytec,imx6ull-pbacd10-emmc
> +              - phytec,imx6ull-pbacd10-nand
> +          - const: phytec,imx6ull-pbacd10 # PHYTEC phyBOARD-Segin with i.MX6 ULL
> +          - const: phytec,imx6ull-pcl063  # PHYTEC phyCORE-i.MX 6ULL
> +          - const: fsl,imx6ull
> +
>         - description: i.MX6ULZ based Boards
>           items:
>             - enum:
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
