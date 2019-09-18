Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B65B1B5E6F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 09:56:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TeG56OKKSRT/G7Pwgr9m8wR6v6qpONokb0KTb1ZP460=; b=B16fFIjheuzZBp
	sxoqgpUSG8BMZmVdXB0Z8P6yPxNHvJ7aMUh6G3Tj0WY3fV6IxVYUU2n9gyR4NWws59ewCYPb2SOPm
	KnXchQV+vWahuBZKXQ4O6GASk71tFbManzzAmKN/1eX9IboPUa+mD06OzcIzL+lDcxeY6GcBcznNp
	PyJ2scxRDYdVFfgGfjP7jowQb01dfA+vXr/NBatdeqApX4VcSkATKrWO2s49Z3Dar9yZ1ih+xrsa+
	Sph21FuqllKVf5NYZkgyYqre7vBlv6eOhwZPuyyIxkVLIWELLCCv5bT218Blt/3jwjAKaz0B+nKsT
	o9JjWWXDZBpwZaqwJTwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAUpK-0004BI-UE; Wed, 18 Sep 2019 07:56:39 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUmY-0001Mi-Ih
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 07:53:48 +0000
Received: by mail-pf1-x444.google.com with SMTP id b128so3847055pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 00:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wv4la6Y6FsJg+2v49trmGgdAwNGUcPB7OMZV54Bj2EQ=;
 b=gBsEGCLIoG9yZOLSPABp5DkqpxUM9VPF+gft6+M58mitntGiBP2B8ZmrdxOFtVQXbn
 Ri3QHHyEmNUfyQSyX52qq4D7m9tZmGEhy7E12ATGIl8xUL2fdr6MQC7B7UgLocy3qRN2
 zKvq2O6kUZNUZUjYg9ZTnJLo1cAZ3DagU2gA6jbq1mM9d7b8TS+CBxCYv73a21JsSweL
 YgDq8thCF1g0TVAs5oSjbcIWdTfUOK6BABgoT/pslldal2AWK0yke8OqcUmbkyBbntit
 /xJdKQ99zJ/XgOU8AdprPj5kAjHHpD7e2Vrr4WeHEetM6hB5L+So+ClfGNokdxjz5+Vw
 UwIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wv4la6Y6FsJg+2v49trmGgdAwNGUcPB7OMZV54Bj2EQ=;
 b=LTgKpgAsdLaWZrBLkgtiff1fpm0UirZFZFjdGseKHyWd9czINvkmo0Ro7aqD85GWg0
 fdEcJW4zH05afY3iwj3rPfYiaVrnkwqF3ZYqupO26eYIVdLXoNcbKUFiEtjEoTrLhXfh
 5mD7AzlyBo93za1G4SEMw3zC1VdcZhWNCj5j106bNczNnA/JBYPSzJx4jKVcb1zt58tD
 DZod4qWwKVUABLkkI+no8HtlGdUJ2XYKDHJemCsSB8O+R/l0nWuetWdGRSgEKOhemAiw
 js3tkXCy0R+u48xYoEtQYUl0SKNiYLWPde/+o4qlhPEUWWSYlaL6TbG8nJcZ44S6DiFA
 NWLg==
X-Gm-Message-State: APjAAAVhIzU/LODY1QQbTnx/htaS2PjmVoQ3NwGOEz6fQRybAswrOpMY
 LFcgQiOTpAy5EqUoIPu/CaY=
X-Google-Smtp-Source: APXvYqyk7VLAQdjAwuVNeoLOS2lLrS99HPfR5mFLVgsHVxJ42p5JUMRjPPcgX6gO5Y/xqCH3Tv6Kyg==
X-Received: by 2002:a17:90a:b108:: with SMTP id
 z8mr2370791pjq.64.1568793226157; 
 Wed, 18 Sep 2019 00:53:46 -0700 (PDT)
Received: from localhost.localdomain ([2001:268:c147:d9df:f819:e399:825f:f2dc])
 by smtp.gmail.com with ESMTPSA id h8sm5580715pfo.64.2019.09.18.00.53.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 00:53:45 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@jic23.retrosnub.co.uk
Subject: [PATCH v2 7/7] counter: stm32-timer-cnt: Update count_read and
 count_write callbacks
Date: Wed, 18 Sep 2019 16:52:48 +0900
Message-Id: <327fe01b7ce4feb0fc3d854393691664a6a36b40.1568792697.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1568792697.git.vilhelm.gray@gmail.com>
References: <cover.1568792697.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_005346_762818_BF541DD1 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 patrick.havelange@essensium.com, linux-kernel@vger.kernel.org,
 William Breathitt Gray <vilhelm.gray@gmail.com>, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The count_read and count_write callbacks pass unsigned long now.

Cc: Fabrice Gasnier <fabrice.gasnier@st.com>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/counter/stm32-timer-cnt.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/counter/stm32-timer-cnt.c b/drivers/counter/stm32-timer-cnt.c
index 644ba18a72ad..839083543323 100644
--- a/drivers/counter/stm32-timer-cnt.c
+++ b/drivers/counter/stm32-timer-cnt.c
@@ -48,34 +48,27 @@ static enum counter_count_function stm32_count_functions[] = {
 };
 
 static int stm32_count_read(struct counter_device *counter,
-			    struct counter_count *count,
-			    struct counter_count_read_value *val)
+			    struct counter_count *count, unsigned long *val)
 {
 	struct stm32_timer_cnt *const priv = counter->priv;
 	u32 cnt;
 
 	regmap_read(priv->regmap, TIM_CNT, &cnt);
-	counter_count_read_value_set(val, COUNTER_COUNT_POSITION, &cnt);
+	*val = cnt;
 
 	return 0;
 }
 
 static int stm32_count_write(struct counter_device *counter,
 			     struct counter_count *count,
-			     struct counter_count_write_value *val)
+			     const unsigned long val)
 {
 	struct stm32_timer_cnt *const priv = counter->priv;
-	u32 cnt;
-	int err;
-
-	err = counter_count_write_value_get(&cnt, COUNTER_COUNT_POSITION, val);
-	if (err)
-		return err;
 
-	if (cnt > priv->ceiling)
+	if (val > priv->ceiling)
 		return -EINVAL;
 
-	return regmap_write(priv->regmap, TIM_CNT, cnt);
+	return regmap_write(priv->regmap, TIM_CNT, val);
 }
 
 static int stm32_count_function_get(struct counter_device *counter,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
