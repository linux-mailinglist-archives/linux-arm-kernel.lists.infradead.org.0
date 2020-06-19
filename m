Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B536200CA2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 16:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCiHtWeFubhPpeqijIoszlzmbPfSY4/RI1su4BIuPW0=; b=RoVjV7oQW9lDfB
	SU9sJlcQ6WrfTzPM5ZwYeUwv+JTAtSs9CQ6dWCEdIsf5sqGs8E/bkSiIIRUwXNztZzw2ReMwWASeS
	xyihdolwRqwdU32/T7rUkMqd3iShHjUO/AqcXal4vKdOqTOUXGIwx/v53SUOdVJ8zuT4wX1EMNxJG
	3kA1js+3H8ej3as6Q3Pyo4B5j/hlSihcew4JV5uHhKsPgg0xOsQF+cVg6OW1W38E66dxPJ7yvhx7d
	qtaLM7HdoGbGqNJ1JwbqSDgCGw4PkEJHW8b6GEshDDq0mQeXSoVmcAq+v/nL/q4wV7WwTCoAZgn86
	CxYmCx2W2nwPZyUt2BWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmIMn-0004K2-Pz; Fri, 19 Jun 2020 14:51:41 +0000
Received: from mail-oo1-f66.google.com ([209.85.161.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmIMe-0004It-IA
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 14:51:33 +0000
Received: by mail-oo1-f66.google.com with SMTP id f2so1940757ooo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 07:51:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bJFYbFCrsPdWe/xZfbajjRe6GBurn8Q+z5Rl0GsivUE=;
 b=cknIVcCvlBzTKiYSvFKFSHNDVPx1cW7aBbxKBk9ZCSx2t24PfgByGFiD12ZC+bgZM8
 sO7Y1zub9XbDxi39HgASv1mUvytTkAqjW0RrylkYWuxCQmhZQc2zSJSaYj8O7sNhPCTm
 G9h6Jpb5IYG3iy+REwWMFWFyhtkS3/WNPSCu8qPVrDmGusWii6+FCD4SFlT/I3fLvoNz
 //SOrbvowjsKRLU8jl/V4mU3tcQG/UfZ4NnqvEmy2X3A+1ZScVF+liuvfI1BQU533ioq
 QM8bFI9ZT3f+0qPDbGoPo3dr0v/DHZvO+u8CtwSzmbqvMcgaYB8mL5rEfAi9VbAJ/KwB
 kEzA==
X-Gm-Message-State: AOAM530FxOR8SK82FNYq/64eCaXs26NpnPj6HbDdLPKgkmNaH46VhxSr
 1z0KEH0wDuKZSKJ97vUmmPOzl+EHUkMgRt52nw4=
X-Google-Smtp-Source: ABdhPJy0Coxpt/4fMimNdZDRdevNU75GhwFunAubdWuwkhWCZUVekNYh1JkaUavS8wVGdcv22mB77tagVxninzhIG6E=
X-Received: by 2002:a4a:5744:: with SMTP id u65mr3565759ooa.1.1592578291406;
 Fri, 19 Jun 2020 07:51:31 -0700 (PDT)
MIME-Version: 1.0
References: <1592566143-4546-1-git-send-email-yoshihiro.shimoda.uh@renesas.com>
In-Reply-To: <1592566143-4546-1-git-send-email-yoshihiro.shimoda.uh@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 19 Jun 2020 16:51:20 +0200
Message-ID: <CAMuHMdUEahv3bPNfOmzA5fdkJdkmx4nEqPqWKMYt2O=ZRJOiTA@mail.gmail.com>
Subject: Re: [PATCH/RFC v2 0/2] treewide: fix _mmc_suspend() on PSCI
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_075132_599696_04EBFDFD 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shimoda-san,

On Fri, Jun 19, 2020 at 2:42 PM Yoshihiro Shimoda
<yoshihiro.shimoda.uh@renesas.com> wrote:
> We can detect whether the system is going to suspend by using
> pm_suspend_via_firmware() API. So, this patch series update
> both PSCI and MMC driver for my environment (r8a77951-salvator-xs).

Cool, didn't know about pm_set_.*_via_firmware().

Looks like this can be used in the clock and pin control drivers, too.
Currently they're checking for !psci_ops.cpu_suspend.

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
