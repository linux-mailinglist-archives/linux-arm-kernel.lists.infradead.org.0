Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9482F81997
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:43:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vW5KC5QK9z0h17RhziV3gXYsVeU3RdVLLEnQ+vI+5Xo=; b=C8fmlLImRC9xp1
	xSdKcJUsMYkEW21HUF/4mhtcpqJykOPPZkPQlFAJT62/1snu91RDOKKjwiiJs8sYrG8277W1rK5AR
	h9s+Q23BlEoaeuBrb245i/08iTb2vZBT5dHyOaHs92KG2glL1G+2h+B4F1UqMffgkQhkIBqTt5MyS
	vOtQ0zU6tTUh+TI1L07h1WOCSqkxE2byUq1ThJ8UJ2KwtpyRkPW1c2wnqeHpOWgM7LHZSE8gvG4B/
	R0xslZSGPRa9DoQknF0fLq8tX7Lm/DGZKVvDiUl29VTc3iO4i5tbw15P6Z16jO4+BPTGJDrq+fRHK
	TAPBrsfRyPG3LM4qMQ5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hucKh-0005mu-Lg; Mon, 05 Aug 2019 12:43:23 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucKV-0005mT-JA
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:43:12 +0000
Received: by mail-io1-xd42.google.com with SMTP id o9so63355093iom.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 05:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KQm9NPghtf2wFJQFdwyuoe6G2q10wFofTqLGNt8zEfc=;
 b=Jm9lN989x1LL1wAGmtgQW1PbFf7i6ALddtYVvYUT3D0ZuifbqBe7vXuKRfHJ1DVFyf
 5E6ia0qFc+YxzkWLdGYvRSD2zIYvdSQi7desBh6dPVYOxX5FGHe8MZTcpO7SoBv2T+fx
 rM6HGgCOlS1+Mq1T7ZsjoN47gJmVIc8qASDJbmnblb51sxAIIH83d2PNguaUH54zd0Pd
 g8BJGwj/2VWcZL1lekXwBWPoMwwDfwE/1wbv8+ARLVMYNN37zc7ARSt2a3DyNCxJMg8n
 X9boR31zKzMZP2i4KZCBZU3pIFAZQ4KVkLrRQcNoPYIaJXKm1UqQkctLH6lsqK5JS0DO
 uLqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KQm9NPghtf2wFJQFdwyuoe6G2q10wFofTqLGNt8zEfc=;
 b=BFhNIY8a30hJjUYOkx3EfHCi6zLxsSH3+ZTbVu2MhDfsvwUB3sPCVmJMTANUR2YCYg
 XRxt7wPxtbaDRri9YTDRPkfMzi3VoqpaGkAyAsUPdyn8k1gQaUlQrSzIbK8ncajDbfzx
 lK7viaGYPuQYJSzS6UjL6Y6dnXt3RBtxxhV7sN7/H1c8pz5OwU85odbSaX5ypwTvSRFs
 +aDYts5WVss2YLmhU5H8AH9tkBoizESwJWueJh3W3SfYCVs2OJ28cPXAnmpFWgF+028o
 OFEFs243oRc35HekYYrO7+GrRc/g/UiArv+oPQ9Hgj0lsI7PGDOrlJKIJrClYAVCFkS+
 4a2A==
X-Gm-Message-State: APjAAAWkkqDoLNW+n8byM5Fdu9VHXYcm5bx5PEYqSrmmQrfrGGR082jp
 bxmxZHJ+88Cx/TW88t7Yf3LMeI5r4U5UT/16qmU=
X-Google-Smtp-Source: APXvYqz396zlNXAqcaOCvcqObVMswatfB+f2uh+zsXE7YIFo6iaQRklzHrm0RcU5f66HRRMmb5shLa66REY85aMxJmc=
X-Received: by 2002:a6b:f114:: with SMTP id e20mr11104225iog.169.1565008990378; 
 Mon, 05 Aug 2019 05:43:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190731195713.3150463-1-arnd@arndb.de>
 <20190731195713.3150463-4-arnd@arndb.de>
 <20190731202343.GA14817@roeck-us.net>
 <CAK8P3a2=gqeCMtdzdqg4d1n6v1-cdaHObeUoVXeB+=Okwd1rqA@mail.gmail.com>
 <20190731203646.GB14817@roeck-us.net>
In-Reply-To: <20190731203646.GB14817@roeck-us.net>
From: Sylvain Lemieux <slemieux.tyco@gmail.com>
Date: Mon, 5 Aug 2019 08:42:58 -0400
Message-ID: <CA+rxa6oOxHH20Oiw1BKqa+9QF+J+M2cnQgMRKkLuxjcm9Ux2uQ@mail.gmail.com>
Subject: Re: [PATCH 03/14] watchdog: pnx4008_wdt: allow compile-testing
To: Guenter Roeck <linux@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_054311_630132_125FADD3 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slemieux.tyco[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, Arnd Bergmann <arnd@arndb.de>,
 "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 USB list <linux-usb@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Vladimir Zapolskiy <vz@mleia.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, soc@kernel.org,
 Alan Stern <stern@rowland.harvard.edu>, linux-serial@vger.kernel.org,
 Networking <netdev@vger.kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Acked-by: Sylvain Lemieux <slemieux.tyco@gmail.com>

On Wed, Jul 31, 2019 at 4:36 PM Guenter Roeck <linux@roeck-us.net> wrote:
>
> On Wed, Jul 31, 2019 at 10:26:35PM +0200, Arnd Bergmann wrote:
> > On Wed, Jul 31, 2019 at 10:23 PM Guenter Roeck <linux@roeck-us.net> wrote:
> > >
> > > On Wed, Jul 31, 2019 at 09:56:45PM +0200, Arnd Bergmann wrote:
> > > > The only thing that prevents building this driver on other
> > > > platforms is the mach/hardware.h include, which is not actually
> > > > used here at all, so remove the line and allow CONFIG_COMPILE_TEST.
> > > >
> > > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > >
> > > Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> > >
> > > What is the plan for this patch ? Push through watchdog
> > > or through your branch ?
> >
> > I would prefer my branch so I can apply the final patch without waiting
> > for another release. Not in a hurry though, so if some other maintainer
>
> Ok with me.
>
> Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
