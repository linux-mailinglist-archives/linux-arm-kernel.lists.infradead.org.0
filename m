Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D69AB2EDA5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 05:40:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bWLlKkQCo5r1e6cGRLgsCmWJt11Bc40apv9rFD0qr20=; b=jdcyeR9uKF4lkt
	AYHP1TV7VBaMGjhlgZr3MZ2v5jxi/C493/e+CferoJ88YwUuoHRErl3rPgCdwZT4agJs9vnRfedki
	msjCLifazEyAXFaWBtbVUk3TqxbqagE8CvqVSH/Qc5fvARixoWJjyx6mID2GFOZEQyoL+S94UpT9q
	TH9N74SjPlD+Gze/0zwDkqrcLN2Bwp1xdAnYC07xoQ8qsg3n29NqbwU7p3PocUnUl1Ztxr9Njhl4/
	p4ysxmr9RANqGqciZSFPf5/kt6SGIvWMJQKC/xayLfVgGDJDbsLdXQGvDU4l9oqP0w3IUFm+ttsWX
	8Be6h0dfP0GqzY1v8mHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWBvJ-0005O5-My; Thu, 30 May 2019 03:40:13 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWBvC-0004XQ-CQ
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 03:40:07 +0000
Received: by mail-pg1-x544.google.com with SMTP id 33so1126342pgv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 20:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=On4X9gP05IE6u39GfyTMWmnrBCSblT4ly+1lTynpuxM=;
 b=WFE4DqoYhBaDtI9vw3yEq3Sxu3mrMEHM4SNbqfZDx7gvEkRpIDcYfZQiHrSXQ1Bc7B
 FK+LpSF8yaLmLfFN5JYb7uj1zjEQektzjXwoPdv3ZQaKBCm/ElkH+ni23Al/lwx2KgQG
 AfhookdRR5uoVsK8/zss+h1bMt9jBNPhTzG4Eu+a25QFFV5nu4WB7B5plmiZ4sM8rbZL
 pgvBSDmABvSSWZbepyvbrSth84KbKOm07FT4plShm+qxtdFkO5tu5ztV326tDGiLQ2rt
 YKnj2Yn+0yF+fzra8DM4HhFuSscDR9floBREUQ12DB/kazlg2m+CadyTZmQZP6i7qqZA
 1PNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=On4X9gP05IE6u39GfyTMWmnrBCSblT4ly+1lTynpuxM=;
 b=GxWsZ8eZZp0hUuxzYCFCVEQUakyuYurUiVAcP29xr/Z8rZ5JS0HDPPDlhdIuxrW6kL
 5+Pv2seOpRNfCKh6uq/+KTsjJIKfmAFVXkqruuqHpk+W+N+hgt/RbZ9fTdJ5Irhh6/1k
 numhly2qPMCDpcasDwdryp1TLuRDADobFxSg37oJby2TjWLfx/GOCEk+rOr9Cfbggkhl
 MC7cu/zPzYz9HAhn1zUecKozGalJctM0yhQedMlKOjONRTr03I6yMQR6m1IYbvUu9Kv5
 4+g230zAoDyTWmhH2YegVeSjmXTBMfRUVg1EPJEcCo/Zz5NwWK2j729PM2shtbB7ksRz
 bcPA==
X-Gm-Message-State: APjAAAXXh93f+ivrXsUdVnrhrl2cXCn1AD6Tf9Ju10CB+T8oSdhS9CZm
 sbzDATnESAXxemTy1K1EmbKjIBJGJSg=
X-Google-Smtp-Source: APXvYqxuFSdogN4yad6fsZaedYCCU8dUKIXjf4voXj6fUVc2vKA9MzYgvckHtvbeiGEpL+lIZvhLKA==
X-Received: by 2002:a17:90a:b393:: with SMTP id
 e19mr1414944pjr.91.1559187603609; 
 Wed, 29 May 2019 20:40:03 -0700 (PDT)
Received: from zhanggen-UX430UQ ([66.42.35.75])
 by smtp.gmail.com with ESMTPSA id r4sm1155654pfq.134.2019.05.29.20.39.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 20:40:03 -0700 (PDT)
Date: Thu, 30 May 2019 11:39:49 +0800
From: Gen Zhang <blackgod016574@gmail.com>
To: ssantosh@kernel.org
Subject: [PATCH] knav_qmss_queue: fix a missing-check bug in knav_pool_create()
Message-ID: <20190530033949.GA8895@zhanggen-UX430UQ>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_204006_428471_92963910 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (blackgod016574[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (blackgod016574[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In knav_pool_create(), 'pool->name' is allocated by kstrndup(). It
returns NULL when fails. So 'pool->name' should be checked. And free
'pool' when error.

Signed-off-by: Gen Zhang <blackgod016574@gmail.com>
---
diff --git a/drivers/soc/ti/knav_qmss_queue.c b/drivers/soc/ti/knav_qmss_queue.c
index 8b41837..0f8cb28 100644
--- a/drivers/soc/ti/knav_qmss_queue.c
+++ b/drivers/soc/ti/knav_qmss_queue.c
@@ -814,6 +814,12 @@ void *knav_pool_create(const char *name,
 	}
 
 	pool->name = kstrndup(name, KNAV_NAME_SIZE - 1, GFP_KERNEL);
+	if (!pool->name) {
+		dev_err(kdev->dev, "failed to duplicate for pool(%s)\n",
+			name);
+		ret = -ENOMEM;
+		goto err_name;
+	}
 	pool->kdev = kdev;
 	pool->dev = kdev->dev;
 
@@ -864,6 +870,7 @@ void *knav_pool_create(const char *name,
 	mutex_unlock(&knav_dev_lock);
 err:
 	kfree(pool->name);
+err_name:
 	devm_kfree(kdev->dev, pool);
 	return ERR_PTR(ret);
 }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
