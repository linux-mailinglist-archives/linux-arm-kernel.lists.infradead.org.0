Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DCD146855
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 13:46:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fUYli1b4gYNCnm5xsavt/NdsrNJ8nwq2bpBEcC+RmZE=; b=R+uzcv5gvGDkYS
	SV+pKyCwQj8fVVM8uweL7v8YwA2TPdhCRJhIf1zJ4FyfFW1ZJKWazgwvTBfiBAheKVliLWPemZyWm
	x09vvoTY5BDfYImYy5c762fQatN8DtEPkwHfm2YdS76vnx6WCY3psTDLudV09GV6jicqapzRTWdJm
	BqM1ugEJOefAo3b22/QEtylRRrU0m8DARJusFaikcXgmYmrhYxh0tyLQax3ONdOFIYhDRrM9QHKf7
	x0lWtUZ0f7lxjyUzpJ5VjOM6N1a8uXbVF9NiYv2t95KYZvXP2nE9ZXxlQzevOjSD95Y5eh5j+p7Ad
	eX1qTSAbqDUx0c1gQCoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iubsl-0001qF-IO; Thu, 23 Jan 2020 12:46:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iubsa-0001pS-90
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 12:46:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iubsM-0004im-Jb; Thu, 23 Jan 2020 13:46:22 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iubsI-000588-JH; Thu, 23 Jan 2020 13:46:18 +0100
Date: Thu, 23 Jan 2020 13:46:18 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH v2 1/2] i2c: Enable compile testing for some of drivers
Message-ID: <20200123124618.ijzasifjbbmzyh4d@pengutronix.de>
References: <1578384779-15487-1-git-send-email-krzk@kernel.org>
 <20200123091228.GB1105@ninjato> <20200123093120.GA2365@pi3>
 <20200123094107.GD1105@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123094107.GD1105@ninjato>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_044636_321127_6036672E 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Greg KH <greg@kroah.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, linux-i2c@vger.kernel.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Jean Delvare <jdelvare@suse.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 10:41:07AM +0100, Wolfram Sang wrote:
> On Thu, Jan 23, 2020 at 10:31:20AM +0100, Krzysztof Kozlowski wrote:
> > On Thu, Jan 23, 2020 at 10:12:28AM +0100, Wolfram Sang wrote:
> > > =

> > > >  config I2C_ZX2967
> > > >  	tristate "ZTE ZX2967 I2C support"
> > > > -	depends on ARCH_ZX
> > > > -	default y
> > > > +	depends on ARCH_ZX || (COMPILE_TEST && (ARC || ARM || ARM64 || M6=
8K || RISCV || SUPERH || SPARC))
> > > > +	# COMPILE_TEST needs architectures with readsX()/writesX() primit=
ives
> > > =

> > > The list of archs neither looks pretty nor very maintainable. My
> > > suggestion is that we leave this out of COMPILE_TEST until we have
> > > something like ARCH_HAS_READS or something. What do you think?
> > =

> > Indeed it does not look good. However having compile testing allows
> > kbuild to run sparse and smatch which already started pointing minor
> > issues in existing drivers.
> > =

> > Yeah... pros and cons... I don't have a strong opinion to keep it. Since
> > patch is important, maybe let's just skip this part?
> =

> Yeah, let's skip it for now. If you or someone is keen on having it,
> something like ARCH_HAS_READS (<- needs better name) should be
> introduced so we can use it here. But that can/should be handled
> incrementally.

Isn't this "HAS_IOMEM" already today? The driver compiles for me on
amd64, too, so ...

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
