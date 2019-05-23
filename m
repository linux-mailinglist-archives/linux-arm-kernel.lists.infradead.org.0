Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5998427637
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 08:51:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wBcLNMJiv6NhtHKm8KbuiTRQocpx2sJ3xgC+0M+GXvA=; b=GyQ
	iz4aDcZfQBLy/sozmFVXQiQuxk2+fuKLFX9xJKsPSpdv0KKyGgPILs2eKwGgjwoZFfbkwvXPj8TzH
	PTlmk2q8JbKTvf2/4a9K/SHx0srGui6d4QtZJZxv1Uj1bplTyVeJXmkICvsPSWzm7IIA/a2Xjh1JA
	tjR4H/JPe0zCEieLnfCNbHySb/ihXDvFl0J5M/JYB4B88kP9g0ayfw8PhCX4I3zTw9fxuL5BxUhb4
	l1FGtCFBCHdolnkvYSIBb8E7S2/yF9Vgjyt+9k15N5K3A3LBLZO4haL8V3JWjOKWqEjlBwPQNiLq/
	oDJYwTj+ggXFRGqXQKX1k/VD2qXMr3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hThZ0-0007ny-1v; Thu, 23 May 2019 06:50:54 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hThYs-0007n1-PP
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 06:50:48 +0000
Received: by newverein.lst.de (Postfix, from userid 2005)
 id 2719D68B05; Thu, 23 May 2019 08:50:13 +0200 (CEST)
From: Torsten Duwe <duwe@lst.de>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Icenowy Zheng <icenowy@aosc.io>, Sean Paul <seanpaul@chromium.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Harald Geyer <harald@ccbib.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 0/6] Add anx6345 DP/eDP bridge for Olimex Teres-I
Message-Id: <20190523065013.2719D68B05@newverein.lst.de>
Date: Thu, 23 May 2019 08:50:13 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_235046_976334_36E08816 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

left over from my previous Teres-I device tree series, here comes
the revised anx6345 node for the Teres-I, along with the driver.
The innolux panel attached to it is already known; pinebooks can be
enabled on top of this series, once their panels are introduced.

Changes from the respective previous versions:

* the reset polarity is corrected in DT and the driver;
  things should be clearer now.

* as requested, add a panel (the known innolux,n116bge) and connect
  the ports.

* renamed dvdd?? to *-supply to match the established scheme

* trivial update to the #include list, to make it compile in 5.2

	Torsten
  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
