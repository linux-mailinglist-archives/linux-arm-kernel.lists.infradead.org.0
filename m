Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C08D8C20
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 11:06:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xeqky8QhO2s6dJQ3kYSiGPYPan5Z9eA1sPPZ73MQZxo=; b=OKYDAzxrCTGDQF
	srZtVl059gp9sNPiCKCslLm1Sz4fCq+Of4obHNTe1GJoklJ8IO4QvbbAZT5GgsXgzyTruKVkPLtGb
	jeMaiDCrsNUynRbkd8n8FnIi/h/6xNvBZADuWCYWigmnmKT/2T4IilWyRV+YRHs/66wVObi1/rOr4
	Ol7CchHZUZQKfCKdA+J/NKl0TW3tEw74Ux5D7zezg8rHFnipJLnbbzU0/8F6FDrRzUyRBgI+BBf/E
	X32O/avxKG6zOJxDt5Fd6+y+SX6ir/YDVXRkiQkafZm4xzNrbcMYJl5e26uIfdNpo9lJSG3brdpbA
	3DrUNNCiP1V7+5gZcxrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKfGT-0002gn-JW; Wed, 16 Oct 2019 09:06:41 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKfGK-0002g9-PK
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 09:06:34 +0000
Received: by mail-lf1-x143.google.com with SMTP id u28so16803909lfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 02:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=3rHYjSn/fPz1RWaGjBzSPmxHyXb9HMcMJGjWVoGxGPI=;
 b=dZcrc7drlitYAWv20+Jq+uoC3xeizi2y47hD+dcBI2t4uPjxpcp2vBpQlHoDF2Mtk0
 ApHd8bnow5M64tUmafJ4NE16aNjESmPHQ7PRdmzIMK/l3uKLHUsmmCay9YyLMU+8ChGb
 X/aIMvNuszj82rbR1lnz7ozOPesUo7C2MHpJg045uuFs8SCPlLzfyHoov7Qmu3M2rbNq
 1/AqGNaDpIx898NzGen4hZhvULlOG+xzHUXPFNMPAqlvcfkrxgm/4mY87Cq105PUINXw
 JqH0sIBaNqxewfqATCc+7CjF58hfRGq/bsfSrjBGxmOQwmOWZNvgSDIJIqHZfQ6+7Xud
 kXPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3rHYjSn/fPz1RWaGjBzSPmxHyXb9HMcMJGjWVoGxGPI=;
 b=nyGluovl3MWnIyXhaMXZGUqTSsXvTXAJSffw7LFf3Y3zXwZyJNUupo7+T3D3RUUCBw
 D+Cn3Tpifb/8Lez7J0xnq5klTB8fn5tf7qMe1IPxYUyK6MHuesnkKka7EHaEV7yDiSQy
 QDkBsTAybKoNH27ZedIzs8Fq8jLZybt+DT51jCHhy5eDrybQpnl6eGIxjxqwArzjbGAw
 ZmxJY99e6GYL2EonvgaCNpsQkOasDKHUVjkD5WhVTAZiZLS00ZTtWt/w8+CIscyxHZBN
 TpkTFnwEzBk4ccbChUuHTtIm4aqIvDGmJ2KSab6x3q1qKE86+bR4jTHVykZ1G+wIPZKV
 SXBg==
X-Gm-Message-State: APjAAAXaUA/JGh5lNoWAiNGLN00da9hTkyZtIURfqBDvau3tj2crDC7Z
 uYvYJM+8AAYjBQy4mGPMa4s=
X-Google-Smtp-Source: APXvYqz3/NNjkhaIQyTJX9b35fU8jvLbes0EA17X2xo/PmZ8MWdseCUjfXMlz7gWyLq9Kpg4hqy9SQ==
X-Received: by 2002:a19:c518:: with SMTP id w24mr5616642lfe.14.1571216789905; 
 Wed, 16 Oct 2019 02:06:29 -0700 (PDT)
Received: from localhost ([78.133.233.210])
 by smtp.gmail.com with ESMTPSA id v203sm215365lfa.25.2019.10.16.02.06.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 16 Oct 2019 02:06:29 -0700 (PDT)
Date: Wed, 16 Oct 2019 11:06:12 +0200
From: Marek Bykowski <marek.bykowski@gmail.com>
To: mark.rutland@arm.com, will.deacon@arm.com, pawel.moll@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCHv2 1/2] bus: arm-ccn: Enable stats for CCN-512 interconnect
Message-ID: <20191016110612.17381ad6@gmail.com>
In-Reply-To: <1570454475-2848-1-git-send-email-marek.bykowski@gmail.com>
References: <1570454475-2848-1-git-send-email-marek.bykowski@gmail.com>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_020632_847765_E866C7F3 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.bykowski[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [78.133.233.210 listed in dnsbl.sorbs.net]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatible string for the ARM CCN-502 interconnect

Signed-off-by: Marek Bykowski <marek.bykowski@gmail.com>
Signed-off-by: Boleslaw Malecki <boleslaw.malecki@tieto.com>
---
Changelog v1->v2:
- Change the subject to reflect where the driver got moved to (drivers/perf) from
  (drivers/bus).
- Add credit to my work mate that helped me validate the counts from
  the interconnect.
---
 drivers/perf/arm-ccn.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/perf/arm-ccn.c b/drivers/perf/arm-ccn.c
index 7dd850e02f19..b6e00f35a448 100644
--- a/drivers/perf/arm-ccn.c
+++ b/drivers/perf/arm-ccn.c
@@ -1545,6 +1545,7 @@ static int arm_ccn_remove(struct platform_device *pdev)
 static const struct of_device_id arm_ccn_match[] = {
        { .compatible = "arm,ccn-502", },
        { .compatible = "arm,ccn-504", },
+       { .compatible = "arm,ccn-512", },
        {},
 };
 MODULE_DEVICE_TABLE(of, arm_ccn_match);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
