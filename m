Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE311F88AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 07:43:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n/6MWKR591DlXlOxSZlKcUbLq5L9JUOPOzmhAspZ7pc=; b=CQL5viMlAkjo5D
	f5AgJabQkkf4k0sVDBvpd/Ycx6wtUu/ZLvkOIz14xOutXSsxJNo3qGyMOvHggagOj80QDZgpRwT1h
	ucoVIvk+FaFDJ+xNon4bwO/a3A/PCQZP5zcl1BEZyJ/E+jdQPA7RksyiuSQrT/jcXrYO6b9yESSjB
	DnxpN3TQCOxniulkatE0ojxky6jnoYE6cxCsRuktXt7I9PSEg3jZ0rfd7Qo6JdXsHS3xpvb9mzOcz
	DHElhBTz196UhX6d1LYheR6xI0rT0+R4cwbMLxqE+a2f49T7Hw4o9dOHsCisSmZk96sxT2VYRULKZ
	jZ1RZ8D18BZ1E02sqphA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUPtl-0007pw-9j; Tue, 12 Nov 2019 06:43:33 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUPte-0007pK-47
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 06:43:27 +0000
Received: by mail-ed1-x542.google.com with SMTP id m13so13990522edv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 22:43:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6gu94hk6ViXZU/1pF57c89Mz0JcKl1j3IzzPZmTPjtQ=;
 b=LDDUyvLAAr/FgJFV0ODv1fscc3tceNs7i1JvEsFi9SbeCOxeMyJWafdRgYIlNqWV49
 ro79eCq++su+3IaTvSt6MwgL4SEwWPUZp7cEzIY5lMEh0+Vi4K+fFmiFNMR56+eI/hDL
 YUlIauWUKVBysNq/DieSbYjanJaQapqZXiAkA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6gu94hk6ViXZU/1pF57c89Mz0JcKl1j3IzzPZmTPjtQ=;
 b=C1VPoE8yKYoDobZXnQFc2ajAVUhWyV2j8DsxD0H/UKIbREaEAnbd4HTeq7YoGXMYdf
 SUICK+vZVWVtSG9+Dgl9iyERd9YWIqZ06RjE9IRPRZuuLij5fR/KOlwrld3Lbbk5+a27
 CKtMIQ+M+rwp1pr9t5ab97NcAw3Sv+AcR11AGJIipqIpP3+tZDFCqJXpMXnRAWqxURIQ
 slW75K9TKBYDH6IWNzpi1vCvB6JFete99pqscRgUdTR76LYVIzK9c+XPODvQqCkILyB7
 jBKq5reY3EM8KqE/9robqsMNG4v0iRloU7ZOQDMkS1lKQy4Sh1FraTqojbOFFyNUnIiF
 NrEA==
X-Gm-Message-State: APjAAAUU6Y4WjGdJGJJ9f/6AKywEhdlbuVxQzDPv95iCdj9QBhsWPqjH
 8TrzhYe67Uegt9K4iPLbDawBJhmS3qK04ZJmgQzNoyEs
X-Google-Smtp-Source: APXvYqyMbA5YJasNK6lBrgNGRtM92Nacpnn0WpqptPvJ7NjQkzN/92o6yJP/Cb/7QkIhQbV5cTyTR309VkTgVeCpFuI=
X-Received: by 2002:a17:906:1d19:: with SMTP id
 n25mr25947734ejh.151.1573541003705; 
 Mon, 11 Nov 2019 22:43:23 -0800 (PST)
MIME-Version: 1.0
References: <20191014075812.181942-1-pihsun@chromium.org>
 <20191014075812.181942-4-pihsun@chromium.org>
 <20191111231023.GD3108315@builder>
In-Reply-To: <20191111231023.GD3108315@builder>
From: Pi-Hsun Shih <pihsun@chromium.org>
Date: Tue, 12 Nov 2019 14:42:47 +0800
Message-ID: <CANdKZ0frU9+dRYeMaJjjKm6emxj41c_jBk_RX3G7bXn_oXKp4g@mail.gmail.com>
Subject: Re: [PATCH v20 3/4] rpmsg: add rpmsg support for mt8183 SCP.
To: Bjorn Andersson <bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_224326_164997_DF82DA49 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 "open list:REMOTE PROCESSOR \(REMOTEPROC\) SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
Thanks for the review, I'll address them in the next version. Some
inline comment below.

On Tue, Nov 12, 2019 at 7:10 AM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Mon 14 Oct 00:58 PDT 2019, Pi-Hsun Shih wrote:
>
> > Add a simple rpmsg support for mt8183 SCP, that use IPI / IPC directly.
> >
>
> Hi Pi-Hsun,
>
> Sorry for not reviewing this in a timely manner! This looks good, just
> some very minor comments below.
>
> > Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
> [..]
> > diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
> > index f2e5e70a58f2..7896cefb2dc0 100644
> > --- a/drivers/remoteproc/mtk_scp.c
> > +++ b/drivers/remoteproc/mtk_scp.c
> > @@ -15,6 +15,7 @@
> >  #include <linux/platform_device.h>
> >  #include <linux/remoteproc.h>
> >  #include <linux/remoteproc/mtk_scp.h>
> > +#include <linux/rpmsg/mtk_rpmsg.h>
> >
> >  #include "mtk_common.h"
> >  #include "remoteproc_internal.h"
> > @@ -407,6 +408,31 @@ static void scp_unmap_memory_region(struct mtk_scp *scp)
> >       of_reserved_mem_device_release(scp->dev);
> >  }
> >
> > +static struct mtk_rpmsg_info mtk_scp_rpmsg_info = {
> > +     .send_ipi = scp_ipi_send,
> > +     .register_ipi = scp_ipi_register,
> > +     .unregister_ipi = scp_ipi_unregister,
>
> These are exported symbols, so unless you see a need to support
> alternative implementations in the near future just skip the function
> pointers and call them directly.
>

Yes there is request from MTK that they do want to reuse the mtk_rpmsg
driver for things other than mtk_scp, so there's a need to support
alternative implementations for this.

> > +                struct rpmsg_device *rpdev, rpmsg_rx_cb_t cb, void *priv,
> > +                u32 id)
> > +{
>
> Regards,
> Bjorn

Regards,
Pi-Hsun

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
