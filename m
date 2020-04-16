Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 248741AD0E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 22:13:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TB3K6+lArGsLYL6F+wrooDYeuPsedgy1KsznTNJxqU0=; b=oJP
	rrztzHteZ8uvtWbJ+Kyoy9xDktlINwDyCaXzNSsI423CoT+36o4sAolE4bmEobYn3Y9bhOk+mtgcy
	ty5NEoRRotu8sGVAcSWGEE6rCj7wjFPBbxYRonUJXiqlyKIoP4HKusOKXc4IVhjo6Gp5zG1eHBV24
	P0vfk5SiX569FcieCiAwSEabzouZTl1VwwFcCDhPhTNVuLaOM6HzpcWZ+AyMybMTrXabp5CKy/Y0G
	L8aEtfTHMPKIUVYmU8VmKMrp2c5Nvt2zLFfS06sDTEVs2C5OP+GwnApOd/X9T4NBXhEk92HwDzIJb
	NoYWM2ZNFamTvmHeyGqz2GdWjBuAoZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPAsf-0002sj-2i; Thu, 16 Apr 2020 20:13:01 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPAsR-0002rn-OG; Thu, 16 Apr 2020 20:12:51 +0000
Received: by mail-pj1-x1042.google.com with SMTP id kb16so35046pjb.1;
 Thu, 16 Apr 2020 13:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Mdld2TSwrjCL8Or77q1eiGOrXbCr1Q7AW1LhQ3P05Rc=;
 b=piToHmqFYmxGYFI6kkctoj0yPB6CmVdJ7fphEavw333j7ESiN53+qiLpXnZvicXJkQ
 85ToigFFDTr1nIYIg7h1VlWK13kGdzU5MHn/Oh/LBvKJ2JKtxnb+oPLuMa4sSV+nZBH9
 ld73fRG/aX01WjHlN3jyavvVA1NNnJrfXnGiPxMSGSG5TvDWlQKpibcmqBiEJh4Hmq6y
 YGcJOh2q2YfLRLRXheZ2Uwqh0BRo1cLTUqBwGlpHSgWSrtOUwShiKz/tm3rVr2RTYU5Z
 DNdRpDw2blipRU2ty/T1ycIm602EY3ftk2CrfuIFxynfmHtn8Hn8yUpV0pcc45FLixtN
 v0xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Mdld2TSwrjCL8Or77q1eiGOrXbCr1Q7AW1LhQ3P05Rc=;
 b=d4pwpKJQiYh3L4UoSc87NYwePm4WLpeqDisWF5Qrw9FPnwlF6TRd5K9DeJFBxWEWkb
 OiRMQjvJ+ch8U3m6/TXFwiFijqoda4BaQtoJMbpd+6VoGdsFZ4gJQ5lVuf1yQGqPz84B
 7cNKoZoJIsbOokrlPsRSklNQ9WYIDRnby5/e3R0WlGb/GHxrA2+ZEiRpO2iXk+YRSoKi
 xgM3sGGiOhGcixi7RrDXPUN9KQlhab4JKWZ3Ixd5ig/MUVl+GtjFUJsZlpVB0z5F28Zm
 fl0Qq8fWTSbE08UF147KJ4RvmTpGiucJBd+fwT8jwlpP3Hhzrnhfz/PyWgooQctOKblb
 tjsA==
X-Gm-Message-State: AGi0PubyWqyuyboMUkDUOkIhGTZDVpdefZYuxUJ9AwP/jjQ9k8Idr8WV
 AVXa9AiJtwmkHkdHz8sSJkU=
X-Google-Smtp-Source: APiQypKEttWXOit8+KDLINXPhywlevr4IIeRhvp5hmcCHiBvLxo8mCagomH4UYOK4EBYVpv6BXP0Dg==
X-Received: by 2002:a17:90b:97:: with SMTP id bb23mr39362pjb.59.1587067966438; 
 Thu, 16 Apr 2020 13:12:46 -0700 (PDT)
Received: from localhost.localdomain ([223.235.106.208])
 by smtp.gmail.com with ESMTPSA id m14sm3490316pje.19.2020.04.16.13.12.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 Apr 2020 13:12:45 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, gregkh@linuxfoundation.org,
 manivannan.sadhasivam@linaro.org, afaerber@suse.de
Subject: [PATCH] tty: serial: owl: add "much needed" clk_prepare_enable()
Date: Fri, 17 Apr 2020 01:41:57 +0530
Message-Id: <1587067917-1400-1-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_131247_788683_640E91BF 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-actions@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, Amit Singh Tomar <amittomer25@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

commit 8ba92cf59335 ("arm64: dts: actions: s700: Add Clock Management Unit")
breaks the UART on Cubieboard7-lite (based on S700 SoC), This is due to the
fact that generic clk routine clk_disable_unused() disables the gate clks,
and that in turns disables OWL UART (but UART driver never enables it). To
prove this theory, Andre suggested to use "clk_ignore_unused" in kernel
commnd line and it worked (Kernel happily lands into RAMFS world :)).

This commit fix this up by adding clk_prepare_enable().

Fixes: 8ba92cf59335 ("arm64: dts: actions: s700: Add Clock Management Unit")

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
 drivers/tty/serial/owl-uart.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/tty/serial/owl-uart.c b/drivers/tty/serial/owl-uart.c
index 42c8cc9..c149f8c3 100644
--- a/drivers/tty/serial/owl-uart.c
+++ b/drivers/tty/serial/owl-uart.c
@@ -680,6 +680,12 @@ static int owl_uart_probe(struct platform_device *pdev)
 		return PTR_ERR(owl_port->clk);
 	}
 
+	ret = clk_prepare_enable(owl_port->clk);
+	if (ret) {
+		dev_err(&pdev->dev, "could not enable clk\n");
+		return ret;
+	}
+
 	owl_port->port.dev = &pdev->dev;
 	owl_port->port.line = pdev->id;
 	owl_port->port.type = PORT_OWL;
@@ -712,6 +718,7 @@ static int owl_uart_remove(struct platform_device *pdev)
 
 	uart_remove_one_port(&owl_uart_driver, &owl_port->port);
 	owl_uart_ports[pdev->id] = NULL;
+	clk_disable_unprepare(owl_port->clk);
 
 	return 0;
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
