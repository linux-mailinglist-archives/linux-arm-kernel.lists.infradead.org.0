Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2338B1E9898
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 17:36:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJaTXiFqLeg0J2YbX5vHrL14KEkMlTcjfpi6Wc1xJ+k=; b=Iy3QL6gR2hUT5n
	IB0MkK0fvz/gFjRLDz8585RRrFk9xlQnSD50pfs4LkjsOijRnxzkcplmXW6fYY7H9F8OZjtLP/2og
	ubvBw3HEW9dTYXaNpUsklp8iUP5DNpAr8VQh07McAn6UQIFCi0n4QuOwixztHNJkFWzmN/WsRdo5e
	7MX3LNuLMNwuwjqfRxf8SGAt1LBQFImdv4uxu2JzuKTvBpXoKFhjW/0QYzK6v+FPgJ1V6jw1ozbWu
	EkdhM4ucSJbAd805dsQD1EYt63xU2jEQXzrLcfMkU5IREZ5UrtMmVVvpLhwIscg5/jWiK/TGNdUm+
	oxmURZSIpkvT1iLoStCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfQ0h-00022t-TK; Sun, 31 May 2020 15:36:27 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfQ0Z-00022I-Gt
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 15:36:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 45D7FFB03;
 Sun, 31 May 2020 17:36:12 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BPwWvG9Wfq8s; Sun, 31 May 2020 17:36:11 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 52F2944BF8; Sun, 31 May 2020 17:36:10 +0200 (CEST)
Date: Sun, 31 May 2020 17:36:10 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH 1/2] arm64: dts: Add a device tree for the Librem5 phone
Message-ID: <20200531153610.GA9581@bogon.m.sigxcpu.org>
References: <20200514155737.12160-1-martin.kepplinger@puri.sm>
 <20200529162850.GC3709@amd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529162850.GC3709@amd>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_083619_724506_2BB84892 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Martin Kepplinger <martin.kepplinger@puri.sm>, kernel@puri.sm,
 Anson.Huang@nxp.com, robh@kernel.org, festevam@gmail.com,
 s.hauer@pengutronix.de, angus@akkea.ca, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 mchehab@kernel.org, shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Fri, May 29, 2020 at 06:28:50PM +0200, Pavel Machek wrote:
> Hi!
> =

> > From: "Angus Ainslie (Purism)" <angus@akkea.ca>
> > =

> > Add a devicetree description for the Librem 5 phone. The early batches
> > that have been sold are supported as well as the mass-produced device
> > available later this year, see https://puri.sm/products/librem-5/
> > =

> > This boots to a working console with working WWAN modem, wifi usdhc,
> > IMU sensor device, proximity sensor, haptic motor, gpio keys, GNSS and =
LEDs.
> > =

> > Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
> > Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
> > Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> =

> =

> > +		blue {
> > +			label =3D "phone:blue:front";
> > +			label =3D "phone:green:front";
> > +			label =3D "phone:red:front";
> =

> Droid 4 uses "status-led:{red,green,blue}". Could this use same
> naming?

Looking at leds-class.rst we don't have a useful devicename so
should that just be omitted and s.th. like

		label =3D "blue:status";
		label =3D "green:status";
		label =3D "red:status";

be used instead. If we want to map to current usage

		label =3D "blue:status";
		label =3D "green:boot";
		label =3D "red:charging";

would be even closer but since that is bound to change just going with
"status" would make sense.
Cheers,
 -- Guido


> =

> > +			label =3D "lm3560:flash";
> > +			label =3D "lm3560:torch";
> =

> This is one LED, right? I'm pretty sure we don't want lm3560 in the
> name... "main-camera:flash" would be better. Even better would be
> something that's already in use.
> =

> > +			label =3D "white:backlight_cluster";
> =

> Make this ":backlight", please. Again, we want something that's
> already used.
> =

> Best regards,
> 									Pavel
> -- =

> (english) http://www.livejournal.com/~pavelmachek
> (cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/b=
log.html



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
