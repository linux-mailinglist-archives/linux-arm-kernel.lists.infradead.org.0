Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24AFE14CB95
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 14:41:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mBoFA6RgP+SPsAfdUsdeW/dZOOgX3uQNYeHabwFKgMU=; b=iHA
	9GVgFEFJYkIvZnAVln7wGYOTDsqY02+iJHPHMZuyie7D/SqL1YepI3xLJCYJr+ar3BUItZ5dwpmky
	RBH3yIEDcZ+hKUY8fuZdERkiSeuy8eJjtrOgIl/fzzd7+BY6l78GuGvnxWH9z+USgNT0oi5kofLI2
	xoO5eoeeuOul1gQHS/hM+qbFPhVN8xILEpHK+a5yYKmeaVH4Gq/7CGOLB2CUV86AjXRACVifb8TEx
	zwp4BaDd7j1UDxu7oWKa1MAtvWQcTf/vZKzOhQaibVYoXsDlu+FTqhMlat+NPOXCjoHimbtJfDY9g
	On/biF7vbqfiyAvTLHDmJhnjnoiNagw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwnax-0004T4-VX; Wed, 29 Jan 2020 13:41:27 +0000
Received: from mail-wr1-x464.google.com ([2a00:1450:4864:20::464])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwnao-0004SY-2e
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 13:41:19 +0000
Received: by mail-wr1-x464.google.com with SMTP id d16so20228708wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Jan 2020 05:41:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=flowbird.group; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=LKAhm5fgnCM0f4ool+EzZtuKWekhU6ZjNjBMoV+cWXA=;
 b=PMb22boP3CV1EyVw1dzQscsMHDiMAsnTPfS80IVQS+kzcT55qoid2iPIWveJzgs1t4
 TbtnBge7nIGnp4Yk2L58XyNcE5vaEbZl1icPp8g9mvE81iNUQZBIHdx03Jzb/O19uYjR
 lm5tgSgLRJIZdcb3ZXqucs9cpbiJJRec7cNEBeh0jLIxESZPSN8rxqivDbcu6lNgT6m8
 EKHj9I3QJSf453pGCmysJSM7LOkU3+B4onEA/w/xWvFxxVK/Ae5fYCEq182LGRJECnU3
 0h/9iSOseqfUelq0iw0GKK3tuawCrHhslneda3rv+roe31BI9cd5MLZAPyj17bhP1n0R
 gIew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LKAhm5fgnCM0f4ool+EzZtuKWekhU6ZjNjBMoV+cWXA=;
 b=btkIeMVXA8pONHJRspVc1upQ3GFojCLPS2RecpXpq9DjfzCEKVve702j0gBt1Dvxmx
 uBAj5BAbl7tRnlCF21udLhJGawroutioAjE36gtKzhgKIp2N2d3bejvIuKTouKscIcw9
 KNycriNnd8HhUQuCVNUYoVArz4ciabyU2379fRBHNx6dTXZwVeNiLfZCKfQnvKVqqvzr
 bYN/upoUHk1aXvTu0M/H1tLc131NcX2tKLGLAn5J1GhXWAtP5eFnYG/vJ3rS97dbiFb+
 GcbCuQ/dceNyMXUIwYS9y33ch/hBsZLj99OW3yqAMtzlaperBKO90PnUyej4p7iw8YS0
 PZ7g==
X-Gm-Message-State: APjAAAUiGIEhnbcw+YuwFSRvV47rMseLKix3X6i3Ecr3XiRJ9kE293Fc
 72DReP1GbliBHdm/xHRR7jsEjBwE70fMCP8VLq9TKufnwaEp
X-Google-Smtp-Source: APXvYqyFQ98FYktk+97oLQYaNelIlb9g5MjMxMu3Mz01RbmXwDkqAxJuAuvFxeN+z7MX3XHkYpJc92dWUgQm
X-Received: by 2002:adf:97d6:: with SMTP id t22mr35073052wrb.407.1580305275875; 
 Wed, 29 Jan 2020 05:41:15 -0800 (PST)
Received: from mail.besancon.parkeon.com ([185.149.63.251])
 by smtp-relay.gmail.com with ESMTPS id r3sm33567wro.56.2020.01.29.05.41.15
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Wed, 29 Jan 2020 05:41:15 -0800 (PST)
X-Relaying-Domain: flowbird.group
Received: from [10.32.51.186] (port=60422
 helo=PC12445-BES.dynamic.besancon.parkeon.com)
 by mail.besancon.parkeon.com with esmtp (Exim 4.71)
 (envelope-from <martin.fuzzey@flowbird.group>)
 id 1iwnak-0003Z2-Rk; Wed, 29 Jan 2020 14:41:14 +0100
From: Martin Fuzzey <martin.fuzzey@flowbird.group>
To: dmaengine@vger.kernel.org
Subject: [PATCH] dmaengine: imx-sdma: fix context cache
Date: Wed, 29 Jan 2020 14:40:06 +0100
Message-Id: <1580305274-27274-1-git-send-email-martin.fuzzey@flowbird.group>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_054118_124994_412D9EDB 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:464 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Robin Gong <yibin.gong@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is a DMA problem with the serial ports on i.MX6.

When the following sequence is performed:

1) Open a port
2) Write some data
3) Close the port
4) Open a *different* port
5) Write some data
6) Close the port

The second write sends nothing and the second close hangs.
If the first close() is omitted it works.

Adding logs to the the UART driver shows that the DMA is being setup but
the callback is never invoked for the second write.

This used to work in 4.19.

Git bisect leads to:
	ad0d92d: "dmaengine: imx-sdma: refine to load context only once"

This commit adds a "context_loaded" flag used to avoid unnecessary context
setups.
However the flag is only reset in sdma_channel_terminate_work(),
which is only invoked in a worker triggered by sdma_terminate_all() IF
there is an active descriptor.

So, if no active descriptor remains when the channel is terminated, the
flag is not reset and, when the channel is later reused the old context
is used.

Fix the problem by always resetting the flag in sdma_free_chan_resources().

Fixes: ad0d92d: "dmaengine: imx-sdma: refine to load context only once"
Cc: stable@vger.kernel.org
Signed-off-by: Martin Fuzzey <martin.fuzzey@flowbird.group>

---

The following python script may be used to reproduce the problem:

import re, serial, sys

ports=(0, 4) # Can be any ports not used (no need to connect anything) NOT console...

def get_tx_counts():
        pattern = re.compile("(\d+):.*tx:(\d+).*")
        tx_counts = {}
        with open("/proc/tty/driver/IMX-uart", "r") as f:
                for line in f:
                        match = pattern.match(line)
                        if match:
                                tx_counts[int(match.group(1))] = int(match.group(2))
        return tx_counts

before = get_tx_counts()

a = serial.Serial("/dev/ttymxc%d" % ports[0])
a.write("polop")
a.close()
b = serial.Serial("/dev/ttymxc%d" % ports[1])
b.write("test")

after = get_tx_counts()

if (after[ports[0]] - before[ports[0]]  > 0) and (after[ports[1]] - before[ports[1]] > 0):
        print "PASS"
        sys.exit(0)
else:
        print "FAIL"
        print "Before: %s" % before
        print "After: %s" % after
        sys.exit(1)
---
 drivers/dma/imx-sdma.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 066b21a..332ca50 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -1338,6 +1338,7 @@ static void sdma_free_chan_resources(struct dma_chan *chan)
 
 	sdmac->event_id0 = 0;
 	sdmac->event_id1 = 0;
+	sdmac->context_loaded = false;
 
 	sdma_set_channel_priority(sdmac, 0);
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
