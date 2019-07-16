Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A5E69FDC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 02:29:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6lGNfgNHqct4Wq5Gl+rbSWlYQYijFe1CjTBdYBUn/Tg=; b=k74aaXLWbHmgj5
	tMFcScuHz3rGcCis649g8YdeipFxVcXfcn1NwsHWzU76eL+/ehjLqFdJ4IRWWjZQHyg296OtWFN0H
	bJsBa0nYvCBcZCLbaAMlc30DdnQ7jWOCxBkf9Xrpv61ZjnkY0gyCkv9ogOxIXgWfY5Vdac1Dfmws6
	qDLd0Y6sPBAyMxDtmoSVXz5lDt6175K5ITsTYgfaylwb8wRSgLI+4PdV5sujf6+XlQIOJVdSGsXTY
	dcMJNjE5MRda3Ft8LWtX2IxzZiZJ9+y5aDk3KokNP6Egcj8DgMAoau2LaL49mA62IZnCBqr3OyBZX
	qIZXUosdlqiq7+4VglSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnBLY-0001jY-36; Tue, 16 Jul 2019 00:29:32 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnBLF-0001jA-2R
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 00:29:14 +0000
Received: by mail-ot1-x343.google.com with SMTP id q20so19076371otl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 17:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5BYdUBysZ67vKMguvZgCh6yaor9Vs/Z93uWHz9zlur8=;
 b=qrzqnSsAKZNB/gem9bh/PkqLvVoR1oPCSliwxzsHir00TcpgIFy8AqTQIBspieq+bY
 oSinjoTFA9vRBFsRFOrXQbG3M9Xw0dvRlMoiIcewyU5D+7zxapkXZioy952S9ieXo8J3
 dLEGfocIuYgtUOQ8Y89CqwaILV2mKIj47y1DGwoa84qicsAyMD2nX3HzDKqHZEZM0VoU
 CYPCCAMkyM6+67xwDgCSc9rCBA++QDEQVW34C6PFmHyd7sqerODgwUXcAE3ynqQUQXOI
 a3XMHvh26a4Lw21UNpCplFEdq1j6AKNJddJrQ0gLoN9URjYCbKhN8JyfnM1q7XosTYyS
 GsSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5BYdUBysZ67vKMguvZgCh6yaor9Vs/Z93uWHz9zlur8=;
 b=IW9zNlVvkl0ciLwUfVCnfSD8Vnz9oIRNI0DWlWDRFSVXG1kVcmF0oksk6E5A4Yy0vs
 Dc5XlOOf2vW0uV2rsHHcrOGFISCrsMxx6g6Wwg0f7Nq+QHeTKT0wGuOrl1RnnXRjxjyV
 tXeSAM/462tiHmCKkDTD7LlP4DKv8SKey53o0pT4nMoDTcpg9QaBCCM66gF9tMmyzp9Z
 GkX4Ybi9grSYVMp91J2GzEOfUw5HM3RfT/c2afTa/5CfrpKugv+2lCXWKXCMy+qiDSCn
 lw4e3s8xOOs81rQhPQNw1RIoBxKpWxfqBlA9Q6qlBksV+M53Sc74CnUqOO4e8rw6Oq33
 L1Ng==
X-Gm-Message-State: APjAAAWmBC+KYBKwV9Rs5mV/UI85q7RHgVCqhuIreXX4Pg+CPH4lPcYu
 lFcG1UU8P80dzNUb7j7PtwugkfrNFp0WpHfNYm8=
X-Google-Smtp-Source: APXvYqyEwg0cMSPwazZQij8oSS8ufGofjpqsKvgU98cS9UwddqUTmsuhAclAe7DHgcfs5tJkXQ2qzoJLnu9bi6JTBlk=
X-Received: by 2002:a9d:4b02:: with SMTP id q2mr2561759otf.312.1563236951460; 
 Mon, 15 Jul 2019 17:29:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190607094030.GA12373@lst.de>
 <66707fcc-b48e-02d3-5ed7-6b7e77d53266@samsung.com>
 <20190612152022.c3cfhp4cauhzhfyr@flea>
 <bb2c2c00-b46e-1984-088f-861ac8952331@samsung.com>
 <20190701095842.fvganvycce2cy7jn@flea>
 <CA+E=qVdsYV2Bxk245=Myq=otd7-7WHzUnSJN8_1dciAzvSOG8g@mail.gmail.com>
 <20190709085532.cdqv7whuesrjs64c@flea>
 <CA+E=qVdz4vfU3rtTTKjYdM+4UA+=FWheJfWOMaDtFMnWQ1rHbw@mail.gmail.com>
 <20190710114042.ybgavnxb4hgqrtor@flea>
 <CA+E=qVdFoT137pADfxz3uMwhOqjqrA9+6hBeOfbJxuH-M-3Pjw@mail.gmail.com>
 <20190712201543.krhsfjepd3cqndla@flea>
