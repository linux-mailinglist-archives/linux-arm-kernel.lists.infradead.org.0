Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EA2711DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 08:26:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVz5Sla4BmLp9B4JsBNp0VTOz18d0fS08OzpiItktSw=; b=qBXt2B9IemXdeP
	xhVx8Ktg/GZjBrPkFa8bW2A7HEId3QGIdxbEnrcjiLhQsm6UMLlOe67sINjcmDvZaRqnDGL4U6Yhw
	OJ1XbLnPskbZ+fpzS+0/VOewtlLdoCoiOKAVq9yyZiCFMQ4tbtTWgfnNq4agpyxjhXdpeImvr777l
	2SensoNAVsK5YFNTCct1z8D68I5kd9EqW9BjxwLC+Da+NlCJdqIwcyv5jKVHFk+/Mc0sGJU3TXHGy
	qxtqOfiygBsO+q19MWy9XP03YeCxmdDWzYHJVG0lOf1dIiQRHtLD3/Dkg2pwjgofinesETiH9epFg
	d7SkRGqqjU4Tc4dmuL9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpoFk-0007vO-1G; Tue, 23 Jul 2019 06:26:24 +0000
Received: from gofer.mess.org ([2a02:8011:d000:212::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpoFT-0007u7-0o
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 06:26:08 +0000
Received: by gofer.mess.org (Postfix, from userid 1000)
 id 5807060439; Tue, 23 Jul 2019 07:25:57 +0100 (BST)
Date: Tue, 23 Jul 2019 07:25:57 +0100
From: Sean Young <sean@mess.org>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v5 04/13] media: rc: sunxi: Add RXSTA bits definition
Message-ID: <20190723062557.hnbi6hgrg4ecawkn@gofer.mess.org>
References: <20190607231100.5894-1-peron.clem@gmail.com>
 <20190607231100.5894-5-peron.clem@gmail.com>
 <20190610095243.7xwp4xhauds22qzw@flea>
 <CAJiuCcfyjGTBbsjZQYj2p3KD6O-WaXhFe5NZrnKQwJYACmatUw@mail.gmail.com>
 <20190715121244.2vrsw6qa4fgp72fn@gofer.mess.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715121244.2vrsw6qa4fgp72fn@gofer.mess.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_232607_203129_612A7868 
X-CRM114-Status: GOOD (  10.74  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, Jul 15, 2019 at 01:12:45PM +0100, Sean Young wrote:
> On Sun, Jul 14, 2019 at 04:32:22PM +0200, Cl=E9ment P=E9ron wrote:
> > Hi Sean,
> > =

> > You acked the whole v3 series but this patch has been introduced in v5
> > could you ack this one too?
> =

> Acked-by: Sean Young <sean@mess.org>

So who's tree should this series go through? It seems mostly device tree.
Alternatively I'm happy to try it get merged via the media tree.

Thanks
Sean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
