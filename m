Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D2A11714C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 17:15:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O9kAzaga+1GBjGVfpAKDw29ui6WPAkih4+XVCYvL0AY=; b=OVRIxdlCOFAGYq
	ObInJ11w5XrN9lKpmVrVQEYVZubiwfE5AFzWbvZbNc/w5UxqmG/YgAw9/P/hU57HQnlZv4KoGXgLE
	erbCg9hBkr/Tcr+FUzYX/1bu7JC3WyYWA86OCRurp8oDtFX2gXoNCtevnx96pj6GbNU1gdclt5o5J
	ysj470NrreCO0eEKWqNgc6J4mOU6Wnel7i/BrtY1btPQ1Em6cjHLxza0dECIjsXFlAAlezPYVZ1kO
	s7/tf4Im8gSH63ZEgscm2z8yDqJonWycXszz6U7Vzv7RVuETV+AQv1dR3nDHmkixYhYgP33jTuED2
	erWRZ6Au3O15TRi/fM6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieLh0-0006K8-Jg; Mon, 09 Dec 2019 16:15:26 +0000
Received: from smtp-fw-9101.amazon.com ([207.171.184.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieLgC-0005t1-JK
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 16:14:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1575908077; x=1607444077;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=ZBGQbbnv8KtY9nxeNmMM4jHcv10ZJxJYQAC1VG2Uq7k=;
 b=eIhXkxJmQYAvRliTdtMblVfrq+nqgoKVHyBERBiI1wEGaxrUFzHDLrqO
 nHGoDEidworzM5/6bkLK9wBaAYLE52q6bnDNPf0IXdD65MkgbLWk77BIb
 SNrIiEHSeHtIk7tepa1APpqqxqbtNCk8luyQ/Rf3iYmk0UoOkuK0r15bq Q=;
IronPort-SDR: zlRrF6DJxd0B6RciHqxJwmqRc9oDT5wCRVixRxzRXvP39MPSUBL0Hb1kxKP7Bg+HOoodmJzWc0
 SNXLKoKffzoA==
X-IronPort-AV: E=Sophos;i="5.69,296,1571702400"; 
   d="scan'208";a="4054777"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-1e-a70de69e.us-east-1.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9101.sea19.amazon.com with ESMTP;
 09 Dec 2019 16:14:13 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1e-a70de69e.us-east-1.amazon.com (Postfix) with ESMTPS
 id 82E38A1FA1; Mon,  9 Dec 2019 16:14:08 +0000 (UTC)
Received: from EX13D19EUB003.ant.amazon.com (10.43.166.69) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.243) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 9 Dec 2019 16:14:07 +0000
Received: from ua9e4f3715fbc5f.ant.amazon.com (10.43.162.249) by
 EX13D19EUB003.ant.amazon.com (10.43.166.69) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 9 Dec 2019 16:13:57 +0000
From: Hanna Hawa <hhhawa@amazon.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <tsahee@annapurnalabs.com>, 
 <antoine.tenart@bootlin.com>, <hhhawa@amazon.com>,
 <mchehab+samsung@kernel.org>, <davem@davemloft.net>,
 <gregkh@linuxfoundation.org>, <Jonathan.Cameron@huawei.com>,
 <tglx@linutronix.de>, <khilman@baylibre.com>, <chanho.min@lge.com>,
 <heiko@sntech.de>, <nm@ti.com>
Subject: [PATCH v2 0/6] Amazon's Annapurna Labs Alpine v3 device-tree
Date: Mon, 9 Dec 2019 16:13:35 +0000
Message-ID: <20191209161341.29607-1-hhhawa@amazon.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.43.162.249]
X-ClientProxiedBy: EX13D14UWB003.ant.amazon.com (10.43.161.162) To
 EX13D19EUB003.ant.amazon.com (10.43.166.69)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_081436_678147_48D8B175 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.25 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, barakw@amazon.com, benh@amazon.com,
 linux-kernel@vger.kernel.org, hanochu@amazon.com, dwmw@amazon.co.uk,
 jonnyc@amazon.com, ronenk@amazon.com, talel@amazon.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series organize the Amazon's Annapurna Labs Alpine device tree
bindings, device tree folder and adds new device tree for Alpine v3.

Changes since v1:
-----------------
- Rename al,alpine DT binding to amazon,alpine
- Rename al folder to be amazon
- Update maintainers of amazon,alpine DT
- Add missing alpine-v2 DT binding
- Fix yaml schemas for alpine-v3-evp.dts:
	- #size-cells:0:0: 0 is not one of [1, 2]
	- arch-timer: interrupts: [[1, 13, 8, 1, 14, 8, 1, 11, 8, 1, 10,
	8]] is too short
- Change compatible string of alpine-v3-evp to amazon,al

Hanna Hawa (5):
  dt-bindings: arm: amazon: rename al,alpine DT binding to amazon,al
  arm64: dts: amazon: rename al folder to be amazon
  dt-bindings: arm: amazon: update maintainers of amazon,al DT bindings
  dt-bindings: arm: amazon: add missing alpine-v2 DT binding
  dt-bindings: arm: amazon: add Amazon Annapurna Labs Alpine V3

Ronen Krupnik (1):
  arm64: dts: amazon: add Amazon's Annapurna Labs Alpine v3 support

 .../devicetree/bindings/arm/al,alpine.yaml    |  21 -
 .../devicetree/bindings/arm/amazon,al.yaml    |  33 ++
 MAINTAINERS                                   |   2 +-
 arch/arm64/boot/dts/Makefile                  |   2 +-
 arch/arm64/boot/dts/{al => amazon}/Makefile   |   1 +
 .../boot/dts/{al => amazon}/alpine-v2-evp.dts |   0
 .../boot/dts/{al => amazon}/alpine-v2.dtsi    |   0
 arch/arm64/boot/dts/amazon/alpine-v3-evp.dts  |  23 ++
 arch/arm64/boot/dts/amazon/alpine-v3.dtsi     | 371 ++++++++++++++++++
 9 files changed, 430 insertions(+), 23 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/al,alpine.yaml
 create mode 100644 Documentation/devicetree/bindings/arm/amazon,al.yaml
 rename arch/arm64/boot/dts/{al => amazon}/Makefile (64%)
 rename arch/arm64/boot/dts/{al => amazon}/alpine-v2-evp.dts (100%)
 rename arch/arm64/boot/dts/{al => amazon}/alpine-v2.dtsi (100%)
 create mode 100644 arch/arm64/boot/dts/amazon/alpine-v3-evp.dts
 create mode 100644 arch/arm64/boot/dts/amazon/alpine-v3.dtsi

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
