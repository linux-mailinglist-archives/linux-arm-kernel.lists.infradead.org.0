Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F08DBEA33D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 19:23:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WiZ7SuwE68Iu+za3FcM7M292W7Q4nGY1XFzgh9nqGsw=; b=X82e0eIbSRp0cOAjvfEAhgRGmJ
	3Lo4DFN3MCfcAZf40f7tZ8AzEdd6sz6PMAyWKGZ0XwXDItqirjWmFU6k+Mz0rTXW9rcGZv21H7H+k
	FLdrqcWFn1VK4Q/IG1Q+Lh4Wx4r5Sf9GChh5Vye25jqYC3Vmtxq2qcmIm+YpYwuD1H9vOyzs+w1QC
	C6vSzBVL8r51z21t+LbUdDFDVCRQGHwFeEgPUe2Od9JUG5rZAzII0+d/KpX3yM5jI4mBsCsRUhg2B
	WunULanPsvpg3nZm+0mDWsuggx92zLWgIgnz18sIxtRYv8CZABCtyuyGuWgRxSDqvXVdfV0xU7/Hx
	eK/agxtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPscQ-0004lk-3E; Wed, 30 Oct 2019 18:22:54 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPsbj-0004Eq-2g
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 18:22:12 +0000
Received: by mail-pf1-x444.google.com with SMTP id p26so2142313pfq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 11:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3+WJZITHEScydX2UgU8wnfwVYy4vjzlr7uIujJK9hic=;
 b=NsVh2jqs6cpcVXqN9XUwDu1LIbUb3xENxLQxoDG8mViO2A+agXwhe3aS8BkRHjsJXB
 4KBEsZpbOHk1zIGNcYVbmNNGZr8XnI40pHE1AXOSFZ/OO/cILBs3zRmRjrdj1JBaRgqs
 E0jA2lh0I+mjtxSUWzDmaEh650tqvNt2nx1bmPhuZ0zGXYNNzLLFi7P8tEqFbzKjdFPd
 BUenvIwxxSjReMry8lJXaZVnQ7SxX8m0ZMXgYxA/NuKokUCbG+Jx9ajKgtRvtqkRBWOZ
 //Vp4Bk0EmsPOum7+O3P61sILtb/8fvCqYP1tkAnDGqqKIItX8Sobqbdld7o4Wc+s9Z7
 fhkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3+WJZITHEScydX2UgU8wnfwVYy4vjzlr7uIujJK9hic=;
 b=nd6VVsXDisls05z3opapU86BzlL8RPlQISpuFHvxuRc3bJk0qzzmcxHsHKzhxEXFHi
 I/BZklD8EJjlpXtivJaFQxd7HX7GldGZYeg6EJjE4jO1fFOFkL7k8uB69pmjsv6ckHN8
 yl+BbgHfB5j23+HphliRHUKh7uUJyQcZ7XGUNbnaXL1sMP87m8Kh7iYQgggZqDG9pbJj
 O1a8UYjLCNle+/QbkHnCjiO1B+k2e/QMMfSqalNoPZkiFgU9TKZGzTjh1dB8X/MGnVCX
 0umV63Jzrcb3DmLbAqr2sf1ujEmrvqWhKkwVPWVElnqMJeoqcH6n116JL+19U1XrrQtu
 UNww==
X-Gm-Message-State: APjAAAXDhXMUSBqIgjZq2iWMxLuU63M5bz2TTr+pP553Iwslu4Q581or
 uq4B0jr4eCflwQ+XgceY/dI=
X-Google-Smtp-Source: APXvYqzEOJDvlRsEdpaIpz0TiH5s2gJTnqNYLuN/D1JJ4h+Rh3lygNNSMKzWVm0azoAsKFm3sj/ubg==
X-Received: by 2002:a65:628e:: with SMTP id f14mr943359pgv.114.1572459729662; 
 Wed, 30 Oct 2019 11:22:09 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id z5sm521637pgi.19.2019.10.30.11.22.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 11:22:09 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4/6] thermal: brcmstb_thermal: Add 16nm process thermal
 parameters
Date: Wed, 30 Oct 2019 11:21:30 -0700
Message-Id: <20191030182132.25763-5-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191030182132.25763-1-f.fainelli@gmail.com>
References: <20191030182132.25763-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_112211_169942_D1DE3B49 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Match the 7216 compatible string in order to derive the correct 16nm
process thermal parameters to obtain correct readings.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/thermal/broadcom/brcmstb_thermal.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
index 2ad4eeb79f9c..41d4a142707c 100644
--- a/drivers/thermal/broadcom/brcmstb_thermal.c
+++ b/drivers/thermal/broadcom/brcmstb_thermal.c
@@ -283,12 +283,18 @@ static const struct thermal_zone_of_device_ops of_ops = {
 	.set_trips	= brcmstb_set_trips,
 };
 
+static const struct brcmstb_thermal_params brcmstb_16nm_params = {
+	.offset	= 457829,
+	.mult	= 557,
+};
+
 static const struct brcmstb_thermal_params brcmstb_28nm_params = {
 	.offset	= 410040,
 	.mult	= 487,
 };
 
 static const struct of_device_id brcmstb_thermal_id_table[] = {
+	{ .compatible = "brcm,avs-tmon-bcm7216", .data = &brcmstb_16nm_params },
 	{ .compatible = "brcm,avs-tmon", .data = &brcmstb_28nm_params },
 	{},
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
