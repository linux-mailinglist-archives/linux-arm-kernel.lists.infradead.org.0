Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7007268283
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 05:18:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nG75YUKP1yx8VRV0Vm8U1SRPLZNFpeuv5vj96znnUFU=; b=qBS
	NKcQ91wbOFPLk+468P/PuYw7It8WEHo9/+1ZYSmIlW3VuDonkXQpJqd2z54AqQsw9UUQ+Jf1QuZkL
	ml2iBHxu5uj85xGtEvcsETCGyyVYVX6xxWF1ESkH41vpspKXe+mzu6T+2SxICVPaQNw2XJFNYk1ss
	QSxQ2GBFPM4tmUT/axuJf7xyPoRbmOKK1lF5ejXKJa0HszggK6t0VxOswXKupaX0Bm+ZW7GIQ44X0
	GxQMw7oHauOXA2jpcgciO5Yt88vcJFiClGsF641QYHwfu9DVdRfuqGd6KCXHEAt6jYsNKFSywHeYk
	gGry1dFmpFsQTiapVO3ozQx1WmTmPwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmrUr-0002Nm-QE; Mon, 15 Jul 2019 03:17:49 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmrUU-0002Lk-Ql
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 03:17:28 +0000
Received: by mail-pf1-x444.google.com with SMTP id m30so6729159pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jul 2019 20:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=kb+x/QfQL3MhHmQt7WtgTjEDw3oPpOHTLxeQqt85Sps=;
 b=FyizgDvESf0WxQAwT0SmLWw0LWmQhG/GqMsWQbLcchozulcZDeW8RA646zEZU/iBe1
 FvEPS84PQqkYYTQHzFA6nqMqQYL1K0VT9Cu4ymMkQAgEnXgg+4aKO8wZ+QSc6Wbwiuj6
 fj898vDRCSR6rWtvaKmLXD8+9VGWXrVaGh5mGtkvNCAiDevV0YNRB91r+mOJONBdL5Iu
 R0go95hfRJSrk3iAmNQYQP/bteZP5Uzbwh6R/sGJB6HP2lARLbRiHJyZ4AGVLCD1fzSd
 OkUVmmKxpRsAUbzu1NOJUkqd6/11nkXA/0caghE2Bx/9xAHYXlCxQNp1HYPVln8u+C+C
 ytzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=kb+x/QfQL3MhHmQt7WtgTjEDw3oPpOHTLxeQqt85Sps=;
 b=tK17c0EL3IeM1lvIz1UszZjpKmpvsUPjjyK9FiofCTajgLb2gxhm6O+IWqUKqvsuFn
 7BtO1I0FZI0ZfHqkrreRjvXFaVpNqjglfAYCj4SIZVYJHjVVM4LDBqfpQJ+XOX6vWc9s
 ATA1wxdnjZbTzaXTMIE6c2a00m45b/OwPf+nHzsbnT58fhAgKtXky6ydAToPCkC2iItI
 vm1d1wIvTt2esJD7x8xEd7nFV4Q8dVVFj4rEuQy6q3UOOkvMhxOHnYCfr663RQqfpBJg
 ZQXxwcN4vBh39QuGCPV8fz7LWLeYShJpCi4SgAPdHxYAFnw4Bdl4s/0eXq8cHgFtMMR9
 1q7Q==
X-Gm-Message-State: APjAAAX+ra7UbPgokEDjeP402kVEmIX7Io1w870l78uRaeNw8nNIJRWZ
 paQ7Isw4slOvsPIRdKuTIws=
X-Google-Smtp-Source: APXvYqz6wZgg8ErMw/22BWmPi/6AZiUkRYU00MUkLmykKZJoUOrdWhNoxhMCglQZxUTYlB3JBQU/Mw==
X-Received: by 2002:a65:6081:: with SMTP id t1mr24882534pgu.9.1563160642510;
 Sun, 14 Jul 2019 20:17:22 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id r9sm21256921pjq.3.2019.07.14.20.17.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 20:17:22 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [PATCH v3 03/24] dmaengine: imx-sdma: Remove call to memset after
 dma_alloc_coherent
Date: Mon, 15 Jul 2019 11:17:16 +0800
Message-Id: <20190715031716.6328-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_201726_874071_993A34F2 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (huangfq.daxian[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Fuqian Huang <huangfq.daxian@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 dmaengine@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In commit 518a2f1925c3
("dma-mapping: zero memory returned from dma_alloc_*"),
dma_alloc_coherent has already zeroed the memory.
So memset is not needed.

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
Changes in v3:
  - Use actual commit rather than the merge commit in the commit message

 drivers/dma/imx-sdma.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 4ec84a633bd3..decfb9e9648a 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -1886,10 +1886,6 @@ static int sdma_init(struct sdma_engine *sdma)
 	sdma->context_phys = ccb_phys +
 		MAX_DMA_CHANNELS * sizeof (struct sdma_channel_control);
 
-	/* Zero-out the CCB structures array just allocated */
-	memset(sdma->channel_control, 0,
-			MAX_DMA_CHANNELS * sizeof (struct sdma_channel_control));
-
 	/* disable all channels */
 	for (i = 0; i < sdma->drvdata->num_events; i++)
 		writel_relaxed(0, sdma->regs + chnenbl_ofs(sdma, i));
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
