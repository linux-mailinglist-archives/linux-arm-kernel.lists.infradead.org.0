Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6E4E511E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 18:23:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3objuQTuRkdKZJ+6LSZXHK8NcwZNzrqou7nDR+L+qIg=; b=IlqODal7xUJ1mQ
	wcGO9Sj+8P2RVDXCYdlkMgvjchb13Tej3hDQfuf6PIRZIAjwEjZQvUoYmO3muAkpe4PLQEipXourn
	lW4JE2OAJ7jdRPJ1TPXymIJpWX+kC7nsmN28cnNOy5a4o3ozkwNZmi0PuXH5kJPHpALvNAKLkk11P
	wcdt7kF9b/kFlSO3oV5+EfjBZgBmTfVpSZB5Bbhciv1jgl7M2w0o9XpqKjQyhepVaAXI1VIjGUaG2
	A8tF0htTndbJcVN285d/ycaQ1pwMpEKR05J7FLogEaftF1bXnDdHhH8abe++6WnRlODM/LbOe0j+g
	lBTjkXz00zf+Klpp/nIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO2MU-0006XY-Dn; Fri, 25 Oct 2019 16:22:50 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO2MI-0006Vw-68; Fri, 25 Oct 2019 16:22:39 +0000
Received: by mail-ot1-f68.google.com with SMTP id z6so2464837otb.2;
 Fri, 25 Oct 2019 09:22:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DcXI0ptEmLNRJ3ATloq3LFD9nbZMbeqbCJ87LxNGHWo=;
 b=iBLMFthqM3AXSW1Bj9akCCKNKuiYHVgLvdXjTLu61KrMI855uEIWPDtyItiM+818/I
 wTjTp+/qxSVCVyKK7ZJlSBeFrrFKkaf+pEorQBjLBZ39v8qRe4jWqZlZZSfQyEjSRjMJ
 M/Z2QWGcgQl/3rFvMxiTKX93e8aph50QkXjl0OzYqxkE1L1kxaoRvpM2elDUhoSl3fIH
 M+HE4cLedwZl65TO8ep/ye2GbGlzpOFrhAEDcvs6ciy/pOelg3w+XmoXFtGdEb+TZzr3
 VENBrKlYd11onI0y9D/Idxmg64LoxDzcg3BkM6vFCZeLyP/da5k6NyGdjd3WbzlofeQ1
 0Scw==
X-Gm-Message-State: APjAAAUKngvAXHP5fvk46erbHQ+/rFwSXpZHnSMiOuWjW0SKDsEx0bFe
 dA7OHYI2Hbrq0/EESP6FQw==
X-Google-Smtp-Source: APXvYqzzIuc1vcdp++0F80RLl8KAdKlip2Nqm2Fe6QaByRNOoVA8SwaqBnoVkTda+L/6FQKAQI1xRg==
X-Received: by 2002:a9d:3476:: with SMTP id v109mr3516135otb.211.1572020554577; 
 Fri, 25 Oct 2019 09:22:34 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i5sm836976otk.10.2019.10.25.09.22.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 09:22:33 -0700 (PDT)
Date: Fri, 25 Oct 2019 11:22:32 -0500
From: Rob Herring <robh@kernel.org>
To: Cheng-Yi Chiang <cychiang@chromium.org>
Subject: Re: [PATCH v8 2/6] ASoC: rockchip-max98090: Support usage with and
 without HDMI
Message-ID: <20191025162232.GA23022@bogus>
References: <20191025133007.11190-1-cychiang@chromium.org>
 <20191025133007.11190-3-cychiang@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025133007.11190-3-cychiang@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_092238_227921_880D8EC6 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, alsa-devel@alsa-project.org,
 Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil@xs4all.nl>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 devicetree@vger.kernel.org, tzungbi@chromium.org,
 Jonas Karlman <jonas@kwiboo.se>, Liam Girdwood <lgirdwood@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, dianders@chromium.org,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 09:30:03PM +0800, Cheng-Yi Chiang wrote:
> There will be multiple boards sharing this machine driver.
> Use compatible string to specify the use case.
> 
> "rockchip,rockchip-audio-max98090" for max98090-only.
> "rockchip,rockchip-audio-hdmi" for HDMI-only
> "rockchip,rockchip-audio-max98090-hdmi" for max98090 plus
> 
> Move these properties to optional because they are not needed for
> HDMI-only use case.
> "rockchip,audio-codec": The phandle of the MAX98090 audio codec
> "rockchip,headset-codec": The phandle of Ext chip for jack detection
> 
> The machine driver change will add support for HDMI codec in
> rockchip-max98090.
> Add one optional property "rockchip,hdmi-codec" to let user specify HDMI
> device node in DTS so machine driver can find hdmi-codec device node for
> codec DAI.

Why not just use the presence of rockchip,hdmi-codec to enable HDMI or 
not. Maybe you still add rockchip,rockchip-audio-hdmi for HDMI only.

Really, the same should have been done for which codec is used too, but 
I guess someone wanted 2 machine drivers.

> 
> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> ---
>  .../bindings/sound/rockchip-max98090.txt      | 38 +++++++++++++++++--
>  1 file changed, 35 insertions(+), 3 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
