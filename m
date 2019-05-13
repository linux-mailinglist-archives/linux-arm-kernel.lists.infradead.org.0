Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E471BDCD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 21:25:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=r/6302iXQW/pHZaB3loPAAWx2sAt7oUn9QSPYY9zfBc=; b=o8DnufzB05Xn6UA8GjTylZnHqo
	YUO8n2igj0lz7hHySg0fZT8eHm1IqyOJDRCZpXVlCep3kwqbUSSqXv0KtH8CwGuE633WUO4LLFNe4
	7vd4Bezc+T/FptNHp3WbQNCdtMCg9tpqwTXQtsu1yhfp/NihBc3mCUr47lfpWRlxuedp2qK8wksmZ
	Ng6kgmDqICLQbH8oXiQp5h+NlsvBkWLDzurRj0GQS1jwiX9/6Z8qsW7WAkUn5eZKhI1q+p15ZA/Ll
	B3JgAeJiL4d+YDWMiEkEroPkVO58KKKYfpBqKQoD71enZt26Jc7BxJJF9LoSEMxfCzdOtyFVG1Yau
	wGuz7vIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQGZs-0004zs-ST; Mon, 13 May 2019 19:25:36 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQGY3-0001Z0-J2
 for linux-arm-kernel@bombadil.infradead.org; Mon, 13 May 2019 19:23:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FS9Zs+3LWO+O30HH4l9Kk8Vdize9BSzeQBpadzl2HYA=; b=VOJx8lPrfz9B2SSORVz9X/o+y
 GmwqOmG4yPV7Ndc037zu51ouDZPchubGZca6uQ3gXmAuUbKwbbrmxgNVez3uQ7DrI79kq+GT+mOCN
 0nQ1Fhafgj1vo/yPqnNzwDRZuIeEIHJDIZmBC54jXs8QE1E5MJkuBTFt/RNOtXOCekSeoy9guDI+9
 +zH5J0pAfAZKJHQN6QOnQb+wJjg2aY7aeoiAFN1FBlIvs003LAySaKrZGPYla38qjWsvaI8frh/aE
 r5im0SHdtNsuWPCdqSIB77z1yXwNHUyTg86AwYEKPqIk92qYIz3VAwrYcVFo+8m14sLiCbW/gEEj5
 QaXbIoNbw==;
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQGY0-0004Ic-5n
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 19:23:42 +0000
Received: by mail-lf1-x142.google.com with SMTP id y19so9930035lfy.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 12:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FS9Zs+3LWO+O30HH4l9Kk8Vdize9BSzeQBpadzl2HYA=;
 b=t15nWHPmFlGF4Hk/qXkWtGd6P4khoapB58QJFxrQ0ZNQUXmlHvGcZXvn8hgr3rc7X+
 eE/ASRA8k1AQG0DdZLyF3FiUVQKz9AjKmneEG4iuBy5DWguCj44rHUGww8VoLC14kkpV
 TAmsE70nTuh+vkyVTcFflq1Ihtv15Gjs6lN28RnAdyk6YEKe1sk82sQKEFoOgzZS1j0g
 ppmAaYnj4FwI7sFWE7rhWAusai9maT6zhjqYzXhVMTt9rwMyhTPogRZF82iPBQdLTLL8
 e41snlmZNXFO0Bqj9yPBVHA/mzxQ87IGeFK04GazkTYlofyN2rCzQMCISOTnU4Ay1zIY
 C4YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FS9Zs+3LWO+O30HH4l9Kk8Vdize9BSzeQBpadzl2HYA=;
 b=Tfsune+8SFYm5AYWRD15KvXeqL2BEXrqfo53H/77U7KjtW+Iwv37wjNhXXdpoWFZCh
 1ZPsdsuKeVCBTDPOBy/+q6xCDfaMF67HG+sdJqApyt6sL7Xji+S+dsVfrwIAyyl0i4FP
 TobLveLzBumQ06MloUnHLOoxoQ5/237eY7IYQP4IaUJK0iGcpwMjclQnlmQSLQ2YUz0N
 ViqePzIbbBxq5rc6z967vcq5ejcUBzYDGoLLUjslCGo6qQZey3Q7bqqFlkJbihitipbH
 qP87p2wBWygdZC8cLW7KK59Cb718AbgXqT90DCfWLet0Eoh0RitQXdRfzkqG+gdMiC53
 nquQ==
X-Gm-Message-State: APjAAAWciyH0wxBh7vg27uYCLWMVfieeIMbUZEVrBaS3fLZBVYKVH8/W
 FqHT8aDxFQwBbdrIG4gQihti4Q==
X-Google-Smtp-Source: APXvYqwf7I+vqyV1oY+DdOoP8eb7s+6VlIHVgf1KVMJaduN8GSRO4HLl7ruL91VI1qfgG8O6PtC3NA==
X-Received: by 2002:a19:ae14:: with SMTP id f20mr14035921lfc.49.1557775415444; 
 Mon, 13 May 2019 12:23:35 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id q21sm3449365lfa.84.2019.05.13.12.23.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 12:23:34 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 16/18] arm64: kernel: Respect the hierarchical CPU topology in
 DT for PSCI
Date: Mon, 13 May 2019 21:22:58 +0200
Message-Id: <20190513192300.653-17-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513192300.653-1-ulf.hansson@linaro.org>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_202340_231159_C6E4B2E2 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Will Deacon <will.deacon@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 Lina Iyer <ilina@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Lina Iyer <lina.iyer@linaro.org>, Catalin Marinas <catalin.marinas@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To let the PSCI driver parse for the hierarchical CPU topology in DT and
thus potentially initiate the corresponding PM domain data structures,
let's call psci_dt_topology_init() from the existing topology_init()
subsys_initcall.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes:
	- None.

---
 arch/arm64/kernel/setup.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 413d566405d1..f1559223c55b 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -367,6 +367,9 @@ static int __init topology_init(void)
 {
 	int i;
 
+	if (acpi_disabled)
+		psci_dt_topology_init();
+
 	for_each_online_node(i)
 		register_one_node(i);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
