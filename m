Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A4511485E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 21:46:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aUn10ty8GGs+X5jHQad5E4budQvBgQ0gPH7XUqTiOgg=; b=kJgLYXU5Jsvui7
	TRsSxTBb6/RTNhVS0s4m5h9uocHv4S59EcE20f3pliWRr9DXkntvLxeTaOMj6Y6FJjUmT3iStQPry
	oi5+GLPI99dakFGKhef2YtfZ18V1YXR5t+0FlBjDaukH/ZhEPoIeT07uSxLbqC41yihx67+vCV7JT
	yzgs/qOtYzBp5EyFVpq0XF5cXDRigW/6zt36W0IuGG5awfxiXxllxLwBWEHVwL+kRlTIQRscwszgH
	S+ORL+K7bj051LW7glopoYV5zXikuWv9aWhaNCepALo1TkO3EGAS6rSlODjpr4UMHz4hcoHwtOphV
	I3nvnOBApuxKZAu27Jjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icy1I-0001kV-CX; Thu, 05 Dec 2019 20:46:40 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icy0w-0001bY-QT
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 20:46:20 +0000
Received: by mail-io1-xd44.google.com with SMTP id i11so5021725ioi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 12:46:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=humTQycd0vFrkIxQZiWiqgySySbeGFmTzkUhXf3KboE=;
 b=XdU6/ypkhmReLxd03n6s8HpHulakpvc3pASxdTKIXH5An0XRvRpiR5gmD8jxcctCtu
 AZ1hpqEmX4HDZOW36C/slJrG6ubHNk+86q7aGjG8lowWjq77rYGQtIffDTiLvwr5fz2X
 hwEAbOrYCHKci7lvtvy4hU6VjIYmeZLACNF2KEJSM2ULPOd9XZsWwwgCsuktqFOhSXqV
 6l26BDcvq/AIf4qgZsSjRnYm3f5T2Mpy3MY215s7XVGWsn0E8PW8g4FHLQRhawKHmCdQ
 cMISuBMCKa6YMp2kZnqgIJ9nmsLIcf4uACpYaNEVYws2f5xAhk0ed6bLJ78sgl+dT+xi
 dBpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=humTQycd0vFrkIxQZiWiqgySySbeGFmTzkUhXf3KboE=;
 b=ihvu9h+qotE4+tvEL0NtYaf4XBwcY8Gbc8HKlwaRw72qQCs0CMtGoQtFRjNJlh2WfO
 3esytCzHZ9dbjjh00VVfryUiCurJZTXJ4rl3dQqAGj+vKy+EKsd9tFSdkfpYun/wP8B6
 fd8Byd7GkV+jCrBcFIHBuNPUk/MoSGfbVOOHU+RQwRiJlxXcKFQsgdr3QbrdCnJUND8v
 0GjugeItYSodkXNOPgiCxTon4HF/6O0YEtQVGOLHSvJFrXuUxn7NwmL2nl06USMsSF2e
 yvGJHBQ44lf9/uSolWmcDwKa7DiGLnBXygVNS9a/U2eYgR94Ffp0B8vYe9egTs2svnD4
 rTTg==
X-Gm-Message-State: APjAAAVAeIn8W5lzgtzzRLNlVe4OXTAZvIMnxIxS7We48sWTu355IgD2
 F6frC1GoeX9rSCXF5yqsmJuFH2MBw6+AS32aB8gxxw==
X-Google-Smtp-Source: APXvYqz7Sg7e83fq0vHcuOBJBouB7Eicn+xN/Pzkb8SFrEF/cGfUJr2/1zhC8EK8+W4Iqy3mBKDJlZEWDlP9p4WjktI=
X-Received: by 2002:a02:6a2f:: with SMTP id l47mr10252363jac.132.1575578777145; 
 Thu, 05 Dec 2019 12:46:17 -0800 (PST)
MIME-Version: 1.0
References: <20191021205426.28825-1-rjones@gateworks.com>
 <CALAE=UAEFobA2SXOTJWAqexg+VNN_VTXGLGH+VwqqjKkuFwddg@mail.gmail.com>
 <20191204113307.GH3365@dragon>
In-Reply-To: <20191204113307.GH3365@dragon>
From: Bobby Jones <rjones@gateworks.com>
Date: Thu, 5 Dec 2019 12:46:06 -0800
Message-ID: <CALAE=UBFWvBpxODRgzM0YiM2uaBefCTvGjYj4Se=ZUU8g5fihg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx: ventana: add fxos8700 on gateworks boards
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_124619_034357_72EF2171 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 4, 2019 at 3:33 AM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Thu, Nov 07, 2019 at 11:10:19AM -0800, Bobby Jones wrote:
> > Hello Shawn,
> >
> > I just wanted to follow up with this and see if you had a chance to
> > look at this. I submitted this after responding to Marco on my initial
> > submission but haven't heard anything since and didn't want it to fall
> > through the cracks. It may be worth mentioning that both the bindings
> > for the fxos8700 and lsm9ds1 have been accepted by iio.
> >
> > In addition to this submission I have the following that I'd like to
> > check in on as well:
> >
> > [PATCH] ARM: dts: imx: imx6qdl-gw553x.dtsi: add lsm9ds1 iio imu/magn support
> > [PATCH] ARM: dts: imx: Add GW5907
> > [PATCH] ARM: dts: imx: Add GW5912
> > [PATCH] ARM: dts: imx: Add GW5913
> > [PATCH] ARM: dts: imx: Add GW5910
> >
> > Please let me know if there's anything I can do. Thanks!
>
> Hmm, did you copy me on those patches?  I cannot find them in my
> mailbox.

I just double checked and they all have you in the recipient list.
However I just had my coworker check who's also subscribed to
linux-arm-kernel and he's only seeing this thread and the "add lsm9ds1
iio imu/magn support" thread. Maybe something funny with our mail
server.

Interestingly enough they appear on the marc.info archive for Oct 3rd:
https://marc.info/?a=147430901100002&r=1&w=2

I'm not sure what happened but I'll send them out again now.

Thanks,
Bobby

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
