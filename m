Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E04DB72A27
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:33:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YPW9YMj8P/ZOabZkYPBuA/JWlaIB3jpMtXAxr3IbnE8=; b=cUwPSzZfdjhfst
	WJMcCDSkR7xuj5jZ7vemPYDg0i+YQS2HFA8vin4mwKRzgGyrgDOvpw7cZVhWypHbEJlCRgkI4seuq
	gFwPAhlSUZyFpDO1fjh2Syj6/q5Kl+a6JHr+CZnhWvBElLELr/+NI8QOhfo2nAdmQ6oLAr7/iuwZY
	Q0UqEOlL52p0UQXIFfki2Fg1f9g/+ELid5DVP3l0BT/abFxgy1I1ElF0oduwQLHrTTfzLMBUPFnO6
	33dtDIJWTY2/EOCjRbLocteHQotbl0ThAIOd56v4Cs79jC75sTM703Q1RPtRL30zxkMkESwqYFHaU
	9DXNK9zg2f97BVKuFJ0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqCi0-0003j8-VK; Wed, 24 Jul 2019 08:33:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqChn-0003fA-85
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 08:33:00 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hqChZ-0001Cp-C2; Wed, 24 Jul 2019 10:32:45 +0200
Message-ID: <1563957164.2311.28.camel@pengutronix.de>
Subject: Re: [Sound-open-firmware] [PATCH v2 1/5] ASoC: SOF: imx: Add i.MX8
 HW support
From: Lucas Stach <l.stach@pengutronix.de>
To: Daniel Baluta <daniel.baluta@gmail.com>, Pierre-Louis Bossart
 <pierre-louis.bossart@linux.intel.com>
Date: Wed, 24 Jul 2019 10:32:44 +0200
In-Reply-To: <CAEnQRZCuB2QKzz-08K0z+x+p0qCpqR_wDc=q2GChvJiw4E9hBA@mail.gmail.com>
References: <20190723084104.12639-1-daniel.baluta@nxp.com>
 <20190723084104.12639-2-daniel.baluta@nxp.com>
 <a5d44d96-4d50-ee46-a6bf-3ce108b1994a@linux.intel.com>
 <CAEnQRZCuB2QKzz-08K0z+x+p0qCpqR_wDc=q2GChvJiw4E9hBA@mail.gmail.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_013259_287269_B49DBB05 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, "S.j.
 Wang" <shengjiu.wang@nxp.com>, Marco Felsch <m.felsch@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Olaru <paul.olaru@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

Am Mittwoch, den 24.07.2019, 09:54 +0300 schrieb Daniel Baluta:
> On Tue, Jul 23, 2019 at 6:18 PM Pierre-Louis Bossart
[...]
> 
> > Also are all the resources device-managed, I don't see a remove()?
> 
> Good catch for pm stuff. We mostly didn't care about remove because
> drivers are always Y in our distribution.

Linux drivers need to be hotplug aware, even if they are not built as a
module. You can test things by manually unbinding the driver from the
device via sysfs.

Regards,
Lucas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
