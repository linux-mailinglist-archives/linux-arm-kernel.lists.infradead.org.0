Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0109A1F070F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 16:40:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3huFj1F+mSDnlhWGlQwXlNuuLNEZxGi7Oy4nayJvo94=; b=XAWrivZg7E0VhI
	9ybN3x2ae832zBqEAAEd4tRdFKKJyuixr/yr95JT2BkxEpAnJxBa6N7NasEk2x4xoNJMacKOTmGOR
	89Ae6NPQT7QOyALuA9KcRzz0KN0u9QspdRDaTXq+sr2Bd/4qhKkXMjTwPJ1I3Hn3x4UAfbJrTxHow
	rmMpKAKcSWS2oyfShP7k9nDJmbofgzKfk4Wbaf7Ts0QcuInRAu1/wEwToXhHfEh0H9p2Kaa9Z9kEG
	d68tF30XdMdayMntQFOPniDaf1hAPHRwRqoLPqkakPDlEGpsHaybfYQb1wYNDkeBMoEhIt/3ZarBa
	Xr6ZKybcxG9flHqEoasw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhZzn-0003K9-8U; Sat, 06 Jun 2020 14:40:27 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhZzg-0003JC-FN
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jun 2020 14:40:21 +0000
Received: by mail-pj1-x1044.google.com with SMTP id q24so4063012pjd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 06 Jun 2020 07:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GViXQwsNEwMzcKcJUYZl3xJtNTykxgzCsHdmjAqnXzM=;
 b=U8EF7ZmU68bm6zgAlAT6va0itAw+yn7pqzGaR6lzefVRdBE90I+MY1MyKRGrMdF4J1
 tlz2GtQZQgQTgerWFadVanqNRVkv5QUXj2k8JefG2gE37LpMzpa9W7DbkLvE9Y+YTc8/
 cpdywjazBlA5QQOX8zkupnKCslJ3paREnivZGtOUzF9B0UGVvZ5txtuTdLW71gj3NnH4
 AursxlNtmjwYVBUtlB+jRfFtofhgGHL8ujRgf1Zk1vwrCcoMg+ODHyldb+kmm1xJMBdY
 3ABVTW0XgITYHSDpPH+T/Db6aitPYIwzSOnyeQacqrOUj8yodlIZPk1sZCWf789oetj2
 yREw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GViXQwsNEwMzcKcJUYZl3xJtNTykxgzCsHdmjAqnXzM=;
 b=WT6RghP355skCJqJq4u73k0/5YaZX1RFh2gtOfaKRmZgZ6Tvk5R4cCvXndh7fCT6pg
 IoknNLxjEFRQ+MuHmFV4CQPZefQrTb2GEQ9vXrFGxs8CWyetdHVXbwGhX9hlupQj6aOe
 WN9tPnDTr8g8zWm92Se5s3FLy2mQHKrCOnEJnnVKYKMIXS+MIybiRQhuc+mDZIJs8pOn
 8qM24XotWZVSrOr+w4hv0XRdDN17bNU9YJ9d3YnchzhKuJ9REzDcSqyUUMVjqv03lVqM
 SxSPlhyxnBh2kqgMKwBNegEJIz1XTEVW2oessYEhLACCG4+hT+/op2p9SmT9B7Pdiqzh
 g9vQ==
X-Gm-Message-State: AOAM53104/omptrQ7lL9e99vK+2TNtnMdwBZEzu2uS62U0q+vaHZO8B1
 /gqPS5KNvCmP+hkluYtr3mM=
X-Google-Smtp-Source: ABdhPJwAZdRXZcOhokbba7h2K+v6sjLwBsq0222yXcaZc3mexqnhURCKrPM8PwjXVsswJo3Wzq92hw==
X-Received: by 2002:a17:902:bb86:: with SMTP id
 m6mr13971345pls.341.1591454418202; 
 Sat, 06 Jun 2020 07:40:18 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id h6sm2511935pfq.214.2020.06.06.07.40.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Jun 2020 07:40:17 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] serial: mxs-auart: Use devm_ioremap() to fix the missing undo
 bug
Date: Sat,  6 Jun 2020 22:40:08 +0800
Message-Id: <20200606144008.2869652-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_074020_514858_AB263975 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hslester96[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [hslester96[at]gmail.com]
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
Cc: linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Jiri Slaby <jslaby@suse.com>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver calls ioremap() in probe, but it misses calling iounmap() in 
probe's error handler and remove.
Replace ioremap() with the devm version to fix it.

Fixes: 47d37d6f94cc ("serial: Add auart driver for i.MX23/28")
Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/tty/serial/mxs-auart.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/tty/serial/mxs-auart.c b/drivers/tty/serial/mxs-auart.c
index b4f835e7de23..b3e16fd72eaf 100644
--- a/drivers/tty/serial/mxs-auart.c
+++ b/drivers/tty/serial/mxs-auart.c
@@ -1679,7 +1679,7 @@ static int mxs_auart_probe(struct platform_device *pdev)
 	}
 
 	s->port.mapbase = r->start;
-	s->port.membase = ioremap(r->start, resource_size(r));
+	s->port.membase = devm_ioremap(&pdev->dev, r->start, resource_size(r));
 	if (!s->port.membase) {
 		ret = -ENOMEM;
 		goto out_disable_clks;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
