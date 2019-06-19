Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2144BFC4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:36:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lCdK5TZiIn0f+T2aUUMLOGhazs11ar/N43HAylT4G0Q=; b=KZpZCF3ni4Re4cXp0L8f8/n27N
	U2puQ089ZrF26HDm8FN43Dz/LHowMDePB6yN9hgjjXgXtai121sOlLSXZeWzE53YfVrLOy0RFZakV
	0alkOqxSzGHlloQ6ARhSDiCposx23ScVxfBfSZh4MQ8Bv6livIBqG0NJDqtcmfXdaSGYBgDALOd88
	IxLf02a0LrjJdLSc8z87SrtjsrUpqIiMwYIAPDPryHCTxJaMxlnYuhcp1a77jTw+iurAOAErSq4Ch
	p7yLySVcATM51A7qcMANatiWx/kcs/L73eLsmS0Gqigrk4Vg2xgP3JaIxXiMU8tDyksCQcxfHi2JL
	D3+qcUIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeVX-0005gL-3S; Wed, 19 Jun 2019 17:36:27 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePR-0007gy-LG
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:15 +0000
Received: by mail-pg1-x541.google.com with SMTP id f25so35024pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=prwAII+ZGtojVUuaXNz0SCoaMA6E9CoFK+EWZu9cgw8=;
 b=s9Fe7VHL9KBzy6CsGS5e6Qn+rQ6tQgjBqnBuCyLjiEo+b+wDqTaXrJu9bqAARnoj3Z
 L2zU2tR5yEncgSWWAWk/8Q/xlNuoe6ZKWkwacid6LANFuwCd0bgLnKWo3TrKc/UNplKd
 D6KjqCWnQSw5Ps4Tz55M3yFubX9r7yNb3JRdcJGNnjwqiOjWCJcy/RRgF/p2dyHut++k
 rmVuS840X2wLtBo/hmtzcRGkHr8nbT205qJRT4oS/vZ0gRvLDxyRIveNMjYoHINQcftr
 24kqNvun9dcx4bMMJQHsl1wXqdQn4zZCXJArqgV58+5JwUIND+qPKDi5u1LmUr75UrYZ
 YMQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=prwAII+ZGtojVUuaXNz0SCoaMA6E9CoFK+EWZu9cgw8=;
 b=M+aV41cljbqbJXjUz2BhZCFQuAWz0oQbktOvUCipJvOEE+PY4NuL6MIGcVrgqy+gV7
 8btt6tArWULHgtTYKmzk/F6GThLAJwyYmOiT4jQ4HB/NRzOTmDjaECYcJEEHjH2fptnV
 qA6iZwLyAlX1gCSDNjB0E7N940FPWgjUXSN/JoF7gIcqe4F6WEInBW4qemw5H7/gIkOP
 0WeJdS/8pReDs8Zpnc2dm4mBSoPUZDw4NxtFMOB+JeSmn+8HPlxZeWaI6yuJxH0YUK20
 WfyWdJJEwKIyIu72EWiOayLb6+8tCnVChXxHPgzR3LXxvnurWMZ9R97rbZrmRzRTr0eE
 wjXw==
X-Gm-Message-State: APjAAAU3W8BS87V8tMq3EzFTWCw1DUE3RmmV2MhgKNd3R++kguAWvsGV
 u0iw6km3Vfwbh7wstjWbmLNqCKoBMxagaQ==
X-Google-Smtp-Source: APXvYqyrQtjUmiZrlYv5ebeeSSnbptnwGGapYTRB2F7uvoXj9xSsyd1PSpAWKvGK7vzycX5oaBUw4g==
X-Received: by 2002:a17:90a:3247:: with SMTP id
 k65mr3591993pjb.49.1560965406693; 
 Wed, 19 Jun 2019 10:30:06 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:06 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 16/45] coresight: etm3x: Rearrange cp14 access detection
Date: Wed, 19 Jun 2019 11:29:20 -0600
Message-Id: <20190619172949.4522-17-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103010_054034_A72BF4D5 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

As we are about to refactor the platform specific handling,
move the DT property handling to generic helpers.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm3x.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm3x.c b/drivers/hwtracing/coresight/coresight-etm3x.c
index 9c92491d3fb2..fa2f1417cafb 100644
--- a/drivers/hwtracing/coresight/coresight-etm3x.c
+++ b/drivers/hwtracing/coresight/coresight-etm3x.c
@@ -802,9 +802,9 @@ static int etm_probe(struct amba_device *adev, const struct amba_id *id)
 			return PTR_ERR(pdata);
 
 		adev->dev.platform_data = pdata;
-		drvdata->use_cp14 = of_property_read_bool(np, "arm,cp14");
 	}
 
+	drvdata->use_cp14 = fwnode_property_read_bool(dev->fwnode, "arm,cp14");
 	dev_set_drvdata(dev, drvdata);
 
 	/* Validity for the resource is already checked by the AMBA core */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
