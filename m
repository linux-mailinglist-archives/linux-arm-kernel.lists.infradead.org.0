Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0EFA7F58
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 11:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=biGMc/abyuQGGttDgLFblUET44WvMK6kurONFWXbDkI=; b=SnS4eNH50MWATQ
	8niQ70Qs4B3KyS5yq834YpOjtsjp9NXo0wDAI/4LXwf9OMeXrwJ6Vv8WO+uEKnCV2tCj0od1pb1sQ
	HY3v81POjHZ3j8zHfRJ1nAxU0hnfwzWHkEGF3Yt4sIzf5hZ3DpLNyGp49faJHSFyAK6j6JondLtm9
	fojOv+HgEABgLJTDRzoN71iTxm5ub0aRipiW115k1U7N/hQhg+kZGIxgbjE2jrIFalShqEwfpiLdO
	p5xSZV7Nrfo67yt0ccez3WOjPmNxbiRe3wF2VplZcWHpRWYm0tjsUP+M9RPzx2Jj+e5w7rx7KvyLK
	AzMBQrl/+Dogkc1tOJHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Raj-0004X7-GU; Wed, 04 Sep 2019 09:28:41 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5RaS-0004W0-Qs; Wed, 04 Sep 2019 09:28:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XKThuSbZFfZ7pl95l1VPO0wQKRiG+nLbFF9OeGTjtYM=; b=Om8Lq5NKTbiEdTpux26a7qCk5
 dZ5tJGlG6PK6Luh2tvZO7cMaOJLPmYev9eKKaC+piAWTYRoP3tQBsAX1v0z0Rmmf6HCqVQAkuV80k
 f9MovrDB/BdqRql6wDTRmwUw4C0xwquaK5wQ98nhINmsPydabgyv424kYP72LLxUYR/NFlWMA+5VY
 p9ygB+RVjjh9ozvrDrk/c83hko1T+Krs2RxUAUfeFFukYaxNLm/NHyAnrKbfhgsLJkyFZ4pfG+ZxA
 EzXEF67V3Av318bsLe0fW/7CVPA0qtAMOVbSUl4lU4N80WT/8hmoVpi0tao6OabLx64hmsNOLxnj7
 cqhKedPvQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:39512)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i5RZb-0003Yi-2F; Wed, 04 Sep 2019 10:27:31 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i5RZP-0004Q3-GU; Wed, 04 Sep 2019 10:27:19 +0100
Date: Wed, 4 Sep 2019 10:27:19 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Cheng-yi Chiang <cychiang@chromium.org>
Subject: Re: [PATCH] drm: bridge/dw_hdmi: add audio sample channel status
 setting
Message-ID: <20190904092719.GJ13294@shell.armlinux.org.uk>
References: <20190903055103.134764-1-cychiang@chromium.org>
 <e1c3483c-baa6-c726-e547-fadf40d259f4@baylibre.com>
 <CAFv8NwKHZM+zTu7GF_J0Xk6hubA2JK4cCsdhsDPOGk=3rnbCZw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFv8NwKHZM+zTu7GF_J0Xk6hubA2JK4cCsdhsDPOGk=3rnbCZw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_022824_869173_EE4D374A 
X-CRM114-Status: GOOD (  24.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, kuninori.morimoto.gx@renesas.com,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, cain.cai@rock-chips.com,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Yakir Yang <ykk@rock-chips.com>, sam@ravnborg.org,
 Xing Zheng <zhengxing@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Dylan Reid <dgreid@chromium.org>, tzungbi@chromium.org,
 Jeffy Chen <jeffy.chen@rock-chips.com>,
 =?utf-8?B?6JSh5p6r?= <eddie.cai@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, Doug Anderson <dianders@chromium.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>, kuankuan.y@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 04, 2019 at 05:09:29PM +0800, Cheng-yi Chiang wrote:
> Hi,
> 
> On Tue, Sep 3, 2019 at 5:53 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
> >
> > Hi,
> >
> > On 03/09/2019 07:51, Cheng-Yi Chiang wrote:
> > > From: Yakir Yang <ykk@rock-chips.com>
> > >
> > > When transmitting IEC60985 linear PCM audio, we configure the
> > > Audio Sample Channel Status information of all the channel
> > > status bits in the IEC60958 frame.
> > > Refer to 60958-3 page 10 for frequency, original frequency, and
> > > wordlength setting.
> > >
> > > This fix the issue that audio does not come out on some monitors
> > > (e.g. LG 22CV241)
> > >
> > > Signed-off-by: Yakir Yang <ykk@rock-chips.com>
> > > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > > ---
> > >  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 59 +++++++++++++++++++++++
> > >  drivers/gpu/drm/bridge/synopsys/dw-hdmi.h | 20 ++++++++
> > >  2 files changed, 79 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > > index bd65d0479683..34d46e25d610 100644
> > > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > > @@ -582,6 +582,63 @@ static unsigned int hdmi_compute_n(unsigned int freq, unsigned long pixel_clk)
> > >       return n;
> > >  }
> > >
> > > +static void hdmi_set_schnl(struct dw_hdmi *hdmi)
> > > +{
> > > +     u8 aud_schnl_samplerate;
> > > +     u8 aud_schnl_8;
> > > +
> > > +     /* These registers are on RK3288 using version 2.0a. */
> > > +     if (hdmi->version != 0x200a)
> > > +             return;
> >
> > Are these limited to the 2.0a version *in* RK3288, or 2.0a version on all
> > SoCs ?
> >
> 
> In the original patch by Yakir,
> 
> https://lore.kernel.org/patchwork/patch/539653/   (sorry, I should
> have added this link in the "after the cut" note)
> 
> The fix is limited to version 2.0.
> Since I am only testing on RK3288 with 2.0a, I change the check to 2.0a only.
> I can not test 2.0a version on other SoCs.
> The databook I have at hand is 2.0a (not specific to RK3288) so I
> think all 2.0a should have this register.
> 
> As for other version like version 1.3 on iMX6, there is no such
> register, as stated by Russell
> 
> http://lkml.iu.edu/hypermail/linux/kernel/1501.3/06268.html.

It's likely more to do with how the IP is configured rather than the
version.  The big difference between dw-hdmi used in iMX6 and elsewhere
is that iMX6 uses a built-in AHB audio interface and not I2S.  Elsewhere
uses I2S.

I2S does not have the capability to convey channel status information
(which is required by HDMI).  With AHB, it is encoded into the data in
memory.

So, I think this setup should be done in the I2S driver and not in the
core driver.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
