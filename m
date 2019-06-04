Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 283EA34C9D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 17:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6g5mgMs/e3CJHZRPP3s8ruagZ2NIlgUQ3uzjYsOlNbk=; b=qyPFI4HUOygAAf
	IJCeP/Owi7n9JTXw/xkmf59O81rz01ZPsK+8/CjVTtWHmYw95d+ynEw8NrLQr8oNTYHtH0JdY5rHv
	aQPnnWkh97O8jgDVEZ6ZwzhUvqAfxGyM+Aa91f17PPQXcByhGnYsse0t8a4ry/6G1IvCUpFoKu6Gp
	qLQAzt7uU/XgPVvsAzfaDspgB5cB+qgDERMXaaedXQNDeOuWZXFfO7cWR1mgRoG3rRIi9F24ZFoqo
	D2drRJYkacPUSIjcP2ZVvCSpVKEQQMbJJtdBYOXK+qRFGL5RmjsDXanKS5WCldK8SO7qXE0vUllt+
	HLCtagjVzyW9Gu9azhiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYBjG-0008HV-1F; Tue, 04 Jun 2019 15:52:02 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYBiz-00089t-VH
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 15:51:47 +0000
Received: by mail-wr1-x443.google.com with SMTP id n9so3954649wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 08:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=F4ek3zhf26WPz8SCGgna791YOt0uckHhipVYXfvPpfU=;
 b=XGG7x/0Qq8KnWSmPkGdKfHq1zDE2aAodLekp+OEHF8Tc/V5DFe6NQNd1OygFjjbn9S
 AOXqnPEK9bgacoCJFI/kWmmfYcnOTF2uirOplzw3465/WKxtyWshYUYpzaNPLVKWa69T
 s3oK+2GnKuxF2fRxoaPndZqcIDanJPzyKKwHsqSUTz7jvqT6mncu57KE6soXiVES4uCC
 Uigv2DfwGdj1QnCpVt66+RFxcUEPtJY3nVN8mFa2g+tBGBqMpRJ+Pu/bk7mz71npf86L
 PfCXK+BP8NCU6mCAQBkA4hq+5Ss1ey9+brNxtmMphkPjDep3thoXPkxb1ZmVdxZ2ANkW
 lmLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=F4ek3zhf26WPz8SCGgna791YOt0uckHhipVYXfvPpfU=;
 b=tvokdtV35hClq6C2aiIpLdyjoBmrqbA+4jgJcUSgK+aqg7Qi2CoKbj/zztv7CZP/Qa
 2JWrDUByCgBz77E/OfV04Af1uBftQpPO5qOwypZLnTliMKT272n9+w/i6o+gHIQiUUT0
 17g39u5+nSBbqXlcI+6g/zb+yVkBzbunctVVdvK0jUFWNBG4776Gk0oElee5ecnGdzie
 U50E2j5usfxeHd1evVtKDKziakG4pwJs7jrP2QbhlCJImmvqSBrcTv2drItMqTFcGqbv
 vDbR0w/dkBvE5l7zyTJGynmpQPZj1nWUsZDgc6HEY52Bg1HbaV0IWTJuqCXFi2w4vRqq
 XSzg==
X-Gm-Message-State: APjAAAW8l+SbRzR76Ndqo4eFhkLpWaJ4QEGATwB9JNVtN8pvsm3ZaXG9
 V7f4atHmHIfA9bzWIwfuSAc=
X-Google-Smtp-Source: APXvYqw4C4LGMN7NBSczIExaeHfJAuBoLFtRAb9hpG/JyhfUy+lb+y4NuU267pEoEav5OxrI3IfdNg==
X-Received: by 2002:a05:6000:1202:: with SMTP id
 e2mr20691009wrx.239.1559663504460; 
 Tue, 04 Jun 2019 08:51:44 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id l8sm13748311wrw.56.2019.06.04.08.51.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 08:51:43 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v2 2/3] soc/tegra: pmc: Avoid crash for non-wake IRQs
Date: Tue,  4 Jun 2019 17:51:34 +0200
Message-Id: <20190604155135.25390-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190604155135.25390-1-thierry.reding@gmail.com>
References: <20190604155135.25390-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_085146_001457_D8C4D44D 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, Bitan Biswas <bbiswas@nvidia.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

For interrupts that are not wakeup sources but that may end up getting
mapped through the PMC as interrupt parent (this can happen for GPIOs),
return early in order to avoid a subsequent crash from an out-of-bounds
access to the register region.

Reported-by: Bitan Biswas <bbiswas@nvidia.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/soc/tegra/pmc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
index 653fe2c466f6..6e66b5e293be 100644
--- a/drivers/soc/tegra/pmc.c
+++ b/drivers/soc/tegra/pmc.c
@@ -1924,6 +1924,9 @@ static int tegra_pmc_irq_set_wake(struct irq_data *data, unsigned int on)
 	unsigned int offset, bit;
 	u32 value;
 
+	if (WARN_ON(data->hwirq == ULONG_MAX))
+		return 0;
+
 	offset = data->hwirq / 32;
 	bit = data->hwirq % 32;
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
