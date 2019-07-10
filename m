Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B251C64989
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 17:27:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ux7Ll9r3cZgBnyNY2P10nEHWUZuqECcNDCWQngPfu98=; b=S8t3H0pL+GtTaB
	hj4BZRpLzOwxwjgPcps9HJlskE4PCcttKOHP4LsUjV132lLcMBngXrBePacJ33UnRc95i0tu/sMnd
	zv6NdQKJwTWF53KxMhbN/PBKhvEsqx6LHh9ClJrTXr/HttGgR96VrqlUyM4k3LpOiMVKCcY3EgWJ8
	s5s96JGn0GQnunfqKMdJXB7BieizSy+TRsQuEoQ0EO+DbWEDXoip+FTK1qucohhkLeXXcKvPjbsqr
	gBN30c97SlqtL5kdV+CSG+pxIaFoLblDBlXNDlZd7WSH9qgldZXXCuqkpfMedah2MgagL02UUbrkx
	Qkqb9ozMtVHmiKJGP9cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlEVX-0003qw-2e; Wed, 10 Jul 2019 15:27:47 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlEVB-0003qB-6Y
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 15:27:26 +0000
Received: by mail-ed1-x542.google.com with SMTP id k8so2572718eds.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 08:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=SgkufzQSTv6apsZUdNJaHjQjszSiq6lRFJLPOSo/AdU=;
 b=MPgH/N4l+levG/VhKT8jjXObPZPdcPsPGW9l4OkxWmh5Mga2fY36xiK9/aWYGSDWoA
 bZRJFhK/XNZzPxm2cB6rV9EN2rfyFht230HqwAoiyw113/16g8xpwbQ4NmZqP/eQrGRT
 eHf2BSBk83dh088+VhXnml/jxzrTjM1zMyJMY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=SgkufzQSTv6apsZUdNJaHjQjszSiq6lRFJLPOSo/AdU=;
 b=Vs2G7oHS+QVun4hw1Qjhh5D1bDcIME743aJ+1RoyHXPgdyZNxgf3dL/JnJz7+4oc4r
 0u5HhGTWvg15qacoOCz4+BzQiVsY4dGaoNiq4UmtuY5Dn/aZkvbh2SEMKM8dwtWq7zZG
 CqwBrxN7TEHMDhhCziPuqfS9hayVZJ2Tu9FRD6P7L0dAJHtf666onlIrwr65gW9JGf4k
 cQNupUzBcVJXozFEECxb2KDnxTntw7dfYaYLcMGCwQvqkHSf2khmWxycwHZHUh6WufEZ
 zaiiTTCEF138dXDeiqZ4SKbm1zUGtyrCTqaSyDgu532NovaDCkwtKStbz6SKogBTtFwt
 oolA==
X-Gm-Message-State: APjAAAVgLVIfNGnvfN92y8soltdQ6SCLBv9E0I0V/xK5hdc/tJ7DnIks
 pNVubuLWdYpTh96DIuJ/wbX8eQ==
X-Google-Smtp-Source: APXvYqxigJ129/HrafCJTtiUL+NQg3j1KH4mPx69jB2LtBZDhrvgMPNuqQpiv9e5nrCEaY/ZCC3gxA==
X-Received: by 2002:a17:906:12d7:: with SMTP id
 l23mr26929442ejb.282.1562772443347; 
 Wed, 10 Jul 2019 08:27:23 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id q50sm811398edd.91.2019.07.10.08.27.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 10 Jul 2019 08:27:22 -0700 (PDT)
Date: Wed, 10 Jul 2019 17:27:20 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Philippe CORNU <philippe.cornu@st.com>
Subject: Re: [PATCH] drm/bridge: sii902x: add audio graph card support
Message-ID: <20190710152720.GR15868@phenom.ffwll.local>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7c17b3f2-afee-7548-7620-b67d11d09b24@st.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_082725_247603_232ACB88 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 05, 2019 at 12:41:03PM +0000, Philippe CORNU wrote:
> Hi Olivier,
> and many thanks for your patch.
> Good to have the audio graph card support, looks ok.
> Reviewed-by: Philippe Cornu <philippe.cornu@st.com>

Since you have drm-misc commit rights I'm assuming you're going to push
this too. Correct?
-Daniel

> Philippe :-)
> 
> On 7/3/19 10:04 AM, Olivier Moysan wrote:
> > Implement get_dai_id callback of audio HDMI codec
> > to support ASoC audio graph card.
> > HDMI audio output has to be connected to sii902x port 3.
> > get_dai_id callback maps this port to ASoC DAI index 0.
> > 
> > Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> > ---
> >   drivers/gpu/drm/bridge/sii902x.c | 23 +++++++++++++++++++++++
> >   1 file changed, 23 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/bridge/sii902x.c b/drivers/gpu/drm/bridge/sii902x.c
> > index dd7aa466b280..daf9ef3cd817 100644
> > --- a/drivers/gpu/drm/bridge/sii902x.c
> > +++ b/drivers/gpu/drm/bridge/sii902x.c
> > @@ -158,6 +158,8 @@
> >   
> >   #define SII902X_I2C_BUS_ACQUISITION_TIMEOUT_MS	500
> >   
> > +#define SII902X_AUDIO_PORT_INDEX		3
> > +
> >   struct sii902x {
> >   	struct i2c_client *i2c;
> >   	struct regmap *regmap;
> > @@ -690,11 +692,32 @@ static int sii902x_audio_get_eld(struct device *dev, void *data,
> >   	return 0;
> >   }
> >   
> > +static int sii902x_audio_get_dai_id(struct snd_soc_component *component,
> > +				    struct device_node *endpoint)
> > +{
> > +	struct of_endpoint of_ep;
> > +	int ret;
> > +
> > +	ret = of_graph_parse_endpoint(endpoint, &of_ep);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	/*
> > +	 * HDMI sound should be located at reg = <3>
> > +	 * Return expected DAI index 0.
> > +	 */
> > +	if (of_ep.port == SII902X_AUDIO_PORT_INDEX)
> > +		return 0;
> > +
> > +	return -EINVAL;
> > +}
> > +
> >   static const struct hdmi_codec_ops sii902x_audio_codec_ops = {
> >   	.hw_params = sii902x_audio_hw_params,
> >   	.audio_shutdown = sii902x_audio_shutdown,
> >   	.digital_mute = sii902x_audio_digital_mute,
> >   	.get_eld = sii902x_audio_get_eld,
> > +	.get_dai_id = sii902x_audio_get_dai_id,
> >   };
> >   
> >   static int sii902x_audio_codec_init(struct sii902x *sii902x,
> > 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
