Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8AA1085A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 00:54:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f02j0r+yQ+V0Asn1WbuSsSzIN+dFVAtdxkMYMcoKKQ4=; b=ClzEuQqsMwVeqw
	LC9Bbie8YfozYH07aL3/3ebuSVklOXICID9SY850Ni0cA0s3BrWUfHkaIM9hbdwdzLaMVzYxtERF2
	0BLkr9m9Xh9IIs6HEj0LBdW+cI66Kup1wS4TDpPLxzth20tRmtVbbKbRvuxHooKbV1X+PUC/vnK6P
	6C0bHEexvmcr/7YyqgvbCb1ZrfH1zT3C6N8jDlzWKrBcj/InpW6LIKJdrm4Gx1VF7nuWkCubsQVON
	JyGe8LphNBc8WL8Fu9VHAdw9RHXuZt0JtVER8N0pSFesphtAdLKU3DkiAGaoNvBuBfA9KFyXprLYI
	ekCpDjsQIwX+Fdn9K6Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ1hf-0003nG-74; Sun, 24 Nov 2019 23:54:07 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ1hX-0003mY-L1
 for linux-arm-kernel@lists.infradead.org; Sun, 24 Nov 2019 23:54:01 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20191124235353epoutp04f1efc72c0eed08cfa892047ad1429102~aPmdtZqGU0263002630epoutp04I
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 Nov 2019 23:53:53 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20191124235353epoutp04f1efc72c0eed08cfa892047ad1429102~aPmdtZqGU0263002630epoutp04I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1574639633;
 bh=AVvdCtMY//59JkfT+HX/3Kx1Dzwu9AgzcPoN1Jdpdt8=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Cz/oz5DAAUC2aZ8t+UcwtXzs95cjBc1hP7+2mvnw4jFhrerHyCS3RLb5rCPltOpCH
 jufLCbhRzZxprdSiFIHBILNV3fhe0WejA1BYhdtRmJbX9Ki5HS1ZXz8I/wPs36qi1r
 L8TUYUTp3436XjYlnfwiKDDFjFwa16tFn6f9JhLg=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20191124235352epcas1p3fed83ed00327ba1521f2b91b5819fdfe~aPmc9ok1a1532315323epcas1p3l;
 Sun, 24 Nov 2019 23:53:52 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.154]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 47Ln7J23CczMqYkZ; Sun, 24 Nov
 2019 23:53:48 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 DC.DE.48498.C081BDD5; Mon, 25 Nov 2019 08:53:48 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191124235347epcas1p28508f778af78e31484ff54490986f2fe~aPmXrHABF0205002050epcas1p2k;
 Sun, 24 Nov 2019 23:53:47 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191124235347epsmtrp1c1294cb0c214ff9bcda9b225b2d1ed49~aPmXp1pT32074420744epsmtrp1g;
 Sun, 24 Nov 2019 23:53:47 +0000 (GMT)
X-AuditID: b6c32a36-a55ff7000001bd72-90-5ddb180cb625
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 AD.9F.10238.B081BDD5; Mon, 25 Nov 2019 08:53:47 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191124235346epsmtip2b7ab829c6bf0a17771700d4bc29825ce~aPmXRJ2Sq1614516145epsmtip2t;
 Sun, 24 Nov 2019 23:53:46 +0000 (GMT)
Subject: Re: [PATCH v7 4/5] PM / devfreq: Add dynamic scaling for imx8m ddr
 controller
