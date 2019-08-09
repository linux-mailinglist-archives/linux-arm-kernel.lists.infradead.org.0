Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1C58760B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 11:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vXUgImN+ytOcDsRxLbjrDz9Y49gykj9ThDVsobs0+20=; b=oGvMDYD9NYsyJM
	t0ZakoFlc/Krp5XeLaG1qDl9Quo+pK6EQdRhZ/+986/JNDOLXEQd4UUQGcKgokyHHn7fNPfWq6ZuS
	O2Owek/8jXFBNMlX9rY7AH40qTOOsoZ+S78Ug4NkNhxgpML1QpClMoF4gSQOoLn+572dr52p11XjW
	WXL/H/vDwZ7DRnNUxWeitmsGA+x9HbopMVz1LGaX65a2e0SjamEEMJOK0/DwrhM8w0XNqV/wGPhev
	iqtT/y/T2rJaohHX3y9Bu5vBG9bmwnowsgsCYoUZ0I+c3emGC0NldHetZ3f3Zf1OM+T1nVpvsLmJh
	Rx5WeVqApJ7hDzxOtE8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw1Gf-0003Kt-Be; Fri, 09 Aug 2019 09:33:01 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw1GS-0003Ib-Bx
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 09:32:50 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id BB13ED63BD;
 Fri,  9 Aug 2019 11:32:35 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id RBewaE-fcJTT; Fri,  9 Aug 2019 11:32:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id F3F7CD63C0;
 Fri,  9 Aug 2019 11:32:11 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id gOklHG2eGQZ3; Fri,  9 Aug 2019 11:32:08 +0200 (CEST)
Received: from furthur.local (ip-37-188-137-236.eurotel.cz [37.188.137.236])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 88485D6350;
 Fri,  9 Aug 2019 11:32:07 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH 00/19] Initial support for Marvell MMP3 SoC
Date: Fri,  9 Aug 2019 11:31:39 +0200
Message-Id: <20190809093158.7969-1-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_023248_559062_2F66DB60 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
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
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

this patch set adds support for the Marvell MMP3 processor. MMP3 is used
in OLPC XO-4 laptops, Panasonic Toughpad FZ-A1 tablet and Dell Wyse 3020
Tx0D thin clients.

Apart from the adjustments in mach-mmp/, the patch makes necessary
changes to the irqchip driver and adds an USB2 PHY driver. The latter
has a dependency on the mach-mmp/ changes, so it can't be submitted
separately.

The patch set has been tested to work on Wyse Tx0D and not ruin MMP2
support on XO-1.75.

Lubo



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
