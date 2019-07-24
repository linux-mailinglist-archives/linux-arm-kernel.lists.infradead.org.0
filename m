Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF31C72AE7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uHYQ+ZL/J37oKyPMSVG/PC4t4I1WMNVHrAH0Ra8l/6U=; b=WmOgeNEvY0H9Yc
	Ip1Dvk+gfwAh54PbhcLk4+AaJpKTguyBZGAsW7PzK2kfkiDSeoXoODKki7/oZ+xLBLNtphrppU/RA
	TYqCKYiSBPWrkI+t+dVzJxPF6QTy7BLT6rdMOYajuaaK0XChmq6FluCUEQPt+/7uZ0eNUQgY6HWHz
	4Pxp/yCe2pUSG/Eqa4t5quBUW8pX0DyRSCnQiNGVE949HudSD7oR74Ve1JiTtdQWVnoVHbTQZVk99
	YT/4BK30bbLAyi+fLRqabYxr4ueDCOBgHY7hlT0JGahvKE/uC8nxLabUkVlbXbL74Bx1Uwor3CNAJ
	Lh6/ZhcLa5wesYlO8CMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqD7S-0000Is-57; Wed, 24 Jul 2019 08:59:30 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqD7B-0000Hg-12
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 08:59:14 +0000
Received: by mail-wr1-x444.google.com with SMTP id x4so46016139wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 01:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uLD0FIohOIaMjbj7E0OOl2DyS6RV1bLULju5D5/jTY0=;
 b=lpjg1MqhUsOo7tkaEJrwfY2Sbjfd+C+NxcHvLoN+uP+ea1X5D/LzA8U9UqfIOf+jtp
 HP37lrCo8XZL9ygrn8K2ciiMXnWIdLfPTCvPTXysPyIzQak6nDvRBsRE5MXh317hrMDp
 7HE5zV5/sw1DszulN9iEs9PO51bVTkmTqzJ1Kv1mUKVnjvSCGP2PzruV5Z2QRaC0Y5yE
 gg0ArZ1AmS/yBrz8Yd4t5IH8FE4s5dQQY5AmJkR0mkYc+7LsCI3n50WdVLdpmaoGNPkj
 7cOk1aBDmK3pohX8ukFNVvHeH3iXs4Iho0dBAesi+OE9/Xe8k1W9RUwyOXknVD6Gz6Mu
 GlDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uLD0FIohOIaMjbj7E0OOl2DyS6RV1bLULju5D5/jTY0=;
 b=afW6jComqixDZfhzjr8wnScTgQV8lLfr1Jz8+w/HoajMQfsxUX6e52kzL8q592GwmS
 7c1l4ClnbjR1a4llfK6u3s4ssQ6sjhczagx0cL5uo/NXHIDHAYmmtJ2PXSWDhDu/k5xo
 bu5vNaQONxev53DgkVPTfo4oHanxA/75amDhV8toKvvGDYiT758Ak3Zev2xc3UPPJ21G
 umWC0jV5CZCP5k2XcSqW/vJ+DqKE4AMJMxIxU4kBFJRp45j7OSB3PotwV9FG2CEthdh/
 jxCXSWSP9jFR+2y8eH43xJqsl4DLalgra+r+Vv2wUsg9h79zaXmG/nO/pd6t0WOCRYfH
 U/uA==
X-Gm-Message-State: APjAAAUUIPrFKroFKcaCC8sE6wGGw6GOA/Eus14PWkVSrhdX6phfq16N
 Y+mJgwpg2cGB2+n+CsQOcGXj6SIxJMYOR0OoaX0=
X-Google-Smtp-Source: APXvYqzDa65ZZuqbBz0Y9LKy5ttZgCPxfD6HONFDo1ej5tX89DOctwjYr4B8EOdL7v6XaKJGVXfdSB6Urjocukqv+IY=
X-Received: by 2002:a05:6000:14b:: with SMTP id
 r11mr12742240wrx.196.1563958750049; 
 Wed, 24 Jul 2019 01:59:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190723084104.12639-1-daniel.baluta@nxp.com>
 <20190723084104.12639-2-daniel.baluta@nxp.com>
 <a5d44d96-4d50-ee46-a6bf-3ce108b1994a@linux.intel.com>
 <CAEnQRZCuB2QKzz-08K0z+x+p0qCpqR_wDc=q2GChvJiw4E9hBA@mail.gmail.com>
 <1563957164.2311.28.camel@pengutronix.de>
In-Reply-To: <1563957164.2311.28.camel@pengutronix.de>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 24 Jul 2019 11:58:58 +0300
Message-ID: <CAEnQRZAEsPFp36hD7XiWihTe2KQOJV6Eq9C8hjn0Z1kiUZjzyQ@mail.gmail.com>
Subject: Re: [Sound-open-firmware] [PATCH v2 1/5] ASoC: SOF: imx: Add i.MX8 HW
 support
To: Lucas Stach <l.stach@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_015913_068681_BDE129C4 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, sound-open-firmware@alsa-project.org,
 Anson Huang <anson.huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Marco Felsch <m.felsch@pengutronix.de>, Paul Olaru <paul.olaru@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Fabio Estevam <festevam@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 11:32 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi Daniel,
>
> Am Mittwoch, den 24.07.2019, 09:54 +0300 schrieb Daniel Baluta:
> > On Tue, Jul 23, 2019 at 6:18 PM Pierre-Louis Bossart
> [...]
> >
> > > Also are all the resources device-managed, I don't see a remove()?
> >
> > Good catch for pm stuff. We mostly didn't care about remove because
> > drivers are always Y in our distribution.
>
> Linux drivers need to be hotplug aware, even if they are not built as a
> module. You can test things by manually unbinding the driver from the
> device via sysfs.

Agree. Will take this into consideration when sending next version!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
