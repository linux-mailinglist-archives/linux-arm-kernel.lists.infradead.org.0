Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D62C24C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 18:00:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0GBC5NiN1a144lfzok9L8rHT3OqIkE3IkX8hfKNOaSs=; b=STvMyFiZYWDAuG
	XYKVtWK0DF2VCkHz5QZkcPTY1reOXWuNyIuC5A6/BNUKs7BEVxAkoIRNlj3BIScAPD+rtb9Za/6Ts
	7IRPIAgtiJ6LjvV2CZeqQHUZzRmb1oJCmngwPqJbnhZQ8/zGRviMfKYsF1H07vdJdTgAqDS4QT36v
	+e8Azh0hn34a48yM6qf+xkWoWlnr1wyUaxYBZFbTBD0ZNxWBk7T8FuGlaG+B3GwW/bzntpwhkVvYF
	nDFMm7i2olIO1By26iihfmFKDcfIMtyZUjYjAA6bwkid7q+mn8dq8XhhXMJaWyL8vXwoxe0ZKX27p
	aHQiIlw2SsmtBSMHj+Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEy5f-0001Kx-S4; Mon, 30 Sep 2019 15:59:59 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEy5P-0001K2-SA
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 15:59:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1569859177; bh=D2ejaUWp29uDGi/bAvIoPZtXvcgt2U13kUVwsfjN680=;
 h=Date:From:To:Subject:References:X-My-GPG-KeyId:From;
 b=bAy5AL9wyR8lQZ/ooSinafOoLY4OVl0wumhpX+V/u5L/fnoADyJ66LTqYnzt8F6uB
 vuhZu6xxYFeSRRDMUbG9iJKqZfp1uyDTvPWh+PDrHysZujX5/uIsBhfrcle2A/IukU
 9UgPwq3/qVl2BpEByIhmFriFzhbz8suwyIsUNrqw=
Date: Mon, 30 Sep 2019 17:59:37 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm: sun8i-ui/vi: Fix layer zpos change/atomic modesetting
Message-ID: <20190930155937.rtvoxprayrkxodxo@core.my.home>
Mail-Followup-To: Maxime Ripard <mripard@kernel.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20190914220337.646719-1-megous@megous.com>
 <20190918141734.kerdbbaynwutrxf6@gilmour>
 <20190918152309.j2dbu63jaru6jn2t@core.my.home>
 <20190918201617.5gwzmshoxbcxbmrx@gilmour>
 <20190919122058.fhpuafogdq7oir2d@core.my.home>
 <20190919131244.35hmnp7jizegltp7@core.my.home>
 <20190920151142.ijistzhtcaenehx6@gilmour>
 <20190924124054.743s3tlw5qirghxo@core.my.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924124054.743s3tlw5qirghxo@core.my.home>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_085944_081013_4D5AD86B 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, Sep 24, 2019 at 02:40:54PM +0200, megous hlavni wrote:
> > >  On first run of the X server, only the black screen and the layer
> > >  containing the cursor is visible. Switching to console and back
> > >  corrects the situation.
> > >
> > >  I have dumped registers, and found out this:
> > >
> > >  (In both cases there are two enabled planes, plane 1 with zpos 0 and
> > >  plane 3 with zpos 1).
> > >
> > >  1) First Xorg run:
> > >
> > >    0x01101000 : 00000201
> > >    0x01101080 : 00000030
> > >
> > >    BLD_FILL_COLOR_CTL: (aka SUN8I_MIXER_BLEND_PIPE_CTL)
> > >      P1_EN
> > >
> > >    BLD_CH_RTCTL: (aka SUN8I_MIXER_BLEND_ROUTE)
> > >      P0_RTCTL channel0
> > >      P1_RTCTL channel3
> > >
> > >  2) After switch to console and back to Xorg:
> > >
> > >  0x01101000 : 00000301
> > >  0x01101080 : 00000031
> > >
> > >    BLD_FILL_COLOR_CTL:
> > >      P1_EN and P0_EN
> > >
> > >    BLD_CH_RTCTL:
> > >      P0_RTCTL channel1
> > >      P1_RTCTL channel3
> > >
> > >  What happens is that sun8i_ui_layer_enable() function may disable
> > >  blending pipes even if it is no longer assigned to its layer, because
> > >  of incorrect state/zpos tracking in the driver.
> > >
> > >  In particular, layer 1 is configured to zpos 0 and thus uses pipe 0.
> > >  When layer 3 is enabled by X server, sun8i_ui_layer_enable() will get
> > >  called with old_zpos=0 zpos=1, which will lead to disabling of pipe 0.
> > >
> > >  In general this issue can happen to any layer during enable or zpos
> > >  changes on multiple layers at once.
> > >
> > >  To correct this we now pass previous enabled/disabled state of the
> > >  layer, and pass real previous zpos of the layer to
> > >  sun8i_ui_layer_enable() and rework the sun8i_ui_layer_enable() function
> > >  to react to the state changes correctly. In order to not complicate
> > >  the atomic_disable callback with all of the above changes, we simply
> > >  remove it and implement all the chanes as part of atomic_update, which
> > >  also reduces the code duplication.
> > 
> > I'm not even sure why we need that old state. Can't we just reset
> > completely the whole thing and do the configuration all over again?
> 
> That would be nice from a dev standpoint if we can get a complete state for all
> planes at once from DRM core, but how? DRM helper gives callbacks
> for updating individual planes with prev and new state. These individual layer
> change notifications don't map nicely to how pipes are represented in the mixer
> registers.

If anyone wants to pursue this further, feel free to. I'm not planning to
pursue this fix further, at the moment.

regards,
	o.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
