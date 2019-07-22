Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20647701ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 16:10:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ICFyh25ZUsZoo2j1Jb8/9S1YVBO2reurZ8f7PUTyra8=; b=EXEZM+hC2kZhlI
	byTkb7Le4x6u7QJb1W73ELS4ka2aaxD7/KuyOuaCtcRThOIWEul0iAQQ7RkXO0cHQnFA8ojlFujNh
	HbgkPRUTqH+il0eH5vEFLazb0J2Dnebj5apzs85nczvLUOPVLIZi3GxFCFQip84Wcru2NQjdPplsm
	CmmGi6wevqdv3OwG71hWB6QHuw3GL1IYmAg59Jlqg1SVLCuof8tUchnzLmYrpX0PPOd6IPUpsDw3l
	nzmZzjgEx+88h5yemGxTcIPYMf6jbK/UxuxTcEV8IYAd+w0BUV3om5zp0WFApd3MDHmCvhJ3E6Pe+
	+V4K+UGYx9dZVeOVQEfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZ19-0007fr-CA; Mon, 22 Jul 2019 14:10:19 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZ0p-0007a9-Vh
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 14:10:01 +0000
Received: by mail-qt1-f193.google.com with SMTP id l9so38604173qtu.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 07:09:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Sct5dz1jIJO94eyFgiZPafVyPwArG5CT1K4gXIJP6DA=;
 b=WyxV++nV1R04Q7n0QqjegJSaS9QG2FEQXuOfCqBjC9AA2BEonpsYxW5AUw6ct35nxZ
 W1N21P1/FsY6NG16UOGhB7DvQcNS3vHBfgkAVsy3dHuI5Im79Gtkmkf8aH90CFFWNmy6
 GCTeHqwZaFiwamqWoQK2fdrWTSKawAHr2HMSs0nLubFAem589l+KtQfUqxv3tkJFH7zl
 bhFAkbee0tYt1N9SEJtgZgvEQlAgZYvrMIwTklA1O9wlTpYONrJoPM+WtmEsmOgH3Y3S
 VmWPpOteaWTouP1qFTkkPbH6IUgpd0YVsURAgYnoI6NovHanW+Axua0qI141xuOx8fjz
 A0EA==
X-Gm-Message-State: APjAAAVs4uD74I/bp1dFVZBl1DO7cAALojVjDTZZnycCfToLaueg9m4T
 gba+PcgZ8xOwy+FlsMJ+Mn1ygoBG3ASWvIvHjN2QFes3H80=
X-Google-Smtp-Source: APXvYqwCi6bJV2CPFsYi5gLpuc46dbwkkd7R5Ou5g5OH2FRHi66tVqBj+I5HJQM2fzb45a769iOkYPH5aLq5ys4OHBI=
X-Received: by 2002:a0c:dd86:: with SMTP id v6mr51288587qvk.176.1563804598161; 
 Mon, 22 Jul 2019 07:09:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190721224157.6597-1-linus.walleij@linaro.org>
 <CAOesGMh0gwHo5mFP28taYbQtWNb=Bat5peASVyNGnihbhixBxg@mail.gmail.com>
In-Reply-To: <CAOesGMh0gwHo5mFP28taYbQtWNb=Bat5peASVyNGnihbhixBxg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 22 Jul 2019 16:09:42 +0200
Message-ID: <CAK8P3a0-hO4FF6PJRMBpT3Yo6-Rjp0Wqnj=ZRALGCAgdZ0nFxA@mail.gmail.com>
Subject: Re: [PATCH] ARM: Delete netx a second time
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_071000_018789_FF828AD2 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Robert Schwebel <r.schwebel@pengutronix.de>, soc@kernel.org,
 ARM-SoC Maintainers <arm@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 5:09 AM Olof Johansson <olof@lixom.net> wrote:
>
> On Sun, Jul 21, 2019 at 3:44 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> >
> > Commit ceb02dcf676f ARM: delete netx machine deleted
> > the mach-netx machine. Then eight days later
> > it was resurrected by SPDX tag fixes. I think.
> >
> > Taking the liberty to fix some additional debug uart
> > cruft.
> >
> > Fixes: ceb02dcf676f ("ARM: delete netx machine")
> > Acked-By: Robert Schwebel <r.schwebel@pengutronix.de>
> > Acked-by: Sascha Hauer <s.hauer@pengutronix.de>
> > Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> > ---
> > ARM SoC folks, please apply this directly for fixes.
> > The machine is gone from all Kconfig etc.
> >
> > I don't know if it was a person or git that decided
> > that the best way to add SPDX tags to deleted files
> > was to undelete them. If it was git I wonder if this
> > is the only thing it undeleted.
>
> Odd. I wonder if this is something I did at my end, or if it happened
> elsewhere through the merge path.

I think it was, I just tracked it down to commit 6ad135992e66
 ("Merge tag 'armsoc-drop-netx-v5.3' of
git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrator
into arm/soc")

which deletes a few of the netx files but leaves most of them
in place

The most likely reason for this is that you did an unclean merge
of the branch before, which left the modified files in place, and
then 'git rerere' remembered this as the resolution for the
remove/modify conflict and it did not show up at all.

The good news is that most likely nothing else suffered from the
same problem.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
