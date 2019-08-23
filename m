Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB3E9AA72
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 10:35:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c4biGYlgbML7xtsOajo1J/mC/xeCRJf176nv/BKxLk8=; b=XKtOll3pe2EpUr
	fQ5LrdCaTqmNwW3RAXeBBOryCZTgeamASPpgWK6qYEBqpOKTR+4PxGg2Cx9AbIQ9KuAoL5lJlnjdk
	l8nBKUDQoth0EAKfsV2n14f5c3r9CqorNIBPovyQxOwB6J4mgkaIyQe3WTWSKY49dkouSQ2VMkhzv
	TbQCZvV1TIXg1YGeVnDJYJqGGgQ/ciTOQy3Mxasa3BRF/9xNrCWg6asr6IXEKPaspYMseTyii/Ldb
	MU6SMxCeetN5aX7HkubcMeIeGTuzILhP5Dwa8gsn7kRuz13GAa2ZGcO0jq33x3H8rfEJpLEOeRS3m
	MMxIgFbaI96jk7jvX3Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i152n-0005aW-HA; Fri, 23 Aug 2019 08:35:37 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i152Z-0005a6-F9
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 08:35:24 +0000
Received: by mail-oi1-f196.google.com with SMTP id h21so6450128oie.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 01:35:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=unheAuDdl4/wWkUa8UrhU8e3stxZhpx9YLspZKHtIg8=;
 b=Oy2uWm/Lz1JI+xnEs9NoS6sMrjdivZg6DuDhOFRLcG0GGm0AXUlQJ7bJPdTYzvjQhR
 wOsfjTqk2MK0qi88ZXB6zBlUy3VsAtFJFWNpzRFrwa94HcKIY26dS5x7ykWa2uuTsiU2
 kn91NPwLJntGFp97An5acFdkHhUq1VQM1QgvhrSrhi4oww2izyFenXxAZGOsAXZEM2HR
 V+a3GT8Z2SHnxWv2XZG9NaaAapE4kHbYlogIcUDqDIyVpVxmf4vrzroHvxt6Uq9js2fB
 XGce5F8nkiQUyax8bapZjPRUh7a6AF6MjO1T4rtKEqDRIGFI6JUsQ7Ygk2CJmGvF8DzC
 hTOw==
X-Gm-Message-State: APjAAAVVIfqgTeMM79XNguRqAxMwJM7+3fkD3qO2c4fDP2EUKGobCqVE
 +aKx32psPFAiaxGnoqaE7JxPAmB/WicHLgSqvL4=
X-Google-Smtp-Source: APXvYqwFzBTDR+im2MPWNkXPKyXvUEDkaDhE0QohZr8jCL8GxjrJrJalE5QzxQSvr+R8FmZddYAIDjND5STAhrCHJf8=
X-Received: by 2002:aca:ea82:: with SMTP id i124mr2204127oih.153.1566549322721; 
 Fri, 23 Aug 2019 01:35:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190821124602.29317-1-geert+renesas@glider.be>
 <CAMuHMdWj7eCa9URtztqth=fYMn2uTHWDS3WAKnRvxDfMjjBH_A@mail.gmail.com>
In-Reply-To: <CAMuHMdWj7eCa9URtztqth=fYMn2uTHWDS3WAKnRvxDfMjjBH_A@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Aug 2019 10:35:11 +0200
Message-ID: <CAMuHMdX6Z9oe3kbkNr00dkfckxBTForrEnOZLWSBE-8EFGtFAw@mail.gmail.com>
Subject: Re: [PATCH 0/3] soc: renesas: ARM errata updates
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_013523_511060_4829FE07 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 9:54 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Wed, Aug 21, 2019 at 2:46 PM Geert Uytterhoeven
> <geert+renesas@glider.be> wrote:
> > This patch series updates the handling of ARM errata for affected
> > Renesas SoCs.
> >
> > The first patch enables the new ARM_ERRATA_814220 for Cortex-A7, using
> > Kconfig logic.
>
> Queuing the first one in renesas-devel for v5.4.
>
> > The second patch moves enablement of ARM_ERRATA_754322 for Cortex-A9
> > from shmobile_defconfig to Kconfig logic, to make sure it's always
> > enabled when needed.
> > The third patch disables PL310_ERRATA_588369, as it doesn't affect any
> > Renesas SoCs.
> >
> > The last patch is marked RFC, as I don't know the revision of PL310 on
> > EMMA Mobile EV2, and cannot test it on EMEV2.
>
> The other 2 are postponed.

Given it untangles dependencies, I'm also queuing the Kconfig part of patch 2.
The defconfig update will happen automatically during the refresh
after v5.4-rc1.

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
