Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4F8FAE20
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:10:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIhvnlTdz2WAXQEBU2NrDiSE7QWju0TfknNqcR6lXLQ=; b=tVtZHT0ozu2QS9
	XVVRdpEp7pBwlFfzvyWawR8oOtBSFP5XnUhjB+HHMq39cyq12L7OvonGMP78lv45y/7rO9L21cozn
	eOhBzYfSUQM/m8ZAKwhPYyHf0KwhT24MgFYuqcQYtQqWmxS49kGX8MtT5u+Zx9wmAoN68a6Gsv3NF
	cac5reuO4Koz3/ody/zU4tVV5suI2mp81b9HKiW6pJZQm3a7PU32lj338a04XHv53ZEifDW0MeV6Q
	U+/yG3A55oqnv0O8BUj96gzoSKn7pVs+l6CpxQQBOMHEE9RVXE4ME4lVJZvXim8HdJPUrS8ag9rR0
	bNk7yaqoZo6V1FGn7QeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUpbD-0005F1-9C; Wed, 13 Nov 2019 10:10:07 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUpaw-0005AU-QE
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:09:53 +0000
Received: from windsurf (lfbn-tou-1-421-123.w86-206.abo.wanadoo.fr
 [86.206.246.123])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 2DC7010000F;
 Wed, 13 Nov 2019 10:09:38 +0000 (UTC)
Date: Wed, 13 Nov 2019 11:09:38 +0100
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH 01/13] ARM: at91: Kconfig: add sam9x60 pll config flag
Message-ID: <20191113110938.5e7ee5cd@windsurf>
In-Reply-To: <1573635069-30883-2-git-send-email-claudiu.beznea@microchip.com>
References: <1573635069-30883-1-git-send-email-claudiu.beznea@microchip.com>
 <1573635069-30883-2-git-send-email-claudiu.beznea@microchip.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4git49 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_020951_006157_9D2E3CD6 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 linux@armlinux.org.uk, ludovic.desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 Nov 2019 10:50:57 +0200
Claudiu Beznea <claudiu.beznea@microchip.com> wrote:

> Add SAM9X60's pll config flag.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>

You should explain why this flag is needed, because as it is, this flag
is here, then selected in your PATCH 2/13, but not used anywhere.

Could you clarify this ?

Thanks,

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
