Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A56A1FAC7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 11:34:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tXfuOvJXpLzgMlCH5bakNjEfHwfn98l5Esvq2JXQOXg=; b=HtMADsvvDiP6NWSkMf9a8oIRIv
	Kq3/elKL7YOfkMjpxXxJ0x83dJiH1/CIeAGrW814zIpl8u+2Go2Hu3XzABblBkggz3oV+JSE+gPKq
	Q4GQNfyTHR/9QgvXjyf6GBt5STb5ck/v8yXckPEtveCpLVZX1M+I41Y67s1bwDfUQ4Q5Wi++0w+72
	Q+KkuSr5F59DqXaDdAEuFi2GEw2jLRHlrLhZzaCEENNOOnxajWoLcbyPUgrBpy6GhohDg05AZSxcl
	8+IeZWoztvWQQay9xBUqIv0zzuDslCng68NAb1JbqNe8VuB0AGC5IW9/7Ab8czkCzLOJ6FUABscz1
	1O8e1kfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl7z0-00069k-DG; Tue, 16 Jun 2020 09:34:18 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl7yO-0005fi-Bg
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 09:33:44 +0000
Received: by mail-wr1-x444.google.com with SMTP id q11so20022690wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 02:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Dy5D7VvQs6lAMvvvXI7RWH+DLEr70PY2Qco3Y2BGZWQ=;
 b=y5x+xGuXe1DYGI72EVJ9QLUkm7Xw/xXJ47Z5lyO79YYfur88Wtfk+N1cNEagdkOys2
 CnR/JoGhKCD/2ld/3eUNThLJfe59H3XqQhNSgg/rsWYgwD3Ch/a1iaGJ/is4pF1B3lXy
 AEssqE7ycnWaqetbf21ddm+09P0vD37cuq1eeNOnCjdJrfO0QGthJ43vJbwIlt2f8Ys2
 hTjArnHzn9SDISGePLvwzc087T0Vh+WDZpC/aotB2UXwAPmDa/S1Kces0i344Ggzopa4
 k5sU5oMdq+DkrPkKisU4GHsju40ibyjy6spZ61+omSD2S8yH+ZiIjWssC4XRu/Ek8JWq
 TABQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Dy5D7VvQs6lAMvvvXI7RWH+DLEr70PY2Qco3Y2BGZWQ=;
 b=elDUkuATL6SMSUmH4czvkXIszLoksuWVml0OltCIes10EiUccVZ6oLYX8J76pG8e1Q
 6O7VSDZdope91jCEa3lkeEN+85RzyPOoWrBbDgpiXrphEbr9i7XqV2a3mjDn9UxXTIoc
 0m8hPMrkuo7rm7D2rN7kzeZrtWu+q33onnfUrOoaa4b9iDQmjpzXzTo5G8cW+i5a2Or2
 vKdyEw2m2SoVg5TRoHaYABeAp7V8zf9Of7ZHDUnF7BYwY7mRk3HJUIv0SUVtnQpN5Wbe
 aE6+dZ6PA7fz6172d1rdEFXb9JJW1pAQ01J8aKacy4rmqbs4yHk+AAwCQnM+Ni5o/1HZ
 Bkaw==
X-Gm-Message-State: AOAM531lNLHpI6dgl6xHw1kAGRr0o6PJjP4VCOMfy2E8DSVrYFr8C6ZE
 l4WxWpr/e/ioGa34qq5gX2yZ0vfwlII=
X-Google-Smtp-Source: ABdhPJyA/kADmHum2cQMcQ5/JMV1u/yVEwJ45ZI1USVYiTIfLc4OS6jIx8x90lDlYWrj4/EeUmu0Zw==
X-Received: by 2002:a5d:4701:: with SMTP id y1mr2055792wrq.310.1592300018888; 
 Tue, 16 Jun 2020 02:33:38 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:c5c1:794c:e67f:3280])
 by smtp.gmail.com with ESMTPSA id s72sm3166391wme.35.2020.06.16.02.33.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 02:33:38 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 mathieu.poirier@linaro.org
Subject: [PATCH 2/3] coresight: etmv4: Counter values not saved on disable.
Date: Tue, 16 Jun 2020 10:33:32 +0100
Message-Id: <20200616093333.31283-3-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200616093333.31283-1-mike.leach@linaro.org>
References: <20200616093333.31283-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_023341_302873_4ADD008D 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mike Leach <mike.leach@linaro.org>, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The counter value registers change during operation, however this change
is not reflected in the values seen by the user in sysfs.

This fixes the issue by reading back the values on disable.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 747afc875f91..60a5133d801c 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -507,6 +507,12 @@ static void etm4_disable_hw(void *info)
 			readl_relaxed(drvdata->base + TRCSSCSRn(i));
 	}
 
+	/* read back the current counter values */
+	for (i = 0; i < drvdata->nr_cntr; i++) {
+		config->cntr_val[i] =
+			readl_relaxed(drvdata->base + TRCCNTVRn(i));
+	}
+
 	coresight_disclaim_device_unlocked(drvdata->base);
 
 	CS_LOCK(drvdata->base);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
