Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D583D2F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:49:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=phOgSc+4W0kry7U1MIdTSQ4FW1P1A8SaSbS0VofYuz4=; b=pog6JgaDzdJQoU
	hkJtO8TxUt5T2JBNBxffNTi12QY+foOv0yHW41esbaKHZE2cdoaHPxYgCczL6RiI36wUnY8jjiDUk
	TXe0xdIX6pagHqkMBa87SA4YV3Q4BXNy8Xa1Z3/pPyxo/n2yW2ea6mu+M5BYkC2ZK283Ay6zSgyne
	l4AA7h7QOIW0eDSu9NAgunUGeiJqz5N72PUoXJCgGe9Z7vZGYnlrwFCMSGRUrcfUsW3nJXT1fCsm9
	1XlKRZ56PJArovf5kBL18rM+UzhLbS/gjZkwmgiV+ifkQnNcPbmdm6kwHzSU37EgtgpDrcJI4y1BP
	w3LXtr0DFDOWkblxkDFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajxH-0001p5-Ei; Tue, 11 Jun 2019 16:49:03 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hajwf-0001Rl-Gj
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:48:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:Reply-To:Cc:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IdZ8MhLjTQ3+GmMDTWNfRq37QvDLfsqCS7lnrzKdDxw=; b=rOHlwKZfvwMPWkj197Y71Ok63g
 enp+nSpl5Ht+HL5Trdje8qlYfKzR0HOrDg6Q7jBKhPYnmd892qyAX9HovGQiFUqk6Y43mboza36/9
 mj+cZNruqD/H120hC7J2Fj12iO7KzI1kGzglFfpKZrTYFyY36IzaCbU/ruTlXgcWfgT9+vU6etpTk
 bfmZgNN6oT/nTZI+RTvGO0ziXeXlAichK0cDhywNj9X3EppzIhSR21G6Y5ocXVf28GCvlQLkgVbXp
 wT/YbCQ7LMpl6odexl2KnznYavNUcnL8CKWFXBrdbjSxafleJj0Ms/qCESuCwpd+0kHeHjmAYJp7c
 zEVYtvgg==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:55468 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hajwZ-0006sl-9Q; Tue, 11 Jun 2019 17:48:19 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hajwY-0003Aj-OD; Tue, 11 Jun 2019 17:48:18 +0100
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] i2c: acorn: fix i2c warning
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hajwY-0003Aj-OD@rmk-PC.armlinux.org.uk>
Date: Tue, 11 Jun 2019 17:48:18 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_094825_602365_43F2DEDC 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Acorn i2c driver (for RiscPC) triggers the "i2c adapter has no name"
warning in the I2C core driver, resulting in the RTC being inaccessible.
Fix this.

Fixes: 2236baa75f70 ("i2c: Sanity checks on adapter registration")
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/i2c/busses/i2c-acorn.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/i2c/busses/i2c-acorn.c b/drivers/i2c/busses/i2c-acorn.c
index f4a5ae69bf6a..fa3763e4b3ee 100644
--- a/drivers/i2c/busses/i2c-acorn.c
+++ b/drivers/i2c/busses/i2c-acorn.c
@@ -81,6 +81,7 @@ static struct i2c_algo_bit_data ioc_data = {
 
 static struct i2c_adapter ioc_ops = {
 	.nr			= 0,
+	.name			= "ioc",
 	.algo_data		= &ioc_data,
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
