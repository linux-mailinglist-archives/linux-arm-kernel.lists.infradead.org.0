Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF1BB5E6E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 09:56:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQ3S1pQNaUjbl8TX7FeVfHB0If+R7fn09s2T8uLoyQ4=; b=GIUa7oiQXHOz6Y
	8V00kLx5R9Gzvajjboj25Wae+5Bo8zEhdSk8k8tYyFtmJWNlhmEDYMrU0RG6HRRv0rRYBKCHu6/Tf
	pmoE6R1UEH6P+fEMFf4TcD+7Iq7AxVtUWBTD84SrJK3dvOhnp5gDSKTIQc1XeYjTPhpsAvnlrR4eH
	0MxVS2BqXkvgINz0Wraq2MKuTlZdCL90tk6d2tPx1w6/LIBH9tYFL/bagQAXOQCucny+oCzwuLUWY
	A5ICSCCmtHkrhgsftfFb9Hmsn4gIDiSZKgnRG91KwHo+4jO65IGjfgPwyoGQDwQ5pVJtF4+iv9eld
	yEINQf9yEUVTkmrneKRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAUp4-0003yK-05; Wed, 18 Sep 2019 07:56:22 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUmU-0001JV-Nz
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 07:53:44 +0000
Received: by mail-pl1-x644.google.com with SMTP id t11so2753900plo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 00:53:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PJG4R+fWj0sM0gBzRDWpk4Qq46V/CmHI+1H6OVyYxow=;
 b=LPLquoAAfdRTAHtbCvmLo89FOddl3kLcmoKcvwkZ0Aw07CYrKMn+rFIQ2SMea735AQ
 AhnhBuxblGpnPuo+csACqsv4/PROmfKoa5EOp8kW373rASStMsZzdD+2vvLXcKZJcyxi
 2ImXKEAbpcXEmkfMjE0o+4eZnp8Xd6U5kObCj+vhHZLUxNrHqO3Fb2vGNuc4KjPolu9a
 eNwCsdLN6k8bFLCyXjsqYRR6Fs0KdBq96+GkBgYg897380aPwILuaA9ey3/ifpesPQLU
 w68JEyzljbnOCXit4ZJLKveLJOqxOvOZIgwQR0ydrTc51rSAGBZehoceinBxXYmxAzwE
 T+Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PJG4R+fWj0sM0gBzRDWpk4Qq46V/CmHI+1H6OVyYxow=;
 b=IcWV5AIrIU2sSWlGQ07Yuw1tzA7YDHLgkOY2uaAqGY8Gs4N7geJlFeenM4HcHK2nDX
 0F7rI1yIWWeONwYE5c2rKNNAZlMu1obdVuUuigZbTqrAx14SJsDtOVjMqSGtdDE7CYnn
 W3Y9SlzxBebhLt2GvQK2gutiXNkop9EyrrpSGx9LnlFhtuPiiCALqM1M2gx8x/FtNi0j
 /2eCvmylC2LSXaH59jQZTcTzCYnh2UvABv0N2k9ZpFa/Wgdx3QxcG3ucyj71qsrheNFT
 W0XYhuCh0UQqG5sqb68oogvf+w8owtMoKw8u8MefkAvgaTHQL1xJYe30OY9srwmKJLm0
 SMJw==
X-Gm-Message-State: APjAAAW0WLjXDLZ4RLDoEU3Yk5qB99LE9Yf0yhKhbg/pIWAA0kxdLZy3
 dvPoQLxcaEV+0E71ecAIPUI=
X-Google-Smtp-Source: APXvYqwvA2Z/8K4t3M3bEg5QWzJdOEqfLT2DZsU8W/BmRASwQDwnmEUZ8gxHBxKvOMXGNHlizN8Mqg==
X-Received: by 2002:a17:902:8d87:: with SMTP id
 v7mr2716294plo.229.1568793222048; 
 Wed, 18 Sep 2019 00:53:42 -0700 (PDT)
Received: from localhost.localdomain ([2001:268:c147:d9df:f819:e399:825f:f2dc])
 by smtp.gmail.com with ESMTPSA id h8sm5580715pfo.64.2019.09.18.00.53.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 00:53:41 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@jic23.retrosnub.co.uk
Subject: [PATCH v2 6/7] counter: stm32-lptimer-cnt: Update count_read callback
Date: Wed, 18 Sep 2019 16:52:47 +0900
Message-Id: <d8c0acde9e5de3930397cb184fd97c1e1372642a.1568792697.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1568792697.git.vilhelm.gray@gmail.com>
References: <cover.1568792697.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_005343_458582_68E61369 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

The count_read callback passes unsigned long now.

Cc: Fabrice Gasnier <fabrice.gasnier@st.com>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/counter/stm32-lptimer-cnt.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/counter/stm32-lptimer-cnt.c b/drivers/counter/stm32-lptimer-cnt.c
index bbc930a5962c..73bb773f5e6d 100644
--- a/drivers/counter/stm32-lptimer-cnt.c
+++ b/drivers/counter/stm32-lptimer-cnt.c
@@ -377,8 +377,7 @@ static enum counter_synapse_action stm32_lptim_cnt_synapse_actions[] = {
 };
 
 static int stm32_lptim_cnt_read(struct counter_device *counter,
-				struct counter_count *count,
-				struct counter_count_read_value *val)
+				struct counter_count *count, unsigned long *val)
 {
 	struct stm32_lptim_cnt *const priv = counter->priv;
 	u32 cnt;
@@ -388,7 +387,7 @@ static int stm32_lptim_cnt_read(struct counter_device *counter,
 	if (ret)
 		return ret;
 
-	counter_count_read_value_set(val, COUNTER_COUNT_POSITION, &cnt);
+	*val = cnt;
 
 	return 0;
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
