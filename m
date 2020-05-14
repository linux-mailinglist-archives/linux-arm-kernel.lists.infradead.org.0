Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7971D29FD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 10:25:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PrDxRLO94e1OJgF0cg+qRLzPE7vmNkOpOXF+4mSxhv4=; b=FAB
	rEgBA4d+6EnHbgJMfbRp+sivzqBU5asILOeySIGkNgurRgoNAcyZ5Je4c5x+QoOtVfdBjpXN0wbFa
	HMG4ncClPGhNAvQGV3lrA/lAR0ki72q9slHOipOF3gZlWMZvpczYiVHCtZpjucoxgEapGS29tQ7XP
	HxDKaN/YlV+hG5mfsUWI5Eo7fuSOCi883HmsyJPS5zNK7siKjGCzQU+pC4wUE1Jm+KlTCNDUe4FjU
	6cOBC85FdR+zaYLhuMuDhi+BP5ylAKsa9HcDze7ArWglb6uQ5CX/hVWKvCm+SY0Pe8P1sYL8VLqCP
	9RW5DSuch3KBXb2+cbC6Y2cuH3P0MmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ9BP-0000dz-JO; Thu, 14 May 2020 08:25:35 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ9BG-0000dS-74
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 08:25:27 +0000
Received: by mail-wr1-x442.google.com with SMTP id e16so2695451wra.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 01:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=ZbgmSmFGHrTn1PgWbNozA+/Dhn/9LaUmkwFWI+wUR/I=;
 b=wO+FIfxEhhg0FIndKHw5mC+KR9nIXPmVUmFr2o2AT90th3322mJsYGDc1GHqdR3wRM
 E+4l8zjkhAWR5GPOxqEhB8oL1MWbe6eSkASr0dNjKZnYCH1PgGdG7qtIfmm049ekRJv8
 AYDH42N3eHwKyuwo/GZLQkOHG1KFXCto4mVVLNts7bpJHjUQhA9vXwidawYgBCeVQzQR
 b+Te5bSfQMmVnBj6z9+2tg1kmWg+bKOEle5xugMRZ5ubVI8G98jORAuwo2lqpR8HHMMH
 Eqk2se46TEeIAHzg0WD1p9c9uWi/3Ne7Twp7F8sfmTERRvOqj5Clw+ung56SMPs9tCrq
 mA9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ZbgmSmFGHrTn1PgWbNozA+/Dhn/9LaUmkwFWI+wUR/I=;
 b=m9cMUznw7mfToUZ4pDrKl4xBFM/JgylRrYoawBJ0IhGopCE2eDXo6reVzbErsvN47n
 Q7Bp+aReFrE1fgpmpceOnuVsQoZ/5UAKNJMyu6xGgqP/BQdfl5QDjoBxV21LGqkBTRNp
 IS8L/SJRQzEkx2h+tttVJkYxgef/C3owAVdzMAoyzb4/U40E1z4lHXU2wT6D75SBH1Kk
 P9Bw/HkKhpI6IoH1YcF/3hSWogwV8W+WhPTlSU3un8XYQuoDIW2MXckWYnBcWIrX4DQ5
 WbzL0w4zru7F6QrfPlNKXZ55ncf5SEAHZbTLi1Fc5ssO9TYbVa7hHavbgRB575DcCvDo
 qOyg==
X-Gm-Message-State: AOAM530uLQOvEr82ROZw1TiV5fjrlzPtS1wZEGFt44HAWjoETbHXOUP3
 3iPEhPOXUW35IZDxVHvWBPAkA2Eab/k3iw==
X-Google-Smtp-Source: ABdhPJzxyGw1QivQbkc+cA1lizk0D/rln2dXXvS9C0IXtdTX5Z+I4vGLO+GUrVb89lJquwnukUo1jQ==
X-Received: by 2002:a05:6000:1c5:: with SMTP id
 t5mr4344696wrx.229.1589444725034; 
 Thu, 14 May 2020 01:25:25 -0700 (PDT)
Received: from lmecxl0524.lme.st.com
 (2a01cb058702ff00bc4b798f4f30d41e.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:bc4b:798f:4f30:d41e])
 by smtp.gmail.com with ESMTPSA id w15sm13739673wmi.35.2020.05.14.01.25.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 01:25:24 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] firmware: arm_scmi: fix SMCCC_RET_NOT_SUPPORTED management
Date: Thu, 14 May 2020 10:24:28 +0200
Message-Id: <20200514082428.27864-1-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_012526_255961_7EDF2ADB 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: etienne.carriere@linaro.org, linux-arm-kernel@lists.infradead.org,
 sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix management of argument a0 output value of arm_smccc_1_1_invoke() that
should consider only SMCCC_RET_NOT_SUPPORTED as reporting an unsupported
function ID as correctly stated in the inline comment.

Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
---
 drivers/firmware/arm_scmi/smc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
index 49bc4b0e8428..637ad439545f 100644
--- a/drivers/firmware/arm_scmi/smc.c
+++ b/drivers/firmware/arm_scmi/smc.c
@@ -115,7 +115,7 @@ static int smc_send_message(struct scmi_chan_info *cinfo,
 	mutex_unlock(&scmi_info->shmem_lock);
 
 	/* Only SMCCC_RET_NOT_SUPPORTED is valid error code */
-	if (res.a0)
+	if (res.a0 == SMCCC_RET_NOT_SUPPORTED)
 		return -EOPNOTSUPP;
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
