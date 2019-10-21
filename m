Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 162ABDF0CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 17:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1fnN08sOvfkQw8NBKaFk4NIA0add3X5Px5BRRbrq4Y=; b=cNnYwAtzVYqfpp
	4B5XHuljtEil9GfVsT+zkDDosDBcfY2y8cPifpiP1k52BtIBb7rIhJkvzU4BD/BczTLzkG7dp8IKR
	aTaYn5udE5H7GDQA+iyfS2ocVtDK1XLaCQL/qgMWiwEhU4Oc1bXLAP+jn3KifT2y4zM8nhn6HKA60
	0pq45xA67mBfT+LFKbIX3PS2jWas9/Va3i1LLjQ0zuQzvUEfVuMpWNXf94lC4iAx+aUoAPSekAYfL
	CCKRiSiyB7UUtOXYWrckSrb53ygzrD6hFn1qNegXk1MY6n9sRbI8z07n+NsofZu+W+Qfjt2+fkNrb
	GOcj7pa5+x3xizVw47hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMZFr-0002x3-5a; Mon, 21 Oct 2019 15:05:55 +0000
Received: from coyote.holtmann.net ([212.227.132.17] helo=mail.holtmann.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMZFh-0002vy-Tp
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 15:05:47 +0000
Received: from marcel-macbook.fritz.box (p4FEFC197.dip0.t-ipconnect.de
 [79.239.193.151])
 by mail.holtmann.org (Postfix) with ESMTPSA id 75FB9CECA3;
 Mon, 21 Oct 2019 17:14:33 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3594.4.19\))
Subject: Re: [PATCH V4 01/10] bluetooth: hci_bcm: Fix RTS handling during
 startup
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <1570375708-26965-2-git-send-email-wahrenst@gmx.net>
Date: Mon, 21 Oct 2019 17:05:32 +0200
Message-Id: <F722AF4D-B6C8-495E-B4F0-B4DD113C1938@holtmann.org>
References: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
 <1570375708-26965-2-git-send-email-wahrenst@gmx.net>
To: Stefan Wahren <wahrenst@gmx.net>
X-Mailer: Apple Mail (2.3594.4.19)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_080546_109780_65F968DD 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.132.17 listed in list.dnswl.org]
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
 Florian Fainelli <f.fainelli@gmail.com>,
 Johan Hedberg <johan.hedberg@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 linux-bluetooth@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan,

> The RPi 4 uses the hardware handshake lines for CYW43455, but the chip
> doesn't react to HCI requests during DT probe. The reason is the inproper
> handling of the RTS line during startup. According to the startup
> signaling sequence in the CYW43455 datasheet, the hosts RTS line must
> be driven after BT_REG_ON and BT_HOST_WAKE.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---
> drivers/bluetooth/hci_bcm.c | 2 ++
> 1 file changed, 2 insertions(+)

patch has been applied to bluetooth-next tree.

Regards

Marcel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
