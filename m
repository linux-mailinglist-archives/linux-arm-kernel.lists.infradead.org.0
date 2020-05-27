Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B3F1E3F92
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:07:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Sey/dfhrU+Z+20bQacygnyLWbi2obHFywF2TXr5uq0k=; b=VzI5aLkMcG+SU3XtedygU/yts
	UjwonVzLm4evmAQDQvYb1Y3FL4ogIcQhSxOpaW5vRv/L3apxSJFQSsAe4CiAlOFP3m65PYdwMEd56
	haBLEdqV5q9fao6CnuNPQvUYISlrr9ZmzbyQovjvywWgjoqukRZsk2BAZIdyDfZSWgXIC5gbt+VpK
	DyHBCaKmYAOyRTgwLa8yY/nuZQ4CyXVq1MvZSQI1NKAHadaMj7bLDnQCnKF5dXRKPyYFbYr89F9v5
	c/9X1+bb75YLUKGGJeGVgy0D3JzC1hVRMTeqFahe8eoWlRl1a32BPa4sPrHxfg2S9U6FXBPnqKxhL
	AvhO+1oZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdtuX-0007aJ-Pn; Wed, 27 May 2020 11:07:49 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdtuM-0007ZO-Jr
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 11:07:40 +0000
Received: from localhost (p54b33011.dip0.t-ipconnect.de [84.179.48.17])
 by pokefinder.org (Postfix) with ESMTPSA id 84A462C2037;
 Wed, 27 May 2020 13:07:32 +0200 (CEST)
Date: Wed, 27 May 2020 13:07:32 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Laine Jaakko EXT <ext-jaakko.laine@vaisala.com>
Subject: Re: [PATCH] i2c: xiic: Support disabling multi-master in DT
Message-ID: <20200527110732.GA4875@ninjato>
References: <20200218135627.24739-1-ext-jaakko.laine@vaisala.com>
 <CAKfKVtFf+VpinkOGsBFZ2-_PKvx-C1L7G7_uhY2RCvV5dy6L_w@mail.gmail.com>
 <AM0PR06MB5185E501349E06428093B62FD4F70@AM0PR06MB5185.eurprd06.prod.outlook.com>
 <20200401143254.GA2409@ninjato>
 <AM0PR06MB5185F8F51316FCD5213F0ABED4C60@AM0PR06MB5185.eurprd06.prod.outlook.com>
 <20200402092813.GA986@ninjato>
 <AM0PR06MB51857F4CDC7AE643CE160F9ED4A60@AM0PR06MB5185.eurprd06.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <AM0PR06MB51857F4CDC7AE643CE160F9ED4A60@AM0PR06MB5185.eurprd06.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_040738_950691_CEF1263D 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Rob Herring <robh@kernel.org>,
 Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============0652280549931685695=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0652280549931685695==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="45Z9DzgjV8m4Oswq"
Content-Disposition: inline


--45Z9DzgjV8m4Oswq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Jaako,

> The changes required to this patch at XIIC driver from suggested DT
> changes are pretty minor. Basically only checking a different
> property, reversing logic and some naming changes. I can make these
> changes already for the driver if this solution is what will be
> chosen, or would you prefer to still think about this?

I think we can go forward this way. Although I didn't find an example, I
am quite sure YAML format can have exclusive properties. If not, it
should be added ;) I'll try again to get some information from people
more experienced with YAML. But we don't depend on it.

> Regarding the device tree changes: I am not very familiar with the
> needed documentation changes, YAML bindings or what needs to be done
> for new bindings in general. Would you prefer to still consider them
> and/or get these subsystem level bindings done by someone more
> familiar with them? Another option would be for me to try find time to
> do the suggested bindings changes anyway, but it will likely require
> some effort from me to familiarize with device tree bindings changes
> and schedule the time for it.

No need to. Luckily, the I2C main bindings file is still text, so it is
easy to modify. I will send a patch out in a few minutes, so you can
base your driver code on that. Converting to YAML is a completely
different step, not related to your patch here. (Sidenote: I am looking
for volunteers to do that)

I think this covers it?

Happy hacking,

   Wolfram


--45Z9DzgjV8m4Oswq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7OSe8ACgkQFA3kzBSg
KbYhDA/+Mz+QoufnY4EPCz5k/e/sII/jXO8cozIN4DhnrjHB/hm1ypYwvJxyQGnO
ajA/7vWPE5ZdFTff+DiaVu4btR0fZpUztvZOZnko7CVtgnhZ+2q44nY7kuOEJzo5
RqqrmWcNRDu5kDtfFKZqkQS2Lg8mkN7FKulq3VBXBhhov2G+OcIzjVW981QwFRFl
An9skXoQKUu7Jog7EwZEhPYPuVEDPsxIgwJjQW0RagIT3N4hiRAlPBUvy2hy1FWV
55b4Xf16A2lBnRrUPYvs4W75KAVdCgWxuJvNINKremjpZGkbile0nVKvyEUc8Qyi
scu180J5u6PFvjJO9x49unn7qf9XtcwtlE9oabUcOHvDa3U753m8RHrh+K/j1iYu
WntnYjpcKWqGmodj9JoiAXledcy/ntfd+9UJL4zihxAP6wgcVzpxl2W9Zn3aOgPE
PBowiHNZl9lwLm9uKCpi29+7Ne1Vt1v7J2FZ07S+bY+ytvDM1abvp5GfBzKRz7XA
q8aXZ2Amhh84dNha9r3VOiLRBAzHjZOVc6hR8mBnAjy8+1O0kyJn2GrPK9rGwDQ7
kqhe5uTlBmJyvQrJx0CnILXOuRS7rJTj7y2u5FHUZNZghROzEXn6PlmnL4WNeqBz
cgus7tOk4/Xz8ihlAGrKvNOvPkSNALVyW96kCkUT9EcOV5qmWKk=
=g4Yu
-----END PGP SIGNATURE-----

--45Z9DzgjV8m4Oswq--


--===============0652280549931685695==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0652280549931685695==--

