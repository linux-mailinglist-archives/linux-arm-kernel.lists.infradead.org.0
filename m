Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEEB1EABED
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 20:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xM02UYbzZNuzccE3fjm7SBkm3sG298W8Fcta9tkNgk0=; b=o22y9EmraY3YM/
	bNGnVIzPRAQGBcKODBdWd/bcXkZ7e3dB9lg10u07lq9ZIeV6dKC9MJVSOf1AVN0qNq65zc7UM5bpU
	5MjYzD1c4b3kJqpaugdlOrnYhOsSTnBHk8eVqkXnjwJpoEKReZWORpzLIusUbb9s6vpWN2EplYFRU
	T9sPMtKPxixvkbcFwjFAQiNLb10Vz1FZiSmWwUxRPPmzwksFaRxNEHuEI45EHiXg/0qq8psZ/+qBk
	+obsmtB1kMbN8axp7OvtqNarn6sCTJyWsV9Tmu+/lwHCywBvc4HmJ1AG4oBLf2+DbCur09VLsFEbk
	0XSCHENxBsYGt43IXjVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfp8E-00022K-IL; Mon, 01 Jun 2020 18:25:54 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfp87-00021v-Cg
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 18:25:49 +0000
Received: by mail-ed1-x544.google.com with SMTP id k19so7999620edv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 11:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ktf8hdQ0/bBZ1rrqyUokS+zLJv4wCtg8txRgNdj1RPs=;
 b=krEtW7JMlTpPiCKTfkH45ggYkkj3H9lMw3FHZ+1Nxnk3MzT/QKbhGGtK42nirA8MFn
 8G8AE9vCtYO/pcHXfz0lHK5hnvODHlSFgnXWwVwztN5SNCHF6uSpFZSNBGwod3CN8UPc
 7Rxz2QyGs/IN647KyZ76Gh0/KSl4VBY2OXwuE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ktf8hdQ0/bBZ1rrqyUokS+zLJv4wCtg8txRgNdj1RPs=;
 b=K4g+Fju7LC0IYU0iYasWWgpMuYilD/2NmsQDxnmOOip/63AOVNXHz4M3Dlm2wEWwA0
 hNIicOI6ldyMTrsYSzk1gTM91Y15A+aZ7guq9aZc22/6t55KXaUgvB1KWPI+AyVLdw8P
 nYKFKAaudL8Dwrt3xzhltxujz9+F93RfMeoMuqgLzm3g0LGUDAJrqc/TjvFxtbt0ojy6
 LAkosHLF7d5DfABJXYlrXlDFoumIPD3SSaPB9qX3S0qKAdwwB72SwndGaRSW2LbbvccT
 zrdz42SqaDhUiZHsZOxqmizeLUU7EBFDcFiiYBm/R54R/H7YBZluN6acII/VhGNUjhBk
 IeFw==
X-Gm-Message-State: AOAM5320eF4WLEKAk8dwYjKmIq089IZjJrR9OMQhZvDLazUKx8bcrSp+
 aU4KuQ+06vawUQheter1NMOzGSbXgbK/gw==
X-Google-Smtp-Source: ABdhPJzNCXjIIKDTUXsqAwUazfdwwPp8jbeykpks51LNyQq310vInuTh8JCbZThA0O5WmXx+yezl9Q==
X-Received: by 2002:a05:6402:206e:: with SMTP id
 bd14mr10856617edb.105.1591035944550; 
 Mon, 01 Jun 2020 11:25:44 -0700 (PDT)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com.
 [209.85.128.52])
 by smtp.gmail.com with ESMTPSA id s13sm313431ejv.29.2020.06.01.11.25.44
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 01 Jun 2020 11:25:44 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id g10so443981wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 11:25:44 -0700 (PDT)
X-Received: by 2002:a1c:b155:: with SMTP id a82mr509536wmf.46.1591035503038;
 Mon, 01 Jun 2020 11:18:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200523084103.31276-1-dongchun.zhu@mediatek.com>
 <20200523084103.31276-2-dongchun.zhu@mediatek.com>
 <20200526182847.GA92449@bogus>
 <1590569355.8804.448.camel@mhfsdcap03>
 <CAL_Jsq+sN0SVidTrY0ODXEkzkxYFvG1FTnL0oRQBSKf=ynLdyQ@mail.gmail.com>
 <20200527211628.GT7618@paasikivi.fi.intel.com>
 <1590636882.8804.474.camel@mhfsdcap03>
 <20200528072332.GW7618@paasikivi.fi.intel.com>
 <1590653082.8804.517.camel@mhfsdcap03>
 <CAAFQd5AuHDpQN8xZsWgnAt6m2reAYJbs9nBp0+mBo7_FS81LbQ@mail.gmail.com>
 <1590978816.8804.523.camel@mhfsdcap03>
