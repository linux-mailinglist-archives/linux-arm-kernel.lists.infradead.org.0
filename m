Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDA31C9488
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:14:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x053FZY4rEuGfIPO0ZxTRoO5yBXot/JpK456v+IRAiM=; b=tU6pgeP6M8Due3
	KjB9Q9FgOAlo10BqRplo8DfBRS55BzaPvIom+LCkW9mllCy06A8RxzrLoWnzIKj8fMZDHYmA7pvJn
	AnDuBsQVDceYBrR/N6hCDV5RDqRBdNULFLKcg2JPynMCZBNtnlLVfLZTje+0ituUSdKncn8D0DW7m
	bubrMZ0p85EqHujXJEQXQEbT/6JRN+QY4FDvFqK3qfevEDcjsg5hVzFpkgiMBYSX8EqCq2t6GbiEJ
	vH8ajIk82m7HXfLnqRpZu1a07Y4LfomFbUllukCjKqTftTdbs3u7TlwCnSZJ8vcc7+3qjmSFOnZeQ
	k7kuEIv5914HWBp6Q2cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWiE7-0001Wf-PA; Thu, 07 May 2020 15:14:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWiDO-00017P-Lc; Thu, 07 May 2020 15:13:36 +0000
Received: from embeddedor (unknown [189.207.59.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 42AF420936;
 Thu,  7 May 2020 15:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588864413;
 bh=GTM2+eUOtQwa+GzRb1C4IYjJnbBggbNRXgYQGHV5x9A=;
 h=Date:From:To:Cc:Subject:From;
 b=y3WWJF3pJSf1WcaUBDe37+/p02rqqfNAnvOmXlDx0p1T9syX7iGkiuC5STccIAiPn
 wbj/8lguQ9yaPDCwmud1DJyW1vPnBqGDeO7MA2Rk/nqe1uvMMWgXf2IAbZJjB5jJgD
 0ZkSonIJUv+yDvHwaOaYErDLKF/Unjt6pZuHDeMU=
Date: Thu, 7 May 2020 10:17:58 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH] wcn36xx: Replace zero-length array with flexible-array
Message-ID: <20200507151758.GA4962@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_081334_862188_B63F3DF5 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 wcn36xx@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertently introduced[3] to the codebase from now on.

Also, notice that, dynamic memory allocations won't be affected by
this change:

"Flexible array members have incomplete type, and so the sizeof operator
may not be applied. As a quirk of the original implementation of
zero-length arrays, sizeof evaluates to zero."[1]

sizeof(flexible-array-member) triggers a warning because flexible array
members have incomplete type[1]. There are some instances of code in
which the sizeof operator is being incorrectly/erroneously applied to
zero-length arrays and the result is zero. Such instances may be hiding
some bugs. So, this work (flexible-array member conversions) will also
help to get completely rid of those sorts of issues.

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/net/wireless/ath/wcn36xx/hal.h      | 4 ++--
 drivers/net/wireless/ath/wcn36xx/testmode.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/ath/wcn36xx/hal.h b/drivers/net/wireless/ath/wcn36xx/hal.h
index 6ba0fd57c951..aab5a58616fc 100644
--- a/drivers/net/wireless/ath/wcn36xx/hal.h
+++ b/drivers/net/wireless/ath/wcn36xx/hal.h
@@ -2240,7 +2240,7 @@ struct wcn36xx_hal_process_ptt_msg_req_msg {
 	struct wcn36xx_hal_msg_header header;
 
 	/* Actual FTM Command body */
-	u8 ptt_msg[0];
+	u8 ptt_msg[];
 } __packed;
 
 struct wcn36xx_hal_process_ptt_msg_rsp_msg {
@@ -2249,7 +2249,7 @@ struct wcn36xx_hal_process_ptt_msg_rsp_msg {
 	/* FTM Command response status */
 	u32 ptt_msg_resp_status;
 	/* Actual FTM Command body */
-	u8 ptt_msg[0];
+	u8 ptt_msg[];
 } __packed;
 
 struct update_edca_params_req_msg {
diff --git a/drivers/net/wireless/ath/wcn36xx/testmode.h b/drivers/net/wireless/ath/wcn36xx/testmode.h
index 4c6cfdb46580..09d68fab9add 100644
--- a/drivers/net/wireless/ath/wcn36xx/testmode.h
+++ b/drivers/net/wireless/ath/wcn36xx/testmode.h
@@ -20,7 +20,7 @@ struct ftm_rsp_msg {
 	u16 msg_id;
 	u16 msg_body_length;
 	u32 resp_status;
-	u8 msg_response[0];
+	u8 msg_response[];
 } __packed;
 
 /* The request buffer of FTM which contains a byte of command and the request */
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
