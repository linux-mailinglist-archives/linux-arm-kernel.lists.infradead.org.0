Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE85B66FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 17:23:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Llhh9yhqYYHWoor1/PAwUnxEPvk0uAEifCzoYcz7QAo=; b=WCs5HQLX1xePYz
	tm+HYj3H67cXzCnHqGSKpzZbse2CeWxztSRpfqp59aLzc8TSLLsHLuQYwBZBam/71ZknxufBADoBU
	V31ZQfjEPXxdsoSi2fJ8q2ar/BQBBJyNsXl3My7RvZOoyqxXXR2kN6KT22dM+o2PEIxtG1DzL3P+9
	d6kXChT8q1laSoaHwlz02D8TwA6HFNhCDBzYCM/sRXJYCh0Xpjp91JweKSyTPyplrmSghGGuHuDjT
	dShzUeKgh2ewbNPNwiXn0gI/b9sILGneNSkRURP/yEKM7FcIIrRD1LoS3an2AgRs2KXZPOhtI/MI4
	cqokpqe9Vs3U3L39HFdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAbnj-00083y-Oz; Wed, 18 Sep 2019 15:23:27 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAbnX-00083A-5w
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 15:23:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1568820189; bh=kRc8vp8BAB11xc+/TQcnK+fReDy51rfmeTkpuKM5zHM=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=mg/ptGc6dXUGFsO2H5hLJjbsOQ/VgVQSZiexphZP1C1FRS1rwh7D7VzHbTc1W3NSr
 ZYM44/sJcvtiR+3pt+Zcn/oMif/DRC2uHY4PIssBohbuPYA/yCwbeSLTNZ7phlMH7m
 3IsVRn3Rd/LOktCj5i5Z4/V1/9Qniz007k7EQ3dk=
Date: Wed, 18 Sep 2019 17:23:09 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH] drm: sun8i-ui/vi: Fix layer zpos change/atomic modesetting
Message-ID: <20190918152309.j2dbu63jaru6jn2t@core.my.home>
Mail-Followup-To: Maxime Ripard <mripard@kernel.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20190914220337.646719-1-megous@megous.com>
 <20190918141734.kerdbbaynwutrxf6@gilmour>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918141734.kerdbbaynwutrxf6@gilmour>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_082315_393795_4730A8E2 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Sep 18, 2019 at 04:17:34PM +0200, Maxime Ripard wrote:
> Hi,
> 
> On Sun, Sep 15, 2019 at 12:03:37AM +0200, megous@megous.com wrote:
> > From: Ondrej Jirman <megous@megous.com>
> >
> > There are various issues that this re-work of sun8i_[uv]i_layer_enable
> > function fixes:
> >
> > - Make sure that we re-initialize zpos on reset
> > - Minimize register updates by doing them only when state changes
> > - Fix issue where DE pipe might get disabled even if it is no longer
> >   used by the layer that's currently calling sun8i_ui_layer_enable
> > - .atomic_disable callback is not really needed because .atomic_update
> >   can do the disable too, so drop the duplicate code
> >
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> 
> It looks like these fixes should be in separate patches. Is there any
> reason it's not the case?

Bullet points just describe the resulting effect/benefits of the change to fix
the pipe control register update issue (see the referenced e-mail).

I can maybe split off the first bullet point into a separate patch. But
I can't guarantee it will not make the original issue worse, because it might
have been hiding the other issue with register updates.

The rest is just a result of the single logical change. It doesn't work
individually, it all has the goal of fixing the issue as a whole.

If I were to split it I would have to actually re-implement .atomic_disable
callback only to remove it in the next patch. I don't see the benefit.

regards,
	o.

> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