In-Reply-To: <20190712201543.krhsfjepd3cqndla@flea>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Mon, 15 Jul 2019 17:28:53 -0700
Message-ID: <CA+E=qVeDpLqAM6Qsd6oHfeYHB_JHdSb5GtY7i994GT5_RW4_Bg@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a64: enable ANX6345 bridge
 on Teres-I
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_172913_119551_4E43DDA3 
X-CRM114-Status: GOOD (  27.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Sean Paul <seanpaul@chromium.org>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Torsten Duwe <duwe@lst.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 1:15 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Wed, Jul 10, 2019 at 03:11:04PM -0700, Vasily Khoruzhick wrote:
> > On Wed, Jul 10, 2019 at 4:40 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > There's another issue: if we introduce edp-connector we'll have to
> > > > > > specify power up delays somewhere (in dts? or in platform driver?), so
> > > > > > edp-connector doesn't really solve the issue of multiple panels with
> > > > > > same motherboard.
> > > > >
> > > > > And that's what that compatible is about :)
> > > >
> > > > Sorry, I fail to see how it would be different from using existing
> > > > panels infrastructure and different panels compatibles. I think Rob's
> > > > idea was to introduce generic edp-connector.
> > >
> > > Again, there's no such thing as a generic edp-connector. The spec
> > > doesn't define anything related to the power sequence for example.
> > >
> > > > If we can't make it generic then let's use panel infrastructure.
> > >
> > > Which uses a device specific compatible. Really, I'm not sure what
> > > your objection and / or argument is here.
> > >
> > > In addition, when that was brought up in the discussion, you rejected
> > > it because it was inconvenient:
> > > https://patchwork.freedesktop.org/patch/283012/?series=56163&rev=1#comment_535206
> >
> > It is inconvenient, but I don't understand how having board-specific
> > connectors fixes it.
>
> How it would not fix it?

I think I got your idea, but yet I think it's not the best solution.

Do I understand correctly that you're proposing to introduce
board-specific edp-connector driver that will be aware of worst case
power up delays and will control backlight and power?

Then why not to add another board-specific panel (e.g.
"pine64,pinebook-panel") to simple-panel.c that does the same?

> You'll have one connector, without the need to describe each and every
> panel in the device tree and rely on the EDID instead, and you'll have
> the option to power up the regulator you need.
>
> I really don't understand what's the issue here, so let's take a step
> back. What are is the issue , what are your requirements, and how
> would you like that to be described ?

We have a device (Pinebook) that uses the same board with multiple edp
panels. So far there're pinebooks with 3 different panels: 11" with
768p panel, 11" with 1080p panel, 14" with 768p panel.

Currently there's no way to describe all pinebooks with a single dts.
There's a simple workaround though -- we can just specify a panel with
worst power up delays in dts and it'll work since anx6345 driver
ignores panel modes anyway and uses EDID.

Originally I proposed to extend simple-panel driver to support generic
edp-panel but it was rejected. I still believe that it's the best
solution assuming we can specify delays in dts, since panels list is
specific to particular device and it probably can't be reused, i.e.
there's no good reason to move it into C code.

Rob Herring proposed to introduce edp-connector. While I still believe
that it's not accurate description of hardware since it'll have to
have backlight node (backlight is actually panel property) I was OK
with this approach assuming we can store delays in dts.

Later it evolved into board-specific edp-connector.

So far I don't understand why everyone is trying to avoid introducing
edp-panel driver that can read delays from dts. Basically, I don't
understand what's the magic behind simple-panel.c and why new panels
should be added there rather than described in dts. [1] Doesn't
explain that.

[1] http://sietch-tagr.blogspot.com/2016/04/display-panels-are-not-special.html

Regards,
Vasily


> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
