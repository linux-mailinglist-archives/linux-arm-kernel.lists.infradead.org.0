Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D264C1E9DDB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 08:06:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ecjdb9cu6BkvFWt6G60DICx8bSYp8sWofQ0UhxMR1Vs=; b=V+Y7t7b74yZ1vN
	aiwK+YcDyPvGh0Rdt7a4gK/I8tIcxdMqO+ijoQLIMhqf2Txg6p6yjic7UKuGiWNQ4Apb8F1X/wm/Y
	F5ssg6iBCYiMgO+uM1KviLHfoxYJ4r25sSSoibRIT7nyYZ+ERDqByLXAXtzvc1PbUZ52pxH3647Kv
	k0/sASMua2m56adlugRbJOES6kjt49LzdOiupqHNEQe1fFDksoyElIKn2LHNy+Xpj9HR7KCcXktax
	EEMtAO/7fJqMXxGnL8zgVFJVbp1JGZ5nPWnHURaVcpV9vdQdZir6dFf5H31Rb/zJIiChEkKAfOqCq
	WLcdoBAPAgOzxIKlYx6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfdas-0006YD-33; Mon, 01 Jun 2020 06:06:42 +0000
Received: from coyote.holtmann.net ([212.227.132.17] helo=mail.holtmann.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfdaa-0006WI-8d; Mon, 01 Jun 2020 06:06:25 +0000
Received: from marcel-macbook.fritz.box (p5b3d2638.dip0.t-ipconnect.de
 [91.61.38.56])
 by mail.holtmann.org (Postfix) with ESMTPSA id 08EB0CED01;
 Mon,  1 Jun 2020 08:15:56 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH v1] Bluetooth: btmtkuart: Use serdev_device_write_buf()
 instead of serdev_device_write()
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <1590767936-21907-1-git-send-email-zijuhu@codeaurora.org>
Date: Mon, 1 Jun 2020 08:06:08 +0200
Message-Id: <E9312CE8-DEA4-4F63-97AE-B8A9FF338F61@holtmann.org>
References: <1590767936-21907-1-git-send-email-zijuhu@codeaurora.org>
To: Zijun Hu <zijuhu@codeaurora.org>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_230624_451470_B63790A7 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Johan Hedberg <johan.hedberg@gmail.com>, Sean Wang <sean.wang@mediatek.com>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:BLUETOOTH DRIVERS" <linux-bluetooth@vger.kernel.org>,
 mka@chromium.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zijun,

> serdev_device_write() is not appropriate at here because
> serdev_device_write_wakeup() is not used to release completion hold
> by the former at @write_wakeup member of struct serdev_device_ops.
> 
> Fix by using serdev_device_write_buf() instead of serdev_device_write().
> 
> Signed-off-by: Zijun Hu <zijuhu@codeaurora.org>
> ---
> drivers/bluetooth/btmtkuart.c | 3 +--
> 1 file changed, 1 insertion(+), 2 deletions(-)

patch has been applied to bluetooth-next tree.

Regards

Marcel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
