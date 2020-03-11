Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 115BD180E91
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 04:35:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pBmhkq/iT28HsejCYK/8Upa2WitUnPhTDHWolwb/3sI=; b=izZsrwwS+p8PT9
	waPIxQgCYvu2kSpKbi0uMSQo+rzQONetQbVOAHE/UKeRh74pbZeqKW4cuRcsGwfzx9GXT1rWhQw3g
	9HwzgZL+C2EfsBp5DJE7war1lYl39NxcvyjR1eehyWIfLRgZv+xMNwFBJrz+Q9bsNAckpHycz1XHA
	dLMEruS2JSyRWb9agPnUZleVD70ioM2WAW1zRZP5AaTaHMzMm/Qqp6MfA5k2OuzEO7TzRvIo9glip
	5uwZZqeDDfDgj+yLPDChxvYp3xwU/gGK6+iu3N557aoscwQmDQjvA9tKUDURKctN9O1Oy1j/QpHU5
	BJDJt9uXhgL9Zj1yK4cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBs9M-0001NP-9M; Wed, 11 Mar 2020 03:35:16 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBs9E-0000Pm-HP; Wed, 11 Mar 2020 03:35:10 +0000
X-UUID: 3f0325e669e148fc896784c0c8be1fec-20200310
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Hs7qXhY4scbN9V12HC8l5mpj1ZLtWI/x/58EtakrmHg=; 
 b=h5J3He0IDt7KmfFWkOHEjGDcyD/zqs9HUtmqCQUV55d28qxfIB+LNNenXupAOOAfbiHXyFHEw2VZHtP2eoGPb12SJzhjOmAsCgaFD6JH+xnxCPJkyOWkDPkLGukj/KZD8Gvj9PX3n9E3SW4ENArCgkD1LElcDfHe/iIJM1STNxU=;
X-UUID: 3f0325e669e148fc896784c0c8be1fec-20200310
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1487881285; Tue, 10 Mar 2020 19:34:55 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Mar 2020 20:24:52 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Mar 2020 11:23:38 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 11 Mar 2020 11:24:38 +0800
Message-ID: <1583897091.14612.1.camel@mtksdaap41>
Subject: Re: [PATCH v9 4/5] rtc: mt6397: Add support for the MediaTek MT6358
 RTC
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Date: Wed, 11 Mar 2020 11:24:51 +0800
In-Reply-To: <1583835040-19157-5-git-send-email-hsin-hsiung.wang@mediatek.com>
References: <1583835040-19157-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1583835040-19157-5-git-send-email-hsin-hsiung.wang@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_203508_613220_621085E2 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sebastian Reichel <sre@kernel.org>, Richard Fontana <rfontana@redhat.com>,
 Lee Jones <lee.jones@linaro.org>, linux-rtc@vger.kernel.org, Nicolas
 Boichat <drinkcat@chromium.org>, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, Frank
 Wunderlich <frank-w@public-files.de>, Ran Bi <ran.bi@mediatek.com>, Sean
 Wang <sean.wang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas
 Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro
 Zummo <a.zummo@towertech.it>, Josef Friedl <josef.friedl@speed.at>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-03-10 at 18:10 +0800, Hsin-Hsiung Wang wrote:
> From: Ran Bi <ran.bi@mediatek.com>
> 
> This add support for the MediaTek MT6358 RTC. Driver using
> compatible data to store different RTC_WRTGR address offset.
> This replace RTC_WRTGR to RTC_WRTGR_MT6323 in mt6323-poweroff
> driver which only needed by armv7 CPU without ATF.
> 
> Signed-off-by: Ran Bi <ran.bi@mediatek.com>
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> ---

<...>

> diff --git a/include/linux/mfd/mt6397/rtc.h b/include/linux/mfd/mt6397/rtc.h
> index 7dfb63b..3dc48e8 100644
> --- a/include/linux/mfd/mt6397/rtc.h
> +++ b/include/linux/mfd/mt6397/rtc.h

<...>

> +
> +static const struct mtk_rtc_data mt6358_rtc_data = {
> +	.wrtgr = RTC_WRTGR_MT6358,
> +};
> +
> +static const struct mtk_rtc_data mt6397_rtc_data = {
> +	.wrtgr = RTC_WRTGR_MT6397,
>  };

Hi,

mt6323-poweroff.c doesn't need these _rtc_data. Please put them in
rtc-mt6397.c

Joe.C

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
