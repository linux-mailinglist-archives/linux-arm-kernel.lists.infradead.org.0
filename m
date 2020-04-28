Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F6D1BBA5D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 11:51:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rNzLMg5AOvi/l01u5g55izUQZPMPka1+6A8+6OTGtIk=; b=m/J/PDtiuwGQRc
	1uSHwWIoOhvRhC4PfV+y49MbyQ8qNRQTfeOorx36Y71hHsYPzpJjXWclYIuf2mp+INfvZeeJo1KLs
	83GqEcOSgle91RXEWRADBFg2dOZ9DSno8MjW1tkMd7yAnXTuceUEInqZkSmA6gkVTPUGf4Vg0KYxD
	La9USgtr2YNgHlwP9FjY8v4eDF82CoyMb8N7xj7kTPXSH2GQr51DshvUmI7NzGaCr4YJJeYWUDLIV
	GEmPxC6oTGKOv9AOCQ/5xB2MArnRWEqlR7Hb6EanbUJER09tVX44V7nh9GxtW3WMSmA8x1ccigb9i
	GpdGCx0ZNWUZa1JceF8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTMty-0008Op-Ax; Tue, 28 Apr 2020 09:51:42 +0000
Received: from coyote.holtmann.net ([212.227.132.17] helo=mail.holtmann.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMtk-0008H0-JF
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 09:51:31 +0000
Received: from marcel-macbook.fritz.box (p4FEFC5A7.dip0.t-ipconnect.de
 [79.239.197.167])
 by mail.holtmann.org (Postfix) with ESMTPSA id B4A75CECEB;
 Tue, 28 Apr 2020 12:01:04 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [DO-NOT-MERGE][PATCH v4 3/3] arm64: allwinner: Enable Bluetooth
 and WiFi on sopine baseboard
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <20200425155531.2816584-3-alistair@alistair23.me>
Date: Tue, 28 Apr 2020 11:51:24 +0200
Message-Id: <417EB5CB-F57F-4B7E-A81E-9ECE166BE217@holtmann.org>
References: <20200425155531.2816584-1-alistair@alistair23.me>
 <20200425155531.2816584-3-alistair@alistair23.me>
To: Alistair Francis <alistair@alistair23.me>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_025128_783194_39E00AB1 
X-CRM114-Status: UNSURE (   8.01  )
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
Cc: devicetree@vger.kernel.org, Johan Hedberg <johan.hedberg@gmail.com>,
 netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 mripard@kernel.org, linux-bluetooth <linux-bluetooth@vger.kernel.org>,
 wens@csie.org, alistair23@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alistair,

> The sopine board has an optional RTL8723BS WiFi + BT module that can be
> connected to UART1. Add this to the device tree so that it will work
> for users if connected.
> 
> Signed-off-by: Alistair Francis <alistair@alistair23.me>
> ---
> .../allwinner/sun50i-a64-sopine-baseboard.dts | 29 +++++++++++++++++++
> 1 file changed, 29 insertions(+)

so I am bit confused on what to do with this series? Do you want me to apply a subset of patches or do you require specific reviews or acks?

Regards

Marcel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
