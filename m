Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C98D96634
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 18:22:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PdCNT6iB3KhOeqvSH3VdBfIlTqKM2qmdjzhFXHMr5dU=; b=fExpZvryehgfbK
	01M5UL/PtKmu9e1kdDAYlYm00RPdXFfmxekX1dLmVv3biZGsgk8eEVtfkM7EEZRid6TnL86kiaDMA
	Ayh0bXwLaQ7Xki12aVchZZcZTSfJ1sQBJKvZUnKCzXBxHzkvgv1kHGFp2tetAlxdkBJNUAVL3/q1Q
	vUAJREOq9FPBZRIODtbcK16t/zCloWh0/kfZmnoH9CO06GrDAO8CDzk53SVbetnPcwxSWOlMUbBCI
	LxqWYa4kny0BwpY1GY2OzfHk4jD1TIZO1R/IHMEUlNb3WzpZMGwfymL4vcgcYEP/Ri/YsZH/rOSQf
	Gco96Na3V+KoSn/8bPEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06u5-0003JW-4F; Tue, 20 Aug 2019 16:22:37 +0000
Received: from gofer.mess.org ([2a02:8011:d000:212::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06ts-0003Iy-CQ
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 16:22:26 +0000
Received: by gofer.mess.org (Postfix, from userid 1000)
 id AA2A961074; Tue, 20 Aug 2019 17:22:16 +0100 (BST)
Date: Tue, 20 Aug 2019 17:22:16 +0100
From: Sean Young <sean@mess.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: media: Add YAML schemas for the
 generic RC bindings
Message-ID: <20190820162216.7uol2jy5i3swhxi5@gofer.mess.org>
References: <20190819182619.29065-1-mripard@kernel.org>
 <20190820081525.celdosrgcvwoq6e7@gofer.mess.org>
 <20190820095028.l74sfvipwjjla6kq@flea>
 <CAL_JsqJaH5wWCHScNZwN4jxqY5Q_UDZLnq+fghecBgYY752Lnw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJaH5wWCHScNZwN4jxqY5Q_UDZLnq+fghecBgYY752Lnw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_092224_561986_42A8C563 
X-CRM114-Status: GOOD (  14.24  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 10:52:29AM -0500, Rob Herring wrote:
> On Tue, Aug 20, 2019 at 4:50 AM Maxime Ripard <mripard@kernel.org> wrote:
> > On Tue, Aug 20, 2019 at 09:15:26AM +0100, Sean Young wrote:
> > > On Mon, Aug 19, 2019 at 08:26:18PM +0200, Maxime Ripard wrote:
> > > > From: Maxime Ripard <maxime.ripard@bootlin.com>
> > > >
> > > > The RC controllers have a bunch of generic properties that are needed in a
> > > > device tree. Add a YAML schemas for those.
> > > >
> > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > >
> > > For the series (both 1/2 and 2.2):
> > >
> > > Reviewed-by: Sean Young <sean@mess.org>
> > >
> > > How's tree should this go through?
> >
> > Either yours or Rob's, I guess?
> 
> Sean's because there are other changes to
> Documentation/devicetree/bindings/media/sunxi-ir.txt in -next.

Good point, I'll take them.

Thanks
Sean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
