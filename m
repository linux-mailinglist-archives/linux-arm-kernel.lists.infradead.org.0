Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D012A1CE8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 16:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=42Ty8O8LMi38c0/Gkaluvgc7VDw/l2v0ZFgMzfv/TjI=; b=p3OeTihhmPO9ryQ6IQDV6/UtR
	cnbPBLT2GY2ZP0rp40IQtrIWqQFp7CTNqdReSHNOl/OSSODy24YuV0AOfTjA71m+FyDjaIIBx2F9S
	0BIOqtFAWCFcgzINA/EvAy+a8UMdZ48MoVd5O/J2ZLWCw3Kmti7ChNQlT6tLfWHCgI9umgLeHLXxR
	srIVj+AJwQLdCnlvVdTSdPBPTTaqwoJsGjmV6QovZmza1SqV9sjVDzUnGz00Fnkvtzs6B+xWEa40w
	VuHl61y5KUmRQ75yCRfgEzDVJD85d+CF+jUHGbxA7ksup1T8kmJD1/n0dxRq7o5niykg4nv0PQyUG
	vbLHT6ZmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3LUJ-0006H1-AW; Thu, 29 Aug 2019 14:33:23 +0000
Received: from protonic.xs4all.nl ([83.163.252.89] helo=protonic.nl)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3LTP-0006Fx-5p
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 14:32:31 +0000
Received: from webmail.promanet.nl (edge2.prtnl [192.168.1.170])
 by sparta (Postfix) with ESMTP id CA70B44A0065;
 Thu, 29 Aug 2019 16:34:20 +0200 (CEST)
MIME-Version: 1.0
Date: Thu, 29 Aug 2019 16:32:22 +0200
From: robin <robin@protonic.nl>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v2 1/2] input: keyboard: snvs_pwrkey: Send key events for
 i.MX6 S, DL and Q
In-Reply-To: <20190829115052.s2m4jw4p3rknqoxb@pengutronix.de>
References: <20190827123216.32728-1-robin@protonic.nl>
 <20190828091550.pdc57wanu6twew5p@pengutronix.de>
 <6d353af709ea545cc34abca5c40674e3@protonic.nl>
 <20190829081712.timamprawezzbesn@pengutronix.de>
 <VE1PR04MB6638A54664EE3FFE16BD419189A20@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20190829115052.s2m4jw4p3rknqoxb@pengutronix.de>
Message-ID: <efbaeee1422412098076488fa494a42f@protonic.nl>
X-Sender: robin@protonic.nl
User-Agent: Roundcube Webmail/1.3.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_073228_147398_87956823 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 "devicetree @ vger . kernel . org" <devicetree@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Adam Ford <aford173@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "linux-kernel @ vger . kernel . org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-input @ vger . kernel . org" <linux-input@vger.kernel.org>,
 Robin Gong <yibin.gong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel @ lists . infradead . org"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-08-29 13:50, Marco Felsch wrote:
> On 19-08-29 09:11, Robin Gong wrote:
>> 
>> On 2019-08-29 16:17, Marco Felsch wrote:
>> > > > While reading the rm it seems that
>> > > > the snvs block has a dedicated version register. IMHO this could be
>> > > > a better way to apply the change also to existing devices with old
>> > > > firmware.
>> > >
>> > > I thought the same thing, and fully agree with you. However I do not
>> > > have a way to determine which versions are out there. Since I couldn't
>> > > find any documentation on this, and I only have i.MX6 S/DL, D/Q and UL
>> > laying around.
>> >
>> > @NXP Kernel Team
>> > Can we get some more information here?
>> Go ahead, please. That snvs version register SNVS_HPVIDR1 should work 
>> as expect.
>> MINOR_REV checking is enough, none-zero means for soc after i.mx6sx, 
>> but
>> Zero means i.mx6q/dl/sl elder soc.
> 
> Thanks. Robin can you integrate that so we can drop the different
> dt-handling?

No problem, I'll post an updated patch tomorrow.

> 
> Regards,
>   Marco
> 
>> >
>> > Regards,
>> >   Marco
>> >
>> > > Regards,
>> > > Robin van der Gracht
>> > >
>> >
>> > --
>> > Pengutronix e.K.                           |
>> > |
>> > Industrial Linux Solutions                 |
>> > https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.p
>> > engutronix.de%2F&amp;data=02%7C01%7Cyibin.gong%40nxp.com%7C8d4e1
>> > 0cd77bd4652f3eb08d72c594e76%7C686ea1d3bc2b4c6fa92cd99c5c301635%7
>> > C0%7C0%7C637026634390359345&amp;sdata=mhXlUxmLWg8qtwhPQfkJZm
>> > VAn4QQ3YybLOSh83uf27E%3D&amp;reserved=0  |
>> > Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0
>> > |
>> > Amtsgericht Hildesheim, HRA 2686           | Fax:
>> > +49-5121-206917-5555 |
>> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
