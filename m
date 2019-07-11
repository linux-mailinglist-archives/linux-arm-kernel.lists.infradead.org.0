Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B56C365476
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 12:25:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bVxO4zd3WVuVzClmD4u6WLW76je21ivvRp+8TNpd89U=; b=LpuA6y9KjSeq1O
	Zvd5XCN0DvhXzKYdPLxcnSja8J1lx3bkm87GzEdqBYhN6A7RaDE2+H8RX0V8Lo1c45x/HoCtTcr3a
	iwqeSZTdWx2XuPtIJY1IDcaggOmMGdQho32SgrIr2zJmvOG9X31CbswnnO5g2Svcf/LaP4Rxf5P0a
	aGjDkFTBtPsZjvU53VbYfrccP6Uocm04USKy8Lfl9HP7MAjtKZxv9GNDlPZw+p9SboskYVgbELn/+
	8Q1PlDRCQyx/OI1E3C6BkX2GQaRlQklQys4LDhib5AnQyfwY37oGqwFMApEJzs6bANXLGliZcZthZ
	14BJNlVCRbZne7Kgm88A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlWGs-00039W-0x; Thu, 11 Jul 2019 10:25:50 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlWGZ-00038s-AD
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 10:25:32 +0000
Received: by mail-ed1-x544.google.com with SMTP id m10so5268289edv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 03:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=7U2G4EIDTohj4GLJBc1CsAdYb3Srm8+cHCV4KhEDuP0=;
 b=WheCH8IDb1xLjYRkQ1wHhqBOQvwu9yadLjHXO+2GvTWatmnx3ohVHucMEFlWsb327e
 8oBL/JN3VnzQDpfznayYp5BYRXFtNz+qzfi7kDxf+viYPUc2s5/GMiZFA6C2e95tFaaH
 5eYJT5wwV5q1SpRg5tWMqZl9lM/DrKXjd8GJ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=7U2G4EIDTohj4GLJBc1CsAdYb3Srm8+cHCV4KhEDuP0=;
 b=CLaWLGgXq6pjPM1cWtK3Y+dhft0khvJ6cdj4DJi9g5accppGJ1jJZSOOxAjXaGw4tP
 rt046xbZDetbNMCAfhBMajQtBwobrKnhGziSm3pWGsN1EjqsqVQ7y6aiv0W7QdkfEyyu
 gRKHtbmDWGrZs7/lxez0RtTGtfaE5SFmaKECsPoqQe1OO/qbC9Lfx1P00wH8WNioYtNt
 aq5516EDRrpgh6G3SqBBzKxnDrG5UmDUNtQc++yV9WHUe6MpN2MRXfQXaJqfEPZbtShi
 KoLy6TLxuEPoerzBt7dF3hm8ARw0teEMqRKuBEUo58hQ7ovKS9MYysf7NOlzoLFPV1Pj
 JEAw==
X-Gm-Message-State: APjAAAUFJpdepFntsplqVbXZx/IQ/hpYpEza0uyqUsfwZwifpkO7QsUo
 xAN578XViYT6IopZ8gauEAU=
X-Google-Smtp-Source: APXvYqzOdFxx7QODvOuCnqI1mfdfr7m02Yx0mnJ15UPVOkEHhP7boRm7tJmqJjhEcUWKcHsDYq9N6A==
X-Received: by 2002:aa7:cd17:: with SMTP id b23mr2648368edw.278.1562840729665; 
 Thu, 11 Jul 2019 03:25:29 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id y3sm1436461edr.27.2019.07.11.03.25.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 03:25:28 -0700 (PDT)
Date: Thu, 11 Jul 2019 12:25:26 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Philippe CORNU <philippe.cornu@st.com>
Subject: Re: [PATCH] drm/bridge: sii902x: add audio graph card support
Message-ID: <20190711102526.GK15868@phenom.ffwll.local>
Mail-Followup-To: Philippe CORNU <philippe.cornu@st.com>,
 Olivier MOYSAN <olivier.moysan@st.com>,
 "a.hajda@samsung.com" <a.hajda@samsung.com>,
 "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
 "Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>,
 "jonas@kwiboo.se" <jonas@kwiboo.se>,
 "jernej.skrabec@siol.net" <jernej.skrabec@siol.net>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, 
 "jsarha@ti.com" <jsarha@ti.com>
References: <1562141052-26221-1-git-send-email-olivier.moysan@st.com>
 <7c17b3f2-afee-7548-7620-b67d11d09b24@st.com>
 <20190710152720.GR15868@phenom.ffwll.local>
 <e29c1671-99fb-581d-bfb7-61ca2cfa8622@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e29c1671-99fb-581d-bfb7-61ca2cfa8622@st.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_032531_414054_62AE5C1B 
