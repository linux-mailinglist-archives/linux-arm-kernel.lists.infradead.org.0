Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D11792E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 20:16:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cex2UMAgt2OZWXE9RVRJb14KsmDbzAifu7xup6vaTsE=; b=JVn4Kvb4OmlLDAuRTiIS7CNKq
	9tTXi1VzJiEZyliWvZE9TjKzFxTqNMn7k7ff9r+aoJIRRwHNC1doKGu6qQwzyKC8wso22/QY/fziQ
	Vw/4RCRewZ0/9lQU1XhK1imxbSi+wIPyHK/V6SlCpZ01NLw1HIa6ZnV4KW06qwdjzPcOSgRZXk/ef
	/Xe9y4VIRQyj7ERMXthmhh3I+pY8ZgRmfYf2CqcDuGxnbgNiqxCMEfEhiiqbpSGXWiadeLaTEuzIP
	k3aGw71pAmZlWTQ2cyWW1rLGDszW66gPqOWfNA9SlIj/Ssc8vmQESgp0JDOKO6QsKyGRRLOO+vBT5
	jEnQpcTKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsACK-0003Y8-41; Mon, 29 Jul 2019 18:16:36 +0000
Received: from mxout1.routing.net ([2a03:2900:1:a::a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsAC4-0003XP-4I; Mon, 29 Jul 2019 18:16:21 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.253])
 by mxout1.routing.net (Postfix) with ESMTP id C9DC743E4E;
 Mon, 29 Jul 2019 18:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=dkim; t=1564424174; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HP6trMB9va7UVgbWclPeNJtnCBo+M1pqC/xaYjKxvj8=;
 b=sm+KrCEUw+eAxXAsg/LcgF3MQTCbRVLNqKsuxtH5m8fYpSZWdaXQCQ/KPJ7vK5JYq1JR8F
 oBeNmeY7VC5uTNpp+UVWvnXAu8LjpojxVF3JwQWgv7ieQg5e+fWpX/2UdpF/MvEyliNoiW
 r1m9nL5PR+zxy0ff3ItRqhSzBj5pNiE=
Received: from [192.168.0.21] (fttx-pool-185.76.97.79.bambit.de [185.76.97.79])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 7DC8D405D3;
 Mon, 29 Jul 2019 20:16:13 +0200 (CEST)
Subject: Re: [PATCH v3 00/10] implement poweroff for mt6323 / bpi-r2
To: Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Allison Randal <allison@lohutok.net>, "David S. Miller"
 <davem@davemloft.net>, devicetree@vger.kernel.org,
 Eddie Huang <eddie.huang@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Kate Stewart <kstewart@linuxfoundation.org>, Lee Jones
 <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Richard Fontana <rfontana@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "Tianping . Fang" <tianping.fang@mediatek.com>
References: <20190729174154.4335-1-frank-w@public-files.de>
From: Frank Wunderlich <frank@fw-web.de>
Message-ID: <e1274024-b67c-3d04-50d3-f6fcd3b3cbe6@fw-web.de>
Date: Mon, 29 Jul 2019 20:16:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729174154.4335-1-frank-w@public-files.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_111620_480663_3DD1AD8C 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

sorry about missing part 9+10, my mail-provider blocks the mails, 
currently i cannot send with this account

i try sending with another

regards Frank

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
