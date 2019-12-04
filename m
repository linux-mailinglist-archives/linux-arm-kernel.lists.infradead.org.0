Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D0A1128A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 10:54:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XiIXk6DCmopDCfxrLCRO2OiOQ9KceOKTTDkEXsckenA=; b=FEpvgP6AcFWIkPkvC20et88OEu
	0wfM5qGRlAoTsHkuD4HlinnqseUdSlKSmb+KLEEmzeYHfEsRCfzPXB9GDOZ7nSZxvibXSs+1KngUi
	EUI5rqyQSj5o9gEgSJZLGxZ72xkFDCkfiR6du+AbSgSkATiyl5MKIJgGZv1uyoUSRfduJpp4wFyvQ
	va/KkCeOIJMWIjAta5UOweYC+VDoXe1jMat5EUGUi4GQjcLUAbS9vwGX+dZL6w2oALnvYMlSXDBXL
	pQ5HLqduz/xN1kdCdbvQxMjnSKjXPZnD8a4zMkfLLEocq+DR5stS0CXJbQidcWjc/x2jZ2WifVCon
	fJ0H6EIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRMn-00047R-I5; Wed, 04 Dec 2019 09:54:41 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRMR-0003vQ-OY
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 09:54:21 +0000
Received: by mail-pj1-x1041.google.com with SMTP id o11so2779337pjp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 01:54:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=Yr7ow8GTmJkAHzIYaMaQkuIE5TitlU69AapCYxHxDps=;
 b=ZgK2xpmmM4E1oWxKp3+/qAKtBGSlbVVCWrUvmWrSxqA8uCqUkHarbkgrW5pREnEz7q
 rt6GcAQ1G93LP6ZCk+9sS0X5Re1mS5EYwZz1fmK638M6EBGMCv9cnDxTc0SKJJ+RU6mU
 ponjciEPdNGyVa5aeUb2RANsByGMFmPefMO4nY2m3g2P3Tw2MuPTVJmK7Qd1gaAr8eij
 UGPdVhbqPGizjDkxglfo66j3Pcwsk2z9WdRG3wanX+H7HOHJghV+bceEKNdKklhSh4pV
 /g1Tzi1WaH29Nzu1nR0XHmxmNPkLV50GAbW4SIq5WbLALNOaWH+30UkbppuSZ46JSzV7
 rbfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=Yr7ow8GTmJkAHzIYaMaQkuIE5TitlU69AapCYxHxDps=;
 b=h2HN2abVAKKv1jnZywMEUxDKg5dw5KgnDBFyK2k+T6pZSYdWxAxhKejcsEaGgvqLBf
 M0Z7adcB6j3+Mo31um1jTG+ddvX2vTks627t9UmfuLlvXBdPk8FcAhSU85q2JYyAxSKY
 oVWqSDo9q0+o6j/2LiNS/7vPjJydZQUN8r444ychWAHwtFt9evp/0Hmrx6wi5s07UBYy
 6s9CJodcmE2W8kLccPBYQcygEYT4qtlxu5JdbXaxrKW1yWWONVaJmxNK1WzBK/DFnb/Z
 aBA7eoZ15FWwYrz4bpHZgbi3qAsR+bU7O7BIemiTP0LBfyhY4WnhM5Pd1+S4HMw8Ff2S
 UfZg==
X-Gm-Message-State: APjAAAUTC2DDeKbJTNQNEhTU8qSvu/nrt6ob6fMhtmP2TzT72vehPMJh
 Wp7zo10wpbE0Gl1RIljGqBY=
X-Google-Smtp-Source: APXvYqy3g3wzo53GR/iSw5diEUdMACLnabPEltuTjdGhFohSu+l6XqI9adpeV2ZgFypPKZYZ2aofYg==
X-Received: by 2002:a17:90a:8a8d:: with SMTP id
 x13mr2323336pjn.97.1575453259348; 
 Wed, 04 Dec 2019 01:54:19 -0800 (PST)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id k101sm5941687pjb.5.2019.12.04.01.54.16
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 04 Dec 2019 01:54:18 -0800 (PST)
From: Baolin Wang <baolin.wang7@gmail.com>
To: ohad@wizery.com,
	bjorn.andersson@linaro.org,
	baohua@kernel.org
Subject: [PATCH 1/3] hwspinlock: sirf: Change to use
 devm_platform_ioremap_resource()
Date: Wed,  4 Dec 2019 17:53:31 +0800
Message-Id: <812aba62d4f0c1b460a7fb89b165664dde2795a6.1575452516.git.baolin.wang7@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1575452516.git.baolin.wang7@gmail.com>
References: <cover.1575452516.git.baolin.wang7@gmail.com>
In-Reply-To: <cover.1575452516.git.baolin.wang7@gmail.com>
References: <cover.1575452516.git.baolin.wang7@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_015419_797982_07043558 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (baolin.wang7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (baolin.wang7[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: baolin.wang7@gmail.com, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the new helper that wraps the calls to platform_get_resource()
and devm_ioremap_resource() together, which can simpify the code.

Signed-off-by: Baolin Wang <baolin.wang7@gmail.com>
---
 drivers/hwspinlock/sirf_hwspinlock.c |    9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/hwspinlock/sirf_hwspinlock.c b/drivers/hwspinlock/sirf_hwspinlock.c
index 1f625cd..8cb5fd4 100644
--- a/drivers/hwspinlock/sirf_hwspinlock.c
+++ b/drivers/hwspinlock/sirf_hwspinlock.c
@@ -69,9 +69,9 @@ static int sirf_hwspinlock_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	/* retrieve io base */
-	hwspin->io_base = of_iomap(pdev->dev.of_node, 0);
-	if (!hwspin->io_base)
-		return -ENOMEM;
+	hwspin->io_base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(hwspin->io_base))
+		return PTR_ERR(hwspin->io_base);
 
 	for (idx = 0; idx < HW_SPINLOCK_NUMBER; idx++) {
 		hwlock = &hwspin->bank.lock[idx];
@@ -92,7 +92,6 @@ static int sirf_hwspinlock_probe(struct platform_device *pdev)
 
 reg_failed:
 	pm_runtime_disable(&pdev->dev);
-	iounmap(hwspin->io_base);
 
 	return ret;
 }
@@ -110,8 +109,6 @@ static int sirf_hwspinlock_remove(struct platform_device *pdev)
 
 	pm_runtime_disable(&pdev->dev);
 
-	iounmap(hwspin->io_base);
-
 	return 0;
 }
 
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
