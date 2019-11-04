Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B75A6ED6D9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 02:17:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TJqnnCL6AZKL9LIFHZvWTqtqvVXW9G3mtJ/6FvvrtoE=; b=OHbvTxRxYWw6ti
	AqYCMog1zO4e6B6Z8PRU3TWAjn8Al5QBokFJ9bFsBNbdYO3v2Dq+CMCaDvRmGlf63SsLXCG0fcIwj
	9hhOVmxkzQif3+1N/UU4mMKHijlGbGo7hmvp9UucoyEMKsVkdk7mwa9UWePHOGZNNioGPozIcCfas
	nCDXIqXhLaiYbWsUQ4GICEP15SvdVMdSJOrxzc2AtyII4q4fjPSChCbzY5XZijAIe3hVeF8UUaQlJ
	QCrdit3ZnHB+8SS/udyz2dnWyViqwXsWUKDSh7sWUDLmdRBGeq0E3+hwuBBrQWTABDl7b6Lguavgk
	8o1nHCCdLZhx0JSGghtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRQzn-0007cR-Ty; Mon, 04 Nov 2019 01:17:27 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRQzf-0007bc-KE
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 01:17:21 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id AEC5BAC7CFCEE8B8AB48;
 Mon,  4 Nov 2019 09:17:12 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0;
 Mon, 4 Nov 2019 09:17:11 +0800
Subject: Re: [PATCH -next 01/30] pinctrl: pxa25x: use
 devm_platform_ioremap_resource() to simplify code
To: Linus Walleij <linus.walleij@linaro.org>
References: <20191017122640.22976-1-yuehaibing@huawei.com>
 <20191017122640.22976-2-yuehaibing@huawei.com>
 <CACRpkdb8D_zxHfzY=+ramnNjXVsN9MMO8Q-3=iZFLS2A_ZDQuw@mail.gmail.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <c8b14d9b-253b-47a1-641f-e89d2cc79686@huawei.com>
Date: Mon, 4 Nov 2019 09:17:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CACRpkdb8D_zxHfzY=+ramnNjXVsN9MMO8Q-3=iZFLS2A_ZDQuw@mail.gmail.com>
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_171719_831611_9581BFF5 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Neil Armstrong <narmstrong@baylibre.com>, Baruch Siach <baruch@tkos.co.il>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@axis.com, Jon Hunter <jonathanh@nvidia.com>, Ludovic
 Desroches <ludovic.desroches@microchip.com>, Andy Gross <agross@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Ray Jui <rjui@broadcom.com>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Vladimir Zapolskiy <vz@mleia.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Lars Persson <lars.persson@axis.com>, linux-tegra@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, linux-oxnas@groups.io,
 =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/11/4 8:18, Linus Walleij wrote:
> On Thu, Oct 17, 2019 at 2:48 PM YueHaibing <yuehaibing@huawei.com> wrote:
> 
>> Use devm_platform_ioremap_resource() to simplify the code a bit.
>> This is detected by coccinelle.
>>
>> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> 
> These are too many patches changing too little.
> One patch should be one technical step.
> 
> I'd say squash them all into one big patch and resend.
> 
> You can collect the ACKs you received, but don't put
> too many people on CC, they will be annoyed.

Ok, will do that, thanks!

> 
> Yours,
> Linus Walleij
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
