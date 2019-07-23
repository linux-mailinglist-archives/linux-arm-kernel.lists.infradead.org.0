Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFD5714ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 11:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gP92+ikEuqfqWr8O+jx8PremKeDi0q/4ccEMhnSU+aU=; b=iwGfyNszUwlzFr
	HpFcxWJeU4gwNMJQlILt0t+71BhK9gZyRt4eVbLE1rhhm/VN45PcOX3EqDqLvMrA9H6ySvHjtlmGc
	FwA3KHiTtq/5AucqHwLM9BSGnx1qhXXLiM/ZkoFLQfMeo6K28mxzPmp6RQkaXD73ounR2rt4XXkbB
	2r/IWzGAYlKxRHmpfYkA55SGdxVXxP6vpo73NXGQBWu3Rga8cZ8dO5e05SIqsXEwOBvKruz7Uwkz7
	RPALcpHiAEu8NQgZN0hA5rjodNlSRygcBTlDUue6qU9zEAIQRiIoRQqdOF4FV57Qv+q8XsUrgHxZt
	uVNsevTvc2ewCGtaKf4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqy3-0005n2-OC; Tue, 23 Jul 2019 09:20:19 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpqxY-0005m7-Pq; Tue, 23 Jul 2019 09:19:50 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 5B183200B6;
 Tue, 23 Jul 2019 11:19:46 +0200 (CEST)
Date: Tue, 23 Jul 2019 11:19:45 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Derek Basehore <dbasehore@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v7 2/4] drm/panel: set display info in panel attach
Message-ID: <20190723091945.GD787@ravnborg.org>
References: <20190710021659.177950-1-dbasehore@chromium.org>
 <20190710021659.177950-3-dbasehore@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710021659.177950-3-dbasehore@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=cm27Pg_UAAAA:8
 a=e5mUnYsNAAAA:8 a=JKKMseLQFeVpvqDGF_IA:9 a=V_j96s7zFc6XEDQv:21
 a=BZ3M7_42R0vJoBCe:21 a=CjuIK1q_8ugA:10 a=xmb-EsYY8bH0VWELuYED:22
 a=Vxmtnl_E_bksehYqCbjh:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_021949_201576_3DDB800C 
X-CRM114-Status: GOOD (  22.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Derek.

On Tue, Jul 09, 2019 at 07:16:57PM -0700, Derek Basehore wrote:
> Devicetree systems can set panel orientation via a panel binding, but
> there's no way, as is, to propagate this setting to the connector,
> where the property need to be added.
> To address this, this patch sets orientation, as well as other fixed
> values for the panel, in the drm_panel_attach function. These values
> are stored from probe in the drm_panel struct.

This approch seems to conflict with work done by Laurent where the
ownership/creation of the connector will be moved to the display controller.

If I understand it correct then there should not be a 1:1 relation
between a panel and a connector anymore.

We should not try to work in two different directions with this.
Laurent, can you comment on this?

If we move forard with this patch, then all fields in drm_panel needs
kernel-doc - preferably inline.

	Sam

> 
> Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> ---
>  drivers/gpu/drm/drm_panel.c | 28 ++++++++++++++++++++++++++++
>  include/drm/drm_panel.h     | 14 ++++++++++++++
>  2 files changed, 42 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> index 169bab54d52d..ca01095470a9 100644
> --- a/drivers/gpu/drm/drm_panel.c
> +++ b/drivers/gpu/drm/drm_panel.c
> @@ -104,11 +104,23 @@ EXPORT_SYMBOL(drm_panel_remove);
>   */
>  int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector)
>  {
> +	struct drm_display_info *info;
> +
>  	if (panel->connector)
>  		return -EBUSY;
>  
>  	panel->connector = connector;
>  	panel->drm = connector->dev;
> +	info = &connector->display_info;
> +	info->width_mm = panel->width_mm;
> +	info->height_mm = panel->height_mm;
> +	info->bpc = panel->bpc;
> +	info->panel_orientation = panel->orientation;
> +	info->bus_flags = panel->bus_flags;
> +	if (panel->bus_formats)
> +		drm_display_info_set_bus_formats(&connector->display_info,
> +						 panel->bus_formats,
> +						 panel->num_bus_formats);
>  
>  	return 0;
>  }
> @@ -128,6 +140,22 @@ EXPORT_SYMBOL(drm_panel_attach);
>   */
>  int drm_panel_detach(struct drm_panel *panel)
>  {
> +	struct drm_display_info *info;
> +
> +	if (!panel->connector)
> +		goto out;
> +
> +	info = &panel->connector->display_info;
> +	info->width_mm = 0;
> +	info->height_mm = 0;
> +	info->bpc = 0;
> +	info->panel_orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
> +	info->bus_flags = 0;
> +	kfree(info->bus_formats);
> +	info->bus_formats = NULL;
> +	info->num_bus_formats = 0;
> +
> +out:
>  	panel->connector = NULL;
>  	panel->drm = NULL;
>  
> diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> index fc7da55f41d9..a6a881b987dd 100644
> --- a/include/drm/drm_panel.h
> +++ b/include/drm/drm_panel.h
> @@ -39,6 +39,8 @@ enum drm_panel_orientation;
>   * struct drm_panel_funcs - perform operations on a given panel
>   * @disable: disable panel (turn off back light, etc.)
>   * @unprepare: turn off panel
> + * @detach: detach panel->connector (clear internal state, etc.)
> + * @attach: attach panel->connector (update internal state, etc.)
>   * @prepare: turn on panel and perform set up
>   * @enable: enable panel (turn on back light, etc.)
>   * @get_modes: add modes to the connector that the panel is attached to and
> @@ -95,6 +97,18 @@ struct drm_panel {
>  
>  	const struct drm_panel_funcs *funcs;
>  
> +	/*
> +	 * panel information to be set in the connector when the panel is
> +	 * attached.
> +	 */
> +	unsigned int width_mm;
> +	unsigned int height_mm;
> +	unsigned int bpc;
> +	int orientation;
> +	const u32 *bus_formats;
> +	unsigned int num_bus_formats;
> +	u32 bus_flags;
> +
>  	struct list_head list;
>  };
>  
> -- 
> 2.22.0.410.gd8fdbe21b5-goog
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