X-CRM114-Status: GOOD (  24.80  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: "jernej.skrabec@siol.net" <jernej.skrabec@siol.net>,
 Olivier MOYSAN <olivier.moysan@st.com>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 "jonas@kwiboo.se" <jonas@kwiboo.se>, "airlied@linux.ie" <airlied@linux.ie>,
 "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
 "jsarha@ti.com" <jsarha@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "a.hajda@samsung.com" <a.hajda@samsung.com>,
 "Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 09:27:30AM +0000, Philippe CORNU wrote:
> Hi Daniel,
> 
> 
> On 7/10/19 5:27 PM, Daniel Vetter wrote:
> > On Fri, Jul 05, 2019 at 12:41:03PM +0000, Philippe CORNU wrote:
> >> Hi Olivier,
> >> and many thanks for your patch.
> >> Good to have the audio graph card support, looks ok.
> >> Reviewed-by: Philippe Cornu <philippe.cornu@st.com>
> > 
> > Since you have drm-misc commit rights I'm assuming you're going to push
> > this too. Correct?
> 
> Regarding this patch in particular, there is still missing an acked-by 
> from a "bridge" maintainer. Also it could be nice to wait for the 
> reviewed-by from Jiry as it knows well this sii driver and sent recently 
> good patches on it (already merged).

The bridge maintainer is looking for new bridge maintainers (atm we have
only one, defacto), so for bridge driver patches I really don't think it's
a good idea to gate on that single bottle-neck. Infrastructure is a bit a
different thing.

> With that, Benjamin or I (or a bridge maintainer) can push this patch + 
> the serie named "drm/bridge: sii902x: fix audio mclk management" as I 
> think it is better to push this serie *before* this patch.

Wahtever you feel like, just wanted to make sure you're not stuck
twiddling thumbs. The entire point of drm-misc is to facility mesh review
and maintainership, because the strict hierarchy just doesn't work for
smaller things. Exactly because you're always blocked on a bottleneck
somewhere.
-Daniel

> 
> Thanks,
> Philippe :-)
> 
> 
> >> Philippe :-)
> >>
> >> On 7/3/19 10:04 AM, Olivier Moysan wrote:
> >>> Implement get_dai_id callback of audio HDMI codec
> >>> to support ASoC audio graph card.
> >>> HDMI audio output has to be connected to sii902x port 3.
> >>> get_dai_id callback maps this port to ASoC DAI index 0.
> >>>
> >>> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> >>> ---
> >>>    drivers/gpu/drm/bridge/sii902x.c | 23 +++++++++++++++++++++++
> >>>    1 file changed, 23 insertions(+)
> >>>
> >>> diff --git a/drivers/gpu/drm/bridge/sii902x.c b/drivers/gpu/drm/bridge/sii902x.c
> >>> index dd7aa466b280..daf9ef3cd817 100644
> >>> --- a/drivers/gpu/drm/bridge/sii902x.c
> >>> +++ b/drivers/gpu/drm/bridge/sii902x.c
> >>> @@ -158,6 +158,8 @@
> >>>    
> >>>    #define SII902X_I2C_BUS_ACQUISITION_TIMEOUT_MS	500
> >>>    
> >>> +#define SII902X_AUDIO_PORT_INDEX		3
> >>> +
> >>>    struct sii902x {
> >>>    	struct i2c_client *i2c;
> >>>    	struct regmap *regmap;
> >>> @@ -690,11 +692,32 @@ static int sii902x_audio_get_eld(struct device *dev, void *data,
> >>>    	return 0;
> >>>    }
> >>>    
> >>> +static int sii902x_audio_get_dai_id(struct snd_soc_component *component,
> >>> +				    struct device_node *endpoint)
> >>> +{
> >>> +	struct of_endpoint of_ep;
> >>> +	int ret;
> >>> +
> >>> +	ret = of_graph_parse_endpoint(endpoint, &of_ep);
> >>> +	if (ret < 0)
> >>> +		return ret;
> >>> +
> >>> +	/*
> >>> +	 * HDMI sound should be located at reg = <3>
> >>> +	 * Return expected DAI index 0.
> >>> +	 */
> >>> +	if (of_ep.port == SII902X_AUDIO_PORT_INDEX)
> >>> +		return 0;
> >>> +
> >>> +	return -EINVAL;
> >>> +}
> >>> +
> >>>    static const struct hdmi_codec_ops sii902x_audio_codec_ops = {
> >>>    	.hw_params = sii902x_audio_hw_params,
> >>>    	.audio_shutdown = sii902x_audio_shutdown,
> >>>    	.digital_mute = sii902x_audio_digital_mute,
> >>>    	.get_eld = sii902x_audio_get_eld,
> >>> +	.get_dai_id = sii902x_audio_get_dai_id,
> >>>    };
> >>>    
> >>>    static int sii902x_audio_codec_init(struct sii902x *sii902x,
> >>>
> > 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
