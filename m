Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A207C9BF3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 12:16:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2OXcNKDNlUVEFiWBe7Ij6lydagpyuEb5RD8oyNVXaLo=; b=nko5RKOSA7tXZpYKDWd5z/C7O
	+TApGDgW2LSoRkT4ze2bp54gg6pLn9LKsZzfNVss8pBoJXtMQDyBdOusvhzFOunjIQxkzb8t9KOA0
	y/z9mPeOffSZ7MDXTZi8P09CFfppi+RizKnoIqAX/BDUJKXbPnTDjBUhyRXiDrKEN5X/ekzUiyBhf
	+SDuZq8w4ldv7MyodYMIeEQeCZpDx3+nqWUvkMCwlDVr7C8ASNpWODO81P6aEY/2YdqdvYtW7xo3c
	wv1v8tzXMB/yRyXcWrj6tSInJbtZmP5A7Cv7uMlZxf+MJ2xpq1YVOCZ5zctWDM6YKCo/4kf4TzoW1
	5fqAYQD9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFyA9-0003px-Kc; Thu, 03 Oct 2019 10:16:45 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFyA1-0003pa-As
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 10:16:38 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x93A1YhG005393; Thu, 3 Oct 2019 12:16:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=L4LLR9A842To83iMCr2kJJo+nQXIiFznTI7PhQwWL6M=;
 b=PFe9zeM2Zoy1K7RCpNUac4jSDN/qZtCabQVNCg/lYvXkJTRfa2Urog1hqg/aPyduHn8w
 MndtdtMz929onq4Rl3dbaFLli/rBuv/P/EZR6XvsdAJ1rMchgHJg3zvQNrocnJcmYtWN
 LbJEXZvBrQ/TKtzJHzULUkJnDEA/uw3N8AZi3hr6Cje012lbHwT+DAtYV1dfuSUgqMpu
 m1plOZpHDWATmcEigXunX2TEIHNsPIpoBrN2Z2pdeuSj1Dd5gbJZ+IfT2z5QEe5j2low
 05hPwvGKQpwo5bCPf0PqOQFtFFKWpVkxqwG7oWrsJ+1Pt7i3w11boqtPDguVugdvBkSH qg== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vcem38uxw-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 03 Oct 2019 12:16:29 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 43A0322;
 Thu,  3 Oct 2019 10:16:26 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 978052B7B2E;
 Thu,  3 Oct 2019 12:16:25 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 3 Oct
 2019 12:16:24 +0200
Subject: Re: [PATCH 0/5] net: ethernet: stmmac: some fixes and optimization
To: Christophe Roullier <christophe.roullier@st.com>, <robh@kernel.org>,
 <davem@davemloft.net>, <joabreu@synopsys.com>, <mark.rutland@arm.com>,
 <mcoquelin.stm32@gmail.com>, <peppe.cavallaro@st.com>
References: <20190920053817.13754-1-christophe.roullier@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <7575369f-0f42-9afa-4212-bb82100a7a1b@st.com>
Date: Thu, 3 Oct 2019 12:16:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190920053817.13754-1-christophe.roullier@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG8NODE3.st.com (10.75.127.24) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-03_04:2019-10-01,2019-10-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_031637_668501_E5050FC9 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, andrew@lunn.ch, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christophe

On 9/20/19 7:38 AM, Christophe Roullier wrote:
> Some improvements (manage syscfg as optional clock, update slew rate of
> ETH_MDIO pin, Enable gating of the MAC TX clock during TX low-power mode)
> Fix warning build message when W=1
> 
> Christophe Roullier (5):
>    net: ethernet: stmmac: Add support for syscfg clock
>    net: ethernet: stmmac: fix warning when w=1 option is used during
>      build
>    ARM: dts: stm32: remove syscfg clock on stm32mp157c ethernet
>    ARM: dts: stm32: adjust slew rate for Ethernet
>    ARM: dts: stm32: Enable gating of the MAC TX clock during TX low-power
>      mode on stm32mp157c
> 

DT patches will be applied on stm32-next after dwmac-stm32 patches merge 
in net-next.

>   arch/arm/boot/dts/stm32mp157-pinctrl.dtsi     |  9 +++-
>   arch/arm/boot/dts/stm32mp157c.dtsi            |  7 ++--
>   .../net/ethernet/stmicro/stmmac/dwmac-stm32.c | 42 ++++++++++++-------
>   3 files changed, 38 insertions(+), 20 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
