Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0511C9420
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:12:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CXgzs3e43Pm1lh1cltY8pcHmG8eXYBtelPUGpj8/58A=; b=c2ZtCG4LAcBeyv
	y7+O3CVOajBpvJK2Fz+1Z8EKPybB9N6VkcZb2vyKgIo+C21CbxNgbfZCYTduo0i7DGoP5cxcjKuJk
	WGJE8hFJGKmBuzTqP7h3rd697ohVXOeW4oMrZJb4Zu4uYIkYktQ0eHO2tw2/5A07PUUa8Hd32XHdq
	rNo6bqLZNGFE6XcHMwuMHtuE37iSHVZyzPWNvDRYSvfwKXKRGSBvuzRPRBxgvslqlv2baUktuGrXb
	da2+BpuLAD6pVdYOEp/+pG751ZJlSMeepWVRENOYBUosB3DWfNieqIbGBGUp6+uGKAcBC4uvEASdK
	mlSlAvkWchZ4MvAVbTsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWiBy-00009F-Rv; Thu, 07 May 2020 15:12:06 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWiBp-00008T-Ku
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:11:59 +0000
Received: by mail-pj1-x1044.google.com with SMTP id q24so2748560pjd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 08:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zt3dWszzUGPIr1is87/3ZzRSaPFAJm76db1aD6xZhws=;
 b=TI0Y1zgsKvAwRGvVFzQgzAJe5FKsPk4nM6Qs1kkkV3SrYAqnMd/EWdCrqUe5JjReO8
 9monr1ObfM/RMMg+6Qy0g5hfQezijmL7qGV645Q7hl3DZAX/vzVDtSdz8uwfQs7ynM0H
 O8VtsG475Cnp3USWAolj5xZcr7y60g51TfZqlE4pnoR0Ug4BxPZuc8QY+ihNBy/x1DM4
 YUmDWXIxdGI2sMrOb9y+a/9LtG7L9/poXMtaZwDmREq1Ro82qAtLi9e+eMs8amEd4323
 o2CTewy/Ya2M7CJNdNsoBx1+CCVa/j6zocbtX5R4rIJHxeBHt8TVu5xEGBtzuedcqixU
 TNQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zt3dWszzUGPIr1is87/3ZzRSaPFAJm76db1aD6xZhws=;
 b=hbKQrAj9vDopsg7Q2P2R19T7by4iQbsAh32/Wzd9/objY1SzLmERUcmfJzXcyUYt3A
 6Jh/81WZMoYo3b/gbpEQpTdGn3+pOBhpdTq42cXfGoPLJAtNLsXnVtVhyj0jb/EHUKEg
 AlwBzYJ0r5hPAYjZahvNEDkRPl9Q69g/EkoLACKBU1a9zntoNhokitDFPrc0OeFvw/qF
 Oe431zvg7cAujgsbjBTohEAg9erIhtcJajgeU+iHlReVgp8vLgomrGEbyarveV/OkWpb
 MnWDQKRONFgb5RRjAVKSw38k3GCwmoyUN/JVPZU5K5TCeOevO4BVznrYKh2SZ0FYZO82
 Mfow==
X-Gm-Message-State: AGi0PuaQ4vgt7nJwYmlfQzbzDFRxG+bMB7H6QS0Ca6DOeNUbVX9YgAGl
 sf3ras52UGo7jY+NWAz2Kvc=
X-Google-Smtp-Source: APiQypJ4IITkjemHUaedvi2tTs9YZUePEepBqshIpV75NrwzsADS0UX6wsRQ65tM/+jrQuiEF+T0Jg==
X-Received: by 2002:a17:90b:46d1:: with SMTP id
 jx17mr550749pjb.212.1588864316603; 
 Thu, 07 May 2020 08:11:56 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id j7sm5080620pfi.160.2020.05.07.08.11.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 08:11:55 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] Input: stmfts - add missed input_unregister_device
Date: Thu,  7 May 2020 23:11:47 +0800
Message-Id: <20200507151147.792578-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_081158_221081_F0FE5A83 
X-CRM114-Status: GOOD (  10.49  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hslester96[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [hslester96[at]gmail.com]
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-input@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver calls input_register_device() in probe, but misses
input_unregister_device() in probe failure and remove.
Add the missed function calls to fix it.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/input/touchscreen/stmfts.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/input/touchscreen/stmfts.c b/drivers/input/touchscreen/stmfts.c
index b6f95f20f924..4345aa98a320 100644
--- a/drivers/input/touchscreen/stmfts.c
+++ b/drivers/input/touchscreen/stmfts.c
@@ -728,8 +728,10 @@ static int stmfts_probe(struct i2c_client *client,
 	}
 
 	err = devm_device_add_group(&client->dev, &stmfts_attribute_group);
-	if (err)
+	if (err) {
+		input_unregister_device(sdata->input);
 		return err;
+	}
 
 	pm_runtime_enable(&client->dev);
 	device_enable_async_suspend(&client->dev);
@@ -739,7 +741,10 @@ static int stmfts_probe(struct i2c_client *client,
 
 static int stmfts_remove(struct i2c_client *client)
 {
+	struct stmfts_data *sdata = i2c_get_clientdata(client);
+
 	pm_runtime_disable(&client->dev);
+	input_unregister_device(sdata->input);
 
 	return 0;
 }
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
