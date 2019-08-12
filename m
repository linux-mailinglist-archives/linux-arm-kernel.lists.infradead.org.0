Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 047318A275
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 17:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ME5wIy71PaQ1aT/vpg80H63+//8vBJ2AqxK0hhtFxk4=; b=uD47XKxQWxzF3w
	zt7TkKdHg7CDcJk/SJd5rxrKWvInf6f9ziJJUVo61I2u8jBloMCX6td2QtQI+utrZXrriZxc8J/f4
	JhrN3pgZnsZ2kv4eR04gBdBC48N79xejqcOMdy4rk016ENJue1XCSzL9hqsLoUPgRloLX5klex+Dm
	mw6nUHfabuU/X1EgngrNNxTjFU9qHHits0b19DuTfjI+0+tnAkDzXzDkTiaExN7YCGBjEYkUiILj+
	Z5Se+48v3MomRIX2wvzYluVb10Hlrccju5xEUAdm4rAzHdfeXVTmxpk0f5mWKq70i8dWbiD7w50HO
	6Hj20Pbe8t2+sDqJ+pnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxCPj-000258-By; Mon, 12 Aug 2019 15:39:15 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxCPV-00023e-F7; Mon, 12 Aug 2019 15:39:03 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 84BE91C0009;
 Mon, 12 Aug 2019 15:38:56 +0000 (UTC)
Date: Mon, 12 Aug 2019 17:38:56 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v5 03/10] rtc: mt6397: move some common definitions into
 rtc.h
Message-ID: <20190812153856.GR3600@piout.net>
References: <20190812121511.4169-1-frank-w@public-files.de>
 <20190812121511.4169-4-frank-w@public-files.de>
 <20190812151128.GV26727@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812151128.GV26727@dell>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_083901_657235_B1DB8C7A 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, linux-rtc@vger.kernel.org,
 Frank Wunderlich <frank-w@public-files.de>,
 Allison Randal <allison@lohutok.net>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 "Tianping . Fang" <tianping.fang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sre@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/08/2019 16:11:29+0100, Lee Jones wrote:
> On Mon, 12 Aug 2019, Frank Wunderlich wrote:
> 
> > From: Josef Friedl <josef.friedl@speed.at>
> > 
> > move code to separate header-file to reuse definitions later
> > in poweroff-driver (drivers/power/reset/mt6323-poweroff.c)
> > 
> > Suggested-by: Frank Wunderlich <frank-w@public-files.de>
> > Signed-off-by: Josef Friedl <josef.friedl@speed.at>
> > Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> > ---
> > changes since v4: none
> > changes since v3: none
> > changes since v2: add missing commit-message
> > ---
> >  drivers/rtc/rtc-mt6397.c       | 55 +-------------------------
> >  include/linux/mfd/mt6397/rtc.h | 71 ++++++++++++++++++++++++++++++++++
> 
> include/linux/rtc/mt6397.h?
> 

It's just a bunch of registers and bit definitions so it may as well
stay close to include/linux/mfd/mt6397/registers.h


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
