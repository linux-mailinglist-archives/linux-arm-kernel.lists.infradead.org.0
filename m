Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3278CE12
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 10:13:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=niR51Tp7pQQq4pfn1JGvTuywYId/ptWcq58VfOkeMSI=; b=lfgxTp8nOsEK+m
	bLqeaa9koWqDzNSyLjPSmV47CPW6tWUaxwK8pN0913UecH5K9Pj/Emk0CjOcXFUB+mXXrdHy160Fb
	/MAUXKkCpCbCouv6IjblKBmx4uNAW6CV4cGfafJnjtcd9COZHUULNBhPBYK9N3AUPdYvQ+L0mj3AD
	JILgGyzBLXPHQS0ECl7kFMTPV2H5N5o6bOm8EyxezD3Ik1oLWjT1zjOz+bb6o8p4hoMRgOdavpNMM
	xfOBaHSZx7h4Pr9PwvHGKRQvFeNejqodb4hhfsjG/ZyG5nlm2qJbteIkRL7TFcBSvi+ufLY/+OaeE
	Vfnvx1AMV5F2Lggj+Esg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxoP9-0005pg-Q6; Wed, 14 Aug 2019 08:13:12 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxoOo-0005os-2F
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 08:12:51 +0000
Received: by mail-lf1-x141.google.com with SMTP id b17so78695556lff.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 01:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8TIlZCkZJxlDHR28R+sS00MYCYudDvIqTXfAD+oLJbI=;
 b=lr/rJWiCX2YbF/m0sA6in0LUPFKk7OLlPwqjMHp+4OuMai6Qm5bIo8KlHUfTj1Oj2p
 IZsZuR71qepX2fmJ89BeC77N8//zuYP35xcuQY1nYpbt5xJG324dcqPR5bx6W7qixBEc
 oSGT66V8vOOfqotF4pMAm/QyfrsPgChHTbRdFtzTicG9Qo4JsBpSnNUdxqwsWAuKU2xN
 OxyGF+8uhS/RlYVjaJ0kO7itdnte1IkPN8q9WrvoAVKWU+hHVKctSHxhDg5fRyBedgmE
 0TJnioZR+KInVg8xWUXPnMF/bhUgZfCvm4XcB682p85KaTnXAuqTdQuQWCNR4W0A8sH8
 6eew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8TIlZCkZJxlDHR28R+sS00MYCYudDvIqTXfAD+oLJbI=;
 b=QYFl9V3CJ/JmqJ1T0z1wJeOKbNa/6QyKKW5DTdhyn3PKOC/1cT+7nPYlvflw0Di1h/
 c1yvDCYsQ+E72PEHjhfsZzrhj3VY7EikHRlW0fq5meABj/TprQ+PAPNIqDKsqLO4BqxK
 3py781Jr1KJhBMN6d5dRpGVUi9WFVg3FgAVgphdRWRcMOqEj3mxoq23ZljAgjhm1mpK7
 Y39dsePJoPmY07GsGiXK/B9/J/8e1QwP6oILsvYOb7DTzdfDQKimthYqbHNNgKj6MuUc
 Tmw1C4Hr+Dl2ax9vyg7UXnUgpa9GVV4WVCR6X6XNQ26GjCjkF54NDomIaoNTVVMRGw8W
 IJoA==
X-Gm-Message-State: APjAAAXItHgUfSfDIpYiMhZ3r1AvJFaMeGm2buWOw/PuEzGjQKam1ocj
 uuN8qmO8r89hHYxRLPC+4RSg/ITIPZ0V9WUiaWiMMQ==
X-Google-Smtp-Source: APXvYqwHvlDH0vndo0pr4NUQfvDBqBjDw418y79oXm0vBTRfqtR7xugOl/tDvhDPmUMcLM3wHxVOo0NOAEPfVdKl1bw=
X-Received: by 2002:ac2:5c42:: with SMTP id s2mr25628516lfp.61.1565770368060; 
 Wed, 14 Aug 2019 01:12:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190805101607.29811-1-miquel.raynal@bootlin.com>
 <CACRpkdar5jE116CcywYxLR9JKWunRusJjNw7f3C0SFK4-4+dNQ@mail.gmail.com>
In-Reply-To: <CACRpkdar5jE116CcywYxLR9JKWunRusJjNw7f3C0SFK4-4+dNQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 14 Aug 2019 10:12:36 +0200
Message-ID: <CACRpkdbEw5eCKb=nTCK4wuMsPEadEQdGx62cGRhk7F78p5X2CA@mail.gmail.com>
Subject: Re: [PATCH 0/3] CP115 pinctrl support
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_011250_118250_2720ABFA 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 <devicetree@vger.kernel.org>, Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 7, 2019 at 2:47 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> On Mon, Aug 5, 2019 at 12:16 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>
> > This is the second batch of changes (out of three) to support the brand
> > new Marvell CN9130 SoCs which are made of one AP807 and one CP115.
> >
> > We add a new compatible (and the relevant support in the pinctrl
> > driver) before the addition in batch 3/3 of CN9130 SoCs DT using it.
>
> Waiting for review from the Mvebu maintainers.
>
> If it takes too long just nudge me, it looks good to me.

So if the other MVEBU maintainers don't really look much at MVEBU
patches anymore while Miquel is working a lot on the platform,
what about listing Miquel as maintainer under the SoC entry, hm?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
