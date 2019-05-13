Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E281BEAE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 22:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LowTFxF34AxtzualGITy2cgs5j1ZrYGCyI/PoLPck50=; b=tVNs3TosGnj7n+Gt/Q7HwE8JCI
	1YC9c2hqx7sjpG5h4c3Pr42mjGj/lOTQQ2WA8T9KGeVPAp7vte9ga2g2aO60E3JxwVSTgRvHr9RUa
	vCxiJevxUSD7adxDCVkx6RvMe7ulgp+fALw0jf5MUzeTKBGNYHSjJsM1qezXnqh9zDQeoBidRQn6p
	7y3y+vRn6IDDIkTqfAsqMVu/VB6zgXrj85aQKPjNQyTD2gjs26V+Z0IqiQxJ2PQEwoBbZSC06jlX4
	IfmS6zzeN0ihzHwhLblkGRw9uu3tHLlg5kY/Vomqn9RVFW6kG4TOAvZtw2scdH8RaWtXdzuh5j5X9
	wUIAHEAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQHWF-0002x8-0i; Mon, 13 May 2019 20:25:55 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQHVz-0002kv-5B
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 20:25:41 +0000
Received: by mail-ed1-x541.google.com with SMTP id l25so19374168eda.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 13:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uCn6Vke4138+U/7e0Ka6YzQApQ9tmuWJ2ESUL37eTFU=;
 b=pqs2RSzEhP5MBiCHoHgf+86ImGMZ3WraDlEInb+07mjAKyFHIzTkqxXTlob3Dd3D6I
 Nt49GRdfJSPTx1/nmcireXaAgmgM8lfVNJA8lVkhDnhk0qo0cGnNJRjVBRhBirxnH0V0
 +OfGMF/usK3qNjfKdDk93gN9EfM7+6yX8aANjsDSFAENGZ/y9/j3wQvxeBAhEHaG21FP
 /DXaXSOwIqJ6GyErL15Z6MILIIREE+0bNPDJWxmpm5p5Xzfn1eJsxh6XNPm57nNZLi05
 lCTGVM6N9WJyaRstesmOAIzoK7Qssyptvk5XsR65Cz16dyk5dqJU+qErNIm0PEfxedR3
 5ogw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=uCn6Vke4138+U/7e0Ka6YzQApQ9tmuWJ2ESUL37eTFU=;
 b=WMx7Lrcm/kUNHf1995olSMbhJcNGq0rw4opDWU8SYKKlZPeeAw4kxgnGrfsho7bFYK
 MZZBt2pESOwk8LyisoorqW2WX6BbI9uJ04xBRNVHOwoZcKSc9yPQN20x06QUjdlcK+6z
 3FSoRzeSPSFN35oG9z9R0Ll4T2OsyANXBcP0ltyOo3YjN40B+zbtFYMPJ+XEZocCE0CH
 hwbndNJAXCEpsUQF4qp1F+oueHR4XFK6DyhQPhppUM7N20ccOEqmk5ppcO6F52zf+Opb
 v+28hhIuJXPGbpnQUwEsNjxtcN7SauDgpOxXr1DzhFusWkzNEaBWDxQJyRVos7ZDI20K
 EUKw==
X-Gm-Message-State: APjAAAVuL2OnDHjjO/6yUWegH4JksSOx9rJ7518T6CvGNkaUv4sL0n6a
 hqk7CvvH9E2CiLJDk4YwwsZ5vzPn
X-Google-Smtp-Source: APXvYqwrQW7c83VHP6phdIgpO5+USwxpcAIbC39zOef3nLeX0cdU8cbPKNu7dnwAqDNh919K8mmJUA==
X-Received: by 2002:a50:b4f7:: with SMTP id x52mr32788267edd.190.1557779137464; 
 Mon, 13 May 2019 13:25:37 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id k37sm4036076edb.11.2019.05.13.13.25.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 13:25:36 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] perf vendor events arm64: Remove [[:xdigit:]] wildcard
Date: Mon, 13 May 2019 13:25:20 -0700
Message-Id: <20190513202522.9050-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513202522.9050-1-f.fainelli@gmail.com>
References: <20190513202522.9050-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_132539_332381_93B0DDB2 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, John Garry <john.garry@huawei.com>,
 Will Deacon <will.deacon@arm.com>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>,
 Ganapatrao Kulkarni <ganapatrao.kulkarni@cavium.com>,
 Namhyung Kim <namhyung@kernel.org>,
 Sean V Kelley <seanvk.dev@oregontracks.org>, Jiri Olsa <jolsa@redhat.com>,
 "moderated list:ARM PMU PROFILING AND DEBUGGING"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARM64's implementation of get_cpuidr_str() masks out the revision bits
[3:0] while reading the CPU identifier, there is no need for the
[[:xdigit:]] wildcard.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 tools/perf/pmu-events/arch/arm64/mapfile.csv | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/pmu-events/arch/arm64/mapfile.csv b/tools/perf/pmu-events/arch/arm64/mapfile.csv
index 59cd8604b0bd..da5ff2204bf6 100644
--- a/tools/perf/pmu-events/arch/arm64/mapfile.csv
+++ b/tools/perf/pmu-events/arch/arm64/mapfile.csv
@@ -12,7 +12,7 @@
 #
 #
 #Family-model,Version,Filename,EventType
-0x00000000410fd03[[:xdigit:]],v1,arm/cortex-a53,core
+0x00000000410fd030,v1,arm/cortex-a53,core
 0x00000000420f5160,v1,cavium/thunderx2,core
 0x00000000430f0af0,v1,cavium/thunderx2,core
 0x00000000480fd010,v1,hisilicon/hip08,core
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
