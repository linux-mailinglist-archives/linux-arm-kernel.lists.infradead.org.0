Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 451D68D732
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 17:29:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dZx2uelg+7PyEceLO3L6LKyTWOY/D72+KMEP0emvgkk=; b=Cy2y5ZCkm1nDNx
	aeUsB9GN7oG7bNYLw81eLHmYa/QpObr8Zxvn/9TE40iyMvjKKbaErT2QTku2F16s9DmBmj4MrA1J+
	hU0YdSt26zPIGuoK6eTb/U31TnIpkB29oLbH138BCaH6klu7rH2tX3rBifuJZ3/Eee91oHQ3QAAUA
	oDHPhC8T1YH0RsIx0cWaHD92EqBnYnJa9Su6YtNIggxW4GgpsXdq/WVEoiaxrwJ1uFspSQZ5p/W8b
	zdW5yat+UJAzhOeJnqPj112zCAvO3YRPPEtpLhpCmc8owjytE0aG11PCJ44en/JlqgyBT/e8AuHmP
	qurHn3tVYVaVGjFvv8CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxvDP-0006It-2S; Wed, 14 Aug 2019 15:29:31 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxvDE-0006IS-Qu
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 15:29:22 +0000
Received: by mail-qt1-f193.google.com with SMTP id b11so10765570qtp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 08:29:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hkxXFxsppAjXcN3Fnw0Ysp3XgDoee+JKNoPUXSqHEM4=;
 b=SCsRYr4mG+c2eYN38Z7omkSUTpPzND72DnSidJN6mR0/SXOHP9zkFKc3aW3cx5yHt7
 HHU95rVNkKsmX9nw1JtPrvQjyvuL7Kgn0r1mJN7BhZMNbK3Q86/ukDweE+h5BaQTOtTG
 hLTMu8kXfhf6wlyG08r+OsZcuTu0YYAofnxQFzfC8kaM/3nCF/PFonF+Qmhp4ZD2cHFO
 h0/xZKbF9DxRCIdSeeNFxsaz/ARSeuLdnWCUcu0QjnvPcJf5MG50/TyNfjj85VPjyixw
 Thu1XGlDNQPqenPYfo7QYwggcccKXcQDidKKDMyLfOS15Jtz50wQd31tKQ+CFDG5Jk7P
 dlwg==
X-Gm-Message-State: APjAAAUQeko+TAzrpOI+0Ot7/Upg3RglnAt95noxU8QkIiE70oaftZLA
 k7Augck7MiLr+FbFsSzFnkUf9X5b2ayob7lKBps=
X-Google-Smtp-Source: APXvYqwLKjmuLo6RfGCS8yr97bmaozdgfj78fh2TDXsp3KO1WrajwArEwxXrcfFgURj+QRlR1VEJ90KRLcwY3cq6bcA=
X-Received: by 2002:ac8:f99:: with SMTP id b25mr38079380qtk.142.1565796559558; 
 Wed, 14 Aug 2019 08:29:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190809162956.488941-1-arnd@arndb.de>
 <20190809163334.489360-1-arnd@arndb.de>
 <20190809163334.489360-2-arnd@arndb.de>
 <20190813043324.GN12733@vkoul-mobl.Dlink>
In-Reply-To: <20190813043324.GN12733@vkoul-mobl.Dlink>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 14 Aug 2019 17:29:03 +0200
Message-ID: <CAK8P3a0jWunQFvt4bVn0GtqN5xwcnO2a1jO0EaqxWqw4VMGL5Q@mail.gmail.com>
Subject: Re: [PATCH 2/7] dma: iop-adma: include prefetch.h
To: Vinod Koul <vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_082920_874261_6511933C 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kbuild test robot <lkp@intel.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, soc@kernel.org,
 Linux I2C <linux-i2c@vger.kernel.org>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 6:34 AM Vinod Koul <vkoul@kernel.org> wrote:
>
> On 09-08-19, 18:33, Arnd Bergmann wrote:
> > Compile-testing this driver fails on m68k without the
> > extra header inclusion.
>
> Please change title to "dmaengine: iop-adma: include prefetch.h"
>
> After that:
>
> Acked-by: Vinod Koul <vkoul@kernel.org>

Ok, thanks!

One day I will remember all the subsystem prefixes. ;-)

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
