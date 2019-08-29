Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 008F3A11B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 08:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YDT1Wjz8j4ydi0RerH1N96QDBRDF6FGiBi6WUgpxIJc=; b=h5vrWvUGYDCf3J
	HSofe++Tz1SQLIg4Ejbmz5RkKwgHhT7Phm3JrMUk8Rfq3J7ojACKgTR/9lZzKJVGS5rSaQ2aOhEKO
	v2rdQAKOnZLpo2r8wuMa4EkcPta5YfNuJOvgfnQlfFqImB+nZuZDi4q5sVdMy4+3Wa7xiXYlWDsYT
	yfH1ySjTCXLKWXTZ1Kx10/3g+VbLDbcGT0NDAXlae0F53oAJurSdwT3lTHHj24VD+t6lwohXEmmxv
	u987ruBoD3H4d+CWl1gYyUCiZe5lHp6AqzIZP4JalMZ/n2EXyv//W9IWpTZZh3XJWZFJ+aBTxbvps
	+M2d0UBubor/tupQCnFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3DrX-0002mE-Tc; Thu, 29 Aug 2019 06:24:52 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3DrO-0002lp-6H; Thu, 29 Aug 2019 06:24:43 +0000
X-UUID: b00eabf6e1bf48439b3a61beea65d3a5-20190828
X-UUID: b00eabf6e1bf48439b3a61beea65d3a5-20190828
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1018108465; Wed, 28 Aug 2019 22:24:45 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 23:24:44 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 14:24:42 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 29 Aug 2019 14:24:42 +0800
Message-ID: <1567059876.15320.3.camel@mtksdaap41>
Subject: Re: Aw: Re: [BUG] [PATCH v5 02/10] mfd: mt6397: extract irq related
 code from core driver
From: Hsin-hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Frank Wunderlich <frank-w@public-files.de>, Matthias Brugger
 <matthias.bgg@gmail.com>
Date: Thu, 29 Aug 2019 14:24:36 +0800
In-Reply-To: <trinity-a57f08bb-e30e-4e74-911c-c40e335d00da-1566580580817@3c-app-gmx-bs75>
References: <1566531931-9772-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1566531931-9772-3-git-send-email-hsin-hsiung.wang@mediatek.com>
 <trinity-1f82bff1-535e-47cd-9a2f-8faccb56e356-1566562433314@3c-app-gmx-bs11>
 <e8a918ab-3e7a-b487-db77-df28d56518ce@gmail.com>
 <0A87F427-2D81-412A-9549-09A51A021799@public-files.de>
 <b5a21908-faee-17d1-ce26-99b941c0fa70@gmail.com>
 <trinity-a57f08bb-e30e-4e74-911c-c40e335d00da-1566580580817@3c-app-gmx-bs75>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_232442_236071_0E9E29B9 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, Sean Wang <sean.wang@mediatek.com>, Liam
 Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Kate Stewart <kstewart@linuxfoundation.org>,
 "=?ISO-8859-1?Q?=22Ren=E9?= van Dorst\"" <opensource@vdorst.com>, Thomas
 Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>, Lee
 Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Frank/Matthias,

On Fri, 2019-08-23 at 19:16 +0200, Frank Wunderlich wrote:
> > Gesendet: Freitag, 23. August 2019 um 17:42 Uhr
> > Von: "Matthias Brugger" <matthias.bgg@gmail.com>
> 
> > I suppose that's because 3/10 has code that should be in 2/10 and for some
> > reason 3/10 was not pushed for linux-next inclusion. Although it has the same
> > Acked-for-mfd-by tag.
> >
> > @Frank, can you test if adding 3/10 to your code base fixes the issue?
> 
> adding part 3 [1] seems to fix the issue too
> 
> [    4.960051] mt6323-regulator mt6323-regulator: Chip ID = 0x2023
> 
> thanks
> 
> [1] https://patchwork.kernel.org/patch/11110509/
Thanks for your comments.
The root cause seems I didn't split the code well.
I will fix it in the next version.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
