Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BF61B139
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 09:35:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EvI+cqsXh2q8M39wLq4CtEyN2DrT3JYUasebRaNWIv8=; b=K66J0Fz86Iy9UhQ3LmvC7laCK/
	CpA4um5gG8gG5NxTXfrQAIGJeTA1GvzAALymB/hTfNcJh96fTfMMU8V0KgbLYKzmz6m8lln67p3FC
	nBT24T3LWoTdoWE+8cZdqHWTXw7bF0ilSn+BNeS0qAxd6BF1sRbffxHLRP3DVfr15ZbIGgq+bD56l
	jhwC1JclSdM9Ug9S1CdzELl10S/LBtiLE5xFHSJwagFTAhIzNRxJkfn6am/13kiR37jWL1MivIZg9
	vk4kThjs8hlzJRQzOz5BuoDGqt2LeGqPCf0DULYVNwxKbGAwYMfGXbkaJkP86vNth6fqeTxVYjVuv
	VhZgXc3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5UD-000400-2j; Mon, 13 May 2019 07:35:01 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5Tx-0003lU-QU
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 07:34:47 +0000
Received: by mail-wm1-x342.google.com with SMTP id j187so12560115wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 00:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SrKOrxCUTi42whkmh8C32Tg5zmMnBqJytzi0/en5Cy4=;
 b=phXvz26iMBHGz1Fgu8fxkESf2xt31+02S9dZ5N6nuqO/Z0Y4+omR0nsmOJJb0TQkMX
 XhzqVUVjdw1LOZzb3bhk+rNoKc6NsLvMTb0SZmodCPiVXZ/kyQvGD3BPz824PnLdW2pY
 2TqPggNDFxGgZDzL9Ta7pcUmLPYMJsMZ+RjxWucyA14SHUk/4zEeksnBaOicyVK0PIAr
 I1+1aozZH8VkwNb0+EqoRwMuczz59qw1WpZti7AQAaYXyn+PSW4h7shqCVTzOYGlPlzn
 Z0BMtT8P9zQO4uCghRqT4aTP1AFHbIqW1H1E8wf/LQGvH6ncvPYAl1oWChf8y3Zx7MpY
 S5KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SrKOrxCUTi42whkmh8C32Tg5zmMnBqJytzi0/en5Cy4=;
 b=DN0mI7R7vbk1b0JXt2qdVfbpH2BfHQ4cmZQWrRK77c8QBB8SwrUS02JOUXpCWhsm85
 9UbwgwQjIqIPWiY+U43HFw6Pmk4dKCV+7vSgcB5R3FqKGHVnhtfaHQbVFhGUqOXrRN/P
 ZofSSUFijzucAukagkEuTi6TsgvAw7Y9tPUjJk9rglUnNiDocGKfqCWD6WwsVfoqdbra
 54DdDTniKDgL4+ItxaJ1nE0bPG0824UFyATm8FwkeGsmJm4GJq+DsHKW+WfyG7bFRzoq
 e7VM86ldJ1iTPfzk2si3YxFsD/M+FAk08ffjsJuAIurTU/+K3QVeu2nWV1m5JMtCVsd1
 KQhQ==
X-Gm-Message-State: APjAAAX6XOjuXi4EU8AB0r39YzrnMTYrz2HmyYz1ymqp57H1Q34bCfcb
 hEEqrk30HqQVkAvOn2XiudWkcT4eAss=
X-Google-Smtp-Source: APXvYqyxFA25Gtez8Oa7moTqe7JIAnTCxZbpNYt+pUAEHYfAL5o0skgCCz8F858El1d+hev5N8CdVw==
X-Received: by 2002:a05:600c:1109:: with SMTP id
 b9mr14338717wma.77.1557732884212; 
 Mon, 13 May 2019 00:34:44 -0700 (PDT)
Received: from localhost.localdomain ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id h14sm1009883wrt.11.2019.05.13.00.34.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 00:34:43 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: linus.walleij@linaro.org
Subject: [PATCH 2/2] pinctrl: stmfx: Fix 'warn: bitwise AND condition is false
 here'
Date: Mon, 13 May 2019 08:34:29 +0100
Message-Id: <20190513073429.12023-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513073429.12023-1-lee.jones@linaro.org>
References: <20190513073429.12023-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_003445_857290_0B28295B 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: amelie.delaunay@st.com, Lee Jones <lee.jones@linaro.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

drivers/pinctrl/pinctrl-stmfx.c:441 stmfx_pinctrl_irq_set_type() warn: bitwise AND condition is false here

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/pinctrl/pinctrl-stmfx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-stmfx.c b/drivers/pinctrl/pinctrl-stmfx.c
index 074c8fa3e75c..eba872ce4a7c 100644
--- a/drivers/pinctrl/pinctrl-stmfx.c
+++ b/drivers/pinctrl/pinctrl-stmfx.c
@@ -437,7 +437,7 @@ static int stmfx_pinctrl_irq_set_type(struct irq_data *data, unsigned int type)
 	u32 reg = get_reg(data->hwirq);
 	u32 mask = get_mask(data->hwirq);
 
-	if (type & IRQ_TYPE_NONE)
+	if (type == IRQ_TYPE_NONE)
 		return -EINVAL;
 
 	if (type & IRQ_TYPE_EDGE_BOTH) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
