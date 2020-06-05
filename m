Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 264301EFEBB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 19:26:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xf6iECEUkeqqTRurTQ5iPwxLtp5y5k2dKFGn/gDnTaU=; b=Hoba7OdtwmHUtH
	YhrKzzKb9hFhoagaOkfk9R0JJi/eOCztZQvrsf0xujUicg1kbtJi0siAP0tMFuEvDgyZVeusVTZB9
	mVoOe7twRwunFEQc65oI2VwDFoPToZpFldJe3hukUqjrSOnhOZOINpelVIw4+H9lqsiKQ2GrjgOGy
	T1TKUz0abYcKa7MERdBm0xX37H+lvg5sYi5A2BD7c8MFrfaUDdy7E5QE7rfLqM7gVmNw0Ce5JF4td
	HGOgcdrKMApdzsZYEKciQNecxzv/VDMl7+oVNZ1v99cnwkgdbn2k3ih+2u3l4YaiBRoDHJJcNajsq
	pwfU+NghbEaJyO2AZemA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhG75-00013s-3G; Fri, 05 Jun 2020 17:26:39 +0000
Received: from mailoutvs39.siol.net ([185.57.226.230] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhG6x-00011z-OH
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 17:26:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 33D78521D26;
 Fri,  5 Jun 2020 19:26:22 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id Hkdlf3xJ94FU; Fri,  5 Jun 2020 19:26:21 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id C0F03521D2D;
 Fri,  5 Jun 2020 19:26:21 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id C2B65521CA7;
 Fri,  5 Jun 2020 19:26:20 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: paul.kocialkowski@bootlin.com, mripard@kernel.org,
 Nicolas Dufresne <nicolas@ndufresne.ca>
Subject: Re: [PATCH 2/3] media: cedrus: h264: Properly configure reference
 field
Date: Fri, 05 Jun 2020 19:26:20 +0200
Message-ID: <2479507.UA2pHCgT9S@jernej-laptop>
In-Reply-To: <7e74e15b7b3f9fc765182f1a43cfcf1e0e9602fc.camel@ndufresne.ca>
References: <20200604185745.23568-1-jernej.skrabec@siol.net>
 <20200604185745.23568-3-jernej.skrabec@siol.net>
 <7e74e15b7b3f9fc765182f1a43cfcf1e0e9602fc.camel@ndufresne.ca>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_102631_944460_C98CDED0 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wens@csie.org, hverkuil-cisco@xs4all.nl,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne petek, 05. junij 2020 ob 19:16:35 CEST je Nicolas Dufresne napisal(a):
> Le jeudi 04 juin 2020 =E0 20:57 +0200, Jernej Skrabec a =E9crit :
> > When interlaced H264 content is being decoded, references must indicate
> > which field is being referenced. Currently this was done by checking
> > capture buffer flags. However, that is not correct because capture
> > buffer may hold both fields.
> > =

> > Fix this by checking newly introduced flags in reference lists.
> > =

> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> =

> Perhaps an additional patch could cleanup the miss-leading comment in
> v4l2_h264_dpb_entry definition.

I missed that. I think this change actually belongs to patch 1. I'll fix it=
 in =

v2.

Best regards,
Jernej

> =

> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> =

> > ---
> > =

> >  drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 6 ++----
> >  1 file changed, 2 insertions(+), 4 deletions(-)
> > =

> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c index
> > cce527bbdf86..c87717d17ec5 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > @@ -183,7 +183,6 @@ static void _cedrus_write_ref_list(struct cedrus_ctx
> > *ctx,> =

> >  	for (i =3D 0; i < num_ref; i++) {
> >  	=

> >  		const struct v4l2_h264_dpb_entry *dpb;
> >  		const struct cedrus_buffer *cedrus_buf;
> > =

> > -		const struct vb2_v4l2_buffer *ref_buf;
> > =

> >  		unsigned int position;
> >  		int buf_idx;
> >  		u8 dpb_idx;
> > =

> > @@ -198,12 +197,11 @@ static void _cedrus_write_ref_list(struct cedrus_=
ctx
> > *ctx,> =

> >  		if (buf_idx < 0)
> >  		=

> >  			continue;
> > =

> > -		ref_buf =3D to_vb2_v4l2_buffer(cap_q->bufs[buf_idx]);
> > -		cedrus_buf =3D vb2_v4l2_to_cedrus_buffer(ref_buf);
> > +		cedrus_buf =3D vb2_to_cedrus_buffer(cap_q->bufs[buf_idx]);
> > =

> >  		position =3D cedrus_buf->codec.h264.position;
> >  		=

> >  		sram_array[i] |=3D position << 1;
> > =

> > -		if (ref_buf->field =3D=3D V4L2_FIELD_BOTTOM)
> > +		if (ref_list[i].flags & =

V4L2_H264_REFERENCE_FLAG_BOTTOM_FIELD)
> > =

> >  			sram_array[i] |=3D BIT(0);
> >  	=

> >  	}





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
