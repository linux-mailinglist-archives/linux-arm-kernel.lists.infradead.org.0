Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B121B3896
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 09:12:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dqlLAzchenTAGBsTC00DWdTpAHJeRC5d83db6G36wjA=; b=mXnHZWCNTTSevb
	VwrYS2fBiu0Deh0m1YXlJyfM1oFiju+Uhr8oljQVZtZvksLQv7IrTaQs4BiOUscKa4iCYjODtVLtT
	Cb6UfXa0WZp6Mh0CLj6VbJRDahmDnU6uSeEmYTHtPtvT9Clp+vrnxf4U5SQgUxzKBdVgASpDg4C+J
	vAnAhX0LYd9WBWHU5sKjlsTdIKdflMBii8xld3DjpnOtHZDOw1c3bBbRcrQ4xPBFAM/IbmqeW7J09
	EQhTdywnMazAwv31wQ7EI40hy6NWPi1aYqpXsONnJZd2k7rEksELND94LOg0OETnx8qhIhbfgNpxL
	Wuj4Y0++mcIuUkDIMOgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR9Yq-0005HE-N6; Wed, 22 Apr 2020 07:12:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR9XN-0004aa-BW
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 07:11:14 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jR9XD-0007rV-FE; Wed, 22 Apr 2020 09:11:03 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1jR9XC-000354-Ft; Wed, 22 Apr 2020 09:11:02 +0200
Date: Wed, 22 Apr 2020 09:11:02 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH v6 3/5] ARM: dts: add Protonic VT7 board
Message-ID: <20200422071102.ho2zayo23gdkig7r@pengutronix.de>
References: <20200421124057.19238-1-o.rempel@pengutronix.de>
 <20200421124057.19238-4-o.rempel@pengutronix.de>
 <20200422070441.5hvozjvcssanqnjb@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422070441.5hvozjvcssanqnjb@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:09:09 up 158 days, 22:27, 171 users,  load average: 0.02, 0.14,
 0.12
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_001113_528009_54FD713B 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Robin van der Gracht <robin@protonic.nl>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 David Jander <david@protonic.nl>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Oleksij,

On 20-04-22 09:04, Marco Felsch wrote:
> Hi Oleksij,
> 
> On 20-04-21 14:40, Oleksij Rempel wrote:

...

> > +	reg_1v8: regulator-1v8 {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "1v8";
> > +		regulator-min-microvolt = <1800000>;
> > +		regulator-max-microvolt = <1800000>;
> > +		regulator-always-on;
> > +	};

Just noticed that this regulator is part of the common .dtsi too,
so we can drop it here.

Regards,
  Marco

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
