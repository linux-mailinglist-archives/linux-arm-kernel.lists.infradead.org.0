Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CDC1A020E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 02:02:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=65MZHr+PINy52ZH63gd5Mi+noL+nLxaMBqslI/QzaCw=; b=kvsOV8tHz+0A3v
	k9X0ZkA5Eu9JCkrlZyUBqhWC+ANgaIdn0JXYWPO+NmiRb+Vh6cC2uK/0fuO3cfNEEnorKWQjFXd7k
	SQHJckgYPxJhDpxR7avdDiylLVM3EWlvMwIdxqbkhJTeIWyFlqohcullfcLrIe7Yjse+CnZRVxOTO
	3XiKSlSoIoY+yy+ykmVg/5Gk+qpmjK+ouUDI0I3SElcdubofzbk8eXJSOiRMDLbq44jtbSPMfzKBj
	8rW4p5In5FN+4pBZ/s9TSjxbwlPNigA8C0IWIBzJFquOw2HPvMjidH4ACf3OvztFE0R8XueYDM1cK
	jIRRd74QnHiWphRJDV3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLbhB-0005wp-Rt; Tue, 07 Apr 2020 00:02:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLbgU-0005W5-PH
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 00:01:46 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E2DBF20857;
 Tue,  7 Apr 2020 00:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586217701;
 bh=lkt+7S1Ws1ROwt9EaaZvt6jC5ZwlXMV5tjkHz4O490Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=up45+1zgqT0AUhldGKDvNulHckuAXdD2u2wHYQLbK60XsmKS7jb4XXt/PgJamN5jp
 tT5OkG0XXI/UFkOaR8z14iyBxWppnBAP9o2WUJ0PsXzVKgoKwD6Zma7biVnI2QSsiH
 bmqD/llMnt7KNhXLln6nqbZ98NoMhMiN1hh+aHLM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 34/35] i2c: st: fix missing struct parameter
 description
Date: Mon,  6 Apr 2020 20:00:56 -0400
Message-Id: <20200407000058.16423-34-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200407000058.16423-1-sashal@kernel.org>
References: <20200407000058.16423-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_170143_187327_A3AC39DE 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Wolfram Sang <wsa@the-dreams.de>,
 Patrice Chotard <patrice.chotard@st.com>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Alain Volmat <avolmat@me.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alain Volmat <avolmat@me.com>

[ Upstream commit f491c6687332920e296d0209e366fe2ca7eab1c6 ]

Fix a missing struct parameter description to allow
warning free W=1 compilation.

Signed-off-by: Alain Volmat <avolmat@me.com>
Reviewed-by: Patrice Chotard <patrice.chotard@st.com>
Signed-off-by: Wolfram Sang <wsa@the-dreams.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/i2c/busses/i2c-st.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/i2c/busses/i2c-st.c b/drivers/i2c/busses/i2c-st.c
index 54e1fc8a495e7..f7f7b5b64720e 100644
--- a/drivers/i2c/busses/i2c-st.c
+++ b/drivers/i2c/busses/i2c-st.c
@@ -434,6 +434,7 @@ static void st_i2c_wr_fill_tx_fifo(struct st_i2c_dev *i2c_dev)
 /**
  * st_i2c_rd_fill_tx_fifo() - Fill the Tx FIFO in read mode
  * @i2c_dev: Controller's private data
+ * @max: Maximum amount of data to fill into the Tx FIFO
  *
  * This functions fills the Tx FIFO with fixed pattern when
  * in read mode to trigger clock.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
