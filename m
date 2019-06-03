Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 678AC33A3F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 23:51:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+giDvrp80oweu/xJy4ki/Sl1JyrtWr0Ekj164QoZJjo=; b=XfcHmVnk/PA1ux
	sZChTduQr1nhWY4gXtQ8vCeDc44OfnuFB5E9ftvmAvbtNL91VpxVpdfUd9aPTQMkBnSFplf3bTQKk
	Ej9oHLVLKKK8TGecW/gPVIl4AJk7D/C/YG5GwZf2efg0+dPu7HnlZySKBdpP4YTVR/okyeZgguqzu
	nbRve/4dAfsOKdoyY2YgfTC2+73Mvas+/DFNaTIn+2UWtSqUPVght76oSA/TchVuMOOOSlWiOYSY7
	5lIpJ/dpUPo7zxldnmgiPZM2wI9S0ixFq4TMkTJV9wfIZr88PKh216jbf3zVVKI4Sb7JNQs4s83y8
	eH0tjOAkjlaafyQtmm/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXurY-0007JH-02; Mon, 03 Jun 2019 21:51:28 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXurN-0007Ib-Vg
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 21:51:21 +0000
Received: by mail-it1-x143.google.com with SMTP id e184so29126046ite.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 14:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5D9P0SrXPjRFKraHRW7Zs4wFyot/fcU8CO5IjrNa/GI=;
 b=bMo4vAGLODEg81iVajx/tJG/KTkWtEAR0eZN5G7ArLFY52GB/ZIzcGxMIlI9OdUVBP
 lCu0hQvloh4pOW5Oir/6YTMCtH6isW3YkjeaJgAHYOuemZ34TX7UsK1lKrCFLMNBaP/8
 m9xx3fYz9yJtu2iPR9FhZmA6rSf7yEinFnUCMAa30qp7srn9I/YlhLSilOSjEpcJ3GRu
 VglUZ3M+VUhXMkKaEIED8pLFIMKs1Sl+J388eHT5u3WXl2CHoJ3BQBBaOitO1TPQer8r
 HoqOH00Zsw3t+XvbTCM2/GEUZDNIpFX77Pc0hMYS85MK8LpUjDAU5EUgEej9WneWJVJk
 hN+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5D9P0SrXPjRFKraHRW7Zs4wFyot/fcU8CO5IjrNa/GI=;
 b=cQrun94BlF+QRppHqBcfEs4FSr4NCAzxOeEJFSXdWdrJUk9m5itnJ5TasTIeiSqN0s
 1ZnPNVszkNEaH02vz2kHRCCoGFiGZbYHbZXedf/OiZwvfZKqA/0/sWJWEOkd6LMcZLxR
 UgFdQxPULmGJirOXxmLCHiKFGDIiqD/ZAqi67hfInYhB3kdutRzuX26K/kFjleRurz4E
 7tQ7/HEV9V0tgek8dy4YP6hmv8OPxqPjNgn7TcBV16f5QVmpr8eAXSKDcRXXxyjM/O6n
 bZOuX4gCXBLHNB58DJEl8YuyU6OHFqnp/ljMcKck7ByCf0qmSnxSPo2vzusnhSpCCK8t
 B5lA==
X-Gm-Message-State: APjAAAWQHw8FyG0Tn1qDfN7i2kgrHPGjnTpNMAG43nW/8CIhhnt27Lr9
 N0pYO3+s0MKXgeQzw/tsCwBeslAqfNuhEZI05lk=
X-Google-Smtp-Source: APXvYqw8JaEzVB8T3Q8l0hX61qcXN5kM7MZRYMFZk5mAZjsetYlAYZReTeOejxH7UFyxInU7yIlgW9N4me7vsRl7lww=
X-Received: by 2002:a24:7f0d:: with SMTP id r13mr17628196itc.28.1559598676419; 
 Mon, 03 Jun 2019 14:51:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190531143320.8895-1-sudeep.holla@arm.com>
 <20190531143320.8895-2-sudeep.holla@arm.com>
In-Reply-To: <20190531143320.8895-2-sudeep.holla@arm.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Mon, 3 Jun 2019 16:51:05 -0500
Message-ID: <CABb+yY2ON+etV_g+zBQUrV9x2_0QubUeEPuxs=EKw_JCt570BQ@mail.gmail.com>
Subject: Re: [PATCH 1/6] mailbox: add support for doorbell/signal mode
 controllers
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_145118_017805_793EFF87 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Mark Brown <broonie@kernel.org>, Cristian Marussi <cristian.marussi@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 9:33 AM Sudeep Holla <sudeep.holla@arm.com> wrote:

> diff --git a/drivers/mailbox/mailbox.c b/drivers/mailbox/mailbox.c
> index 38d9df3fb199..e26a079f8223 100644
> --- a/drivers/mailbox/mailbox.c
> +++ b/drivers/mailbox/mailbox.c
> @@ -77,7 +77,10 @@ static void msg_submit(struct mbox_chan *chan)
>         if (chan->cl->tx_prepare)
>                 chan->cl->tx_prepare(chan->cl, data);
>         /* Try to submit a message to the MBOX controller */
> -       err = chan->mbox->ops->send_data(chan, data);
> +       if (chan->mbox->ops->send_data)
> +               err = chan->mbox->ops->send_data(chan, data);
> +       else
> +               err = chan->mbox->ops->send_signal(chan);
>         if (!err) {
>                 chan->active_req = data;
>                 chan->msg_count--;
>
The  'void *data'  parameter in send_data() is controller specific.
The doorbell controllers should simply ignore that.

So signal/doorbell controllers are already supported fine. See
drivers/mailbox/tegra-hsp.c for example.

Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
