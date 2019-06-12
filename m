Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 048EE4275B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 15:21:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWdlGesDcNxVqaJl/KqX4DU7LXpBCbW8srOz2xcbcVE=; b=OYGynjp6dIlXUs
	L9Nd4qJc3wwfDKXfpVP/3Ddi1xmnSYND0PJXGKv0XUzc5WmqK3YIMj06Vz0Zpt7uq0o/ObOCyW1pD
	QJd2EpEy9oBa9wWDTkFGO+ZYtQMOZ9M/SYO50sdqVRgQrLg3cZAjHfNGww87IF/9bAzGJ+DTa5t0H
	MeCAdRubHFCLBZzN5jZDJMV4T/zIDra1RLcnZB78Emj0/D3ec9fZlY0TowhsgrWYDm+AXEo3dhwCJ
	JKtp/pk6kxubK4AyF49fZWt4Nqt51IkYe/42Ni5LGdm+Od+cMvfu8bL4tXWsI0CAO2IpRSXW5/xl2
	ph1F5BQHyibUrQUMNbJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb3C7-0002gV-Ez; Wed, 12 Jun 2019 13:21:39 +0000
Received: from smtp.domeneshop.no ([2a01:5b40:0:3005::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb3Bx-0002fe-2X
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 13:21:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org;
 s=ds201810; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=rmB2gQi3s3opzUffl1KHx2cHFWv05BYL6x89OxfX2Jk=; 
 b=AcjuivWHdk7Suia2budC0VKW4fvAEKPqK5PVdnZdGp5NC6wFQqv23NLf876f1lbqZy6ZhisgABtYHuPKq99Xq1LBexsU8bSuSForu+kjUyBZDAVjKJudi4KYHKZW/nCsrK7utRgBZH6idH/RiiRTGhukjAunTvTfOrrCW8JGQWEqySAtCse4IbxbBtF6b/ec+mVHoa+qO+WlUhMzLHhanZckmzzKseV6Wu6WPzYoBOhzdHQkeiUam7nQpVT3e28jdcpWJjpARYQkY77fqfZrhU68iFzjQj6xU57AWV2OXo3EzxOHB7xZ+7vDiR7+61z6/XAD3pql4uOzK9wTbckynA==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:63827
 helo=[192.168.10.173])
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.84_2) (envelope-from <noralf@tronnes.org>)
 id 1hb3Bu-0007B8-96; Wed, 12 Jun 2019 15:21:26 +0200
Subject: Re: [PATCH v3 3/6] drm/modes: Allow to specify rotation and
 reflection on the commandline
To: Maxime Ripard <maxime.ripard@bootlin.com>
References: <cover.87b91639451f23d4ab68a7c9812f2dd158869025.1555591281.git-series.maxime.ripard@bootlin.com>
 <ba320b3a13c4444102b77c4d00f7c1dc810adc3c.1555591281.git-series.maxime.ripard@bootlin.com>
 <9ccb7573-d46e-4b90-7caa-7b8cd7b8e7a2@tronnes.org>
 <e2edb1dc-f719-93f0-5205-ecb7b44b057e@tronnes.org>
 <20190611132049.njlrgbtobzgyzyzh@flea>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <c73e9c29-e20b-65e0-553c-67b9c2cd349a@tronnes.org>
Date: Wed, 12 Jun 2019 15:21:19 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190611132049.njlrgbtobzgyzyzh@flea>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_062129_298338_4F7EA9E4 
X-CRM114-Status: GOOD (  20.79  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:5b40:0:3005:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



Den 11.06.2019 15.20, skrev Maxime Ripard:
> Hi Noralf,
> =

> On Fri, Apr 19, 2019 at 10:53:28AM +0200, Noralf Tr=F8nnes wrote:
>> Den 18.04.2019 18.40, skrev Noralf Tr=F8nnes:
>>>
>>>
>>> Den 18.04.2019 14.41, skrev Maxime Ripard:
>>>> Rotations and reflections setup are needed in some scenarios to initia=
lise
>>>> properly the initial framebuffer. Some drivers already had a bunch of
>>>> quirks to deal with this, such as either a private kernel command line
>>>> parameter (omapdss) or on the device tree (various panels).
>>>>
>>>> In order to accomodate this, let's create a video mode parameter to de=
al
>>>> with the rotation and reflexion.
>>>>
>>>> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>>>> ---
>>>>  drivers/gpu/drm/drm_client_modeset.c |  10 +++-
>>>>  drivers/gpu/drm/drm_modes.c          | 110 ++++++++++++++++++++++----=
--
>>>>  include/drm/drm_connector.h          |   9 ++-
>>>>  3 files changed, 109 insertions(+), 20 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/drm_client_modeset.c b/drivers/gpu/drm/dr=
m_client_modeset.c
>>>> index f2869c82510c..15145d2c86d5 100644
>>>> --- a/drivers/gpu/drm/drm_client_modeset.c
>>>> +++ b/drivers/gpu/drm/drm_client_modeset.c
>>>> @@ -823,6 +823,7 @@ EXPORT_SYMBOL(drm_client_modeset_probe);
>>>>  bool drm_client_panel_rotation(struct drm_mode_set *modeset, unsigned=
 int *rotation)
>>>>  {
>>>>  	struct drm_connector *connector =3D modeset->connectors[0];
>>>> +	struct drm_cmdline_mode *cmdline;
>>>>  	struct drm_plane *plane =3D modeset->crtc->primary;
>>>>  	u64 valid_mask =3D 0;
>>>>  	unsigned int i;
>>>> @@ -844,6 +845,15 @@ bool drm_client_panel_rotation(struct drm_mode_se=
t *modeset, unsigned int *rotat
>>>>  		*rotation =3D DRM_MODE_ROTATE_0;
>>>>  	}
>>>>
>>>> +	/**
>>>> +	 * We want the rotation on the command line to overwrite
>>>> +	 * whatever comes from the panel.
>>>> +	 */
>>>> +	cmdline =3D &connector->cmdline_mode;
>>>> +	if (cmdline->specified &&
>>>> +	    cmdline->rotation !=3D DRM_MODE_ROTATE_0)
>>>
>>> I believe you need to drop that second check, otherwise rotate=3D0 will
>>> not overwrite panel rotation.
>>>
>>>> +		*rotation =3D cmdline->rotation;
>>
>> I remembered that you wanted this to propagate to DRM userspace. That's
>> not happening here.
> =

> It's propated to the userspace through the plane's rotation property,
> I just checked.
> =


Oh, so the rotation property stores its value in plane_state->rotation.
And this is set in: drm_client_modeset_commit_atomic() ->
drm_client_panel_rotation(): plane_state->rotation =3D rotation;

>> The only way I see for that to happen, is to set
>> ->panel_orientation. And to repeat myself, imo that makes
>> 'orientation' a better name for this video=3D option.
> =

> orientation and rotation are two different things to me. The
> orientation of a panel for example is absolute, while the rotation is
> a transformation. In this particular case, I think that both the
> orientation and the rotation should be taken into account, with the
> orientation being the default state, and the hardware / panel will
> tell us that, while the rotation would be a transformation from that
> default to whatever the user wants.
> =

> More importantly, the orientation is a property of the hardware (ie,
> how the display has been assembled), while the rotation is a software
> construct.
> =

> And if the property being used to expose that is the rotation, I guess
> it would make sense to just use the same name and remain consistent.
> =


Ok, I see. Based on this, I would assume that rotation would be relative
to the orientation, but I see that in this patch rotation doesn't take
orintation into account, it just overwrites it. I don't how userspace
deals with rotation on top of orientation.

Noralf.

> Maxime
> =

> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
