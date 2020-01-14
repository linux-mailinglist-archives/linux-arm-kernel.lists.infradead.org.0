Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E0713B061
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 18:05:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=giiSFLZdMioergwDt1QPkZCrvZWccJekEQwiphNRv1U=; b=vA79z7R31qQ/f3
	ne3vPqlfsXQ/BdB+QIpLfZIZvVJ1YGhTEtYl755hVDszhT0oHCfTS8zOjyx3E1uMlxVcJMpmG+nAU
	Dbwcd2JQb/zDOABYKUXBtRfsRnnmC7962ZYLVhE1TI392Rhs0Ay5s55n53faeCA8r2FIbxyygoKJv
	h/bA16qjV+TD/OCmemrhjJ3RP5LD4NVmh9kXbHpQhyfgFlrjWj+JzoDN6L9wprDKbwP6NGhOlSJFW
	gU2LKM3Rl97px7Ym+fazleI7ohE3wzUmBEPVizdYeTcAJrEvSINa5KdL2UWvPIkr4wGFz6rCn/eDg
	c9uiZjyiugoR4Ngl/P4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irPdG-0008Kw-4N; Tue, 14 Jan 2020 17:05:34 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irPcD-0006X4-Ri; Tue, 14 Jan 2020 17:04:35 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id ABEABC000A;
 Tue, 14 Jan 2020 17:04:16 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: Re: [PATCH v2] mtd: rawnand: atmel: switch to using
 devm_fwnode_gpiod_get()
Date: Tue, 14 Jan 2020 18:04:14 +0100
Message-Id: <20200114170414.1115-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200104202723.GA16116@dtor-ws>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 43686bf336fa55052faf18a40313c849b3e25d9f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_090430_052371_A14D5E05 
X-CRM114-Status: UNSURE (   5.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 2020-01-04 at 20:27:23 UTC, Dmitry Torokhov wrote:
> devm_fwnode_get_index_gpiod_from_child() is going away as the name is
> too unwieldy, let's switch to using the new devm_fwnode_gpiod_get().
> 
> Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
