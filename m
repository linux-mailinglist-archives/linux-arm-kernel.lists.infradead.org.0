Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B04213E2DF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:58:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCNJCRzy5t4O7bGPMGmTRQEA4mdI3fRdckpMAjVobPs=; b=ucVGuLZkTLEvXx
	jgDT1Qb7RAVc9UqADathb7yZ3y0Cmd6BXjA1D0CObU+Jfa01UOwH+Q/y3bFuUOc6xbEs9IgASTIgR
	weOEwc2HSzH2Cb/NZt8mgVi//2wkOKzVDKaoV8geipmDWYLG6nfQYF7naLhICjTOXsxbamFctDH9+
	WVHwQP3dKDstYDMa6UD/XZQah2qkHtQ6NHqORk2EaWaQs/34wY8q5Nhrfx7JK7+mjhzvg00t8UXA/
	2zQT/r1DLsJmaeEno0c64nQHS02yi6FfKEIcUUN0HzkSuTH/Xgpu0z5uOxVobUWkCEG+JtF5qpMm5
	82WAR/hZnAv4QOjjK+0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8Tm-0006Cg-H6; Thu, 16 Jan 2020 16:58:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8Pa-00014M-Ex
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:54:30 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E520C205F4;
 Thu, 16 Jan 2020 16:54:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193665;
 bh=RMwBhtID1ZR23r2EdzrTkqoYL6Uyu35oemre08fq+6Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=s9ZpPNfcYUjEDG2SHa6o2yVUAz1UpCjwk1QUgSVIorDUiFQKH9F95WRNlS3QcSeNG
 mOWaXI4X3W1EPgbMjwyfioPRMEqcRjzagCYKxsJg7pmFhkWvbNtlgDgNGID5YLf2ev
 gDOkDuxg6/iD/OWSBqtMKp9fF/BDfVcUB/xNCuXg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 192/205] soc: aspeed: Fix snoop_file_poll()'s
 return type
Date: Thu, 16 Jan 2020 11:42:47 -0500
Message-Id: <20200116164300.6705-192-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_085426_554069_E4F21354 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, Joel Stanley <joel@jms.id.au>,
 Olof Johansson <olof@lixom.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>

[ Upstream commit a4e55ccd4392e70f296d12e81b93c6ca96ee21d5 ]

snoop_file_poll() is defined as returning 'unsigned int' but the
.poll method is declared as returning '__poll_t', a bitwise type.

Fix this by using the proper return type and using the EPOLL
constants instead of the POLL ones, as required for __poll_t.

Link: https://lore.kernel.org/r/20191121051851.268726-1-joel@jms.id.au
Fixes: 3772e5da4454 ("drivers/misc: Aspeed LPC snoop output using misc chardev")
Signed-off-by: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Reviewed-by: Joel Stanley <joel@jms.id.au>
Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
Signed-off-by: Joel Stanley <joel@jms.id.au>
Signed-off-by: Olof Johansson <olof@lixom.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/soc/aspeed/aspeed-lpc-snoop.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/aspeed/aspeed-lpc-snoop.c b/drivers/soc/aspeed/aspeed-lpc-snoop.c
index 48f7ac238861..f3d8d53ab84d 100644
--- a/drivers/soc/aspeed/aspeed-lpc-snoop.c
+++ b/drivers/soc/aspeed/aspeed-lpc-snoop.c
@@ -97,13 +97,13 @@ static ssize_t snoop_file_read(struct file *file, char __user *buffer,
 	return ret ? ret : copied;
 }
 
-static unsigned int snoop_file_poll(struct file *file,
+static __poll_t snoop_file_poll(struct file *file,
 				    struct poll_table_struct *pt)
 {
 	struct aspeed_lpc_snoop_channel *chan = snoop_file_to_chan(file);
 
 	poll_wait(file, &chan->wq, pt);
-	return !kfifo_is_empty(&chan->fifo) ? POLLIN : 0;
+	return !kfifo_is_empty(&chan->fifo) ? EPOLLIN : 0;
 }
 
 static const struct file_operations snoop_fops = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
