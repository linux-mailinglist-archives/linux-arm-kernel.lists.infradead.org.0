Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F278915E558
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:41:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3qQKZ2RHdEJxtqwLeuxZMR9ZahVgRZgI79mYku7ef8s=; b=lKHeAPx0fc9KUu
	M5naeTF0LiZsHpD1jTkft/F7yQj7y594rQlQaTa4g/oU3AY/+yZSESyYoxhL0fgTJRv/PUm5KsKTn
	SV2iGudIZri93KyxuPVbSWovZRlKJKdnPF+mJ42k6IjB1D9/BUX4Z+SToEl5CQ+M03uRhTGt5D/sM
	5ol4AS0k0RCzL/IHpJBQLhBaTQmsfZvWzInB6tZoa0rYw8EQnjeniIt0VAuTdYXTKz/6QASHOwynU
	4ueBypG4peMhj/zq0X6OI5cX4V7pSSgJ6O3+DvyxTDN/joX5I8YgQHxCuHWobZbICzLy4dweE+R2k
	pOPh0zSObLADj/LCo49w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2e28-00034b-LF; Fri, 14 Feb 2020 16:41:40 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dbW-0005wS-I1
 for linux-arm-kernel@bombadil.infradead.org; Fri, 14 Feb 2020 16:14:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=i7nJOx0l1D6P1/zvshY95ERbr8/lR/kJu1j1w61Fd3w=; b=vIATxro5KTF0kb5n587/3Dp1yL
 iqoir0+eQyu3NOjfK5SEoFkOr2f3tEc9ej8fa13e6Q2kPj4yVZ8zJxJwLBiz0Tqay9GytBxCkDMqM
 v07C28xl1fkTB1Juiuq8Xybgiu+WOwv2Q9nMAfPLCgl0o0gTuZZrcObaj501KpwDiaTPOrR5NmRl1
 WFmd0sSANvxG63XQmpCgNJ+OGHqtsCEpbwbUphVGe3z0jL1tyeHRVtT+J++32i42sShH7cNRZ+dxy
 R8N3EWM93tQdS739q6H0KRXHyBCdTdkmUgSK/fUZuK2icnMx6pgSOOSNFBvC1n1mbjRRkgAxh2ROP
 tACDeciw==;
Received: from asavdk4.altibox.net ([109.247.116.15])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dbT-0007R8-3T
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:14:08 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id BFFBF8045F;
 Fri, 14 Feb 2020 17:14:00 +0100 (CET)
Date: Fri, 14 Feb 2020 17:13:59 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 1/4] drm/connector: Add data polarity flags
Message-ID: <20200214161359.GB18287@ravnborg.org>
References: <cover.b12a054012ce067fa2094894147f953ab816d8d0.1581682983.git-series.maxime@cerno.tech>
 <b541006fa0a1c34ac5f668dc561aa1598f8fd86c.1581682983.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b541006fa0a1c34ac5f668dc561aa1598f8fd86c.1581682983.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=XpTUx2N9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=8sOSbDn3uDz3MpWGLZkA:9 a=CjuIK1q_8ugA:10
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <mripard@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime.

On Fri, Feb 14, 2020 at 01:24:38PM +0100, Maxime Ripard wrote:
> Some LVDS encoders can change the polarity of the data signals being
> sent. Add a DRM bus flag to reflect this.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  include/drm/drm_connector.h | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index 221910948b37..9a08fe6ab7c2 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -330,6 +330,8 @@ enum drm_panel_orientation {
>   *					edge of the pixel clock
>   * @DRM_BUS_FLAG_SHARP_SIGNALS:		Set if the Sharp-specific signals
>   *					(SPL, CLS, PS, REV) must be used
> + * @DRM_BUS_FLAG_DATA_LOW:		The Data signals are active low
> + * @DRM_BUS_FLAG_DATA_HIGH:		The Data signals are active high
Reading the description of these falgs always confuses me.
In this case if neither bit 9 nor bit 10 is set then the data signals
are netiher active low nor active high.
So what can I then expect?

We have the same logic loophole for DRM_BUS_FLAG_SYNC_SAMPLE_POSEDGE
and DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE.
So it is not new, but can we do better here?

	Sam


>   */
>  enum drm_bus_flags {
>  	DRM_BUS_FLAG_DE_LOW = BIT(0),
> @@ -349,6 +351,8 @@ enum drm_bus_flags {
>  	DRM_BUS_FLAG_SYNC_SAMPLE_POSEDGE = DRM_BUS_FLAG_SYNC_NEGEDGE,
>  	DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE = DRM_BUS_FLAG_SYNC_POSEDGE,
>  	DRM_BUS_FLAG_SHARP_SIGNALS = BIT(8),
> +	DRM_BUS_FLAG_DATA_LOW = BIT(9),
> +	DRM_BUS_FLAG_DATA_HIGH = BIT(10),
>  };
>  
>  /**
> -- 
> git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
