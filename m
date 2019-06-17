Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C0A47E4E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 11:25:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LUwcv8YppBnarnsG+w2Yx5ozuI19IHSXoz/AghthFM4=; b=XHYdaJk59TVapq
	T972fWcl5MuEcgf57c2elZT5a2vIBBLn5Js9DznJ/0pFlcdXnBvtFwdATbW/kfQ9lyJG1k26iwblK
	xSSkjRE2ZTkXDcyrYb2E2gNJ0Q4UvT0aTewjRG1E95LKhMc2eTcZKWvFoc+vJjbA8w2Ei3KAYcBpZ
	FrGXmcWaZPo3XqBm5MbLxwH1jjRha9mBcgSE/YKQz3Qc/tYpmSGYuaw3rB9nELwQL/Z86jtZJkrcW
	kWX4Gu0rBZYuHLUD7+lPEHwbcb86/lZ9woCULFZTa9rewrID2f7+YGEdDoyDZcUZ9WwJ02jBuIaxS
	ZF6v4vSMfjLZ6SFylt2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcnsp-0001Uz-CX; Mon, 17 Jun 2019 09:24:59 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcnsa-0001UM-TW
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 09:24:46 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 02:24:44 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 17 Jun 2019 02:24:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v4 02/12] drm/client: Restrict the plane_state scope
In-Reply-To: <20190614141211.rl7ihqgzllcai634@flea>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
 <4f6344cb770047cf5808791d849bbc0cbd330e54.1560514379.git-series.maxime.ripard@bootlin.com>
 <87wohouz90.fsf@intel.com> <20190614141211.rl7ihqgzllcai634@flea>
Date: Mon, 17 Jun 2019 12:27:37 +0300
Message-ID: <87a7egv9x2.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_022444_965478_4C753E42 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: eben@raspberrypi.org, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Sean Paul <seanpaul@chromium.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 14 Jun 2019, Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> Hi Jani,
>
> On Fri, Jun 14, 2019 at 03:28:59PM +0300, Jani Nikula wrote:
>> On Fri, 14 Jun 2019, Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>> > The drm_client_modeset_commit_atomic function uses two times the
>> > plane_state variable in inner blocks of code, but the variable has a scope
>> > global to this function.
>> >
>> > This will lead to inadvertent devs to reuse the variable in the second
>> > block with the value left by the first, without any warning from the
>> > compiler since value would have been initialized.
>> >
>> > Fix this by moving the variable declaration to the proper scope.
>>
>> This is an improvement, but I'd consider renaming also to not shadow
>> variables.
>>
>> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>> > ---
>> >  drivers/gpu/drm/drm_client_modeset.c | 5 ++++-
>> >  1 file changed, 4 insertions(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/drm_client_modeset.c b/drivers/gpu/drm/drm_client_modeset.c
>> > index 006bf7390e7d..8264c3a732b0 100644
>> > --- a/drivers/gpu/drm/drm_client_modeset.c
>> > +++ b/drivers/gpu/drm/drm_client_modeset.c
>> > @@ -861,7 +861,6 @@ EXPORT_SYMBOL(drm_client_panel_rotation);
>> >  static int drm_client_modeset_commit_atomic(struct drm_client_dev *client, bool active)
>> >  {
>> >  	struct drm_device *dev = client->dev;
>> > -	struct drm_plane_state *plane_state;
>> >  	struct drm_plane *plane;
>> >  	struct drm_atomic_state *state;
>> >  	struct drm_modeset_acquire_ctx ctx;
>> > @@ -879,6 +878,8 @@ static int drm_client_modeset_commit_atomic(struct drm_client_dev *client, bool
>> >  	state->acquire_ctx = &ctx;
>> >  retry:
>> >  	drm_for_each_plane(plane, dev) {
>> > +		struct drm_plane_state *plane_state;
>> > +
>> >  		plane_state = drm_atomic_get_plane_state(state, plane);
>> >  		if (IS_ERR(plane_state)) {
>> >  			ret = PTR_ERR(plane_state);
>> > @@ -901,6 +902,8 @@ static int drm_client_modeset_commit_atomic(struct drm_client_dev *client, bool
>> >  		unsigned int rotation;
>> >
>> >  		if (drm_client_panel_rotation(mode_set, &rotation)) {
>> > +			struct drm_plane_state *plane_state;
>> > +
>
> That's not super clear from that patch, but this variable will not
> shadow the first one.
>
> The code layout is pretty much this one:
>
> loop () {
>   struct drm_plane_state *plane_state;
>
>   [...]
> }
>
> loop () {
>   loop () {
>     struct drm_plane_state *plane_state;
>
>     [...]
>   }
> }
>
> so the shadowing doesn't exist

Indeed, sorry for the noise.

BR,
Jani.



-- 
Jani Nikula, Intel Open Source Graphics Center

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
