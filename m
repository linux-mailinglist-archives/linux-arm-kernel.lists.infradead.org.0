Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6990DC58D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:57:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=l+bLpOd9eHBwXiw1jNzLthEGwOo9F0usalQeCo+eh9A=; b=XPiF44x0PmfYOEt6CpHBPpq/D6
	T/G6f7pU/1wrhRzFQvprcJnLhqO+DA2MtEDCs10F46svhOSow0+ZdvL8nIAJ175oV5X2Z251n/WUV
	iAp1FrIVpTSKALzGwvuTMkFIrgjR+pgjOAa4jaFf1VTmp6fyhkrYDkNFtSvlkBX2frWXinC7ETjlO
	wuOF7YcaG07sfcCbxqL14AWM4u6Ln2vEYunljDCM3ikfjqfyyaKAC68QrNezk9Olg03NpKpktjSDP
	Dbf2TCnfMlKd4/xSACGS0z4j2RzQ9ckcLE2A703cD+Qb6j5qh6cTDX4PyWLqF9i8I1uB0w7ErcDuF
	H6elzBwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRp1-0000Nc-Sl; Fri, 18 Oct 2019 12:57:35 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRnl-0007wd-Fs
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:56:19 +0000
Received: by mail-wm1-x342.google.com with SMTP id m18so6030597wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 05:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uffMabFPldA3sW0xXZbJX93ZYIXfUZ6x/6qzeDvqKHU=;
 b=a1/kW5wJjmnv20kwpLmkrzovugTb1olIvoyebb0Vdjs5JnX4ljk48LR2JgfzAjq4/n
 YKi2C6bNqD6clsE+QBZVYEo9XsI9jYOLAtvqUdSnnzW/tlQWAbhfDG+sMMdt2e6Q+1LP
 j0c5e06g8KXzDIAG5CgCngwS8Z6LW3mdQFpgOI20kiWERusJCaNM7w5z37F3BEO+XFwm
 VbQyEFtAOvTXyzASG63fQ6P1o4Xt+5v+br3HT9BljgIjlArGhXRfP++umd0r5DVc1rZm
 TshzZHKWukXC0S2TOXY/8NsmxbDHS/UUjOOwV9zz/ILiIE/4x5e50M9xrFEpir2W6KMQ
 3w2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=uffMabFPldA3sW0xXZbJX93ZYIXfUZ6x/6qzeDvqKHU=;
 b=QkYSI/6/CSqcVLn6OOuKIQBr+QHzWi4yFw2Z7UWn7yfaVUYVEWiGGYCnEOY+IkA9nO
 CdeIzlSW/3CKm4eb4arCO489ib3HhfROCsewcY9+JoA+Hj3E5UOockzZ/BaEQSakab3f
 pqXnEBinWJ6Uryzr3+tHYOT62PXL45E4UcSUVwqCyuFgaloi9v5lBxg1RD7ouTcCwwVX
 myqXC3yJU5Dnf5gvQpLs2eHUIaBkavYTqsv88716Dqe647hsvSXXDL6IC9fr7C57i+jy
 A/EKzq4D5Fid1DeEiCWYz+t2ITW5A+f85KX8kPFIKBCCJ6zK0k7OWJWDuCKd9GRVIUas
 HzoQ==
X-Gm-Message-State: APjAAAU21YR/gkKIPEiWii7Fe+quvN+4sgGAjmfCB5oHlcpg1Eye8voB
 tkddTZXHUqHyRr0TzSoluuwNZQ==
X-Google-Smtp-Source: APXvYqyd+jbqP648qNeI/3VI5El40fe71lbxYgMGbkq3kIpZDIl9BMQjAkZaAMbHCWN+vkX68s2WaQ==
X-Received: by 2002:a1c:6702:: with SMTP id b2mr2599688wmc.107.1571403373543; 
 Fri, 18 Oct 2019 05:56:13 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.47])
 by smtp.gmail.com with ESMTPSA id q14sm6058491wre.27.2019.10.18.05.56.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 05:56:12 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: broonie@kernel.org, linus.walleij@linaro.org, daniel.thompson@linaro.org,
 arnd@arndb.de
Subject: [PATCH 3/4] mfd: cs5535-mfd: Register clients using their own
 dedicated MFD cell entries
Date: Fri, 18 Oct 2019 13:56:07 +0100
Message-Id: <20191018125608.5362-4-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191018125608.5362-1-lee.jones@linaro.org>
References: <20191018125608.5362-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_055617_577341_DEC10F7A 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dilinger@queued.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CS5535 is the only user of mfd_clone_cell().  It makes more sense to
register child devices in the traditional way and remove the quite
bespoke mfd_clone_cell() call from the MFD API.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/mfd/cs5535-mfd.c | 34 +++++++++++++++++++++++++++++-----
 1 file changed, 29 insertions(+), 5 deletions(-)

diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
index b01e5bb4ed03..2711e6e42742 100644
--- a/drivers/mfd/cs5535-mfd.c
+++ b/drivers/mfd/cs5535-mfd.c
@@ -95,9 +95,23 @@ static struct mfd_cell cs5535_mfd_cells[] = {
 	},
 };
 
-static const char *olpc_acpi_clones[] = {
-	"olpc-xo1-pm-acpi",
-	"olpc-xo1-sci-acpi"
+static struct mfd_cell cs5535_olpc_mfd_cells[] = {
+	{
+		.name = "olpc-xo1-pm-acpi",
+		.num_resources = 1,
+		.resources = &cs5535_mfd_resources[ACPI_BAR],
+
+		.enable = cs5535_mfd_res_enable,
+		.disable = cs5535_mfd_res_disable,
+	},
+	{
+		.name = "olpc-xo1-sci-acpi",
+		.num_resources = 1,
+		.resources = &cs5535_mfd_resources[ACPI_BAR],
+
+		.enable = cs5535_mfd_res_enable,
+		.disable = cs5535_mfd_res_disable,
+	},
 };
 
 static int cs5535_mfd_probe(struct pci_dev *pdev,
@@ -130,8 +144,18 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
 		goto err_disable;
 	}
 
-	if (machine_is_olpc())
-		mfd_clone_cell("cs5535-acpi", olpc_acpi_clones, ARRAY_SIZE(olpc_acpi_clones));
+	if (machine_is_olpc()) {
+		err = mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
+				      cs5535_olpc_mfd_cells,
+				      ARRAY_SIZE(cs5535_olpc_mfd_cells),
+				      NULL, 0, NULL);
+		if (err) {
+			dev_err(&pdev->dev,
+				"Failed to add CS5532 OLPC sub-devices: %d\n",
+				err);
+			goto err_disable;
+		}
+	}
 
 	dev_info(&pdev->dev, "%zu devices registered.\n",
 			ARRAY_SIZE(cs5535_mfd_cells));
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
