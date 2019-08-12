Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1813189CC2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 13:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:To:
	From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xl33BSmwBbt/yqochZ0jvJLmuuDk0HGRTXVPRUPAscw=; b=UOr04tZpMABa25
	GoeBuDKnxJLPQ3AJ1JO7EeGBBcXLTwTlZObZK4Dyd5SxlZXuEd4r5Hl9lh60nB+bXXXbZ+SROYMrT
	z0DG8D4kSo5nveQE/VyKSx1AuQJHWMJ41hDndzYhVuyfRA41rgg99tl9LppytIcs4Yj1bLT/XUPXI
	xiIT8FQRr550ktFDTxcb7J7Iol/yO0+1+0J3hgbmVs3p4Ith+l5A2xNpKwr+CyaHpc5YBq1RSi7WS
	aXToVK2yfs+R9oY53WonraC3dPQOmXHhQhk6XAg3sGO3fK6QAQynljqwtFec8C4yBYBG+wkm+LXRr
	AQcPo//0lEi6TfU5HUEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx8TI-00084l-Iz; Mon, 12 Aug 2019 11:26:40 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx8Su-00084C-9R; Mon, 12 Aug 2019 11:26:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565609116;
 bh=v7b7BvrXciV3NBubwOpaemt2kAsPrl1BPe/Nz2NswBU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=MGnSkv10s6bJr+2LYe0Vg+T5aQQgWun0XdWZhVJjH0OTeFdRRlBmS6Ih2lFLvyv5L
 vWF5UvQnSdqCZULmjwQ9RVEYSZYOAIXomyeYoAZIvUPv/MqCc2QtBZUOL0fxHIZnVy
 VqBXryDgJhswl2xOlxSt0waDs6QiYE7+ZufmluR4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.152.193] ([217.61.152.193]) by web-mail.gmx.net
 (3c-app-gmx-bs80.server.lan [172.19.170.228]) (via HTTP); Mon, 12 Aug 2019
 13:25:16 +0200
MIME-Version: 1.0
Message-ID: <trinity-0fa641df-f7bb-4627-a9ab-aac3cabc90ba-1565609115974@3c-app-gmx-bs80>
From: "Frank Wunderlich" <frank-w@public-files.de>
To: "Lee Jones" <lee.jones@linaro.org>
Subject: Aw: Re: [PATCH v3 06/10] mfd: mt6323: some improvements of mt6397-core
Date: Mon, 12 Aug 2019 13:25:16 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20190812102209.GI26727@dell>
References: <20190729174154.4335-1-frank-w@public-files.de>
 <20190729174154.4335-7-frank-w@public-files.de>
 <20190812102209.GI26727@dell>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:+H+zrFxbX3u65Kz8Q14UR+W2QL6KWeuqbqDXcd/mwlEXxknDmP8VniBO4dlsPO8lvzAXn
 3Y5NyGNEFcxG/hiDEMdhlb6mGUuC2oM0phOjueOu2MDtHhyNSzKa7zzri7AaOrLyXgls+u8sTwPQ
 oAV/CbSBYlmUVInmmRiS2kzjJFgTPVlFkzP+Rwz8lHdNBK149VceMK36vw/RyB+IoFv+U8FKiztO
 yMwrHuIbMWrhlGq1Uj1J+0nxuOtWnyd5GyKRFUYsqojA8ecuYK6tOXNnVm1cb1FrnaNST1QYDBxU
 Mg=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8Yj7l7CH0Mw=:gZd+QnMoJMQ46IbcpRg+69
 uYQ9PWSHzCb4jiQPAL0RN4XqGKUkZP7au9BlZu0WeAXvh2moFGkS+Qh6H/UHvlfwoK/zckQts
 cSjLWlFMupqJc7aAKUQfYQeemHELWiYqn7OHSi3fCzZ5BWFF4A3nQ4g4yoiqnt0pEuncDClxD
 qyoAVq9ArjxiVhYQYJA+PBrs7RziX5GkbBGDbwU5A9oGzVXvGiaDnBv6dUZOnhrW42dabqHS0
 lXU6xDXmrEAtePWxyeJZ40FbZOUl2nBhcn0Ctq5enGlq6vSuThfpLhU/cMvkVj9nHxdUkAeqy
 ASvjyoO1IKTe/Leg8l0X6YSD2sTyzyv7YXtP0U0sEOo1WUBWGayxs4gAzARxamymbaBjlhfx/
 OUyC1XD9pmsdx+kOvL61uobd2H29U8aF9pvGk1JBGdzDPzbNvzGqg7Oc1VOkBk9gGzSzeaCdw
 EWqUYj0GKkc5wRo4mB/yfqKK3ymFbRVrkA8YxocvAnR/cXIcxS+jvKmY2YyDG6p2BMGEPvXKZ
 7xzezeddUuOzzBfMo3wupso6yj2SDGjeO5OPEwTvJNjgdfUr8uCyYRFquSH5DsOvA7C4xYYjT
 gN3DvuN67PPM5sP0cvLOSC6YEijq4vcf44N36E+tBQs7z/K5g6lA0LQzCD7+B4ZjLv1wdYjDw
 06kiD9astcDCR5QcII++ExU97eegbwccVgVGX0HqIddrKtQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_042616_620506_056B47E3 
X-CRM114-Status: UNSURE (   5.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Richard
 Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, linux-rtc@vger.kernel.org,
 Allison Randal <allison@lohutok.net>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 "Tianping . Fang" <tianping.fang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie
 Huang <eddie.huang@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 Alessandro Zummo <a.zummo@towertech.it>, Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Gesendet: Montag, 12. August 2019 um 12:22 Uhr
> Von: "Lee Jones" <lee.jones@linaro.org>

> > - * Copyright (c) 2014 MediaTek Inc.
> > + * Copyright (c) 2014-2018 MediaTek Inc.
>
> This is out of date.  Please update it.

maybe i should drop change of this line completely (else it needs to be adjusted every year)

regards Frank

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
