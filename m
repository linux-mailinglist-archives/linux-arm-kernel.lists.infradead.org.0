Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E0C104295
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 18:53:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9grHlfyevhfixX2D3LrDsbEaJfaiww1bRRGyA5yFSDE=; b=HExgePiEOG4Dkj
	Hz+gCaw+cRTwX4v2HddkAkbLIoRs61NN7r6SIqJ06GKUQL4+nybMYs9CyzsrDupSl9ONdKP+j5TKQ
	zw7gtVGT48nn7QcwiBaFRbh8z3hwZdW74gRyPLgCMPJwVf6Kcub71elHy3eoBCvpfujfxvsnumwCD
	CwN3Etm0cIN5GkGhELpoNE+Q0fu3jjvY0rC8CtPTVkSQZ58p10tss91Kr3cM61VCB11sZUNupPXIF
	IFO6TgF4VwP18uQDwBYZ1OPsZXEa9fIHbmEGLxhjjUpqfKL1thBEUG8be9nX2Czn7PXgvX8h/oYkC
	NZKyKFp5NFzHKsmcgCbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXUAH-0002Ma-SM; Wed, 20 Nov 2019 17:53:17 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXUA7-0002MC-A8
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 17:53:08 +0000
Received: by mail-ot1-f68.google.com with SMTP id 94so346714oty.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 09:53:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Uwv8oDObgXlOHyppocybq9RAMpKlTk5h/NeR2cnrypw=;
 b=WYw3HgdR+4d7Anfb4GppG6en0NL/RJWY46TQVUkOfi8FJ0TkdS8MTjk8cAimSzeWuq
 rCX+sssiH41205mp58iufn9AyrrcKjJR5OymKb1fI/1n1hvWsE/P63qc9cQyK4RDSWYw
 b+Ds9JYNFwazBjU8ak+35fbWPYngKUdN1DCzFzK7BvK6JFfjcyE5aUjxFavaFfU9MZXP
 Qu5TSu5VAPhS6+KoAM/VkVqD0L5hgiTWFg/PFzBQmCMr6oYVM3NLz6ZfOV1fu+x0LnHR
 nNNYH8zU7rgLRkvS2FaVHJ8r5BH7xXr1ox4pWBRUHU5dYEJrBCEU09uJgyMwdEXfdJ++
 9f4Q==
X-Gm-Message-State: APjAAAV/lCWP3hzlpIKBjVFORrgdX5jycxkcfzpclMumhMS7Q99DmfZx
 KYeIy7H7GwBgZpI80Ds7qfGzKcfO
X-Google-Smtp-Source: APXvYqwlN56mlHfHcWiqgn85NkWAqBWlGsHClX0w3Oeq8Obgm+5ZXSLRSWcasvURaMVqQNO0vgE6kA==
X-Received: by 2002:a9d:f45:: with SMTP id 63mr2959750ott.214.1574272385769;
 Wed, 20 Nov 2019 09:53:05 -0800 (PST)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com.
 [209.85.210.49])
 by smtp.gmail.com with ESMTPSA id 9sm246170oiq.33.2019.11.20.09.53.04
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 Nov 2019 09:53:05 -0800 (PST)
Received: by mail-ot1-f49.google.com with SMTP id n23so313639otr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 09:53:04 -0800 (PST)
X-Received: by 2002:a9d:7f12:: with SMTP id j18mr2846999otq.221.1574272384642; 
 Wed, 20 Nov 2019 09:53:04 -0800 (PST)
MIME-Version: 1.0
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
 <20191118112324.22725-46-linux@rasmusvillemoes.dk>
In-Reply-To: <20191118112324.22725-46-linux@rasmusvillemoes.dk>
From: Li Yang <leoyang.li@nxp.com>
Date: Wed, 20 Nov 2019 11:52:53 -0600
X-Gmail-Original-Message-ID: <CADRPPNTgNtFL9Wok_ZNJSoo=4vokdU7c7z9JM-_e-w=pcDfwDg@mail.gmail.com>
Message-ID: <CADRPPNTgNtFL9Wok_ZNJSoo=4vokdU7c7z9JM-_e-w=pcDfwDg@mail.gmail.com>
Subject: Re: [PATCH v5 45/48] net/wan/fsl_ucc_hdlc: fix reading of __be16
 registers
To: David Miller <davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_095307_353856_0C560A76 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, Timur Tabi <timur@kernel.org>,
 Netdev <netdev@vger.kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 lkml <linux-kernel@vger.kernel.org>, Scott Wood <oss@buserror.net>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 5:26 AM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:
>

Hi David,

What do you think about the patch 45-47 from the series for net
related changes?  If it is ok with you, I can merge them with the
whole series through the soc tree with your ACK.

Regards,
Leo

> When releasing the allocated muram resource, we rely on reading back
> the offsets from the riptr/tiptr registers. But those registers are
> __be16 (and we indeed write them using iowrite16be), so we can't just
> read them back with a normal C dereference.
>
> This is not currently a real problem, since for now the driver is
> PPC32-only. But it will soon be allowed to be used on arm and arm64 as
> well.
>
> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> ---
>  drivers/net/wan/fsl_ucc_hdlc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/wan/fsl_ucc_hdlc.c b/drivers/net/wan/fsl_ucc_hdlc.c
> index 405b24a5a60d..8d13586bb774 100644
> --- a/drivers/net/wan/fsl_ucc_hdlc.c
> +++ b/drivers/net/wan/fsl_ucc_hdlc.c
> @@ -732,8 +732,8 @@ static int uhdlc_open(struct net_device *dev)
>
>  static void uhdlc_memclean(struct ucc_hdlc_private *priv)
>  {
> -       qe_muram_free(priv->ucc_pram->riptr);
> -       qe_muram_free(priv->ucc_pram->tiptr);
> +       qe_muram_free(ioread16be(&priv->ucc_pram->riptr));
> +       qe_muram_free(ioread16be(&priv->ucc_pram->tiptr));
>
>         if (priv->rx_bd_base) {
>                 dma_free_coherent(priv->dev,
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
