Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F77FA85CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 16:57:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUibyoneQYR+yeTRGTrs05QFGneHBpQgba2bg8kkOY0=; b=QW34SOs46WIPSb
	Mz6TdGwGyKjDRCWWcgMRMSQ9DAR9KkXxCu4JtWVoWzS0NokpZwH7XsTm+nWNyfalAEcK9de8g9dJw
	3+P5/K+1UINzfAlfl4L6GFtCq3JGRoXAgu4DK4NiE40Kc7PQeRiVDHyV3axY+/ZiFdD8ArR+dbjTr
	4zJBJ/2Ib4TdeYJw5W1FMDV7PlqXRkDORPeXnKiiIiO2d+lf9/QAYGevchU5My3ORBHgf/yg1IC7Q
	Ef5I/iGLKXnPZile9hDu5Cayxi6oUS1Ov7D0RismBdfB2Uixic+T8QD0ighV0PrAxey0+SzrCwkDf
	n3+mBC6dhIHEdOR+4uAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Wii-0000xT-RY; Wed, 04 Sep 2019 14:57:16 +0000
Received: from mail-qk1-f177.google.com ([209.85.222.177])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5WiV-0000xB-Pn
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 14:57:05 +0000
Received: by mail-qk1-f177.google.com with SMTP id s14so19891885qkm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 07:57:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7IRdJIeu3GZGgRb6OqHNOgsxzinJhskJzyYiU2v4zqI=;
 b=BvawCrwnpm31VimlSwYjdWT87G3jiVAu9B3naQa+Mk5AchpgWwn7Hfx2EhZKmm4/LB
 MuxCs4+KUgw3IAmg450yBsk7qsfTlQP34C2p+k7lwjUuHlNt3H5CIynoDHf6gyTxNIIH
 R1Wc+XTxV3wBOJcHp4IOfySun86GcO3Fe9W0jm96j1xNcPo8kPEc2hv6q4CDnstOvAJu
 U9SCITxZnPIiKj3+5cCdPXE/ljVscsJMZ5hDY4usxLkg1xVpOf/FwXicziBPN9hW+xju
 VyOn0/Alx/7/TC0mXhUfN7upOgp4bmjJZOtzXYOSHel1p/e8rKkGHie+HzQgvcZ9IW8k
 W56g==
X-Gm-Message-State: APjAAAUTTK+scIYoQ64l6ye8AVrx6eD7ik/hq88kv+QKMl3F5yl5PQRM
 /kXDS03A/KgXY2UPdMBQUjbrUWimn8Sf865s2LY=
X-Google-Smtp-Source: APXvYqwo4QeQ3zBkaqvBTlJ4rDD1eAjCKTF+s8hcl5lK6TbHuIwAVffDjwvG88lBXrsDIRSe6lR9ZRPhBr1p3d42E+w=
X-Received: by 2002:a37:4fcf:: with SMTP id
 d198mr39631706qkb.394.1567609021962; 
 Wed, 04 Sep 2019 07:57:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190828151754.21023-1-nsekhar@ti.com>
 <20190828151754.21023-3-nsekhar@ti.com>
In-Reply-To: <20190828151754.21023-3-nsekhar@ti.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 16:56:45 +0200
Message-ID: <CAK8P3a3ZnH+AsAGV0pdcCYLNjwQg6X0U9eEynLf9sbwV6Lee=A@mail.gmail.com>
Subject: Re: [GIT PULL 3/4] DaVinci fbdev driver updates for v5.4
To: Sekhar Nori <nsekhar@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_075703_842709_1712E118 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.177 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.177 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 5:18 PM Sekhar Nori <nsekhar@ti.com> wrote:
> ----------------------------------------------------------------
> This converts the da8xx fbdev driver to use GPIO backlight device
> and regulator devices. This will finally help get rid of legacy
> GPIO API calls and simplify DaVinci GPIO driver.
>

Pulled into arm/drivers, thanks!

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
