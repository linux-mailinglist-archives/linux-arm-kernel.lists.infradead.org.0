Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 746D96E4B3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 13:08:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=27jeeSP/A/AubxE3sUTxyV1WgrMh8eopQt5BGnRqN6o=; b=iY8ZzLnp1+sjvy
	y44i17lvQMpqlTPCp7nHjxGsMf+Ud43Y/hAz1ZchtECoRI5Bp5CgjzqavV+RNWBGP/NSirjDFo6Qq
	iFI/9f4z5uNej9keRPV05EpgVql7v8+Zuf7jjP/0zoraz0FFZo5w7MQC93rlsonJcxDEC1gKe9YyR
	C8lbCdJS88I2ukWb/t5xOqtD5Y1eIhLUODAB7TbrR8slOYSISqLzxJSzfdb2RDUz4GD5r5lgKB3xP
	PVSKmCUq2/6apkaugCW+UCcg9GSkP29g8u8vP9znuoYzvjNKlVGwIQ2FG06vYuieKyXu+DJAVlylL
	qU+RzvIkCJGs1rP1AKRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoQkb-0002l4-9k; Fri, 19 Jul 2019 11:08:33 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoQkB-0002hk-WC; Fri, 19 Jul 2019 11:08:09 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 24E792008A;
 Fri, 19 Jul 2019 13:08:01 +0200 (CEST)
Date: Fri, 19 Jul 2019 13:08:00 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: "Koenig, Christian" <Christian.Koenig@amd.com>
Subject: Re: [PATCH v1 11/11] drm: drop uapi dependency from drm_file.h
Message-ID: <20190719110800.GA3247@ravnborg.org>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-12-sam@ravnborg.org>
 <57ad927c-4b7f-d6e2-edda-720386190054@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <57ad927c-4b7f-d6e2-edda-720386190054@amd.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=eF2l136HLxNaSI10T0kA:9 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_040808_216702_84C76961 
X-CRM114-Status: GOOD (  14.59  )
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Liviu Dudau <Liviu.Dudau@arm.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Eric Anholt <eric@anholt.net>, "Zhou,
 David\(ChunMing\)" <David1.Zhou@amd.com>, Stefan Agner <stefan@agner.ch>,
 Maxime Ripard <maxime.ripard@bootlin.com>, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <treding@nvidia.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Jani Nikula <jani.nikula@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christian.

Thanks for your comments and very valid question.

On Fri, Jul 19, 2019 at 06:56:47AM +0000, Koenig, Christian wrote:
> Am 18.07.19 um 18:15 schrieb Sam Ravnborg:
> > drm_file used drm_magic_t from uapi/drm/drm.h.
> > This is a simple unsigned int.
> > Just opencode it as such to break the dependency from this header file
> > to uapi.
> 
> Mhm, why do you want to remove UAPI dependency here in the first place?

The idea is to make include/drm/* independent of uapi/drm/* so the
header files are less tangled up thus easier to read and comprehend.

.c files that requires uapi can then include the uapi headers.

For now my focus was solely on uapi/drm/drm.h - so I dunno if this
is an achievable goal for include/drm/*.

For uapi/drm/* headers things are more clear. They shall be
independent of include/drm/* as they are exported.

> I mean the type can't change because it is UAPI, but it is rather bad 
> for a documentation point of view.

For a widely used type I would agree.
For struct auth, that is ony used in drm_auth.c then the documentation
impact is minor. But your point is indeed valid.
(struct auth has one field of type magic_t).

I will await further feedback before we decide to apply this patch or
not.
The patches that pushes include of drm/drm.h to the respective .c
files are legit as we drop the dependency on an indirectly included
header file. I will process these patches.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
