Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A9F816E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:20:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8b7OvL7rQ3cJno9UGhZJwAqqTXmYofK056DSOf9edS8=; b=aJun/iqmm/SgNG
	CaSfDeEjVQTl1ekeblMykrdBnrqcPe4XkWeZdi5vISqPh9Sk0Vksf2BiTAo2yRZBQCALdWl+UDGiZ
	DaiUUWwbysQnUhsXDZWGiH6GSp2qATMmcWOZhax3LjNmEuQG4Ws8fUNaR/c4KH94ry3lSRfzSWr14
	DTT4BqEKyQ4pDFPwm4vDFfisJwf0LUEOmSnjgonBkwhwcJvzu76L0O/yB+t8UNLqNswBXyubTtFHs
	4u4+uTvl6i7IsmZAmjwhv3eNeCChRLeAbupp+OGG3JUggmtfOib4UOErgtOVeP3qlbHrPWQAzLAWr
	ZFRAbAWhQcGeMmUV6PVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hua6D-000793-UI; Mon, 05 Aug 2019 10:20:18 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hua62-00062K-2Q
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:20:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1565000401; bh=UbKSHNJhmMN1hbm43YULL0GmnUkGg9ph8ySUEjcpnw0=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=gsRiiR+hnT1hK6iZz/qjoDRZZUwcrGRhpW7vfRTN2k5xKzRytohkBdYtwuthstZt2
 GShvGFYLVp7Due3TLXPxA5DD084qKPe0jdHh72dNNW1aFWkq0LPgoS8+R69qLgP1ZH
 0bSenMR3uUaxxtBVF+UvvsOSPh7jTqXHluzeQFEc=
Date: Mon, 5 Aug 2019 12:20:01 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [linux-sunxi] [PATCH 2/3] rtc: sun6i: Add support for H6 RTC
Message-ID: <20190805102001.guo7e52bl5agp2w4@core.my.home>
Mail-Followup-To: Chen-Yu Tsai <wens@csie.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-rtc@vger.kernel.org, devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>
References: <20190412120730.473-1-megous@megous.com>
 <20190412120730.473-3-megous@megous.com>
 <CAGb2v675j-aCLMgPJOzr9yx1XxsUvHRr_K7VnL=p8mSdwpu2jw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v675j-aCLMgPJOzr9yx1XxsUvHRr_K7VnL=p8mSdwpu2jw@mail.gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_032006_431100_AF353B1A 
X-CRM114-Status: GOOD (  20.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 06:16:14PM +0800, Chen-Yu Tsai wrote:
> On Fri, Apr 12, 2019 at 8:07 PM megous via linux-sunxi
> <linux-sunxi@googlegroups.com> wrote:
> >
> > From: Ondrej Jirman <megous@megous.com>
> >
> > RTC on H6 is mostly the same as on H5 and H3. It has slight differences
> > mostly in features that are not yet supported by this driver.
> >
> > Some differences are already stated in the comments in existing code.
> > One other difference is that H6 has extra bit in LOSC_CTRL_REG, called
> > EXT_LOSC_EN to enable/disable external low speed crystal oscillator.
> >
> > It also has bit EXT_LOSC_STA in LOSC_AUTO_SWT_STA_REG, to check whether
> > external low speed oscillator is working correctly.
> >
> > This patch adds support for enabling LOSC when necessary:
> >
> > - during reparenting
> > - when probing the clock
> >
> > H6 also has capacbility to automatically reparent RTC clock from
> > external crystal oscillator, to internal RC oscillator, if external
> > oscillator fails. This is enabled by default. Disable it during
> > probe.
> >
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > ---
> >  drivers/rtc/rtc-sun6i.c | 40 ++++++++++++++++++++++++++++++++++++++--
> >  1 file changed, 38 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/rtc/rtc-sun6i.c b/drivers/rtc/rtc-sun6i.c
> > index 11f56de52179..7375a530c565 100644
> > --- a/drivers/rtc/rtc-sun6i.c
> > +++ b/drivers/rtc/rtc-sun6i.c
> > @@ -41,9 +41,11 @@
> >  /* Control register */
> >  #define SUN6I_LOSC_CTRL                                0x0000
> >  #define SUN6I_LOSC_CTRL_KEY                    (0x16aa << 16)
> > +#define SUN6I_LOSC_CTRL_AUTO_SWT_BYPASS                BIT(15)
> 
> Manual says bit 14? Or is this different from LOSC_AUTO_SWT_EN?
> 
> The rest looks ok.

Yes, see H6 BSP:

drivers/rtc/rtc-sunxi.h

 20 #define REG_CLK32K_AUTO_SWT_EN                  BIT(14)
 21 #define REG_CLK32K_AUTO_SWT_BYPASS              BIT(15)

regards,
	Ondrej

> ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
