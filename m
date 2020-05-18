Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E581D8195
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 19:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zbSRVgdTd/nqiZJvtM4g+NtbnmVfrx28Cw06MA+b4S4=; b=C708K90ZC0GAle
	e4rHb22Z0YVHcHdPoDlTXXaGAShZv+wLTtBfmWdcGESONLDuJ1KOPb9uQfv27f1cAkNchlD1yrzpK
	WhFNyevfS+POznbeXM3BvSGDXcAgf0M6I6CueXu3WOQK8a7Hq9Exyf4lZWgcfEFP/HAP48CLvaN9b
	3STUrWDvnFbHfAXWcCM/QplYKfrU5CN7HUIgSH4PbIqnrhxpjWaCh7fgBOd/HPdwQ7KuFWF8CwiKc
	zfp2RwThVXwuLkFQSaeLun2LwaXhqVWLn0+jJk24TrRO3mO9eFQYEeSVqsYXyW94f28KaYIVtpmgM
	vvK+Yoz73L2lG1WuJZiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jajt2-0000Gv-Qm; Mon, 18 May 2020 17:49:12 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jajsq-0000Et-Oz; Mon, 18 May 2020 17:49:02 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 4F54380512;
 Mon, 18 May 2020 19:48:49 +0200 (CEST)
Date: Mon, 18 May 2020 19:48:47 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Enric Balletbo Serra <eballetbo@gmail.com>
Subject: Re: [PATCH v4 7/7] drm/mediatek: mtk_dsi: Create connector for bridges
Message-ID: <20200518174847.GA770263@ravnborg.org>
References: <20200501152335.1805790-1-enric.balletbo@collabora.com>
 <20200501152335.1805790-8-enric.balletbo@collabora.com>
 <CAFqH_53h=3OXzwLnw1XT3rHYkMPOPNFBdQdPeFmNubN9qq_Twg@mail.gmail.com>
 <CAAOTY_-pOUuM7LQ1jm6gqpg8acMqDWOHxGucY5XOjq0ctGUkzA@mail.gmail.com>
 <53683f2d-23c7-57ab-2056-520c50795ffe@collabora.com>
 <CAAOTY__b6V12fS2xTKGjB1fQTfRjX7AQyBqDPXzshfhkjjSkeQ@mail.gmail.com>
 <37191700-5832-2931-5764-7f7fddd023b9@collabora.com>
 <e1ac7d75-c46a-445a-5fcf-5253548f2707@collabora.com>
 <CAAOTY_-w0V0iQgjZ0n26KKs_MdB-im9+LC2EDTmGo0wMG9p_Vw@mail.gmail.com>
 <CAFqH_52YJEnuoXmJVq1TgH5Ay76p-feVQPZ6s4h-1TMBDQ8fDA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFqH_52YJEnuoXmJVq1TgH5Ay76p-feVQPZ6s4h-1TMBDQ8fDA@mail.gmail.com>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=MOBOZvRl c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=kj9zAlcOel0A:10 a=33rsfa9LKxz_d3rkTGwA:9 a=mxk1C73UtW0IAQGh:21
 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_104900_997711_36C62C1A 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Enric/Chun-Kuang.

> >
> > My point is: when do you attach panel to a connector?
> > In this patch,
> >
> > ret = drm_bridge_attach(&dsi->encoder, &dsi->bridge, NULL,
> >                                           DRM_BRIDGE_ATTACH_NO_CONNECTOR);
> >
> > it would call into mtk_dsi_bridge_attach() with
> > DRM_BRIDGE_ATTACH_NO_CONNECTOR, and call into panel_bridge_attach()
> > with DRM_BRIDGE_ATTACH_NO_CONNECTOR.
> 
> My understanding is that the DRM_BRIDGE_ATTACH_NO_CONNECTOR flag is to
> ease transition between the old and the new model. The drivers that
> support the new model shall set that flag.
Yes, right now we have fous on migrating all bridge drivers to the new
model and next step is to make the transition for the display drivers
one by one.
Display drivers that uses the old model rely on the bridge driver to
create the connector, whereas display drivers using the new model will
create the connector themself.
Display drivers following the new model will pass DRM_BRIDGE_ATTACH_NO_CONNECTOR
to tell the bridge drive that no connector shall be created by the
bridge driver.

For this driver where only the new model is needed there is no
reason to try to support both models.
So the display driver shall always create the connector, and never
ask the bridge driver to do it (always pass
DRM_BRIDGE_ATTACH_NO_CONNECTOR).

I hope this confirm and clarifies it.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
