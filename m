Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA1E82D90
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 10:10:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xezOdfr2+cuQ3d+ucl8efkd0Vt3QBZpXLPCMflxrrPM=; b=YQHDdrD3GkXHkc
	ETlmZpQEMuL4MGBwQoFzs3iZVTcj67WTJF57/UKKLo+7GBF9oj765EekSduINV5SRhiYEiHd7lYqd
	4te4vKJnc+e6b3kZ6BnK33ug3GQnZBjBW45f/cUjaLM9BlRHkapuOf2XdQhS3DPGfXMsIySYM+5gB
	Ju7RjRUcH5nCPOi2QJea63EHQLHc+3fHCxDLKAeULYmUgXFcQLMH75JgibMYeO6Ucl9SopyxRUQAL
	EJz+AtizSPyWPB8psAmHbYqIxkpX+9Ey7EdHKKZZGARGJX1vb7jfPERGgYTz5sFl+aLeZsDJI2swU
	PaIKSGV85tCLLgO/qpmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huuXt-0003Er-VK; Tue, 06 Aug 2019 08:10:14 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huuXf-0003Dy-L6
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 08:10:00 +0000
Received: by mail-oi1-f195.google.com with SMTP id t76so65337608oih.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 01:09:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HI/+7QvjOEEoVFOc4ETmV3V160VHifVAi0bhs8u9DNc=;
 b=J+iBl89aE+GLc7EdBXPT0bTZon7xSe42cCRUhxqxcNzNKHnY184wHqV2LlMK/hD14G
 4QKoqs5IrjmwL4GvfArsm0V53XLoZlRY1Vm33pB2oXsFWI8ZXvcZuGclCWi6/IeOMwNQ
 Ab14CVN0GzqVRdwu928Ll54kV+hgUlfcxKBo6sro0L02f343bOTY+gRV7TfQqE8+7ZaQ
 lBNKGXJ/IyDsGk0t1sD2tGX6KwpeUBP+RfsyhSdEANAMxqsAr6bYslPZfVpqCmoEwBtH
 A4MbgVwkQWDuXmjIxDC8y1/u2A4nXms5brPBAT3D6cqDBSVHPpy/+H54MhhYnrKZ/uRm
 CjeA==
X-Gm-Message-State: APjAAAWTkcGY+lP15VbnwU8AQDS1b1HZaeIFYFBzj9LjY+VB++n/n9B7
 LarxHqyP+lBTR7cy6+LnkWIqOn0FiuCMIgkWItA=
X-Google-Smtp-Source: APXvYqz1js8z8HnmSWxxKzsp2msa061pGX5lcuBT8TeExknala5sT01XRBUZ9FPRw+Q+arpqH93gKXBN9yl3l+BsKBw=
X-Received: by 2002:a05:6808:3c5:: with SMTP id
 o5mr1824672oie.102.1565078998482; 
 Tue, 06 Aug 2019 01:09:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190802100349.8659-1-frieder.schrempf@kontron.de>
 <20190802100349.8659-3-frieder.schrempf@kontron.de>
In-Reply-To: <20190802100349.8659-3-frieder.schrempf@kontron.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 6 Aug 2019 10:09:47 +0200
Message-ID: <CAMuHMdWoyfkyytRz8BJztpeAKLRY45UKLuy5hNU0e7QYYQYJ9Q@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] serial: sh-sci: Don't check for mctrl_gpio_init()
 returning -ENOSYS
To: Schrempf Frieder <frieder.schrempf@kontron.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_010959_689984_3D5A846A 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Jiri Slaby <jslaby@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 2, 2019 at 12:04 PM Schrempf Frieder
<frieder.schrempf@kontron.de> wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>
> Now that the mctrl_gpio code returns NULL instead of ERR_PTR(-ENOSYS)
> if CONFIG_GPIOLIB is disabled, we can safely remove this check.
>
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
