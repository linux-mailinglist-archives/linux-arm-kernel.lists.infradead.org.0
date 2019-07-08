Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F13561A38
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 07:05:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XJPKuhuMyxqCYsimtum9Hpq8pwPibe5dSnQETHazp7Y=; b=EOGEiREP8TxN0I
	gTIz4FDXIijSJsQ6TFswT0lI2nVmtwhipoAR70tfT2eDAtf8k4xmkcAC32ZJxJmVCuzWxzSqiQGBC
	9h3zuxaFPPW6tjdviPc/7wXwrZbpMO07JGnn4QkCt4LDBLahcYKohMm8qKcM2gR7nRI975bwWBH/D
	ZpDBcuHWwVmy9800wNkLA1lllxheB/sloa4Sv3gCGXN2jwA4xPBQvqu/LtHVvZmhC7qdbjH6RHxyD
	tkyXgjqrXhI3cGUMXoNfBT0UrUBcgnWcP07rR52HfvmqObEtmVif4g5geqscWV6N+0NwcbKvDlIGv
	Euum452VeDjpvIPishdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkLpc-0006ie-Iu; Mon, 08 Jul 2019 05:04:53 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkLpC-0006gk-9l
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 05:04:27 +0000
Received: by mail-vs1-xe43.google.com with SMTP id u3so7362863vsh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jul 2019 22:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Div9/ExPBXeNPwe6gkanRSA20V8261vIipkTc2adVjM=;
 b=Kr9xgzIgvJODL4j4Tar0NRNKMTIXggQEPJlw7ZTjjNYm575FxLii/NRilTRRlb5wa9
 BWu/yi/4QHA/SF4dJDPdiho9Fx9QFL7y+FAMY/c8IVi1NMs8YVjKbGVOIrjJYJzX4EsW
 nPrzbFSUsGbfcqx1g1C4zlpLeDlnrse6Nv5Vg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Div9/ExPBXeNPwe6gkanRSA20V8261vIipkTc2adVjM=;
 b=GB3y98tFdwapFHsQMMf38MiRimsfpJmzPo8IA3cNQWzk5cpYwQwRkbki0rCTwU310s
 nMJIkCOs0YnjXSEOMjEXyb31GFqCAthFzq6kL8VQo5hZ2CImun0mxOzNXTXrt+HSxkyC
 oiSRuS6XG/n8G2qrRKHL0xxWHXZ8NLfad2G+433ZGVcaA/VdDLavn828AP/VS5yWxbPe
 HvhBcfCY74ZsB6s+jdC9A9zd4zk3SgBzkSml2m7e5A87aNJnqF15UNzQLd2BNFfXxruX
 3TcjeemWavNv3GkZAfnD1Z+baoECRuXptJLdKkwIfFrP0VYWJeHaKCZlA4+2ZBSzsf0f
 nbJw==
X-Gm-Message-State: APjAAAUUl72kyi0vYptm3Ey/b3DTsDvQLwDQn2GDehjOBt07CApF5uKJ
 KYXJ4it0H43Hs08jqauIZyVzx89Q0CB/Yw7AssDZLQ==
X-Google-Smtp-Source: APXvYqzKI5qNNsiRKRIHZBN2EiiQYggki+EnjIVPY+3PoX163CFHFiFOgVyx1S9hteBUIbxFauiJMzT56Q8PxxERB2o=
X-Received: by 2002:a67:f7cd:: with SMTP id a13mr6748465vsp.163.1562562261162; 
 Sun, 07 Jul 2019 22:04:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190705042623.129541-1-cychiang@chromium.org>
 <20190705042623.129541-2-cychiang@chromium.org>
 <CA+Px+wXtmf9dQQP7ywPLp7Qbbvqau=WnO3qhZ8+qmbJD1gjx+A@mail.gmail.com>
 <20190705121240.GA20625@sirena.org.uk>
In-Reply-To: <20190705121240.GA20625@sirena.org.uk>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Mon, 8 Jul 2019 13:03:53 +0800
Message-ID: <CAFv8NwLP-hUBW8FZW5kooaggeNRG7LAEd2pd_-70YBrVMY-+CQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] ASoC: hdmi-codec: Add an op to set callback function
 for plug event
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_220426_355037_080C8DD0 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -6.1 (------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-6.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: ALSA development <alsa-devel@alsa-project.org>,
 Doug Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Takashi Iwai <tiwai@suse.com>, tzungbi@chromium.org,
 Jaroslav Kysela <perex@perex.cz>, Hans Verkuil <hverkuil@xs4all.nl>,
 Tzung-Bi Shih <tzungbi@google.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 Dylan Reid <dgreid@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 5, 2019 at 8:12 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Fri, Jul 05, 2019 at 03:08:37PM +0800, Tzung-Bi Shih wrote:
> > On Fri, Jul 5, 2019 at 12:26 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
>
> > > +typedef void (*hdmi_codec_plugged_cb)(struct platform_device *dev,
> > > +                                     bool plugged);
> > > +
>
> > The callback prototype is "weird" by struct platform_device.  Is it
> > possible to having snd_soc_component instead of platform_device?
>
> Or if it's got to be a device why not just a generic device so
> we're not tied to a particular bus here?

My intention was to invoke the call in dw-hdmi.c like this:

    hdmi->plugged_cb(hdmi->audio,
                                   result == connector_status_connected);

Here hdmi->audio is a platform_device.
I think dw-hdmi can not get  snd_soc_component easily.
I can use a generic device here so the ops is more general.
The calling will be like
    hdmi->plugged_cb(&hdmi->audio->dev,
                                   result == connector_status_connected);
I will update this in v2.
Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
