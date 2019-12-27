Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 689C812B513
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 15:15:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=42QILU/MMtDig+76JOTiaam5J5H1P87nyltawt1ebpo=; b=kz/VOe9btZnMyP
	8FmxK7NSp792LR3WgbuZ+kf/GJ3UO8CbqvGSuZTZwxrAnv0eU16OKAgiYddWCPJuKc4r9XASf4bw/
	JTmarypM9GYNIWOAbgFagIwFhuWH5KKfbaKfETwSBBlosYjaBq/tW3weeH+BynJf4yq1Qyzqk8Eeq
	kr7gu2N1MmkcPjPqL0+7hcw/VvpTXmYor3B1qnkqtnPs/x/4aBK0LZ+j54o3OKWkEX+T3GwRTd2ee
	kL+gqhxVzDfwR9khcUnP2sIHpxwiijJiJ6uCdOPafOHNTsg/e0k7f1zb+r8tbp1WNwcj0sfw474ig
	xD4xZtVtoAItc7TDCAiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikqOg-0005OY-Ks; Fri, 27 Dec 2019 14:15:22 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikqOV-0005O1-QQ; Fri, 27 Dec 2019 14:15:13 +0000
X-UUID: 88d178f46aba4258b1792fa6206febfe-20191227
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=1wkFuR7qZO/Vu4EXH/7SOwVbB6aL/1gYcjkaYf7OcRg=; 
 b=lcv4aNeCNlSjrFavzIEOfh7wzGtAzQfbOZhgOw2vEQMGwkkliVNisVc6SPLEwQ2uGOD3suKOj1RQwccQCp0+EXE2wqRcVPPJnLcC2PeprSUELsnkYfBwPbV8VGZD3aFuorC2A+QuB4S8H3Ze03Xxo1jhZy79zycN3gmVzc4wxRg=;
X-UUID: 88d178f46aba4258b1792fa6206febfe-20191227
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.liang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 600390541; Fri, 27 Dec 2019 06:15:10 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Dec 2019 06:15:19 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Dec 2019 22:14:01 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 27 Dec 2019 22:15:23 +0800
From: Yong Liang <yong.liang@mediatek.com>
To: <matthias.bgg@gmail.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <wim@linux-watchdog.org>,
 <linux@roeck-us.net>, <linux-watchdog@vger.kernel.org>
Subject: [PATCH v3 0/2] Add watchdog node and dt-binding
Date: Fri, 27 Dec 2019 22:14:03 +0800
Message-ID: <20191227141405.3396-1-yong.liang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 5C3A46DA64D9EAAFC3265B07328533F639CA57EFFBBC12FD17C159A818E79A9E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_061511_867033_C64EE0AB 
X-CRM114-Status: UNSURE (   5.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "yong.liang" <yong.liang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "yong.liang" <yong.liang@mediatek.com>

1. Include mt8183-reset.h and add reset-cells in infracfg
2. Add watchdog device node.
3. Add watchdog dt-binding

v3 changes:
   Modify watchdog compatible int dt-binding

v2 changes:
   1. Add watchdog dt-binging
   2. Add watchdog node

yong.liang (2):
  amr64: dts: modify mt8183.dtsi
  dt-bindings: mt8183: Add watchdog dt-binding

 Documentation/devicetree/bindings/watchdog/mtk-wdt.txt | 1 +
 arch/arm64/boot/dts/mediatek/mt8183.dtsi               | 8 ++++++++
 2 files changed, 9 insertions(+)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
