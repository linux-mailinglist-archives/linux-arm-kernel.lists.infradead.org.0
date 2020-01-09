Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B25B135A9F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:52:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qPtBHn9OT6b4uzKBOjytL3jpla4uG0WuaDGIrlS6K6A=; b=TDMgOrcTZLOcg8
	PXQp9tfXIQjgitoRANgr7kB8n70uHSRKsw0hiI74jzWfI7C1tIDudHrKzstZCUTelSXC8BJsdnVag
	VlyeZ+YN++kpdYTQb39kW2pE7WRusM6NeOj+5r1KUtdcZKDF54p9OUJzXPRuQcXQu1yapjCEw9+Fl
	J8FxYiesY0sA2Knz2rAOUcgeU7lyvgWo7WRsxvu6F6g7GRc2+jUmnw8gh/wlI+sIN5xM/8hnJDqfP
	lZHv8q0Bj1wUDTmMjyWXR6E06iNZl2/piiQoX4wy4sQwultPZoz+E4VuIiBkxz8PZj0LS92nbpJnH
	5PXCYZjEqo7b75fhq+1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYEp-0003m6-KS; Thu, 09 Jan 2020 13:52:39 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYEb-0003lL-IU
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:52:26 +0000
Received: by mail-wr1-x442.google.com with SMTP id y17so7501431wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 05:52:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vmHw6Rztk1LgVkwramcXLwEMbfT/KPvyudxKdtElSqM=;
 b=hU1Mn+ipMihLL4KLrkeIpBebma65ax6OVx/CZ7BMWMJ7lkiVPGfRvuGNDb+rOkVZlT
 CMhcMe9oKcneUvShrYwP0MqHMcHPUdR1UY0XrSxfYU8lwwqgfCZkOQuaAaHfHRHu72Su
 HNOoSVZDaEq+nyADGyYORh3MddsE2t/0JeQyV8dN6e7ouM4cmVGC+CH/wyF7r8qZBYmf
 Z5UdGMTNB9eHuDxiZpopOpMID3V4bttz7E5u6m37m1ira7tSHyhMOnYHsd14XiEQRNqr
 x7gKpM4AxlEpWENMj1rNooOmhT0Z8vfkEO5rzzCFgXp+UrRkzpaxEIABkJ2BPdzdLh1+
 EAtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=vmHw6Rztk1LgVkwramcXLwEMbfT/KPvyudxKdtElSqM=;
 b=Pn5yZUh5vmkfyvMwPLQ+1dsuKA7aziuEUSCjOT+Mm0CyVqvQC3Y8gkNx7Uhy84Wx5v
 aibD804r2ES23rn5UjdHaJH5A9Mpa/V/ZNk856bHbTUa4VrSfJ/p/DWvf3o7VuqXX3rv
 Jogm5MrcGxoR8ly3nCAdGJhF6/uHq1VGl763qCgDJye899vs6tEtKkKWboDKkJjUWcKL
 tcwRnR9j7A8ZF3mWLYPg4fOtBXkIWTxS1iHH1LvGrFhD9jwFdApH5EfjrmuoeLEBqpyq
 Flm1qNTPeCcUvftjGK2clm4pXaggkq/1UEv7jz002jbGn6DrS0s+5H6F5VA80oEqOmBM
 uTtg==
X-Gm-Message-State: APjAAAXYdxYPyrskrtPcbyVGw4w5rcm9MhtbHdboNBprJqyIR9t8R/O8
 A0c4vlhW6G/w5dJqA3xfnLjFUcjF1+vnVQ==
X-Google-Smtp-Source: APXvYqz+VUgDWR5JboQ+8bL+OdFFBBWwy95DgHFHZ12Ed6yWxa7cNlhqpM6SgsefPSWzNDnk6l65FA==
X-Received: by 2002:adf:dfc2:: with SMTP id q2mr10759562wrn.251.1578577944116; 
 Thu, 09 Jan 2020 05:52:24 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id j12sm8350363wrt.55.2020.01.09.05.52.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 05:52:23 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org,
	git@xilinx.com
Subject: [PATCH v2 0/8] arm64: zynqmp: Various DT fixes
Date: Thu,  9 Jan 2020 14:52:14 +0100
Message-Id: <cover.1578577931.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_055225_613203_C373A490 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, Jan Kiszka <jan.kiszka@siemens.com>,
 Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Harini Katakam <harini.katakam@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I am sending various DT fixes which have been found over the xilinx
release.
1-2 patches are fixing reported description issues
3-8 patches are actual fixes.

Thanks,
Michal

Changes in v2:
- Add missing patch
- Add missing patch

Michal Simek (7):
  arm64: zynqmp: Use ethernet-phy as node name for ethernet phys
  arm64: zynqmp: Remove addition number in node name
  arm64: zynqmp: Fix address for tca6416_u97 chip on zcu104
  arm64: zynqmp: Turn comment to gpio-line-names
  arm64: zynqmp: Setup clock-output-names for si570 chips
  arm64: zynqmp: Remove broken-cd from zcu100-revC
  arm64: zynqmp: Setup default number of chipselects for zcu100

Venkatesh Yadav Abbarapu (1):
  arm64: zynqmp: Fix the si570 clock frequency on zcu111

 .../dts/xilinx/zynqmp-zc1751-xm015-dc1.dts    |  2 +-
 .../dts/xilinx/zynqmp-zc1751-xm016-dc2.dts    |  6 +--
 .../dts/xilinx/zynqmp-zc1751-xm017-dc3.dts    |  2 +-
 .../dts/xilinx/zynqmp-zc1751-xm019-dc5.dts    |  2 +-
 .../boot/dts/xilinx/zynqmp-zcu100-revC.dts    |  3 +-
 .../boot/dts/xilinx/zynqmp-zcu102-revA.dts    | 47 +++++--------------
 .../boot/dts/xilinx/zynqmp-zcu102-revB.dts    |  4 +-
 .../boot/dts/xilinx/zynqmp-zcu104-revA.dts    |  6 +--
 .../boot/dts/xilinx/zynqmp-zcu106-revA.dts    |  4 +-
 .../boot/dts/xilinx/zynqmp-zcu111-revA.dts    |  6 ++-
 10 files changed, 32 insertions(+), 50 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
