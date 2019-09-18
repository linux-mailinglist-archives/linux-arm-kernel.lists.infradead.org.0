Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F80B5E6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 09:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKYAABCs8i6/VBhvcMWXhkWczuM0UP3B/ZTKzudXSLA=; b=SnbK64B6hRCC0I
	2AU/8d7R7mggoL5DUZ5tdxKa+oYWsCZgvh0qldiaID8p8e6YKDUoG+8B96cZvG9F345+KbmOLPQNR
	H+rUT13fUyJXUtNPIoH+gGA6bB7BVMuLkOcIkLqUJQgvTkN626+rMGcuSqEcDG1LkNdhBrLcPANKf
	W0EN5KArOtfCg/ekN1aT3oiwR7FHRkhSuGR43xIlh41oEmuQ/32JrhW1tXLIds/4f6/nNJ8vbAlrX
	1t70wmoYkfgZqeZ9h4tfeDSd8iwd3pWObdl7jJ2ad0vbaLgzj6PfVbSfudkPJRY5kzyKZP0FInVTM
	A6CarHck/SJ+v+jtjQmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAUoZ-0003cU-De; Wed, 18 Sep 2019 07:55:51 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUmP-0001Ft-IA
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 07:53:39 +0000
Received: by mail-pf1-x444.google.com with SMTP id q10so3846849pfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 00:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jztD0q/pSM8JUi6mwAcEWzxcgZfTnzpK2xWBV2x6KlU=;
 b=Um9D2iCr8IeMcdqzFKJCNkI4+H9iquS7B6UFk6cgl4jXkAirxwIuJ95qkKTrUhPsfT
 gTJcQMEthS4bzi0GfhSAd52gBR5BnadIzveTBTJe5gXEKvFl/zkrZBG1JQAG3wwASiDa
 INEDf4012fWYH/QZwcG3VHMmcNQaX2TVdkk3ncLyDT9fs5uPELiztes5FG8XMNlvN0fi
 YM0fnrpbCFQ0TSpfLVRR3SyTJKZH5qDBhLa0bfCyr2euLMqndD+EYffJSPfQ3LI5rTg4
 VbrNEubms5qPtsWb331YMEQTqHr4o0GWM0hcAlBaJwAVOpVN8q53IHXZBOA7Z1F9Hfxs
 DeqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jztD0q/pSM8JUi6mwAcEWzxcgZfTnzpK2xWBV2x6KlU=;
 b=Gh3FhdRAyo3JIIF0dvaAlMaKSeDGuaQ3ULGVig4FLVud3Ir513IId3OjUsPO9acicj
 c1KPcNRw+cDGngB0VH3eunCuoS9zKT6ThiH49DbwmqRcRgxb5Z/+otjODhU4cOyX+K9m
 IobwTbSFqjg8DBJ/SY2qEqKfkISiGe/SKAqC/BdywMO3KiQ9d1VgspF9fuhDiKkETjuJ
 cQbJjuD5cXqM0aPqpWEEFGHjRgLqexS7REyhkan4ddkFoviEjCxsHQO+3U41Vn9zcj2T
 yKw58uS9ZjRY87Ka+jfCB2Ey9CDG3bRSXeUfJ6xXGJ0jqYYzRO95B/iRPpwOrc7tgbHl
 ivFw==
X-Gm-Message-State: APjAAAW3ETGufYOWQoq5zLWiBtQFPtAwIaCCoqabuyY5vx4HOB9tnaPJ
 Pd68qIO3M4hrTNp9kSvo/Q4=
X-Google-Smtp-Source: APXvYqxxqPoVDdtGr5+T574vmF9JYrxp2FWnYti4I+/c5S8B3oWrqRqPteeAZ6AyHkDVfV3S2ouo0A==
X-Received: by 2002:a63:2004:: with SMTP id g4mr2593156pgg.97.1568793217016;
 Wed, 18 Sep 2019 00:53:37 -0700 (PDT)
Received: from localhost.localdomain ([2001:268:c147:d9df:f819:e399:825f:f2dc])
 by smtp.gmail.com with ESMTPSA id h8sm5580715pfo.64.2019.09.18.00.53.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 00:53:36 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@jic23.retrosnub.co.uk
Subject: [PATCH v2 5/7] counter: ftm-quaddec: Update count_read and
 count_write callbacks
Date: Wed, 18 Sep 2019 16:52:46 +0900
Message-Id: <6925fdda26c57ce29d373f8cb01a572cd7b92c0f.1568792697.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1568792697.git.vilhelm.gray@gmail.com>
References: <cover.1568792697.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_005337_639950_D29B64CE 
X-CRM114-Status: GOOD (  10.69  )
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

Cc: Patrick Havelange <patrick.havelange@essensium.com>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/counter/ftm-quaddec.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/counter/ftm-quaddec.c b/drivers/counter/ftm-quaddec.c
index 4046aa9f9234..c2b3fdfd8b77 100644
--- a/drivers/counter/ftm-quaddec.c
+++ b/drivers/counter/ftm-quaddec.c
@@ -178,31 +178,25 @@ static const enum counter_count_function ftm_quaddec_count_functions[] = {
 
 static int ftm_quaddec_count_read(struct counter_device *counter,
 				  struct counter_count *count,
-				  struct counter_count_read_value *val)
+				  unsigned long *val)
 {
 	struct ftm_quaddec *const ftm = counter->priv;
 	uint32_t cntval;
 
 	ftm_read(ftm, FTM_CNT, &cntval);
 
-	counter_count_read_value_set(val, COUNTER_COUNT_POSITION, &cntval);
+	*val = cntval;
 
 	return 0;
 }
 
 static int ftm_quaddec_count_write(struct counter_device *counter,
 				   struct counter_count *count,
-				   struct counter_count_write_value *val)
+				   const unsigned long val)
 {
 	struct ftm_quaddec *const ftm = counter->priv;
-	u32 cnt;
-	int err;
 
-	err = counter_count_write_value_get(&cnt, COUNTER_COUNT_POSITION, val);
-	if (err)
-		return err;
-
-	if (cnt != 0) {
+	if (val != 0) {
 		dev_warn(&ftm->pdev->dev, "Can only accept '0' as new counter value\n");
 		return -EINVAL;
 	}
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
