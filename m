Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2545184404
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:46:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wIjk/lPNb65n5IDxxYlrmZVndKX2yFUDkOP5SouoAZQ=; b=hjV/lk6bKfHZRb
	Fh1h5ZKBeo7uxNRZnU6swFKhvEHmVWON6Fdb90UPQwWVVy+BgZ7IoL83QgnXg5vBAzZPyA8GqTLNB
	9XMEL1eenT4zPKv/8EUWPt/TP1V2SqDAr7ei1R6Fgt80ygj+qS0uF4AsXsWws2M4e+8weG2c+2lHB
	G43IidjGlpIi+mqJu8DWYqbrkOmRj5LMczuXo90BDAZY4hD9M6Gx1+eIClj1h+kh61IplOoXpuMW1
	AFH5Flzv7OwGnu0PUg2WR9ySI1I2AjaHFQLUhI5Lwz9aF1vTLs+r/it4DzJqBzDwV9j/pPFibckXb
	F3Oei67ix63/5DIrbIlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgtI-0006oK-0z; Fri, 13 Mar 2020 09:46:04 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgs9-0004g9-Nj; Fri, 13 Mar 2020 09:44:55 +0000
X-UUID: 6a130229705b4ab1a02bfa7a6755b3bf-20200313
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=MidtCNAIajigGXAw4rqwNT0zFAWiQXn5poURNmnBH+M=; 
 b=LJrzzNinhyuO6r/zTWKIZ+VCLmznN/9ccmyEtAL/9LAiShF2KCX4dz0TnLmXR/MgZX41UNgFVv2JVndyNdamKGc8XOy4jP9G3kBL8bEospvrxOKoi1XZppp5VzCHiyPplHHAOjYT7aSb5tKMU4FCOtK+kPLrUDB+90XLQLIbsTA=;
X-UUID: 6a130229705b4ab1a02bfa7a6755b3bf-20200313
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1427738893; Fri, 13 Mar 2020 01:44:44 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Mar 2020 02:34:42 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Mar 2020 17:32:16 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 13 Mar 2020 17:33:40 +0800
From: Henry Chen <henryc.chen@mediatek.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Viresh Kumar
 <vireshk@kernel.org>, Stephen Boyd <swboyd@chromium.org>, Ryan Case
 <ryandcase@chromium.org>, Mark Brown <broonie@kernel.org>
Subject: [PATCH V4 00/13] Add driver for dvfsrc,
 support for active state of scpsys
Date: Fri, 13 Mar 2020 17:34:13 +0800
Message-ID: <1584092066-24425-1-git-send-email-henryc.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_024453_791338_BAC5C7F7 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@google.com>,
 Mike Turquette <mturquette@linaro.org>, srv_heupstream@mediatek.com,
 James Liao <jamesjj.liao@mediatek.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Arvin Wang <arvin.wang@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patchsets add support for MediaTek hardware module named DVFSRC
(dynamic voltage and frequency scaling resource collector). The DVFSRC is
a HW module which is used to collect all the requests from both software
and hardware and turn into the decision of minimum operating voltage and
minimum DRAM frequency to fulfill those requests.

So, This series is to implement the dvfsrc driver to collect all the
requests of operating voltage or DRAM bandwidth from other device drivers
likes GPU/Camera through 3 frameworks basically:

1. interconnect framework: to aggregate the bandwidth
   requirements from different clients

[1] https://patchwork.kernel.org/cover/10766329/

Below is the emi bandwidth map of mt8183. There has a hw module "DRAM scheduler"
which used to control the throughput. The DVFSRC will collect forecast data
of dram bandwidth from SW consumers(camera/gpu...), and according the forecast
to change the DRAM frequency

           ICC provider         ICC Nodes
                            ----          ----
           ---------       |CPU |   |--->|VPU |
  -----   |         |-----> ----    |     ----
 |DRAM |--|DRAM     |       ----    |     ----
 |     |--|scheduler|----->|GPU |   |--->|DISP|
 |     |--|(EMI)    |       ----    |     ----
 |     |--|         |       -----   |     ----
  -----   |         |----->|MMSYS|--|--->|VDEC|
           ---------        -----   |     ----
             /|\                    |     ----
              |change DRAM freq     |--->|VENC|
           ----------               |     ----
          |  DVFSR   |              |
          |          |              |     ----
           ----------               |--->|IMG |
                                    |     ----
                                    |     ----
                                    |--->|CAM |
                                          ----

2. Active state management of power domains[1]: to handle the operating
   voltage/dram opp requirement from different power domains

[2] https://lwn.net/Articles/744047/

3. Regualtor framework: to handle the operating voltage requirement from user or
   cosumer which not belong any power domain

Changes in V4:
* Add acked TAG on dt-bindings patches. (Rob)
* Declaration of emi_icc_aggregate since the prototype of aggregate function
has changed meanwhile. (Georgi)
* Used emi_icc_remove instead of icc_provider_del on probe. (Georgi)
* Add dvfsrc regulator driver into series.
* Bug fixed of mt8183_get_current_level.
* Add mutex protection for pstate operation on dvfsrc_set_performance.

Changes in V3:
* Remove RFC from the subject prefix of the series
* Combine dt-binding patch and move interconnect dt-binding document into
dvfsrc. (Rob)
* Remove unused header, add unit descirption to the bandwidth, rename compatible
name on interconnect driver. (Georgi)
* Fixed some coding style: check flow, naming, used readx_poll_timeout
on dvfsrc driver. (Ryan)
* Rename interconnect driver mt8183.c to mtk-emi.c
* Rename interconnect header mtk,mt8183.h to mtk,emi.h
* mtk-scpsys.c: Add opp table check first to avoid OF runtime parse failed

Changes in RFC V2:
* Remove the DT property dram_type. (Rob)
* Used generic dts property 'opp-level' to get the performace state. (Stephen)
* Remove unecessary dependency config on Kconfig. (Stephen)
* Remove unused header file, fixed some coding style issue, typo,
error handling on dvfsrc driver. (Nicolas/Stephen)
* Remove irq handler on dvfsrc driver. (Stephen)
* Remove init table on dvfsrc driver, combine hw init on trustzone.
* Add interconnect support of mt8183 to aggregate the emi bandwidth.
(Georgi)

V3: https://patchwork.kernel.org/cover/11118867/
RFC V2: https://lore.kernel.org/patchwork/patch/1068113/
RFC V1: https://lore.kernel.org/patchwork/cover/1028535/
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
