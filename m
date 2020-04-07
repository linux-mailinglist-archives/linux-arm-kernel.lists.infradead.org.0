Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D661A080A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 09:15:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=brNOMLUTFE9ydE2hg17F+sUlFeLOQCeyAsZoWzUbAjU=; b=nAVAzwDY1+r2E3
	bN7tZUnAgl278gCl20szfLsTPh6AVx4EhPjqdnEv/EzmhttXkuWm74Z/9e83ZusXr/+dHkw13G42F
	Y9Rvp/lX/JNlh6UuGLbQjXva2J5PquLZosD87BCQrHzkMAt8yOBVcp2p2HfhBe9Ncawf43uywaWaB
	JZk1nFTpAYQsZEOesTuGIfEAdNTEDpKLvKZLJuSEUMW1jyb8xeAB/feBMWp1YC+IOhN7HgdEN9RKJ
	UrqTCa/aOA7ynfus5QzP3vHQr8vyWslhgiHbzwP4wlk8H6kln4TTszM+mBmtdh9B8FG8t5Xq5jDfN
	MUvBjHSpEXxGhf3PGcyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLiRn-0002Ly-Sg; Tue, 07 Apr 2020 07:14:59 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLiRf-0002LS-DV
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 07:14:52 +0000
Received: by mail-ot1-f66.google.com with SMTP id l23so2090935otf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 00:14:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=typsr3wEdNlbUeLKEggpVDc0YOFAtc47SBh8Ew95xi4=;
 b=DeZKMj2FxxzKC/xDikbGo40rE1wK7wh6/5X7MP4Ep9lljM8YMy3iniNHQ1pXDi0HrK
 QmFy1QNHWEYDKdWkPjANNxvsajSL6tCyJgWrL93XyPmex5zENIJHHIiHindw1yH80MuV
 hKkw9MGQQGLAIyZMj7BQgU46JpIWJdqMcYl5tL3QLPTWdKlgko2/6xcjkxCKSS+KjpoH
 uE2n549ukwB6QRIkQ3vwxj4x6dymxKbQcinJTtngrTCkjrPo2geYcvv64sJ3sgu+i3oj
 Eyc+NgI1e1d0UDzX/dKJ0LezQweAUjLrqOHltd99zJYlWRmvItD5pfiwZkIlrrI+NYfK
 h3bA==
X-Gm-Message-State: AGi0PuZnrzaMyTwBQB/i+pQ49hCKOndjBlriWbrDOlIiNmUJ27DR8u/h
 iOemmk6eeiONXqxu1CfrwAyXCOCu3o20BUjTapU=
X-Google-Smtp-Source: APiQypLNpFiVt+EkSl4PFABBXpJ6C7L4TK5flYMX14YDwG9munavkG7n485hXL7JxNWZE579I3mjDh3bmWPFBIxKs8Y=
X-Received: by 2002:a4a:e495:: with SMTP id s21mr758568oov.79.1586243690327;
 Tue, 07 Apr 2020 00:14:50 -0700 (PDT)
MIME-Version: 1.0
References: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586191361-16598-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1586191361-16598-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 7 Apr 2020 09:14:39 +0200
Message-ID: <CAMuHMdVGKnPfVAHiqJiK=YxuT5VnyvHdf6Zm8C=X-vh=Mzo-+g@mail.gmail.com>
Subject: Re: [PATCH v5 1/5] media: dt-bindings: media: i2c: Deprecate usage of
 the clock-frequency property
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_001451_453828_6362D87E 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 6, 2020 at 6:43 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> OV5645 sensor supports input clock frequency ranging from 6MHz to 27MHz
> but the driver strictly expects this to be 24MHz (with tolerance of 1%)
> with this restrictions let the driver enforce the clock frequency
> internally to 24MHz rather then being passed as dt-property.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

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
