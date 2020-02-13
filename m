Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4191015BFF1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 15:01:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TlJ5eowvcZ1tgxw7fT7RhbDBQfu1mHGzYl3k/yeiVec=; b=JO8+nqj7Bx09zD
	FlH8Uloz9cQPYlVbOva1F5aHgzIwoGTwws2ZLZ0ghlzGx36zLNMKXohry8/lU088cmaP/B3qeVpGJ
	0tmchegJVKtOHbaKoVQOjzWQcb26v6wgH0jTsP17DCxqbLW4B+725/qaWseJMfMN8feRQmROeVC83
	QbsztLmzrYqZyej/iFYTrkAz53hfZeMERSRdplPsHhoVXtF20x+I7EuAjR62DmNbDUGv5YpwrFPi6
	UG42zIo0X9Qk5dLBLczs1zUTh6jM7S+fmePxkFQ6eCOFKt7c5pqwvTT9rZFj8jnPKZsv7WPui8kOU
	FK+FinLFpC2b3bQQlN8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2F3W-0005Gb-95; Thu, 13 Feb 2020 14:01:26 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2F38-0005DH-72; Thu, 13 Feb 2020 14:01:17 +0000
Received: by mail-qk1-x744.google.com with SMTP id o28so4363640qkj.9;
 Thu, 13 Feb 2020 06:01:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GwvJtBvLYgXHz2Xkjo28kGnQcGUFvmoCc8Tq+skqxFM=;
 b=WoSPPLB6quBGtBpRywwrlPUN/efg7Ughe/HaH3khTmKhm8TtRvn1omHwpi/Uje11Nc
 pJJ434RD5vc6K56AF1flgXq7rGgQL4eIbgy0vNQWX3Ilo6r1XlrPGVcQUkzDZJVdNAqL
 CQWRmZ6MDJKjdXiViv85LIZth9OYzoQf4NKp2R4S9uMoWLn4jAzJvRHErhw/tberXn1U
 afxPCPN8yIbn8R73x0dy1qStRMFKKk0TU7EJIVtQo9A5/go6CKtMqKAybDD7f1leMzbr
 RkHP02AhsZ8v09CuFrX1byfuhGihLXF2U77kvpA2MNTc/JMV0yrMCE7PJN/PnIDh9OCX
 EVqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GwvJtBvLYgXHz2Xkjo28kGnQcGUFvmoCc8Tq+skqxFM=;
 b=bxFk9zk/3JG82pPXOHQmOFk3AK5GhLf4T6iVY/SJiPnWpwOHaX6ZJD0xEC4d7CDkzG
 K+6WokWaEHYJGY7UAanDVyY9O53zFT8twe2Z273h36w2PRDDU4vYbtSA8Sol7ox4f+m8
 yHn0APV09clGQgUJ2OfMkpf/W/Q/lzIqtyTrqoN11ZoUTgSL/9uyH8MTj1gbknloBvv7
 6H9+Yoon+gzMfnhEJ5n4nP+ajqPCp1bCeOTV2nu3V1+F/ctH8O0uamg75QQPlrpE82qv
 K5vToeUqBVhI+X7s1BuzY83gwHzOOyiv/mZ7NINjjnaNmNFO4ceaNwL8G8ZK0HjxmtVr
 s97g==
X-Gm-Message-State: APjAAAVgJ4CGlNYqbiIIqWlRxonaEHrxBR3oQHmoSOCdfN1cYv4pobxe
 DPdtFhQ66dpVH46+SHJXnd65kNupKsbwkqbAi6g=
X-Google-Smtp-Source: APXvYqyjD4OX/YI4q5ugfE3GeGjRdg6xfub/ylaaIdK2920TyQEJp7ys7DWIVv34YSpAoPAjOFPsF7u/zxzxnLNIOJE=
X-Received: by 2002:a37:a642:: with SMTP id p63mr16214664qke.85.1581602456914; 
 Thu, 13 Feb 2020 06:00:56 -0800 (PST)
MIME-Version: 1.0
References: <20200213012353.26815-1-bibby.hsieh@mediatek.com>
 <20200213012353.26815-2-bibby.hsieh@mediatek.com>
 <1581566763.12071.1.camel@mtksdaap41>
In-Reply-To: <1581566763.12071.1.camel@mtksdaap41>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Thu, 13 Feb 2020 15:00:45 +0100
Message-ID: <CAFqH_51r8CvBz3J-TffYaMsZQwX=hdDVjEz9+BmBeC=QurP7Ug@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/mediatek: add fb swap in async_update
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_060103_516026_3D553C68 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eballetbo[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream <srv_heupstream@mediatek.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Tomasz Figa <tfiga@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Missatge de CK Hu <ck.hu@mediatek.com> del dia dj., 13 de febr. 2020 a les 5:06:
>
> Hi, Bibby:
>
> On Thu, 2020-02-13 at 09:23 +0800, Bibby Hsieh wrote:
> > Besides x, y position, width and height,
> > fb also need updating in async update.
> >
>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
>
> > Fixes: 920fffcc8912 ("drm/mediatek: update cursors by using async atomic update")
> >
> > Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> > ---

This patch actually fixes two issues as explained in [1], I send the
patch without seeing that another one was already sent. Both do the
same thing. So,

Tested-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

[1] https://lkml.org/lkml/2020/2/13/286

> >  drivers/gpu/drm/mediatek/mtk_drm_plane.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> > index d32b494ff1de..e084c36fdd8a 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> > @@ -122,6 +122,7 @@ static void mtk_plane_atomic_async_update(struct drm_plane *plane,
> >       plane->state->src_y = new_state->src_y;
> >       plane->state->src_h = new_state->src_h;
> >       plane->state->src_w = new_state->src_w;
> > +     swap(plane->state->fb, new_state->fb);
> >       state->pending.async_dirty = true;
> >
> >       mtk_drm_crtc_async_update(new_state->crtc, plane, new_state);
>
> --
> CK Hu <ck.hu@mediatek.com>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
