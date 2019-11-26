Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BAA9109D49
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 12:51:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4Brg08MNLRUtd+knhIqlJH8t62wnVSvDSeQwpe/ifZI=; b=Z9CuEFREiOFkhq
	cHa/g4XQKbA9gB/T22seJCatlzbuG5tFDST0231OTyKh1lHR7tNals/n8HbhjZCpcH6epLgnbbRYX
	kh24DYH1NG99T8njG6B0QTe04aWoxUw3Isqn81KZs9Aij8fpK/QNoM2D2DQTX5uSPflNC4OCsGMY4
	KAorDoV+EONl0R7e/R/+jtF3hzB57VOUXc2DvUZuem2C7aABIV+FcCBsqGF+zkwNkN1NroPryohiB
	cGWmbF9NOL+7b4qd9TxFLzKZ7EaisfOQVNIeBlx4AfktnAbALC5tHc3iqXSRoxGHbZqcTsaI+RL1u
	bGYMfW265JR27aFlVj7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZZNM-0007ht-TQ; Tue, 26 Nov 2019 11:51:24 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZZMy-0006eB-Px; Tue, 26 Nov 2019 11:51:05 +0000
X-UUID: 5e0dc167d518470cb7a197878ab42365-20191126
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=6szDQgTPyY4S8/Gn3UpSmBACy9+fusEQlycJZGhNL4o=; 
 b=LhGBuRPHnbz74v52HKclFPg/LidwdzZ8v3lPDBUTBfIbzq5TyjTy4GvxRPSKCuz2ABkxlbS9G4cGzmTXT4Lv5R33uYTn81afisRSbA+nkUQNX0CYojG5P3nrHAxibYwRFYKv/gS74Z6+JSXDTbKO8o/T+/Kj/XJc3NLVS1iMZ+0=;
X-UUID: 5e0dc167d518470cb7a197878ab42365-20191126
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1483558817; Tue, 26 Nov 2019 03:50:52 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 03:51:25 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 19:50:43 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 26 Nov 2019 19:50:48 +0800
From: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, "Rob
 Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, "Stephen
 Boyd" <sboyd@kernel.org>
Subject: [v5, PATCH 0/5] Add cpufreq and cci devfreq for mt8183,
 and SVS support
Date: Tue, 26 Nov 2019 19:50:41 +0800
Message-ID: <1574769046-28449-1-git-send-email-andrew-sh.cheng@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_035102_441610_DC1DE825 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org,
 "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>, srv_heupstream@mediatek.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, fan.chen@mediatek.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>

MT8183 supports CPU DVFS and CCI DVFS, and LITTLE cpus and CCI are in the same voltage domain.
So, this series is to add drivers to handle the voltage coupling between CPU and CCI DVFS.

For SVS support, need OPP_EVENT_ADJUST_VOLTAGE and corresponding reaction.
depend on:
	https://patchwork.kernel.org/patch/11193513/ 

Change since v4:
	- Remove redundant code


Andrew-sh.Cheng (5):
  cpufreq: mediatek: add clock enable for intermediate clock
  dt-bindings: devfreq: add compatible for mt8183 cci devfreq
  devfreq: add mediatek cci devfreq
  cpufreq: mediatek: add opp notification for SVS support
  devfreq: mediatek: cci devfreq register opp notification for SVS
    support

 .../bindings/devfreq/mt8183-cci-devfreq.txt        |  20 ++
 drivers/cpufreq/mediatek-cpufreq.c                 |  92 +++++-
 drivers/devfreq/Kconfig                            |  10 +
 drivers/devfreq/Makefile                           |   1 +
 drivers/devfreq/mt8183-cci-devfreq.c               | 308 +++++++++++++++++++++
 5 files changed, 429 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/devfreq/mt8183-cci-devfreq.txt
 create mode 100644 drivers/devfreq/mt8183-cci-devfreq.c

-- 
2.12.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
