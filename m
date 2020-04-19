Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 883C31AFCA1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 19:14:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MiPdbdADKXZTeWvM/XJj0gyxC9EdcQoJsIhMB2vTk2g=; b=kz0XZwcf6UgQFS
	8IJo4zSKS1qgiOOwbdBsarljFPTNgGjoICVUT/kq+9GnPoidOh26iFQ10LLA5SDNcpWd69WlOPJPR
	qflKZ7ltvqrAffFEB+y1t9v/9F+tlK9muUgV9BM1JoeDX15SQPYKozS+q5NTh1fLVEV0UKy0NhM80
	pO4kXhJPa9AGXvKsz6vTjRidPbIpxWKiYjJDfLq4WUq7nKZHEi7pz8jhfnKCMnxtgpEJfXmCC04Ut
	3Ohjvn+TdF5LByz8cPCNxysToA/ce8fvMZd6Z2+KVaokQ1rQnfiOVmvoPqgDjIgtY4TpgzDU1mFQQ
	JJ/ned3Vh0sS+5QYksDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQDWO-0000VO-4J; Sun, 19 Apr 2020 17:14:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQDUf-0007Zx-2h
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 17:12:35 +0000
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
 [209.85.219.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 82A9B22261
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 17:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587316351;
 bh=OXvQas/pgICsWCaoxckmOhyT+JBsD+OxYXoqKlBpD1Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=c8mSdfNlqX7kr0PoqJJpUD7cXbo4DgHpQ4trn8yoN0siolbCVO6bqxN+Yv72OMevf
 s9HTuY6Lmo8rYnzXt1e/5oNUFaraKegJX24ouhXxP6DKRrGQNUHBWRhL+5Q/x/ZbV3
 BCYxrA1nYve6LpMAWoDpgF7jkw9EhTKqOHuvUtIE=
Received: by mail-qv1-f53.google.com with SMTP id bu9so3530117qvb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 10:12:31 -0700 (PDT)
X-Gm-Message-State: AGi0Pub2N1/zrG+KywMtUJ2CDuQWc+9iyS/EpxEeoW9a3EBRjblRpfXd
 UCmgHEJwDFiJ0hE/0aO5+d8F+xWH0iBNasHD0g==
X-Google-Smtp-Source: APiQypInwua0hHPbUS6Hsb1RU170OkHFKFHLASiUkvTXavdb6Kd9XZq+Z0DcGWRclB6hGGGhj2FD50u1znRmqof1vjg=
X-Received: by 2002:ad4:4ae3:: with SMTP id cp3mr10739081qvb.136.1587316350705; 
 Sun, 19 Apr 2020 10:12:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200409013947.12667-1-robh@kernel.org>
 <20200409013947.12667-4-robh@kernel.org>
 <CACRpkdZaxKxF9QuAH8D78C8L0f-01a0V+w5tSGYLvGajYh6nPA@mail.gmail.com>
In-Reply-To: <CACRpkdZaxKxF9QuAH8D78C8L0f-01a0V+w5tSGYLvGajYh6nPA@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Sun, 19 Apr 2020 12:12:19 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKoPCsUtt_fDjuxZ7DcKtTEGndhkKx5q-o=8Dq1f7ABtg@mail.gmail.com>
Message-ID: <CAL_JsqKoPCsUtt_fDjuxZ7DcKtTEGndhkKx5q-o=8Dq1f7ABtg@mail.gmail.com>
Subject: Re: [PATCH 3/3] drm: pl111: Move VExpress setup into versatile init
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_101233_261451_49AA1C17 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Eric Anholt <eric@anholt.net>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 3:27 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Thu, Apr 9, 2020 at 3:39 AM Rob Herring <robh@kernel.org> wrote:
>
> > Since the VExpress setup in pl111_vexpress.c is now just a single
> > function call, let's move it into pl111_versatile.c and we can further
> > simplify pl111_versatile_init() by moving the other pieces for VExpress
> > into pl111_vexpress_clcd_init().
> >
> > Cc: Eric Anholt <eric@anholt.net>
> > Cc: dri-devel@lists.freedesktop.org
> > Signed-off-by: Rob Herring <robh@kernel.org>
>
> Yeah that's much nicer, the other boards get a copy of the
> Vexpress code but it's so little so it doesn't matter and besides
> the Vexpress already had copies of the other boards init code.

It shouldn't change. The compiler should be smart enough to drop all
the code when IS_ENABLED(CONFIG_ARCH_VEXPRESS) is false.

> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
