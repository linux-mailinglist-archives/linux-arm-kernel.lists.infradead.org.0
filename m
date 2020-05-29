Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E47E1E7C23
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 13:42:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IpoyVhpJj07wJ/Ar8cjEtGmrFPS2pPC3C721ttg6EKc=; b=N568IFLx3qpXTY
	ylRRhztZmAlOTfepmTmMnxsZ45470Wr1DgpEkNULjqivFgQXxYBNpYja1Skw7/kaC0ioxMKeilyXn
	J1OkkGjoOkXZbTApF+0MjdrW5XaZoniiVgJSj/Krc8kAtfmZU/wceZYYlIm1b+uCAwXFgFZ2GQAeU
	1iLZpqqRTO/GrqszOdmADtbqds+tDFNoIwV2WKCgJ35xOPvTiSeanq48c6paPIyxJG0D7kezIqPmc
	/ORWjx0TCNuBnzII+yA2xHFFPykiackogJRKyVprFiQreBDXbPN1dAxRKpC6x91QSDMFG5C8anJHs
	G2+ph3vVwWDEB8rsUDDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jedOq-0005nH-Pe; Fri, 29 May 2020 11:42:08 +0000
Received: from coyote.holtmann.net ([212.227.132.17] helo=mail.holtmann.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jedOc-0005mU-6W; Fri, 29 May 2020 11:41:55 +0000
Received: from marcel-macbook.fritz.box (p4fefc5a7.dip0.t-ipconnect.de
 [79.239.197.167])
 by mail.holtmann.org (Postfix) with ESMTPSA id 5BCECCECD3;
 Fri, 29 May 2020 13:51:27 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH v2] Bluetooth: btmtkuart: Improve exception handling in
 btmtuart_probe()
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <20200529022726.917826-1-hslester96@gmail.com>
Date: Fri, 29 May 2020 13:41:40 +0200
Message-Id: <73E264F7-E38D-4E25-A78F-DC13A89B00A0@holtmann.org>
References: <20200529022726.917826-1-hslester96@gmail.com>
To: Chuhong Yuan <hslester96@gmail.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_044154_387224_710C601B 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Johan Hedberg <johan.hedberg@gmail.com>, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org,
 "open list:BLUETOOTH DRIVERS" <linux-bluetooth@vger.kernel.org>,
 Markus Elfring <Markus.Elfring@web.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chuhong,

> Calls of the functions clk_disable_unprepare() and hci_free_dev()
> were missing for the exception handling.
> Thus add the missed function calls together with corresponding
> jump targets.
> 
> Fixes: 055825614c6b ("Bluetooth: btmtkuart: add an implementation for clock osc property")
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
> Changes in v2:
>  - Modify description.
>  - Add fixes tag.
> 
> drivers/bluetooth/btmtkuart.c | 14 ++++++++------
> 1 file changed, 8 insertions(+), 6 deletions(-)

patch has been applied to bluetooth-next tree.

Regards

Marcel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
