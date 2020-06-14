Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7851F873C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 08:19:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=r2taXgGBNgRjzOXR9JU/au6I2KzQjmkx5B1tGf8Y3iQ=; b=oHe
	Deai7ePLdNC7/LAODg5I54xzy4LG57tsL1Tz0HlWw2Sh6bCu9fwz3kAQeKkpmz+C+MhqVAIGeOTLI
	eUaIrs1N3/yK+4Wf4A5sbRJO3aynxdqbqGH++q26CMWJW5oD7kxZqP5xFKlV7lLg4smcpMmUGxCPG
	gR2AvE0Ln7mQrdPSS0iLavfWyMUvHBrno7BbbicVl0bp1jomXx1T2kCHSGFuHUeRcDMr5oPWfRzuG
	tAx6OVbo/EZSLvbmau/DvLzp7MVxJjKeBQUp4d0T62rv9FLasG/7RvzYx0nYxOCn4RYjmmxclWjAn
	xY3wAxg7Bao0saPO3vRHqIdu2/z6tiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkLzD-0006yv-9S; Sun, 14 Jun 2020 06:19:19 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkLz4-0006y5-To
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 06:19:12 +0000
Received: by mail-il1-x141.google.com with SMTP id g3so12410477ilq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 23:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=9KK+F0d4mciiuo9VaW5QFXWP2Ch9Rbbv4U0+fODdYfw=;
 b=HDUWrCkggu0J1UgH7dQO1nYEXZBkr5iknhM0hWr8Cxnps2IFyJvHAbm6BhL5HSHOiL
 WX37C60DJVxnU40AE6VWz63fnS75SQgC69ZoK7b/4wqZFHl/156yjZLfXFBhaqHKs106
 KoJLVkVbIXH+4J8MHF1Z175hMrrlHTeDtn62CqD6mnQ54WNqw5M/VJREluvKXfAxAfP/
 0U+8b0JwdnROS3sjXzFelRhMmBiRdzI5LyeP2gNsQCUhskCB/SuMwoUdzPb24surrQ99
 1kQ2hnm8DG3Wc39OJrUbpKTLvfNB5vzFrmr+MyV+IExRyF84+5aA59fAIPji1X7t4f2A
 RAaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=9KK+F0d4mciiuo9VaW5QFXWP2Ch9Rbbv4U0+fODdYfw=;
 b=R1RnISFQ6/VZ2PgMW0B6IDnfLQpyMQnIF3rfG6Ly8y3yJHPNH6l31Z4XPWWckKNfP0
 P4HeAFT9x6k0CmbkFKMtRh6lOJFCcxu4eTYcJDwJ0L+tf9NT7XApCHn4C4bmpiZIaLUe
 9jBHOUoFZ5Tz2NBQLVGCtbWheYJsORb1RW6r2WCGmp40TuM5btPYE8O10HGlmGDJrQaU
 LtaR/PKmudir98+eoC+MXPE6Oz5RrXw54caJu4Rlz3YgkpE9IIYPOdVY0WaqJwRzZdI4
 sPFhz+c4jt80McYJXWQ10+IbYfx2MkA0jyHJkcEdJNRdjJwEqvm/N6SzfJTFp4E1ylRQ
 /UNg==
X-Gm-Message-State: AOAM533q2hLYsGYHRTpzRrM9ociD2+bdOhXOnsHsnQMYJ4oR15e75XpY
 AW8xD5efEQbYwj65EZxx6b4=
X-Google-Smtp-Source: ABdhPJx+RHJDlWRBydGsMDNESumPn7fohMgnWm/IsMUtg/EAwn/mNh1mHSYHhLadFHOzD269hdoBBw==
X-Received: by 2002:a92:d1d0:: with SMTP id u16mr20748595ilg.7.1592115547052; 
 Sat, 13 Jun 2020 23:19:07 -0700 (PDT)
Received: from cs-u-kase.dtc.umn.edu (cs-u-kase.cs.umn.edu. [160.94.64.2])
 by smtp.googlemail.com with ESMTPSA id c3sm5798908ilr.45.2020.06.13.23.19.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 23:19:06 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Navid Emamdoost <navid.emamdoost@gmail.com>, linux-input@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] Input: stmfts: fix ref count leak in stmfts_input_open
Date: Sun, 14 Jun 2020 01:18:59 -0500
Message-Id: <20200614061900.75253-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_231910_983824_DC54CE2B 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [navid.emamdoost[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: emamd001@umn.edu, kjlu@umn.edu, wu000273@umn.edu, smccaman@umn.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

in stmfts_input_open, pm_runtime_get_sync is called which
increments the counter even in case of failure, leading to incorrect
ref count. In case of failure, decrement the ref count before returning.

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/input/touchscreen/stmfts.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/input/touchscreen/stmfts.c b/drivers/input/touchscreen/stmfts.c
index b6f95f20f924..1ef282d7cc14 100644
--- a/drivers/input/touchscreen/stmfts.c
+++ b/drivers/input/touchscreen/stmfts.c
@@ -339,11 +339,11 @@ static int stmfts_input_open(struct input_dev *dev)
 
 	err = pm_runtime_get_sync(&sdata->client->dev);
 	if (err < 0)
-		return err;
+		goto out;
 
 	err = i2c_smbus_write_byte(sdata->client, STMFTS_MS_MT_SENSE_ON);
 	if (err)
-		return err;
+		goto out;
 
 	mutex_lock(&sdata->mutex);
 	sdata->running = true;
@@ -367,6 +367,9 @@ static int stmfts_input_open(struct input_dev *dev)
 	}
 
 	return 0;
+out:
+	pm_runtime_put(&sdata->client->dev);
+	return err;
 }
 
 static void stmfts_input_close(struct input_dev *dev)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
