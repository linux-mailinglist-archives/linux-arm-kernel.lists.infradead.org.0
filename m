Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AAAEBE9F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 08:46:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=05XxNjEs981QXwlmagm6rm/y2oAxRWSVHeHlpdJPcio=; b=Mwrep6wXIf60Nxlfsgh9da9W03
	YtpuPx6qRGTvy76C1bxfUHW5eOM8me47qdG4trzom1p9du6G6R/GYTWVxhcChFRXb09rarybhDt4N
	sfJFxRiPolUP8MprA1fpbQeBOxeI0R7ro0cqVKydWqn/gbKVflLtFj1Wolvl+bs3CafUkVjsfgD0r
	Bi57p9QXJk+Zc2tisiQIfvuf2PIGHxI7tgxGKUoyosP+L3CtCO+mrlI48HimuIu9mtrDcBmz5oqT/
	zpMGqcDrQMh2Agg3kl6jKAVC/RfLNqi9wvVVZiPUY0fyYMXM0ljLKqGleo11P2E0lW3SUplz7e0Zb
	BSu4v43w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQRdk-0000bA-T4; Fri, 01 Nov 2019 07:46:36 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQRcd-00082w-GE
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 07:45:29 +0000
Received: by mail-wm1-x343.google.com with SMTP id w9so8234059wmm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 00:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=o/WXNJ1LA673vdJ8sFOa/ninCgRnpi26dheEONfyqB0=;
 b=NLpmXnv7R42LKiqA47VpSnkRY8XSxT2H2FVSayMw/zkOdsQZzOkqdbPIQ/zqzCB0db
 y1kbqWP6t1ZUqf2oG8daRFBPtTfdlI0EhlkJjDINFp0R+3vik28XAfGFzUi/YcMLwbZ4
 q5YudIUt0fOEXyeHJzEPJKZHIEheIL/Vl2oW2w92Bksv+d5sT+DP9vkVugFdl/uXBG0Z
 DTkzSlSAWby6oCttAgyuuRZpASHljJq6nuGd0k9KJ8HyDyz4Gad2Ni90RK5h/+fk+tfK
 Xxp5P3XYMA0CjrWLUpV8mIegqZNVrZgpJRxOU5z/h2T25UfZimy0TX/BlswzJX++KXp4
 KvyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=o/WXNJ1LA673vdJ8sFOa/ninCgRnpi26dheEONfyqB0=;
 b=icwGmk5HLja0qRZvATFOYL8agovkQyU4B2qA0sseBtoPG77RkwN3xI7wJQgKp8OG1n
 ESiH9A5X8onLXLiT4JXfNId7w7dJ8gnv2u4k+BeiUOEeBYNmJLpKduwEemCEBYt3tAKC
 u0BOUNt1oCONU/eQF6KMZHY2gbRVeXVxU7EzLZpqK36PduyBn1FOzqoINpZk7mhgnA/N
 bV7yjfZQb4ah5um6qeE2VfKWtv4ru/SGE3tyQjr3Ly3pjXjCcFhgPqdUvIMOKq1BfvEH
 QuHVL8dUt0XK06KNvcQLL5DB/mqDcKgbonYK/SXCDezVsNB5v4HHnNdug7WFaxjJ1L+1
 weVg==
X-Gm-Message-State: APjAAAUQLq72xZxN/RaxeYjNpKJI6e/Dq+KveH9IXfm4TDyWWdC8qVIl
 4JL3+bxneqLkglu5S4zihv1xWw==
X-Google-Smtp-Source: APXvYqxrp51r0BToycxLzs+62ME/8nCKs9NXgANVP3qglKRs+XlWI6yZaUm8W6tBL1BpnBLsbC2Slg==
X-Received: by 2002:a1c:5f04:: with SMTP id t4mr8374156wmb.23.1572594326248;
 Fri, 01 Nov 2019 00:45:26 -0700 (PDT)
Received: from localhost.localdomain ([2.31.163.64])
 by smtp.gmail.com with ESMTPSA id b1sm576215wrw.77.2019.11.01.00.45.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 00:45:25 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org,
	broonie@kernel.org
Subject: [PATCH v4 04/10] mfd: cs5535-mfd: Register clients using their own
 dedicated MFD cell entries
Date: Fri,  1 Nov 2019 07:45:12 +0000
Message-Id: <20191101074518.26228-5-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191101074518.26228-1-lee.jones@linaro.org>
References: <20191101074518.26228-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_004527_552587_B75DB5B1 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CS5535 is the only user of mfd_clone_cell().  It makes more sense to
register child devices in the traditional way and remove the quite
bespoke mfd_clone_cell() call from the MFD API.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>
---
 drivers/mfd/cs5535-mfd.c | 25 ++++++++++++++++---------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
index 3b569b231510..d0fb2e52ee76 100644
--- a/drivers/mfd/cs5535-mfd.c
+++ b/drivers/mfd/cs5535-mfd.c
@@ -50,16 +50,19 @@ static struct mfd_cell cs5535_mfd_cells[] = {
 		.num_resources = 1,
 		.resources = &cs5535_mfd_resources[PMS_BAR],
 	},
+};
+
+static struct mfd_cell cs5535_olpc_mfd_cells[] = {
 	{
-		.name = "cs5535-acpi",
+		.name = "olpc-xo1-pm-acpi",
+		.num_resources = 1,
+		.resources = &cs5535_mfd_resources[ACPI_BAR],
+	},
+	{
+		.name = "olpc-xo1-sci-acpi",
 		.num_resources = 1,
 		.resources = &cs5535_mfd_resources[ACPI_BAR],
 	},
-};
-
-static const char *olpc_acpi_clones[] = {
-	"olpc-xo1-pm-acpi",
-	"olpc-xo1-sci-acpi"
 };
 
 static int cs5535_mfd_probe(struct pci_dev *pdev,
@@ -101,10 +104,14 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
 			goto err_remove_devices;
 		}
 
-		err = mfd_clone_cell("cs5535-acpi", olpc_acpi_clones,
-				     ARRAY_SIZE(olpc_acpi_clones));
+		err = mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
+				      cs5535_olpc_mfd_cells,
+				      ARRAY_SIZE(cs5535_olpc_mfd_cells),
+				      NULL, 0, NULL);
 		if (err) {
-			dev_err(&pdev->dev, "Failed to clone MFD cell\n");
+			dev_err(&pdev->dev,
+				"Failed to add CS5535 OLPC sub-devices: %d\n",
+				err);
 			goto err_release_acpi;
 		}
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
