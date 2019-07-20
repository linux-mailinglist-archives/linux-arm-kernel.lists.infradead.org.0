Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 236BD6ED93
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 06:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cao7L8y3Y38TcoGKK5PJnr68QzaUZ4oVcqws+ic9MT0=; b=l6mzBGkzqRXnxO
	rN/+NqmHkWULxymJDjcEtZnPJtaO7UXBRiNv8twr5luPqjw7MLzD0ACSkURU+mn8a3AU1qYkhgAV/
	mfAWYCRRcWVpfXQS+tL4EqPXa/HKdzuzTVPWxcX+ETqrxMNoZi5KlrcUUAWp64JMr9MDBpugDUQpG
	hfV3SsgZU7d2P6PdLD19qz9h7NKZO/IeQ/KhVa9CVjlMp9GiqLaBGunpvgSdX7QPB6KezdaWS66Sh
	bTBo73/1lwgusdsI6m1iyT44qG2JBWyMUGlSE0lMFLS6b5kZlVNQSLxVWVYWYIfWXDZfWLrRv8ph/
	zP3G8QtYeAwuYbwbmDLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoge3-0006JD-IF; Sat, 20 Jul 2019 04:06:51 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hogdk-0006Is-GN
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 04:06:33 +0000
Received: by mail-pg1-x541.google.com with SMTP id x15so4937263pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 21:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=neC3zaA6/SjW//JOmms70Lu5HwOzIZBuLfb866mHmIU=;
 b=ZSc86vaxfnhWiLJ1Hf8++d35zLhCzVjggsH3Oq/7mh3pJvRMu+bDvh79QMHfwaUzaH
 rScA1Au0eU759BXhYzcQfH91XYYCXVChYga5OzkxjC9bHApuaBTaPTahU0RjmI66VhjD
 BTpOHgFbYfR0E/pNPdG0MQBwtRTIGdAQi+OWgLMBtLV1ToqJnVhOLY17O0eqtizEbZyO
 Sp6sNZfNuBdzIp+JZJ1M3znKjBjdq+2oKMYB7oOaXwpTuMlPvUOByej2EZtW61b7qqKO
 IqDFtKBSFk7wVOZm4SgiONPbUQqpE5my2syp96Cos3tP8h6r8+MXdachKdkEL8UGnR3E
 nE4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=neC3zaA6/SjW//JOmms70Lu5HwOzIZBuLfb866mHmIU=;
 b=s16XQaHHl4y8vj+0j0MYs4DYo1vZY3lto8dL6Dl/S5UfweZlwJYgpMSiDM3psy8FOE
 1SNZhEqpfO/vMwYV2VZUOcHmKyTOYRC7/jZ/Zg0oLI/elQM6WjQXjGosr0h9GhfZ/t8I
 crKUyyW/gaZOuA9jFE7Z4/i7kU93gWa3OZrLFcna/4jRuR9sVou/5hEV0AYIKYmhnDGd
 lnGpq42JhtnBXDlA3o8kL0dnKNjIIUA1yU7545mUyqwK81tT/DUcNNLLQi7hbYNgve5m
 drsqUo7eUIg+DDWn6mcQxekCQg7AxcL30waqwayaD7hiKz4D9HBtveWmxX6uEZP/UHT5
 zOng==
X-Gm-Message-State: APjAAAWHiExkCRZ/cYY2BozrYrR+ab6WRXqPfQ6wkkw6yuUuMjo1Usi0
 obqLZW12hKFM5X23jW/bGc8=
X-Google-Smtp-Source: APXvYqwUYFOL/TcGld7Rp1jjIRi5rUNxYovcaYjqYcnocQC0PeWaqupmaQT1SLQvnrRdS04EKuADCg==
X-Received: by 2002:a63:d23:: with SMTP id c35mr57533273pgl.376.1563595591261; 
 Fri, 19 Jul 2019 21:06:31 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id z20sm53985638pfk.72.2019.07.19.21.06.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jul 2019 21:06:30 -0700 (PDT)
Date: Sat, 20 Jul 2019 09:36:24 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Subject: [Patch v2] irqchip/stm32: Remove unneeded call to kfree
Message-ID: <20190720040624.GA10625@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_210632_583367_F4C9196B 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hariprasad.kelam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Memory allocated by devm_ alloc will be freed upon device detachment. So
we may not require free memory.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
v2: correct the subject line

 drivers/irqchip/irq-stm32-exti.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/irqchip/irq-stm32-exti.c b/drivers/irqchip/irq-stm32-exti.c
index e00f2fa..46ec0af 100644
--- a/drivers/irqchip/irq-stm32-exti.c
+++ b/drivers/irqchip/irq-stm32-exti.c
@@ -779,8 +779,6 @@ static int __init stm32_exti_init(const struct stm32_exti_drv_data *drv_data,
 	irq_domain_remove(domain);
 out_unmap:
 	iounmap(host_data->base);
-	kfree(host_data->chips_data);
-	kfree(host_data);
 	return ret;
 }
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
