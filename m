Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A02D1BEAD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 22:25:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xQkIZ5oQ2t00PVXbgfkqAd0AbvNlpzCAFN1chbCtt6U=; b=Qj0
	CkmDbXGw24T2d+6FSTjhXss1JgPh77krpk9MpSQJgSjMYJy1Hdc4FT3L4D7+LDuDIudxfxVNcVRHC
	oUXA0frHRnK7VGVyly3fcjkKRFvUQ96HqnWGUDHZPEVYQFGmVdL/2Wbl6QAHR/DTuGc+HQQ8Yhye0
	wOhuldjoK1H0gmwR17P8lCu5FR/T8VnYL/miNhVvueGKlw3+J6Q+veaIaOrJ4U3x+XJkrJXbySnS+
	x9UiMcbTKE3UUgO7QroqUhpVZBaRMpKlwfLAPZBXmJrXCsuEo+HouQVmBWurr70kJOv+nsfIC27Dc
	MSvgu4CXGmf9s74E0mhdiP4I1WrW56A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQHW4-0002l0-DJ; Mon, 13 May 2019 20:25:44 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQHVv-0002kW-SF
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 20:25:37 +0000
Received: by mail-ed1-x543.google.com with SMTP id p27so19410003eda.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 13:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Er9e77I7AjeKoDkXcYi3wcJKFOWUoBq85CSzzlD7DBA=;
 b=trLVViIX/rrypZR2cLvz2Vn/RDXBrVxloNLYKr1/roYOiSNqZDub96DBFEJ7xzzvAN
 FXdO2HTRdjkIjaZuvjAz8HfUEtSLCcbuAsbreIinoQWejV2BfgrYCZBh76zcGytFsKPc
 6O8YWFbDlY9wSRet3m9tajA0vCwxkhoMUuwj/PFoGj02585WGuy3QvQ5BY8R4fOcLpTL
 8CaDx/Igyovv6r6IOGhSKuuW9omx8UJl+lx0mfv9z5TnARVN1FlkytRrSxCsCWgjkWsN
 McFOWl+lvcyCBME/dGRvl+4QMN/eL1Wu3/wn62kob875Pzi9C2jFkxDpT+5Gsy0LlXH7
 +k1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Er9e77I7AjeKoDkXcYi3wcJKFOWUoBq85CSzzlD7DBA=;
 b=j1zDxPxffNTrTV+groTApJsrcZeBTGOTNVnM16wuYwtyXpgL/e9ea3cItrM3V0OcYJ
 REIHgzLPAaNkB3EokskUCM6RzTHKv7gnW+3JcCYyqAnIFEE7CgYpDJpLgzpRhuFOSuNK
 F0++aDiWWmEdvdpGMr9HDp05XNf82uiOxTG3BHtQjHQ9t03UD2iktjrRGNw5cEzeov3e
 hdnGTjV7ubxHfYKfTNQFeoejSa3OY6k93ayHOXEPHdkQiLSRUh4T82D4CQ9F8agZsLFX
 0tUInNAmcJ6N6d/w9WGX4xOjWwR6nZ+eqep67QQBrkOIsnHg+nI0I7j+A82SF80LrK4H
 4fsQ==
X-Gm-Message-State: APjAAAXKXKF+5DAr3LIv2ubA/ExCAG0woNdJPA0uRIjjcuR+xuBwGZt0
 +/jKlW08pMhWz4qaVhQhpEs=
X-Google-Smtp-Source: APXvYqz4eD/+kOge9iORr/87hGa3M3O7voVJN8UIpwxmy9HoXa0SkKbXKbG8oU6BZ7KBfAc0z1x0kw==
X-Received: by 2002:a17:906:2542:: with SMTP id
 j2mr24117404ejb.217.1557779134001; 
 Mon, 13 May 2019 13:25:34 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id k37sm4036076edb.11.2019.05.13.13.25.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 13:25:33 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] perf vendor events arm64: support for Brahma-B53,
 Cortex-A57/A72
Date: Mon, 13 May 2019 13:25:19 -0700
Message-Id: <20190513202522.9050-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_132535_934936_1B8C436E 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
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

Hi all,

Based on discussion about the last patch, it turned out that we can
remove the [[:xdigit:]] wildcard entirely since get_cpuid_str() strips
the revision bits anyway.

Florian Fainelli (3):
  perf vendor events arm64: Remove [[:xdigit:]] wildcard
  perf vendor events arm64: Map Brahma-B53 CPUID to cortex-a53 events
  perf vendor events arm64: Add Cortex-A57 and Cortex-A72 events

 .../arm/cortex-a57-a72/core-imp-def.json      | 179 ++++++++++++++++++
 tools/perf/pmu-events/arch/arm64/mapfile.csv  |   5 +-
 2 files changed, 183 insertions(+), 1 deletion(-)
 create mode 100644 tools/perf/pmu-events/arch/arm64/arm/cortex-a57-a72/core-imp-def.json

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
