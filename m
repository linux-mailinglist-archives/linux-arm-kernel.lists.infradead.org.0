Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7BB7CEB9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:36:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LeyU2/ErxZbWAuuUfJTPxcMhwIRe/bpIXZO8L14hInk=; b=AkekC9iSLF1v7n
	zbpwt0katANNr9V7GoRrx1a/Ob/T0P9FKHpNM4GT4Uy0NVp/MA3jUJ+JvAoGpfibeZMa5tDQOVRGR
	2je+0snX4E/XgbZkvECFEeI/D5jNAsffo7KmNu2O2qARSsNdG6iT4vnwTKAxpdT1FlnMTfJZPS9Wx
	w93ldv5j0n3WUOTtpbKxfsUd6Py40fje0ApA/at8x9+L10VJBV+U2MoQw/4w6iV20s8+HgXSdpYQQ
	kvkRFlLEM8fhbupT18Sfhq+diSkCCA+I8LAQBCuwxBeIkdQ4bZ4OjeU7vDjgCM/DMZ/HUxx2gfAsQ
	dvt406vxHXDE71mssl7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvLD-0000n0-JZ; Wed, 31 Jul 2019 20:36:55 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvL6-0000mb-N2
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:36:50 +0000
Received: by mail-pg1-x541.google.com with SMTP id i70so21900661pgd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 13:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+3m34La6ccE3Dbo0nKkW6PAk5aFsT9gCe5QCc84QY/M=;
 b=EFmwE6xHJZlI7fbJj4ayQvxsXiguUUOE/YUP+QGUdsdsqzIBCNFzDXIfMHIIReAeq0
 YxhAhukgJsf9Zk6f6yV8s2LP8u0sSr3FNuF8EyxKSURPID2YZC8Lbo6cduEjaNrfdCwf
 DDLHx35Gdmi2wKQrsQFGdxEic/BLubYM2PdbA3n+K81Up9x+c+BTo+EUmFexA3wLK1m3
 HTdCvaEPFAiwwj9xS/aDlE76GEOL8mwW7ic1UhN2QVquK+WFAQH9I/3g+WFQQCGFh/i7
 YgzaMh2a0V/ot/+SNV3Vet++cuduT7j8egp6XJg1gKkL7jCKsSeeDqSN4CHI6M9V8jx9
 7pRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=+3m34La6ccE3Dbo0nKkW6PAk5aFsT9gCe5QCc84QY/M=;
 b=R+TiQ+U65msRu9q616bjkZEa1/oOCHgy0MUKzilzBSb+2YH+3fMhBduDtSRtsw3XEl
 Ft90DP2P0wC9Tp7i7WIvaQBZb2Bbl7H4eEcww5x5aLu61iG4ajz7mCkFr7dbmSQ4NT9B
 M0QE1Xc3Z4hGNThlJWmGIkYP0j++H528TP95H4j9pTnxNXRZkwgtYTkrKZU4YA2hnIIw
 9pWx1qn+LFuaufvdTGL03Oowf23h13oEjJJIDIIL3uDQ2AXH4L6wiwc0S3jjD55NoPrp
 7l2zmbZR9dAkdGtMwRJihXivdyy/HV38DzYxPE9ptMfy+Hoqgi2zwNRsH4MZrViu+V5Z
 Q/6Q==
X-Gm-Message-State: APjAAAW06ZHNinF7EFt2yUh7RjVD2YPSB7ATjTi3y/Ej8DuMu/N/W7+M
 VYOIKnTcD89z6LV/vxTdNXM=
X-Google-Smtp-Source: APXvYqybC01d0TByWxoDrJxw7C9lUUE3ShsoXGzUiQlHPWLWfdxiLqpUEK75wQICNDQ0Ydie1eRIGg==
X-Received: by 2002:a63:e907:: with SMTP id i7mr113621516pgh.84.1564605407843; 
 Wed, 31 Jul 2019 13:36:47 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id h16sm77972581pfo.34.2019.07.31.13.36.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 13:36:47 -0700 (PDT)
Date: Wed, 31 Jul 2019 13:36:46 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 03/14] watchdog: pnx4008_wdt: allow compile-testing
Message-ID: <20190731203646.GB14817@roeck-us.net>
References: <20190731195713.3150463-1-arnd@arndb.de>
 <20190731195713.3150463-4-arnd@arndb.de>
 <20190731202343.GA14817@roeck-us.net>
 <CAK8P3a2=gqeCMtdzdqg4d1n6v1-cdaHObeUoVXeB+=Okwd1rqA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2=gqeCMtdzdqg4d1n6v1-cdaHObeUoVXeB+=Okwd1rqA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_133648_779367_471F2694 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 USB list <linux-usb@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Vladimir Zapolskiy <vz@mleia.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, soc@kernel.org,
 Networking <netdev@vger.kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 linux-serial@vger.kernel.org, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 10:26:35PM +0200, Arnd Bergmann wrote:
> On Wed, Jul 31, 2019 at 10:23 PM Guenter Roeck <linux@roeck-us.net> wrote:
> >
> > On Wed, Jul 31, 2019 at 09:56:45PM +0200, Arnd Bergmann wrote:
> > > The only thing that prevents building this driver on other
> > > platforms is the mach/hardware.h include, which is not actually
> > > used here at all, so remove the line and allow CONFIG_COMPILE_TEST.
> > >
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> >
> > Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> >
> > What is the plan for this patch ? Push through watchdog
> > or through your branch ?
> 
> I would prefer my branch so I can apply the final patch without waiting
> for another release. Not in a hurry though, so if some other maintainer

Ok with me.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
