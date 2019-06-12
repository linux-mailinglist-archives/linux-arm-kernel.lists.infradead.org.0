Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2E74262C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:44:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=axqD72uQ4b+gRnvwQY5NOay/BEoRpW9PJvTxaal6NNo=; b=lIyEv/Tq/AU2y4
	Rzc0s00sT4AmgVJ8c96pWO6FmlOZrWeXmRPkBQyM+j23KMmzod/el7EAOEFyyziifObn76uFMuiuN
	P76t2IrzTT5UKg9AhZT7DorCdDOfVwSkdnz/0mefttdRTjtM58IreMKZQ+Imzlj0Z7+Idl72aiQuZ
	2EoglrDvHG2ko5sWtmkqdq2z7FvpmGct9Z7ypoPkHbQDhySPHkTtfbKNXKGk4532PCzFowOXXU8Zd
	xbQmB0usHFelZkHJGjN0ssMmqsCEzOofikD20UTZOV5Lj2c4kiA7y9YGrxfbG7A+Aid42WhdOXhao
	GTAbnOWiY3xn/kXB0PKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2bu-00081l-17; Wed, 12 Jun 2019 12:44:14 +0000
Received: from smtp.domeneshop.no ([2a01:5b40:0:3005::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2be-0007ue-Ph
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:44:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org;
 s=ds201810; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=V5xuatLmbSWIhlTDBXotDYiBA61Br0Wwkxd5ZecpoWY=; 
 b=cf+Quw9u4Bo/zkT5FEW6xYNWSxkfUOIDgJNiU9PydnT1YUwT4r/FWs8p0ifrsFKA+gKdWX15eUBxUO2IjYCiPK7pz5Ig5lh2frtP+Fd/3vQKJOPjD08oMEBpEEsbaPUi76JXCzkLW3QMJ4qz8B6wHpei3JY+2IylAnTdBbOROs9ZyhrbLysHA6PjjYwV+hIBUrVBSVlxrvtcqlQbruEuIPRfDo+Yuf4UETmzsY+3KvnF4d4FBF71i+a2X1ibLtjqUMi036ESDZtpu1GR/9GTenyL+YH6NzINEgdGHmiaR2XtyLRgZmEErhbCB24dJg5O5I4pVH3T5LIVQq/7/FQzyg==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:63749
 helo=[192.168.10.173])
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.84_2) (envelope-from <noralf@tronnes.org>)
 id 1hb2bZ-0000iN-Gb; Wed, 12 Jun 2019 14:43:53 +0200
Subject: Re: [PATCH v3 3/6] drm/modes: Allow to specify rotation and
 reflection on the commandline
To: Maxime Ripard <maxime.ripard@bootlin.com>
References: <cover.87b91639451f23d4ab68a7c9812f2dd158869025.1555591281.git-series.maxime.ripard@bootlin.com>
 <ba320b3a13c4444102b77c4d00f7c1dc810adc3c.1555591281.git-series.maxime.ripard@bootlin.com>
 <9ccb7573-d46e-4b90-7caa-7b8cd7b8e7a2@tronnes.org>
 <20190611124933.2g6l3d7nx6lqft6k@flea>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <1d0d6259-54cb-9a26-003d-2a35b8a40f3f@tronnes.org>
Date: Wed, 12 Jun 2019 14:43:44 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190611124933.2g6l3d7nx6lqft6k@flea>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_054359_037128_F50BE89E 
X-CRM114-Status: GOOD (  15.02  )
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
 Eric Anholt <eric@anholt.net>, Sean Paul <seanpaul@chromium.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



Den 11.06.2019 14.49, skrev Maxime Ripard:
> Hi Noralf,
> =

> On Thu, Apr 18, 2019 at 06:40:42PM +0200, Noralf Tr=F8nnes wrote:
>> Den 18.04.2019 14.41, skrev Maxime Ripard:
>>> +	/**
>>> +	 * We want the rotation on the command line to overwrite
>>> +	 * whatever comes from the panel.
>>> +	 */
>>> +	cmdline =3D &connector->cmdline_mode;
>>> +	if (cmdline->specified &&
>>> +	    cmdline->rotation !=3D DRM_MODE_ROTATE_0)
>>
>> I believe you need to drop that second check, otherwise rotate=3D0 will
>> not overwrite panel rotation.
> =

> Good catch :)
> =

>>> +		} else if (!strncmp(option, "reflect_x", delim - option)) {
>>> +			rotation |=3D DRM_MODE_REFLECT_X;
>>> +			sep =3D delim;
>>> +		} else if (!strncmp(option, "reflect_y", delim - option)) {
>>
>> I think you should drop reflect_x and _y for now since they're not
>> supported. People like me that only reads code and not documentation
>> (ahem..) will get the impression that this should work.
> =

> I'm not sure what you mean here, this is definitely supposed to
> work. Is there a limitation you're thinking of?
> =


It's this one in drm_client_panel_rotation() which limits rotation to
DRM_MODE_ROTATE_180:

	/*
	 * TODO: support 90 / 270 degree hardware rotation,
	 * depending on the hardware this may require the framebuffer
	 * to be in a specific tiling format.
	 */
	if (*rotation !=3D DRM_MODE_ROTATE_180 || !plane->rotation_property)
		return false;

Noralf.

>> Documentation/fb/modedb.txt needs to be updated with this new video=3D o=
ption.
> =

> Will do, thanks!
> =

> maxime
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
