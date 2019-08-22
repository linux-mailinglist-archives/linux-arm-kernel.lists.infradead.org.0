Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE61E98F67
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 11:33:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vfVwJUqqz+sxPiwcNdhgmTFys3JIYf5lLyHtoodCCVA=; b=D7FB0ef+At6A2H
	VIqkIuKYXiELG5UNMKK9UkNO4nsQHbNBNFk3fOYSjnz1ezSuPQtxtoZPwWU8tjrLBpgf3jqLPPI+h
	i5H4YjpN0K2UZ8j/SqCdyOgfOmpFVSGNoTIk41vRbefZMb43rcUEuhTQoQEU48R7/UqnmSolqmgy3
	gjiWIW9NTlwQxz6vekgq2xGuDmXtOXg8HqSdnrHYmqZ4IoZTI8aqgffxI2bKSQaqqIUirfxQVye9d
	KBOPZ7TiC/3j0EbGbja2KaRuBWUT93tf4aJeVPZrwk3gfLO+aX3dI/xAX6IpdiBlOv1vqiUF5wYZl
	8wIkKCjxZM5XaQSZ+BYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0jTR-00069G-Si; Thu, 22 Aug 2019 09:33:42 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0jTC-00068G-L4
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 09:33:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id A6343D756F;
 Thu, 22 Aug 2019 11:33:19 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id RK4SDxnr7J-A; Thu, 22 Aug 2019 11:33:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 74E51D749F;
 Thu, 22 Aug 2019 11:27:25 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id b_wlen16TW9p; Thu, 22 Aug 2019 11:26:46 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 2B844493E8;
 Thu, 22 Aug 2019 11:26:46 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH v2 00/20] Initial support for Marvell MMP3 SoC 
Date: Thu, 22 Aug 2019 11:26:23 +0200
Message-Id: <20190822092643.593488-1-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_023326_851565_6A9C3EB9 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

this is a second spin of a patch set that adds support for the Marvell
MMP3 processor. MMP3 is used in OLPC XO-4 laptops, Panasonic Toughpad
FZ-A1 tablet and Dell Wyse 3020 Tx0D thin clients. 

Compared to v1, there's a handful of fixes in response to reviews. Patch
02/20 is new. Details in individual patches.
 
Apart from the adjustments in mach-mmp/, the patch makes necessary 
changes to the irqchip driver and adds an USB2 PHY driver. The latter 
has a dependency on the mach-mmp/ changes, so it can't be submitted 
separately.
 
The patch set has been tested to work on Wyse Tx0D and not ruin MMP2 
support on XO-1.75. 

Thanks
Lubo



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
