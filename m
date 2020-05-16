Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F921D60E5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 14:50:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BKJO30UkdzkYNn+x48dy+QrMkXuCzilYgpHGa51isK8=; b=ey9o4aB544qz8q
	ZAULeTpb4YERVTQS6A76p6kKNXqOU8W/zY/fZusxvk1Ys7WOm2Ya2UokFGl3M32mIpvmCIJFRwuSV
	uXRaUK0g1PhJ7rfpzOhxAWHaAQUm9E3ti8N7W92uydsbFoiIxYGzbCoq79TrYcGVaMb0shylWh6qb
	mcjKMyP/KukmVtzeBoGEnMbxZl0Jg/+yY4W2HAdczv9cLqIRpb9IZSLY0mai7EyklssrKCXxvyfgf
	EYqFDUxK05rCgWcgqb7WsVjYr+0drb3zSUmTSsBQAMTBvBZB1h9QCkAFkwYApNjBZM+UwjacjacQE
	18gOf1BRq75/EkI1wLzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZwGY-00036a-Fk; Sat, 16 May 2020 12:50:10 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZwGP-00034U-N8; Sat, 16 May 2020 12:50:03 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ms17so2329191pjb.0;
 Sat, 16 May 2020 05:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y/pu6s9heqLQoPscPRtZWIfWJlyEAE3JhcWqjsVnWMo=;
 b=RdZgSeubYs284jc/aj+vQ6MytNBYmTMw9MitZUl3I4N9Iup5ZDFXQE6pvEMdjkcCF1
 ZspPNeToui/wJwJEKDNqRBmdT9QxQhHaD+UBSTScFwosklKooOUmuMHG+ibsYSN2Sxu7
 XfZ8/4fDYQXF7M2q6ZZiO/6RKWgWI+5UeI2hHs1YYBcxHsYy9Ay7/4mTDkfgUA6UtDcv
 Si34VJBFujnZx+3IkwWZnIp9wJciQAKYEnjPeLS3E0usZhOBq5SenAZOfJdE76R8gSCb
 qURUDvhC8wIVwNy9CKGnVqroqfv7MUmYNQj50xuYHhmHl2eSuNcgMpHRudn7fTro3q7O
 MG1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y/pu6s9heqLQoPscPRtZWIfWJlyEAE3JhcWqjsVnWMo=;
 b=Xti6Id35I3M8oTVtaBcx2kKeZCPhXebvruomSoA7tflSUeZOOPZRcl8L3xMrw2Oa9J
 NHBvEZAALHAbqOrZLvqqSm2Rc0djE2wemaRv9zAA/O1J+ZCMuZN4uFF/tNJOsuoRDYcC
 TUIzSPjrF89XlrIcLenjt40BnDk3CuJ3eABrZxV+CtPA123cO+yaz8tiOLprtDqzuegd
 At1wqcAS+JBY0FOwPmYxUx398IPhRvFqq34bUiZamv0xwYDOCF2gRkEiRqnE2gpE1sdr
 qOVQKT7bs39quOqv19E+yrUUloEYdWx31GBGJbqDtGgehUwhpAkYcdYAbBsR2JiyJkSr
 xodg==
X-Gm-Message-State: AOAM533RCNdXnRjTWzTNS/aNm1CeKzkyi77bCU5rZiEiPMNrYI6h4iOo
 Iqs7Pl1YoEVvc5wCdB08hacABzOT
X-Google-Smtp-Source: ABdhPJy2I3ru751urDomegpMHM+LuOGE8PrXhFnO8+ShubkkeVhH+WuYkkZ2G/DJlpcqL/9BEjaeFQ==
X-Received: by 2002:a17:90a:c584:: with SMTP id
 l4mr8877644pjt.195.1589633400684; 
 Sat, 16 May 2020 05:50:00 -0700 (PDT)
Received: from localhost.localdomain (61-228-240-171.dynamic-ip.hinet.net.
 [61.228.240.171])
 by smtp.gmail.com with ESMTPSA id k27sm3768323pgb.30.2020.05.16.05.49.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 May 2020 05:50:00 -0700 (PDT)
From: Lecopzer Chen <lecopzer@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] arm64: perf: Add support for Perf NMI interrupts
Date: Sat, 16 May 2020 20:48:54 +0800
Message-Id: <20200516124857.75004-1-lecopzer@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_055001_777203_98FD5819 
X-CRM114-Status: UNSURE (   6.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lecopzer[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, lecopzer.chen@mediatek.com,
 Lecopzer Chen <lecopzer@gmail.com>, alexander.shishkin@linux.intel.com,
 catalin.marinas@arm.com, jolsa@redhat.com, acme@kernel.org,
 peterz@infradead.org, mingo@redhat.com, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, namhyung@kernel.org, will@kernel.org,
 yj.chiang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These series implement Perf NMI funxtionality and depends on
Pseudo NMI [1] which has been upstreamed.

In arm64 with GICv3, Pseudo NMI was implemented for NMI-like interruts.
That can be extended to Perf NMI which is the prerequisite for hard-lockup
detector which had already a standard interface inside Linux.

Thus the first step we need to implement perf NMI interface and make sure
it works fine.

Perf NMI has been test by dd if=/dev/urandom of=/dev/null like the link [2]
did.

[1] https://lkml.org/lkml/2019/1/31/535
[2] https://www.linaro.org/blog/debugging-arm-kernels-using-nmifiq


Lecopzer Chen (3):
  arm_pmu: Add support for perf NMI interrupts registration
  arm64: perf: Support NMI context for perf event ISR
  arm64: Kconfig: Add support for the Perf NMI

 arch/arm64/Kconfig             | 10 +++++++
 arch/arm64/kernel/perf_event.c | 36 ++++++++++++++++++------
 drivers/perf/arm_pmu.c         | 51 ++++++++++++++++++++++++++++++----
 include/linux/perf/arm_pmu.h   |  6 ++++
 4 files changed, 88 insertions(+), 15 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
