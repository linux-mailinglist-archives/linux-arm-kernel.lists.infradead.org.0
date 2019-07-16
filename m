Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E33C36A64E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 12:18:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hRAvm3pFlV0wTn30NNZA3zCNL9S3IY2QBbCJS8tDvcM=; b=ZHeFKS+2bdWbQy
	VjFA/CseWvjVzRk55tIXZAx05HtOmXPnqew09ZdoIhk3iWwW3J4jHbdICdaYkfqCEKsCMAQ4XGoQl
	Rlfdh6bbjKuNxvfeRtQFRudbgSAqCvMoqZsOK4hX9FERjfApTE0oG6nOxJ8KnOq7eAeUM98MnhxvJ
	CrdJiUikoUjqKrxDYayFmjyQdWh+UTvm5NVjzbd/1oCKHfqBJLD6nDtZXU9vCRNS/Lwt+Iba3QsYH
	EzHuyNpKEq8IG+L/HtuB81+WAdbAJhXTQnJw68Fm3R1aXovc/jwn3m/IvfiCIVcPA06x7brkXp+i9
	Vr3JG0lfDT/XIn5j+smQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnKXC-0002x6-Sx; Tue, 16 Jul 2019 10:18:10 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnKWz-0002wO-LP
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 10:17:59 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id C768224003A;
 Tue, 16 Jul 2019 10:15:25 +0000 (UTC)
Date: Tue, 16 Jul 2019 12:15:24 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] ARM: dts: at91: Avoid colliding 'display' node and
 property names
Message-ID: <20190716101524.GM4732@piout.net>
References: <20190516225614.1458-1-robh@kernel.org>
 <20190520145830.GE3274@piout.net>
 <CAL_JsqK0piWGQBeqcOceF=fSX4vSW7_vyv0qAAxz-bg25qEVow@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqK0piWGQBeqcOceF=fSX4vSW7_vyv0qAAxz-bg25qEVow@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_031757_860018_5AC8C760 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/07/2019 15:45:24-0600, Rob Herring wrote:
> On Mon, May 20, 2019 at 8:58 AM Alexandre Belloni
> <alexandre.belloni@bootlin.com> wrote:
> >
> > On 16/05/2019 17:56:14-0500, Rob Herring wrote:
> > > While properties and child nodes with the same name are valid DT, the
> > > practice is not encouraged.
> >
> > I don't see anything mentioning that in the devicetree specification. I
> > think this is something you should add if you don't want that to happen
> > again.
> 
> I suppose, but I prefer tools to enforce it.
> 
> >
> > > Furthermore, the collision is problematic for
> > > YAML encoded DT. Let's just avoid the issue and rename the nodes.
> > >
> >
> > Or maybe you should fix the tool ;)
> 
> You mean the YAML and JSON specifications because the problem is it is
> not valid YAML? (I think YAML allowed it at one time, but it is
> deprecated) The only way to fix it in the tool would be to define some
> way to handle the collision like renaming properties and then undoing
> that.
> 
> > Do you plan to enforce it at some point? How close are you?
> 
> Soon as this patch is merged. There's a switch in parsing tools to
> disallow the collision, so it will be an error instead of a warning.
> 
> > > Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> > > Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > > Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> > > Cc: linux-arm-kernel@lists.infradead.org
> > > Signed-off-by: Rob Herring <robh@kernel.org>
> >
> > Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> 
> Is someone going to apply this?
> 

I'll apply it for the next cycle, sorry about that.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
