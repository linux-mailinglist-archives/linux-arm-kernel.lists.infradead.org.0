Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D5B8ACBA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 04:33:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NNQxGhN3jy3scwfqbqv2KExERArkhJsKfubRTsIAMI=; b=PGiGwCGnZpv/5N
	g4ckxbS7/djDix2d6Y6za+YS/RacM+KcLDl+Q3w3ss7wFMXw0BGyEkt1bRcLAz8nTIEy959g5hhRb
	vKjDOsC+jHvi+AnmCPAsUEvqT9j5gh+gPHzpjqN6Zw+5o/gsgOpnP2gTrT8zG1SGedxCEV4AOjDm8
	Hqd63W6c1dxa+CGx9VnX2JnPStNafv7n4XqReLSdiACdFayjebcrHR010tB7ryz+YIXtkolEP1s3E
	i2sF0v0wcfCTVD+ZReL6Wo+DMFEh7qjJZPR+S8W3mxPQ1tBXRf0Ve59EbHFLOcqc2UdF/s7nEvNB+
	rpuQXgwv8N2269pSd+Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxMdJ-0004Ic-2F; Tue, 13 Aug 2019 02:33:57 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxMd7-0004I5-Q5
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 02:33:47 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190813023341epoutp02cfad65af22cf77dc29193a50f3ce136c~6WsTZNG3-1015710157epoutp02C
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 02:33:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190813023341epoutp02cfad65af22cf77dc29193a50f3ce136c~6WsTZNG3-1015710157epoutp02C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565663622;
 bh=yVwf31DriONvVIXmA5b/zLa7bSGYKeJTti5nzAsjtwg=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=STCUd3Wto4omJDZkwwl5mBBvNyOTx5bAxFnDmySl4bkoqiaaS7MmEFTRJv0p7AxY7
 vAIQipqlRrNEM/bgOxkbOmjrZgtExqF6BE6DS0L6bgeFRpHs75703zxVrOTph1htbN
 sB2eSOEKkUqoy59VwICTJN97t9k4GlKZSsX45dqA=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20190813023341epcas1p44408d2616685ba7f4a68d7f4ddb411ad~6WsS48PDv2734727347epcas1p4c;
 Tue, 13 Aug 2019 02:33:41 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.158]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 466xbk5lf7zMqYlt; Tue, 13 Aug
 2019 02:33:38 +0000 (GMT)
X-AuditID: b6c32a38-fa2059c000001040-d9-5d5221823936
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 F4.8A.04160.281225D5; Tue, 13 Aug 2019 11:33:38 +0900 (KST)
Mime-Version: 1.0
Subject: RE: [PATCH 3/7] PM / devfreq: Add generic imx bus driver
From: MyungJoo Ham <myungjoo.ham@samsung.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Stephen Boyd
 <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>, Rob Herring
 <robh+dt@kernel.org>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <dbdd1ae60993d5fe73ce5b446b2c7d559c981cf1.1565633880.git.leonard.crestez@nxp.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190813023338epcms1p307caf6727399e9f3e320b965fb95a603@epcms1p3>