To: Leonard Crestez <leonard.crestez@nxp.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <f8838bc8-44db-551f-3199-eeea91e493f7@samsung.com>
Date: Mon, 25 Nov 2019 08:59:53 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <c0b332b85560e39d7dbb5e88b99bbed1d1b32373.1574458460.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01TbUxbVRj29N7eXnB1l0LHESMtdzFxKNDCwIOBuQibN2xm+BFjFhnewE0h
 9MvednNuTvxgMGQbZOJC1a3pxlIQhX6wwQSRUtkY0AnyFRA1A5NNHTgrC2Gitr0s8u95n/d5
 zpvnPXlJTNYriSNL9WbOpGe1NBGJX+zbkpK0Ac4UqOxDDyJvf7sELQ1eA+jC6LcA/VV/GUNz
 P80AdKmhCJ31+cXI6Z7B0eluF4Ga6ztxdP16mwQNv/e7BDlm74iRa25CjO7U/ChG1StNGAoc
 9wHUODkiQhOOOjEKtM0BNHJtB5p510Ggz/29BBoaHBWjim6fBFV7Vwn0z4QTRzc9sajx3ASG
 nEvM9nimvtoBmJYzLYBZnKqQMJ+Uj+CMzWVhXM3HCOaHiS6CcZ9/h3EudIiY3oUuEXNyVcWs
 9MkZz3glzpzwNAMm4IrP37i3LKuEY4s5k5LTFxmKS/WabHrXS4U5hekZKnWSOhM9RSv1rI7L
 pnN35yftLNUGd0Qr97NaS5DKZ3meTtmWZTJYzJyyxMCbs2nOWKw1ZhqTeVbHW/Sa5CKD7mm1
 SpWaHhS+XlZyymoXGS/ANxevDGHlwB1VDSJISG2F9slOSTWIJGVUB4BjK35MKP4E8PhHYyKh
 uAugq+8Wft8yfqMLFxrdADaN3V0rFgFsr5gEIVU09Sp0fPV1sEGSMZQJ1gwkhjQY9a8EXrRd
 xUIagkqEPTeniBDeSCXA8eW5sFdKbYP+yvawBqceg60VgfA78uCbg0usIImCAw3zYTqC2gfd
 tsMhGqNi4fT8WZGAFfDS7U/DaSA1RkLf1dNrAXJh4MMmIOBo+OsVj0TAcfDWyaNr+BBsGvAR
 grkKQE/Pd2KhkQZ7Gk+JQoMxagtsvZwi0Amw895nQBj8EFxYqhGHJJCSwqqjMkGyGX7/86xI
 wA/Dc5XHiFpAW9elsa6LYF0Xwfr/MBvAm8EmzsjrNByvNqau/2wXCJ9PYkYHsPt3ewFFAnqD
 tO2L6QKZmN3PH9R5ASQxOka6c3iqQCYtZg++xZkMhSaLluO9ID246zosTl5kCB6j3lyoTk9N
 S0tDW9UZ6Wo1HSsll0cKZJSGNXNlHGfkTPd9IjIirhy03XO27sk57M8se+WNB55UTD0hVbXk
 2fe1K5Q5uc+ye5JHFXV7uTwgtcp/0XSuyp97OSEmev7R3gOv7TqwcGjghVyNLfnMcKYrMq+/
 9vm+F0WVJvdv/VWzmmeORO+48YHy7/c3NQSmHy//g3qktbGWzPvmy+3nfW8rso5INy9/HM9H
 1d6mcb6EVSdiJp79Dxo3fjBUBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0iTYRTHefZe9rpavs7GHg2UFlEZZVIfnsCkD11eCCIwuoHZ0Bc1t7n2
 ql0hK0RaF+2ywnWzvLSWkts0zVu0qZWW4WpzqZW6UhN12CrEW7mtYN/+nPP7nXM+HAoTVRDh
 VJoyk1UrZXIpKcCfWqWRaxbAnoR1tj4MWVqr+ehXextAZbYWgH5q6zDk+tIDUE1hErrX3EEg
 o7kHRzcbTSQyaJ/h6N27Sj56e3aUj/SfJghkcjkINHHxM4E0U48w5LnUDFBpVycPOfRXCOSp
 dAHU2bYV9ZzRk+hxxwsSvWm3ESi3sZmPNJZZEs05jDgarpKg0mIHhoy/mM0RjFajB0z53XLA
 uJ25fOZWTifOFJmyGJPhPMn0OhpIxlxymjGO1/KYF+MNPCZ/dh0zZRUzVfY8nLlcZQCMxxSx
 K/iAIDaZladls+rouEOC1Gu6BzxVGTzmfvkGywHmEA0IoiC9AdoHGnANEFAiuh7A56/vA38j
 DN7obME0gJrPodBq5fzMGIADvX2Ylwml90F9fRPuzYtpNawry+d7IYzOpWBFeyHfbwwAWDBr
 Ir0USUfB58NOXw6ml0L7pMu3TUjHwY68at9UnF4On+R6fFPF8xuGapz/mBD4uvAr7r0oiD4I
 zUWnvGWMXgFn7towf5bA7q/3eP4cCWvGbmMFIFQXYOsCFF2AogtQigBuAGGsilOkKLgYVYyS
 PbqWkym4LGXK2qQMhQn4nihqVS14X5JoATQFpAuFlRXdCSJCls0dV1gApDDpYuG2t84EkTBZ
 dvwEq85IVGfJWc4CllC4VCL8pmzdL6JTZJlsOsuqWPX/Lo8KCs8Bmxxq0+Ca4PqrDdf3pKsG
 5uj4I67IHys/9ldsKdYe3nvglfwz4dg4dw4MDU7vjKPLuz6FFeRETO8Xu8fnsusWfIgWx+5Y
 5D54Z9nqskeb02NGtpfG936Xrb95bTp+h32vvWlUIjd3W2ZGJg27LdV/7giswt8TJ3UXjP01
 u1uVcQ9HpDiXKouJwtSc7C+oqkdRQAMAAA==
