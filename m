Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB271E59F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:57:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5KN6MxU+vGfGpHgHBzZqd9dV4Pdsffak6+vxfJac1+g=; b=FSMWmT+S846rr5
	9/tjZf2WyKzUAWKtg/ZNXgyuPXQH0gb/9CNW9g8diwwT5pM5n+0oqa9swknzSKaO5Or8xBtZk2q3O
	bzjgrijNjyCBuZN+ZAILHrXOWYHUgzYe7S2ySXzdZcFSHkBMo0XoYgV1pCQMR5dU6CXRsvdhH7jnh
	Q4dni26bAhXHgwG1zSGMCGki/AMH2FF6uUysxWNPiiA7WCm+YnhTrV4exrgOsrJUK+wY7i3+aWqTL
	JxS3Tp/BrwT+lTk3RWR8fkNrrhvnymQSEIrhn67UM097l4snbZ1MqS59QH3fCGvdNMTOf4dWXz+ZM
	hExN0CQbF6vzzeBPyvJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDPM-000756-Ay; Thu, 28 May 2020 07:56:56 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeDPC-00074R-D3
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:56:48 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 1516A5C21A9;
 Thu, 28 May 2020 09:56:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1590652596;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0m6DCkNJigFgdctZfTg4koHIN9qilDIV5zyAFu7UANk=;
 b=ZxUC8YSj8HosGbCCpwbO9vKJo/LuRKMai4rWEYhA2TIcIKaYfttOrkk4WXUT4E7TaYIVBl
 l5h/MdScKX6wPyPh+5r8IFvmYuEHm1pb8m5YwLZTC9JA0Bete8H9e6pTT1lmHZcccDSFWA
 cmBT8G5iQfcAXCwl6QKlzjfhK+0DvR4=
MIME-Version: 1.0
Date: Thu, 28 May 2020 09:56:36 +0200
From: Stefan Agner <stefan@agner.ch>
To: Daniel Vetter <daniel@ffwll.ch>, laurent.pinchart@ideasonboard.com
Subject: Re: [PATCH 1/2] drm/mxsfb: Call drm_crtc_vblank_on/off
In-Reply-To: <20200528054643.GQ206103@phenom.ffwll.local>
References: <20200527094757.1414174-1-daniel.vetter@ffwll.ch>
 <20200528054643.GQ206103@phenom.ffwll.local>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <7911368105b92200b661f0fed39f5642@agner.ch>
X-Sender: stefan@agner.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_005647_323996_0F81BEDA 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

On 2020-05-28 07:46, Daniel Vetter wrote:
> On Wed, May 27, 2020 at 11:47:56AM +0200, Daniel Vetter wrote:
>> mxsfb has vblank support, is atomic, but doesn't call
>> drm_crtc_vblank_on/off as it should. Not good.
>>
>> With my next patch to add the drm_crtc_vblank_reset to helpers this
>> means not even the very first crtc enabling will vblanks work anymore,
>> since they'll just stay off forever.
>>
>> Since mxsfb doesn't have any vblank waits of its own in the
>> enable/disable flow, nor an enable/disable_vblank callback we can do
>> the on/off as the first respectively last operation, and it should all
>> work.
>>
>> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
>> Cc: Marek Vasut <marex@denx.de>
>> Cc: Stefan Agner <stefan@agner.ch>
>> Cc: Shawn Guo <shawnguo@kernel.org>
>> Cc: Sascha Hauer <s.hauer@pengutronix.de>
>> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
>> Cc: Fabio Estevam <festevam@gmail.com>
>> Cc: NXP Linux Team <linux-imx@nxp.com>
>> Cc: linux-arm-kernel@lists.infradead.org
> 
> Ping for some ack/review on this one here, it's holding up the subsystem
> wide fix in patch 2.

Sorry for the delay.

I guess that has the same effect as patch 14 in Laurent's patchset would
have:
https://lore.kernel.org/dri-devel/20200309195216.31042-15-laurent.pinchart@ideasonboard.com/

But should be rather trivial to rebase. So until Laurent's patchset is
ready, we can go with this fix.

Acked-by: Stefan Agner <stefan@agner.ch>

--
Stefan

> 
> Thanks, Daniel
> 
>> ---
>>  drivers/gpu/drm/mxsfb/mxsfb_drv.c | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
>> index 497cf443a9af..1891cd6deb2f 100644
>> --- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
>> +++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
>> @@ -124,6 +124,7 @@ static void mxsfb_pipe_enable(struct drm_simple_display_pipe *pipe,
>>  	drm_panel_prepare(mxsfb->panel);
>>  	mxsfb_crtc_enable(mxsfb);
>>  	drm_panel_enable(mxsfb->panel);
>> +	drm_crtc_vblank_on(&pipe->crtc);
>>  }
>>
>>  static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
>> @@ -133,6 +134,7 @@ static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
>>  	struct drm_crtc *crtc = &pipe->crtc;
>>  	struct drm_pending_vblank_event *event;
>>
>> +	drm_crtc_vblank_off(&pipe->crtc);
>>  	drm_panel_disable(mxsfb->panel);
>>  	mxsfb_crtc_disable(mxsfb);
>>  	drm_panel_unprepare(mxsfb->panel);
>> --
>> 2.26.2
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
