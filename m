Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4549C663
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 00:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kzlKB70p24SdYiHydJDu9RLg/7FOIcdn5iqpHrmjeJg=; b=YlV3caPOZU1ex/
	wUf7NRgT6CuiV0HJkX2fgdFD4U7N77A9+3HJEI2tAgOgt7a6VPemPxxjl4CyDV3NGjC2Zxg9XnKVZ
	sVyC0wyNV/DabCT1GiQ+5hV57OnSjxCPzsW1p3sEDXynmaCuGmKvzp9i2u70m+nEe07/M2rISJwXZ
	sg2HBbFejChpnr/YJl7VMblKwMRp/HMYdqZ4yzjqCn00/1oBtycwknEECJmD5PAtyK7FnOXVtwluy
	nBzwmpXOAnr5zDEALT+18lqAt4x5AKM2mJDKN6U1d/uFGMaEzLtFmW1eZwP5IwgGl773DX0uBC/d2
	4gCMXqMX/7g9khk9jNhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i20iu-00052s-Dm; Sun, 25 Aug 2019 22:10:56 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i20il-00052W-10; Sun, 25 Aug 2019 22:10:48 +0000
Received: by mail-wr1-x444.google.com with SMTP id s18so13485674wrn.1;
 Sun, 25 Aug 2019 15:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FSDaDPkwEDuhPwyp2tph1yu0z2JTeSJAZvKVpXGb/b4=;
 b=SYfe+LJIQxIUY6Yzw/uCtw32IfYh2xzQJidH53o0SLmHNQ5dydIffPk8LaV57MYJNV
 Xw6qt1/cj6rKvtgyDtEAucFnyqUUD8UyqIf/GBd+EsPHKqCeMho6m50+VWdZC6yPxZ9F
 6eqRJqKID8EzRkDjNhqICdBr81EnHMBsXQK+vhGQkjC8dzFqNLYGRWhnCQcNMHctC07s
 SpqNLcDV4J66Jojgl45FpM/zbdNCbiWqSB45kUYXWwpv+pXDmqSD5UU5w6m6lYujfEJn
 qJvTmp0YJITbS4Vd4vON/cG9sk+9aboYrmw9WBfNlgBh8P8dvA0XxN8z5dGVesQWmfnL
 xWQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=FSDaDPkwEDuhPwyp2tph1yu0z2JTeSJAZvKVpXGb/b4=;
 b=Hj4ZuxaM1Kylm/DcjmvCIOklSez+n+6QKoo5SW0JJ1agbXpmB0dP2pnlnCeFWCY1El
 jGC+jzj3x3e//D9ftTk8Ue4/J3NkCkei2csH9/PAsF1guKn49YNEKM2U0m8PSFFVwoRh
 nylIfR8gFRfSikXdSJvfsfx7DW+TTMRIMHjlbGQT38JMpDLpLt4wk6V/AMW1oRLeH8vA
 VUC80xrmxqai93Lt3LHyEic4CWI77cS9y0+J1zjL6jbC0fSZ8ySv99xd1ey+t5dylN4C
 D+ASL4KcbG8CoUaDf1MKtfeB4PrDrka95GXE2QAAnWm1l8Pqe5l58cwp56fdmeRmT4iJ
 6F6Q==
X-Gm-Message-State: APjAAAU2onpk7JctOZ8otI+bUhyxLS9ceipNvSPxE3V8KEqnNU3UdS3e
 VHFdeABQscCH0X6vX0vYLL+1qlz1G/q4RA==
X-Google-Smtp-Source: APXvYqxiGvZXVlVu/JaE0UslanWEGQOGDzHXiV60bRr5wjvX3RTgu5+0YA/diKHUOXLRsZzWY1BtPw==
X-Received: by 2002:a5d:4a11:: with SMTP id m17mr18371554wrq.40.1566771042170; 
 Sun, 25 Aug 2019 15:10:42 -0700 (PDT)
Received: from localhost.localdomain (ip5b4096c3.dynamic.kabel-deutschland.de.
 [91.64.150.195])
 by smtp.gmail.com with ESMTPSA id r5sm8544562wmh.35.2019.08.25.15.10.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Aug 2019 15:10:41 -0700 (PDT)
From: Krzysztof Wilczynski <kw@linux.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] PCI: mediatek: Remove surplus return from a void function
Date: Mon, 26 Aug 2019 00:10:39 +0200
Message-Id: <20190825221039.6977-1-kw@linux.com>
X-Mailer: git-send-email 2.22.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_151047_094976_E839730A 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kswilczynski[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 Bjorn Helgaas <helgaas@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove unnecessary empty return statement at the
end of a void function mtk_pcie_intr_handler() in
the drivers/pci/controller/pcie-mediatek.c.

The surplus return statement was added as part of
the work in commit 42fe2f91b4eb ("PCI: mediatek:
Implement chained IRQ handling setup").

Signed-off-by: Krzysztof Wilczynski <kw@linux.com>
---
 drivers/pci/controller/pcie-mediatek.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/controller/pcie-mediatek.c
index 3eaa7081ab2a..626a7c352dfd 100644
--- a/drivers/pci/controller/pcie-mediatek.c
+++ b/drivers/pci/controller/pcie-mediatek.c
@@ -635,8 +635,6 @@ static void mtk_pcie_intr_handler(struct irq_desc *desc)
 	}
 
 	chained_irq_exit(irqchip, desc);
-
-	return;
 }
 
 static int mtk_pcie_setup_irq(struct mtk_pcie_port *port,
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