Date: Tue, 13 Aug 2019 11:33:38 +0900
X-CMS-MailID: 20190813023338epcms1p307caf6727399e9f3e320b965fb95a603
X-Sendblock-Type: SVC_REQ_APPROVE
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 101P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupkl+LIzCtJLcpLzFFi42LZdljTQLdJMSjW4Od9bYtDx7ayW3w9fYrR
 Ytmlo4wWX6buYrbYPjPZ4uUhTYvrX56zWsw/co7VYuPm2ywW0/duYrNYNXUni8X58xvYLc42
 vWG3WHH3I6vFpsfXWC26fq1ktvjce4TRYun1i0wWF0+5Wqw+d5DNonXvEXaLrkN/2Sz+XdvI
 YvFii7jFxq8eFi13TB2kPNbMW8Po8f5GK7vHgk2lHptWdbJ53Lm2h81j85J6j43vdjB5HHy3
 h8mj/6+BR9+WVYwenzfJBXBHZdtkpCampBYppOYl56dk5qXbKnkHxzvHm5oZGOoaWlqYKynk
 Jeam2iq5+AToumXmAL2upFCWmFMKFApILC5W0rezKcovLUlVyMgvLrFVSi1IySmwLNArTswt
 Ls1L10vOz7UyNDAwMgUqTMjOeLPWsOApV8WUK3MYGxhfc3QxcnJICJhInJ+znr2LkYtDSGAH
 o8TmKWeZuxg5OHgFBCX+7hAGqREWcJTom/CZHcQWElCSaLi5jxkiri/R8WAbI4jNJqArsXXD
 XRaQOSIC8xklZl8/zQbiMAtMYpdYvWsxM8Q2XokZ7U9ZIGxpie3Lt4J1cwrESSxZ+RoqLipx
 c/Vbdhj7/bH5jBC2iETrvbNQcwQlHvzczQgzZ8aU/1C91RLXpi8G+0ZCoIVRonf1FKgifYkz
 c0+ygdi8Ar4SHU+Os4LYLAKqErvOP4RqdpF4dmwJE4jNLCAvsf3tHHBIMAtoSqzfpQ9Roiix
 8/dcRphfGjb+ZkdnMwvwSbz72sMKE98x7wkThK0mcWj3Eqh6GYnT0xcyT2BUmoUI61lIFs9C
 WLyAkXkVo1hqQXFuemqxYYEJcuxuYgRnAy2LHYx7zvkcYhTgYFTi4a1ICIwVYk0sK67MPcQo
 wcGsJMJb8jcgVog3JbGyKrUoP76oNCe1+BCjKdD/E5mlRJPzgZkqryTe0NTI2NjYwsTQzNTQ
 UEmcd+EPi1ghgfTEktTs1NSC1CKYPiYOTqkGRrMcY1HHWT+avkb+u7fh0O6eR0xWXD1pq+UZ
 L+vunN193D1l6QNOSYtKpfu3DZ9aijsvv1Bzxjb++fu1Cy5/Wi6SXMfDnVIgysD4XrJ8lgtn
 9j6B+deTlKaZVTxY38TJ9enAvNTykELONo34Bh/fBxq9ZVmbAvb99tcMvrrI9F1LhVRBpssV
 JZbijERDLeai4kQAtb4juhwEAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190812185005epcas3p10a9a3dbb90489534222e093c63f27900
References: <dbdd1ae60993d5fe73ce5b446b2c7d559c981cf1.1565633880.git.leonard.crestez@nxp.com>
 <cover.1565633880.git.leonard.crestez@nxp.com>
 <CGME20190812185005epcas3p10a9a3dbb90489534222e093c63f27900@epcms1p3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_193346_085817_19F2D779 
X-CRM114-Status: GOOD (  24.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: myungjoo.ham@samsung.com
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 Artur Swigon <a.swigon@partner.samsung.com>, Abel Vesa <abel.vesa@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Anson Huang <Anson.Huang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Will Deacon <will@kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>Add initial support for dynamic frequency switching on pieces of the imx
>interconnect fabric.
>
>All this driver actually does is set a clk rate based on an opp table.
>
>No attempt is made to map registers or anything clever.
>
>Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>---
> drivers/devfreq/Kconfig       |  12 +++
> drivers/devfreq/Makefile      |   1 +
> drivers/devfreq/imx-devfreq.c | 148 ++++++++++++++++++++++++++++++++++
> 3 files changed, 161 insertions(+)
> create mode 100644 drivers/devfreq/imx-devfreq.c
>
>diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
>index defe1d438710..9088a151bafe 100644
>--- a/drivers/devfreq/Kconfig
>+++ b/drivers/devfreq/Kconfig
>@@ -90,10 +90,22 @@ config ARM_EXYNOS_BUS_DEVFREQ
> 	  Each memory bus group could contain many memoby bus block. It reads
> 	  PPMU counters of memory controllers by using DEVFREQ-event device
> 	  and adjusts the operating frequencies and voltages with OPP support.
> 	  This does not yet operate with optimal voltages.
> 
>+config ARM_IMX_DEVFREQ
>+	tristate "i.MX DEVFREQ Driver"
>+	depends on ARCH_MXC || COMPILE_TEST
>+	select DEVFREQ_GOV_PASSIVE
>+	select DEVFREQ_GOV_SIMPLE_ONDEMAND
>+	select DEVFREQ_GOV_USERSPACE
>+	select PM_OPP

Hello,

I have a simple question:

Does it support ALL ARCH_MXC SoCs?

Cheers,
MyungJoo



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
