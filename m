Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0BB4371F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 16:12:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C17CjhQJVHE7SWiX+VbI1J8fpCjd/VZHEo3FewJ2A00=; b=FrUiMTqXpNEL87
	RbYFMTKvK2qC5H19x8Gyq4YN92SD4gEADBANhFKz5nBL3ZFPhe9RsLcUMDOuF0x/wfeqc04PrnYDU
	BwmANA5kFdyDA4Dxj2tFa6RzMu9P2b60m1jBJNamYb6rQi5sEEe1QQDjq9mrQxZKVn+GeXiR0TaQA
	YwF90js/eEcS5L5J1dXDQuToyTTOJwWbrb0vToH4rmJIma06FpEoY2PxjHFWTr+FyGDLfPxwo4meJ
	JXrjBZEr9MVMGsAeaFJt5SUWBU+2Lg+QIx7KExQ49epFP+SeBDwJ1kwAL+4I+44Ztwdz8xGPOTh79
	HWDhXvxg0alVWPZZJWqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbQSx-0005CH-R2; Thu, 13 Jun 2019 14:12:35 +0000
Received: from smtp.domeneshop.no ([2a01:5b40:0:3005::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbQSk-0005BU-VW
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 14:12:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org;
 s=ds201810; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=TllURJwF0yzlmAetrv5/H6la9RuLk/j0Ng57n60foVQ=; 
 b=iPYgktOJ1PCyCbXU9+9+xlRiTRb8R2JauEJkkrkAZgxOooLx7lmx8hsTXNq1CWN1MAboH+DumIXIp6ZoHP/y1QG05Db2iwM1BhUG4I6zt0IiyYMMkL93UQN7XoF3CL78/Ak3O9oih/h52Inf4ZYWP4bxRxLUkdk5vWEQrN3LTilvrPrWvh9CNH6bZkS5BZ3+wyf9JoxSvcisQfrUqwsdxz0EZEZiNI0mpTEsy2b8VIo1WkDavatFFyfALWNaOLtvgOgU4jufFduiAfFuUOn4HLf+yJShjhORoBleYuwkVYijfTSUfyocobUq5QLPVpInC2qUFRngd5UcXh2w6QjmUA==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:53238
 helo=[192.168.10.173])
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.84_2) (envelope-from <noralf@tronnes.org>)
 id 1hbQSe-0001wF-G0; Thu, 13 Jun 2019 16:12:16 +0200
Subject: Re: [PATCH v3 3/6] drm/modes: Allow to specify rotation and
 reflection on the commandline
To: Maxime Ripard <maxime.ripard@bootlin.com>
References: <cover.87b91639451f23d4ab68a7c9812f2dd158869025.1555591281.git-series.maxime.ripard@bootlin.com>
 <ba320b3a13c4444102b77c4d00f7c1dc810adc3c.1555591281.git-series.maxime.ripard@bootlin.com>
 <9ccb7573-d46e-4b90-7caa-7b8cd7b8e7a2@tronnes.org>
 <e2edb1dc-f719-93f0-5205-ecb7b44b057e@tronnes.org>
 <20190611132049.njlrgbtobzgyzyzh@flea>
 <c73e9c29-e20b-65e0-553c-67b9c2cd349a@tronnes.org>
 <20190613125024.46yiiy6zrrqojajy@flea>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <4169c6d9-5a64-8d05-9496-263cd9eda485@tronnes.org>
Date: Thu, 13 Jun 2019 16:12:05 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190613125024.46yiiy6zrrqojajy@flea>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_071223_206526_09A7FE6F 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:5b40:0:3005:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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



Den 13.06.2019 14.50, skrev Maxime Ripard:
> Hi,
> =

> On Wed, Jun 12, 2019 at 03:21:19PM +0200, Noralf Tr=F8nnes wrote:
>>>> The only way I see for that to happen, is to set
>>>> ->panel_orientation. And to repeat myself, imo that makes
>>>> 'orientation' a better name for this video=3D option.
>>>
>>> orientation and rotation are two different things to me. The
>>> orientation of a panel for example is absolute, while the rotation is
>>> a transformation. In this particular case, I think that both the
>>> orientation and the rotation should be taken into account, with the
>>> orientation being the default state, and the hardware / panel will
>>> tell us that, while the rotation would be a transformation from that
>>> default to whatever the user wants.
>>>
>>> More importantly, the orientation is a property of the hardware (ie,
>>> how the display has been assembled), while the rotation is a software
>>> construct.
>>>
>>> And if the property being used to expose that is the rotation, I guess
>>> it would make sense to just use the same name and remain consistent.
>>
>> Ok, I see. Based on this, I would assume that rotation would be relative
>> to the orientation, but I see that in this patch rotation doesn't take
>> orintation into account, it just overwrites it.
> =

> Yeah, that's a good point. I've updated the next version to add the
> rotation on the command line to the orientation.
> =

>> I don't how userspace deals with rotation on top of orientation.
> =

> The orientation is exposed through the property, and the result is
> available through the plane's rotation, so I guess that it's enough?
> =


I was just wondering if Xserver/wayland applied rotation on top of
orientation or not. Maybe it would make sense to treat internal drm
clients the same. I understand that the DRM rotation property doesn't
apply on top orientation, just wondering how mutter/wayland (whoever is
in charge) does this. Not important to me, so feel free to disregard,
I'm just wondering.

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
