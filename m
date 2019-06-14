Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A20445901
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 11:42:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=juBID3ZPG83Tlo+ekIbMMccQwa0ORcFfTpdmLsS4cjk=; b=kXWPR5oM+ABsXe
	OcF4eYxWT6UVhuxxtSjvdclrEMvgjGFAmv+dxkzgnHqWkQeSdNqjtEVOUtvxnFkXRzRlvszSWjSfj
	7QQWSkIhTgN7IfoQUR/r2jF7te8AIOo50/FC/fXH6yl8ojNVofXxceRe6cYSeuuyzymyWA5kXRrno
	KdB6syQqNjX/T3BtCkGj+c7ZARd0aD7jH5F6yDOos2ud+/AqVyp3QfXWFtzfq1qcruORKxmdS4dNR
	xiP7c5MrpcqOcYld9JuD3BqzG8DL0cWN8QXmy/2kwwhxpyw08gQ63g4Li2iFKHNbeRmi5LkaMT1o2
	gShGvM4VwMqQrbYLDt3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbiir-00036g-3e; Fri, 14 Jun 2019 09:42:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbiiZ-00035x-Qy; Fri, 14 Jun 2019 09:41:57 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbiiX-0004CH-2f; Fri, 14 Jun 2019 11:41:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Configure BT_HOST_WAKE as wake-up
 signal on veyron
Date: Fri, 14 Jun 2019 11:41:52 +0200
Message-ID: <1649765.SGRQ98Vtau@phil>
In-Reply-To: <CAD=FV=U-BOF79yJOW7S1CRudTqDN0BA8Ur3mJfg3C-+8P6fCew@mail.gmail.com>
References: <20190605204320.22343-1-mka@chromium.org>
 <20190606175654.GQ40515@google.com>
 <CAD=FV=U-BOF79yJOW7S1CRudTqDN0BA8Ur3mJfg3C-+8P6fCew@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_024156_021540_803B202D 
X-CRM114-Status: GOOD (  25.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Freitag, 7. Juni 2019, 01:34:32 CEST schrieb Doug Anderson:
> Hi,
> =

> On Thu, Jun 6, 2019 at 10:56 AM Matthias Kaehlcke <mka@chromium.org> wrot=
e:
> >
> > On Thu, Jun 06, 2019 at 12:46:03PM +0200, Heiko Stuebner wrote:
> > > Am Mittwoch, 5. Juni 2019, 23:52:00 CEST schrieb Heiko St=FCbner:
> > > > Am Mittwoch, 5. Juni 2019, 23:24:27 CEST schrieb Matthias Kaehlcke:
> > > > > On Wed, Jun 05, 2019 at 11:11:12PM +0200, Heiko St=FCbner wrote:
> > > > > > Am Mittwoch, 5. Juni 2019, 22:43:20 CEST schrieb Matthias Kaehl=
cke:
> > > > > > > This enables wake up on Bluetooth activity when the device is
> > > > > > > suspended. The BT_HOST_WAKE signal is only connected on devic=
es
> > > > > > > with BT module that are connected through UART.
> > > > > > >
> > > > > > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > > > > > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > > > > >
> > > > > > Housekeeping question, with the two Signed-off-by lines, is Dou=
g the
> > > > > > original author, or was this Co-developer-by?
> > > > >
> > > > > Good question, it's derived from Doug's patch for CrOS 3.14 and
> > > > > https://crrev.com/c/1575556 also from Doug. Let's say I did the
> > > > > porting to upstream, but I'm pretty sure Doug spent more time on =
it.
> > > > >
> > > > > Maybe I should resend it with Doug as author and include the orig=
inal
> > > > > commit message, which has more information.
> > > >
> > > > It's just that the first Signed-off should be from the original aut=
hor.
> > > > (And the sender the second)
> > > > In the co-developed-by case (see Kernel documentation) the order
> > > > doesn't matter.
> > >
> > > Holding off on this patch till we could clarify the authorship.
> >
> > I'd say let's attribute the authorship to Doug. FTR, the original
> > downstream Chrome OS patch is https://crrev.com/c/278190.
> >
> > Not sure if the information in the commit message of the original
> > patch is relevant for the upstream version, in the end it seems LPM
> > was never implemented, so it should be sufficient to say what is
> > actually done today.
> >
> > In summary, I propose to take the patch with the current commit
> > message, with Doug as the author. Heiko, can you change the authorship
> > or should I send a new version?
> >
> > Doug if you have objections or want updates in the commit message
> > (yours tend to be more verbose ;-), holler.
> =

> It's fine with me.

while I did just want to apply this one with the relevant adaptions,
I didn't get to it early enough and Matthias was faster with his v2
fixed patch, so I've applied that one instead ;-)

Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