X-CMS-MailID: 20191124235347epcas1p28508f778af78e31484ff54490986f2fe
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191122214539epcas1p34d4ca24634642e8a79c33d7a7c9291ba
References: <cover.1574458460.git.leonard.crestez@nxp.com>
 <CGME20191122214539epcas1p34d4ca24634642e8a79c33d7a7c9291ba@epcas1p3.samsung.com>
 <c0b332b85560e39d7dbb5e88b99bbed1d1b32373.1574458460.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_155359_929515_385809B6 
X-CRM114-Status: GOOD (  26.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 11/23/19 6:45 AM, Leonard Crestez wrote:
> Add driver for dynamic scaling the DDR Controller on imx8m chips. Actual
> frequency switching is implemented inside TF-A, this driver wraps the
> SMC calls and synchronizes the clk tree.
> 
> The DRAM clocks on imx8m have the following structure (abridged):
> 
>  +----------+       |\            +------+
>  | dram_pll |-------|M| dram_core |      |
>  +----------+       |U|---------->| D    |
>                  /--|X|           |  D   |
>    dram_alt_root |  |/            |   R  |
>                  |                |    C |
>             +---------+           |      |
>             |FIX DIV/4|           |      |
>             +---------+           |      |
>   composite:     |                |      |
>  +----------+    |                |      |
>  | dram_alt |----/                |      |
>  +----------+                     |      |
>  | dram_apb |-------------------->|      |
>  +----------+                     +------+
> 
> The dram_pll is used for higher rates and dram_alt is used for lower
> rates. The dram_alt and dram_apb clocks are "imx composite" and their
> parent can also be modified.
> 
> This driver will prepare/enable the new parents ahead of switching (so
> that the expected roots are enabled) and afterwards it will call
> clk_set_parent to ensure the parents in clock framework are up-to-date.
> 
> The driver relies on dram_pll dram_alt and dram_apb being marked with
> CLK_GET_RATE_NOCACHE for rate updates.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>  drivers/devfreq/Kconfig      |   9 +
>  drivers/devfreq/Makefile     |   1 +
>  drivers/devfreq/imx8m-ddrc.c | 465 +++++++++++++++++++++++++++++++++++
>  3 files changed, 475 insertions(+)
>  create mode 100644 drivers/devfreq/imx8m-ddrc.c
> 
> diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
> index 59027d7ddf2a..5eac479dd05f 100644
> --- a/drivers/devfreq/Kconfig
> +++ b/drivers/devfreq/Kconfig
> @@ -89,10 +89,19 @@ config ARM_EXYNOS_BUS_DEVFREQ
>  	  Each memory bus group could contain many memoby bus block. It reads
>  	  PPMU counters of memory controllers by using DEVFREQ-event device
>  	  and adjusts the operating frequencies and voltages with OPP support.
>  	  This does not yet operate with optimal voltages.
>  
> +config ARM_IMX8M_DDRC_DEVFREQ
> +	tristate "i.MX8M DDRC DEVFREQ Driver"
> +	depends on ARCH_MXC && HAVE_ARM_SMCCC

I'll edit it as following and applied it.

diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
index 5eac479dd05f..38a94df749a2 100644
--- a/drivers/devfreq/Kconfig
+++ b/drivers/devfreq/Kconfig
@@ -93,7 +93,8 @@ config ARM_EXYNOS_BUS_DEVFREQ
 
 config ARM_IMX8M_DDRC_DEVFREQ
        tristate "i.MX8M DDRC DEVFREQ Driver"
-       depends on ARCH_MXC && HAVE_ARM_SMCCC
+       depends on (ARCH_MXC && HAVE_ARM_SMCCC) || \
+               (COMPILE_TEST && HAVE_ARM_SMCCC)

(snip)

-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
