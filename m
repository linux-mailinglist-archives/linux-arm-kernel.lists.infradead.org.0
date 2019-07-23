Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F14B771454
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:49:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xjVv9zGabVCqu3SeRA3uDxL4kPQsh4YDyNsGh49WR00=; b=mPX20xamjqdJnS
	h3XoGa1t/pu2Ki3RrPNRNMeAcs4G44JuF4AM8NFVV6JmDFbwgDWPdmLDcXVGPk3NOp3ORkqE1zoyv
	6myWAvCYfYxhPlFW/7sjdG1VcK/barFRL+3XCCpkc6ZIAyLhgKL7YarFYd3IQRHJCguytSrGiwKz4
	z0PSQoqt5Qt4ZFbJUf0DqXNdCB+zuk0kP2Oznv9CWP+PrQfpLWwOWdsnbmpcesKHX6yDNLErMBpMi
	NqrJASDZKPjipMzedim20k9BmQB8UIo7sabAZ/hbUmnQQrPDZAjlMyMiD4c9G/8GavzadeWVavTDG
	wprhgloCv1xveEXBnyTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqTo-0002Kp-S7; Tue, 23 Jul 2019 08:49:04 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpqTa-0002KB-Ae
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:48:51 +0000
X-Originating-IP: 86.250.200.211
Received: from bootlin.com (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id E827EFF809;
 Tue, 23 Jul 2019 08:48:37 +0000 (UTC)
Date: Tue, 23 Jul 2019 10:48:49 +0200
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 03/19] phy: mvebu-cp110-comphy: Add SMC call support
Message-ID: <20190723104849.7158f634@bootlin.com>
In-Reply-To: <20190627095104.22529-4-miquel.raynal@bootlin.com>
References: <20190627095104.22529-1-miquel.raynal@bootlin.com>
 <20190627095104.22529-4-miquel.raynal@bootlin.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_014850_526757_B55B8713 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Nadav Haklai <nadavh@marvell.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Miquel,

Thanks for this, I gave it a quick test and it looks good.

On Thu, 27 Jun 2019 11:50:48 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

>From: Grzegorz Jaszczyk <jaz@semihalf.com>
>
>Keep the exact same list of supported configurations but first try to
>use the firmware's implementation. If it fails, try the legacy method:
>Linux implementation.
>
>Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
>[miquel.raynal@bootlin.com: adapt the content to the mainline driver]
>Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

[...]

>+	dev_warn(priv->dev,
>+		 "Firmware could not configure PHY %d with mode %d (ret: %d), trying legacy method\n",
>+		 ret, lane->id, lane->mode);

Small nit, you've got your parameters in the wrong order in that
dev_warn.

Besides that,

Tested-by: Maxime Chevallier <maxime.chevallier@bootlin.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
