Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B674B714A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 11:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IPN2qlhvOPJ7fCPSncEPt1dxQIm0ta3w/2MOoxUwOck=; b=aPTYQLB4/uWXjU
	BXnC32M1VTqeLkLcYWczyXMNUICXY5VV9gsLZHBR18Wrtl1yOv/Xr5g+PBOXV1QF2lQAUhQ/7C0Ut
	WDRfTaVoEti4s9TOLFxxpqpjjX432hNig5w+5Xph/IgeEeMgZCSB71pqI6l96kglVu/7AuseF9gTU
	7UydF+1TCynODxsdgEB/8eWSs+z/0d72Iudekn+VwRyfpeiNsixPQRhi6gUuOImG02a4KLC88MJ0n
	oooqKx1LoLqhjG/WBRwMbRMX4WDjxw7TuUP6ZjLCPD/mQQ2A5aARrI9oSqO0GpPrqcLeof+tC1uLJ
	DS8PzwWzZ16J8/Yg/EFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqmy-0005Ce-GS; Tue, 23 Jul 2019 09:08:52 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpqmd-0005BQ-8n
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 09:08:32 +0000
Received: by mail-ed1-f66.google.com with SMTP id k21so43147397edq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 02:08:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YHzIfFUXLiP7oyUbStbnC9zbsTjv/xneVzK5mtVOMcA=;
 b=PI/OGqEgRhSIGej4gx1v/RFdZLI7jOB978aSdGGyQdmRmSU/K52KkMIKZVysMpBhqS
 8xlJct5EmdETLIdCpOiBSfTXdpca/mfmRAxnvgB3DQqCoQowAX2po9RjrvkbfPtfLwjj
 eWGaa4SqUde1gzbJ0afxfu4J4dciEPRZAA7Vnc2yamo6FOMOcN1baPahFzfZQdLX/BtX
 mcpmeJ/ybXLxDUNNhUNBHX6dz7BuABwk4qnp9ZSEeQH5YElTWGV9d+UUPoos1sXGZhMB
 f41jO6FsSXkm/w26uRNlGNuGjpRJxw74EoVVHs3jdiuDqEuI59pq1xr4rVnb9Sc1lBA5
 GYlg==
X-Gm-Message-State: APjAAAWFR81YvacgHXCKZ3j2SUtWJLebnZRGs0hWH3yLHZWNsi2FuGVb
 Ru7LaoyLISaLRgqoWEYMGpgQk1H7+Sg=
X-Google-Smtp-Source: APXvYqxtJ6RmF6YUdm5ZeEOCzj+uLmZYFB+c0DRUS1vdoIJvlde7AHpF5Tkhg7n061mVkOJ5X5Wvkg==
X-Received: by 2002:aa7:ce91:: with SMTP id y17mr65475449edv.56.1563872909053; 
 Tue, 23 Jul 2019 02:08:29 -0700 (PDT)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com.
 [209.85.128.41])
 by smtp.gmail.com with ESMTPSA id hh16sm8397217ejb.18.2019.07.23.02.08.28
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 02:08:28 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id p74so37705212wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 02:08:28 -0700 (PDT)
X-Received: by 2002:a7b:c051:: with SMTP id u17mr66537823wmc.25.1563872908320; 
 Tue, 23 Jul 2019 02:08:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190723084407.4703-1-maxime.ripard@bootlin.com>
In-Reply-To: <20190723084407.4703-1-maxime.ripard@bootlin.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 23 Jul 2019 17:08:15 +0800
X-Gmail-Original-Message-ID: <CAGb2v675+DvNA0jKxFh1bObpwF4fh=_F_ny0Y79quGTF57Dzqg@mail.gmail.com>
Message-ID: <CAGb2v675+DvNA0jKxFh1bObpwF4fh=_F_ny0Y79quGTF57Dzqg@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: sunxi: Remove simple-panel compatible
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_020831_308023_F7E18790 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 4:44 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> simple-panel based bindings need only the display compatible, and
> simple-panel isn't documented anywhere. Remove it.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