In-Reply-To: <1590978816.8804.523.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 1 Jun 2020 20:18:10 +0200
X-Gmail-Original-Message-ID: <CAAFQd5AY9gejoiwxojvvG0FaVfEAf8gCqOddvo-dxemQWFksVw@mail.gmail.com>
Message-ID: <CAAFQd5AY9gejoiwxojvvG0FaVfEAf8gCqOddvo-dxemQWFksVw@mail.gmail.com>
Subject: Re: [V9,
 1/2] media: dt-bindings: media: i2c: Document OV02A10 bindings
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_112547_448418_98A3DB05 
X-CRM114-Status: GOOD (  30.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 =?UTF-8?B?U2hlbmduYW4gV2FuZyAo546L5Zyj55S3KQ==?= <shengnan.wang@mediatek.com>,
 Louis Kuo <louis.kuo@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Nicolas Boichat <drinkcat@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 1, 2020 at 4:35 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> Hi Tomasz,
>
> On Fri, 2020-05-29 at 15:43 +0200, Tomasz Figa wrote:
> > On Thu, May 28, 2020 at 10:06 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> > >
> > > Hi Sakari,
> > >
> > > On Thu, 2020-05-28 at 10:23 +0300, Sakari Ailus wrote:
> > > > Hi Dongchun,
> > > >
> > > > On Thu, May 28, 2020 at 11:34:42AM +0800, Dongchun Zhu wrote:
> > > > > Hi Sakari, Rob,
> > > > >
> > > > > On Thu, 2020-05-28 at 00:16 +0300, Sakari Ailus wrote:
> > > > > > Hi Rob, Dongchun,
> > > > > >
> > > > > > On Wed, May 27, 2020 at 09:27:22AM -0600, Rob Herring wrote:
> > > > > > > > > > +    properties:
> > > > > > > > > > +      endpoint:
> > > > > > > > > > +        type: object
> > > > > > > > > > +        additionalProperties: false
> > > > > > > > > > +
> > > > > > > > > > +        properties:
> > > > > > > >
> > > > > > > > Actually I wonder whether we need to declare 'clock-lanes' here?
> > > > > > >
> > > > > > > Yes, if you are using it.
> > > > > >
> > > > > > Dongchun, can you confirm the chip has a single data and a single clock
> > > > > > lane and that it does not support lane reordering?
> > > > > >
> > > > >
> > > > > From the datasheet, 'MIPI inside the OV02A10 provides one single
> > > > > uni-directional clock lane and one bi-directional data lane solution for
> > > > > communication links between components inside a mobile device.
> > > > > The data lane has full support for HS(uni-directional) and
> > > > > LP(bi-directional) data transfer mode.'
> > > > >
> > > > > The sensor doesn't support lane reordering, so 'clock-lanes' property
> > > > > would not be added in next release.
> > > > >
> > > > > > So if there's nothing to convey to the driver, also the data-lanes should
> > > > > > be removed IMO.
> > > > > >
> > > > >
> > > > > However, 'data-lanes' property may still be required.
> > > > > It is known that either data-lanes or clock-lanes is an array of
> > > > > physical data lane indexes. Position of an entry determines the logical
> > > > > lane number, while the value of an entry indicates physical lane, e.g.,
> > > > > for 1-lane MIPI CSI-2 bus we could have "data-lanes = <1>;", assuming
> > > > > the clock lane is on hardware lane 0.
> > > > >
> > > > > As mentioned earlier, the OV02A10 sensor supports only 1C1D and does not
> > > > > support lane reordering, so here we shall use 'data-lanes = <1>' as
> > > > > there is only a clock lane for OV02A10.
> > > > >
> > > > > Reminder:
> > > > > If 'data-lanes' property is not present, the driver would assume
> > > > > four-lane operation. This means for one-lane or two-lane operation, this
> > > > > property must be present and set to the right physical lane indexes.
> > > > > If the hardware does not support lane reordering, monotonically
> > > > > incremented values shall be used from 0 or 1 onwards, depending on
> > > > > whether or not there is also a clock lane.
> > > >
> > > > How can the driver use four lanes, considering the device only supports a
> > > > single lane??
> > > >
> > >
> > > I understood your meaning.
> > > If we omit the property 'data-lanes', the sensor should work still.
> > > But then what's the meaning of the existence of 'data-lanes'?
> > > If this property 'data-lanes' is always optional, then why dt-bindings
> > > provide the interface?
> > >
> > > In the meantime, if omitting 'data-lanes' for one sensor(transmitter)
> > > that has only one physical data lane, MIPI receiver(e.g., MIPI CSI-2)
> > > shall enable four-lane configuration, which may increase consumption of
> > > both power and resource in the process of IIC communication.
> >
> > Wouldn't the receiver still have the data-lanes property under its
> > endpoint node, telling it how many lanes and in which order should be
> > used?
> >
>
> The MIPI receiver(RX) shall use
> v4l2_async_notifier_add_fwnode_remote_subdev() API to parse the property
> "data-lanes" under sensor output port.

That's not true. The MIPI receiver driver parses its own port node
corresponding to the sensor. Also quoting the documentation [1]:

"An endpoint subnode of a device contains all properties needed for
_configuration of this device_ for data exchange with other device. In most
cases properties at the peer 'endpoint' nodes will be identical, however they
might need to be different when there is any signal modifications on the bus
between two devices, e.g. there are logic signal inverters on the lines."

In this case, there is such a signal modification if the sensor has a
1-lane bus and the receiver more lines, so the data-lanes properties
would be different on both sides.

[1] https://elixir.bootlin.com/linux/v5.7/source/Documentation/devicetree/bindings/media/video-interfaces.txt

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
