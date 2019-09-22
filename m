Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8763BBA31B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Sep 2019 18:15:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bC989Bca6XbqQWO5azgXoqfI7MgnmSDv859SsRgsU1I=; b=ZPPM1UAyz5iv7D
	/w0fo9F0OT25yCrZDajzTzudkVAHMMQc1QaLZoNuZ8NatjiJmjF/SgEcdKtCmhk/Pmy4KuGP7F27N
	jw+fwnXAWPGOeQmB/ZAgqPQ5tNZdwgdrOZQ7rivrx1QqjZS8mBP4OWJ4hvyvzPSEIPCtWrwTud1M5
	oUIWLgANhwWzgDtOG1AjO1sZBij3mxe5uJWH7ShjaS7tHZ/IR5csGbAsETAtFNfsOeELvMLekpMS+
	S6xoaWbeKqPVcSH0SiSGkJYw6wGY9CymNLPZO372UmKtR4o7z6wZa5dh1zRDgqltp+SZiXIXb6uUZ
	bPOCThfjJ1umbDnI5s1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iC4WS-0003Sf-LM; Sun, 22 Sep 2019 16:15:41 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC4Uy-0001vq-PI
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Sep 2019 16:14:10 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 4F20D8031F; Sun, 22 Sep 2019 18:13:53 +0200 (CEST)
Date: Sun, 22 Sep 2019 18:14:01 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH V2 2/5] input: keyboard: imx_sc: Add i.MX system
 controller power key support
Message-ID: <20190922161401.GC1999@bug>
References: <1567519424-32271-1-git-send-email-Anson.Huang@nxp.com>
 <1567519424-32271-2-git-send-email-Anson.Huang@nxp.com>
 <6d8dd5df-02da-b4cd-e61d-a4a15d0bf0c8@pengutronix.de>
 <DB3PR0402MB391602C6B425DD7EBFB9AF1DF5B90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <dbe0ba0a-29bc-ee96-541d-244b3dbf0b81@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dbe0ba0a-29bc-ee96-541d-244b3dbf0b81@pengutronix.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_091408_976538_A5AF72F8 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Jacky Bai <ping.bai@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Peng Fan <peng.fan@nxp.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>, Anson Huang <anson.huang@nxp.com>,
 "will@kernel.org" <will@kernel.org>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "ronald@innovation.ch" <ronald@innovation.ch>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

> >>Why is it global struct? It seems to be flexible configurable over devicetree.
> >>So I would assume it should be able to handle more then one button. Please
> >>remove global variables, make it allocatable per OF node.
> >
> >There is ONLY one button available for SC key, but yes, I think I can make the structure
> >private and get all necessary data from the structure using container_of.
> 
> And we will never need more then 640 kB RAM ;)
> https://en.wikiquote.org/wiki/Talk:Bill_Gates

Right question is "is it worth complicating kernel now (and making it slower/bigger)
for future flexibility?". And I believe answer is "no", but it is not a big deal
either way.								Pavel

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
