Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E62183004
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 13:14:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R5qY326lD08xw5e78mVl22ghatYH6jp0ZSQH9dicRco=; b=rWVWcwmUxCY0VD
	yC7oBC/Dkcy5qQNzEYsDSPwm7Eb5p7Mxd/KvvJe3JxxR8V5wL59fOkUjDbxQqyhjt9QQVA9vDf2wo
	+IByFiSaYN8gC0CP1mMbZx8mO0Zs5JddtQngO2T1V/gpjNEtchXLuj15yd0QL43tn2hNw2BM7bzQd
	6oljDDbh7WQv253iM67+Xox3baCPJzr2cLYpr3ZZVzpR5+N1Qh0yLfoUgzBKWhyddLa+KqFnCR1Eu
	RSbCu6MJ41DyXS77L64NASGa/ypPzfGCc3TlExGdkDORK6H0Hdf+I9Ao3YcQrSubJSP3pRg1aKjAl
	0xhs3rP7dzGjKc12eJYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCMjP-000140-AY; Thu, 12 Mar 2020 12:14:31 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCMjI-00013S-8M
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 12:14:25 +0000
Received: by mail-pj1-x1041.google.com with SMTP id y7so2489955pjn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 05:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KLGqjo2Pbyp0L4oH5SdHTAc+fFuuPfjZO2AGlFDtlHs=;
 b=dWUc1NI1L8enMUDwDEz9I3rxuIr2RJ9QzspTGcARsuYyzTdb7R8vAMLVr3qdL4Pe/G
 JSXtUsTXjr8uYWalLj4lm2EjpVXdf7RvXImFc36KD3Kr1I53+fCKyCzDj5za/5ddoZJ9
 NIHVl4zzCpAra6mos9utiidoMUTl+lqYMROzWXHiMyqvhn0m+E/zh0WxramiVW55II5W
 v28YQ3rv2jnjXTGREpJL3sWJs0oLxfFwBmXjWAUH7nCJ6dJ2+HR+0Np7UorcaJJ7HQLI
 o/unZqhiP9nYS7oTncmPF0o5OFv4QuWHP+6ieqqYQOLXoDMwP0cp8Fu3hntsgbIsIz2d
 Q8tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=KLGqjo2Pbyp0L4oH5SdHTAc+fFuuPfjZO2AGlFDtlHs=;
 b=XY14bTNoQ6UfPPIXY/Ggzmm0ktxuxhdLQOILxJ25JwjP03uVfGJtCCGaXQGKhfcZKB
 Wy77hVLa9syKOKaWEiXeaIdWVWf0t1APNT/wdhcLR7sJyKKhOiTL9i+17UyupF1OGQTz
 QdKzu3oPfNeqzZ2yRd75WPBtk5CZsRxXtcXqpXJZFEU9BWe5AKXj+oALRUVxjTgiSjb2
 nqhPDs0EjrlzINJ5Fn27NudMfx6QaDjSikuhujfZY+SiJq6Ln7PXMqI1rcgzOMvhskfK
 nO/3xii0w1O610cAyzxZKYMjevRhz4eJsKndTWch6LQLmhiXhR7obMAVrSjIie9sGA/1
 exuA==
X-Gm-Message-State: ANhLgQ39DQ8h3px9552tfOHtifUEKdkOm/BgaghgANUtpsrd9zBwIFhU
 jk9i9OKflFv++mQKjOBhu6cyY1JKHos=
X-Google-Smtp-Source: ADFU+vsw+EfzNY/wTEESeWvDprQ08xBi0sD3cWjQdPqtqWYy0EZEXJD5ldslcZhzmtNk8045vleS9g==
X-Received: by 2002:a17:90b:1a8b:: with SMTP id
 ng11mr3662856pjb.173.1584015262789; 
 Thu, 12 Mar 2020 05:14:22 -0700 (PDT)
Received: from localhost.localdomain ([45.124.203.14])
 by smtp.gmail.com with ESMTPSA id x71sm2615640pfd.129.2020.03.12.05.14.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 05:14:22 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Andrew Jeffery <andrew@aj.id.au>
Subject: [PATCH] soc: aspeed-lpc-ctrl: LPC to AHB mapping on ast2600
Date: Thu, 12 Mar 2020 22:44:13 +1030
Message-Id: <20200312121413.294384-1-joel@jms.id.au>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_051424_296398_EBF9EFE4 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: 3.7 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [45.124.203.14 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ast2600 disables the mapping of AHB memory regions by default,
only allowing the LPC window to point to SPI NOR. In order to point the
window to any AHB address, an ast2600 specific bit must be toggled.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 drivers/soc/aspeed/aspeed-lpc-ctrl.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/soc/aspeed/aspeed-lpc-ctrl.c b/drivers/soc/aspeed/aspeed-lpc-ctrl.c
index f4ac14c40518..142cb4cc85e7 100644
--- a/drivers/soc/aspeed/aspeed-lpc-ctrl.c
+++ b/drivers/soc/aspeed/aspeed-lpc-ctrl.c
@@ -22,6 +22,9 @@
 #define HICR5_ENL2H	BIT(8)
 #define HICR5_ENFWH	BIT(10)
 
+#define HICR6 0x4
+#define SW_FWH2AHB	BIT(17)
+
 #define HICR7 0x8
 #define HICR8 0xc
 
@@ -33,6 +36,7 @@ struct aspeed_lpc_ctrl {
 	resource_size_t		mem_size;
 	u32		pnor_size;
 	u32		pnor_base;
+	bool			fwh2ahb;
 };
 
 static struct aspeed_lpc_ctrl *file_aspeed_lpc_ctrl(struct file *file)
@@ -177,6 +181,16 @@ static long aspeed_lpc_ctrl_ioctl(struct file *file, unsigned int cmd,
 		if (rc)
 			return rc;
 
+		/*
+		 * Switch to FWH2AHB mode, AST2600 only.
+		 *
+		 * The other bits in this register are interrupt status bits
+		 * that are cleared by writing 1. As we don't want to clear
+		 * them, set only the bit of interest.
+		 */
+		if (lpc_ctrl->fwh2ahb)
+			regmap_write(lpc_ctrl->regmap, HICR6, SW_FWH2AHB);
+
 		/*
 		 * Enable LPC FHW cycles. This is required for the host to
 		 * access the regions specified.
@@ -274,6 +288,9 @@ static int aspeed_lpc_ctrl_probe(struct platform_device *pdev)
 		return rc;
 	}
 
+	if (of_device_is_compatible(dev->of_node, "aspeed,ast2600-lpc-ctrl"))
+		lpc_ctrl->fwh2ahb = true;
+
 	lpc_ctrl->miscdev.minor = MISC_DYNAMIC_MINOR;
 	lpc_ctrl->miscdev.name = DEVICE_NAME;
 	lpc_ctrl->miscdev.fops = &aspeed_lpc_ctrl_fops;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
