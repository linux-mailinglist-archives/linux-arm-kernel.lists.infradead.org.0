Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BAE11848F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 11:12:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zbx4vQhsH93DDxrjRoDSrd9Giz1j3vqUc6bWme0ZNME=; b=E8R4yscYXnDfHO
	sshvBCkA9XyWd0rtYvDlAaN8iphYJ8CPNygy3ODhhE3ilz8ossp6GcIifBsFt013K2KE6J5+V3b/C
	SAyK1iW/huAi/hrmlj/ZDuOBEskrFm9r8dBd/vxEUE7QcA/oTyz/u/axVibptB2/g9zFGWBbRuD2W
	V2v2k2TSfkbEyqljoxWjWRV2lINiZBD74O4Rjagx1snVKzjXwExMoGK0Enap0ap9zvWdxcu3+wWTB
	2IJPPUW1n477JMAZlXfVg5gz63VtnvJBa4H6Y9R3qBP/KzfU/EuIFz4nv4ZYGXMn2Jf70aVQCLSKI
	dh3uQwA6FFPuxmEWuRKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iecVW-00065W-V3; Tue, 10 Dec 2019 10:12:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iecVP-00064u-N8
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 10:12:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iecVL-00015W-G5; Tue, 10 Dec 2019 11:12:31 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iecVK-0005Q1-2t; Tue, 10 Dec 2019 11:12:30 +0100
Date: Tue, 10 Dec 2019 11:12:29 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: walter harms <wharms@bfs.de>
Subject: Re: [PATCH] pwm: sun4i: Narrow scope of local variable
Message-ID: <20191210101229.rvqelc2hanisd2cp@pengutronix.de>
References: <20191002101624.gljyf7g4nia2rcbx@pengutronix.de>
 <20191205072404.6858-1-u.kleine-koenig@pengutronix.de>
 <5DE8C1E3.4080204@bfs.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5DE8C1E3.4080204@bfs.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_021235_753146_BC369584 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-pwm@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, kernel@pengutronix.de,
 Colin King <colin.king@canonical.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Walter,

On Thu, Dec 05, 2019 at 09:37:55AM +0100, walter harms wrote:
> Am 05.12.2019 08:24, schrieb Uwe Kleine-K=F6nig:
> > +			unsigned int pval;
> > +
> >  			if (!prescaler_table[prescaler])
> >  				continue;
> >  			pval =3D prescaler_table[prescaler];
> =

> =

> nit picking:
> Doing the assignment first would remove the only use
> of prescaler_table[prescaler].

nit picking: it would be reduced to a single use?!

> unsigned int pval =3D prescaler_table[prescaler];
> if ( ! pval )
>   continue;

Right, will send a v2 with that.

> if you feel adventures you could also replace the for() for a while()
> since we know that prescaler =3D=3D 0.
> =

> while ( prescaler < PWM_PRESCAL_MASK )
> {
> unsigned int pval =3D prescaler_table[prescaler++];
> ....

That however has some side effects as prescaler is used after leaving
the loop.

Best regards
Uwe


-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
