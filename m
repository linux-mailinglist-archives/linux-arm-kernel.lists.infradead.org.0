Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95166128EBE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 16:52:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AnqiNvXIwQ7cyzRjoZeZA7khwH6x+cdgaVQ/hcZcze4=; b=FrcxtqoJMtGJmZ
	fSPserYn4AhKNakPz5tWNGIJ8DLFLKvOSZkXobN8IKAGaL0WsR6yz/1Ig/8b8k5/kwgeGHDqXTzAq
	lbu3EkHjfzVhw4EXCEOHNnt9rGGy0gF9q4+R48Pg3znfMd1ehpQvT3P/tUx8dnj1eiFUXaPdFwetv
	w7uqV7eqqVkOnVF9+aex43JLZr36oXUNaJSrJDptJR41t1Hedmq1a7KJd8aRT0Gdc+BDEiCYSh5hO
	m4ajx1VekW6twfvoyB+VXyVPoP0wf//mXRYXPRAbdxwSp3Hg2jibEfd4kjgdJ76Yiw71WCAXHcHC0
	VRe3j8JVWhM0q2FlktHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij3Wy-000244-VH; Sun, 22 Dec 2019 15:52:32 +0000
Received: from smtp-fw-9101.amazon.com ([207.171.184.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij3WZ-0001qI-00
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 15:52:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1577029927; x=1608565927;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=OPMX17Omz7JYkY/istcTHVeb5cJ/SKsg2S1n95nmmHo=;
 b=RSTxgRvQ+Pw8Jp109O7rxZfmrL37321WIlutUx/y1MIkffmP9mdTroZj
 cXxpXG1uwQuF+NS8CwAm46eBPmz7FpUxcItyGzOVZwIv7JIlYEoVFnyQQ
 8+jY6OMH8CWR+KPMZiC4ukf+QIx+xbyRWcIvPSLsAA4InerScAO+mzeCf M=;
IronPort-SDR: B1F4uyfQ9UM6VLR390tWOMVdU+7cpK5QGPa46Tufzt0j5Ys7c0QqZmVQPFq9mQq/FxX1hyUksX
 HpcyWXA7/9KA==
X-IronPort-AV: E=Sophos;i="5.69,344,1571702400"; 
   d="scan'208";a="6616119"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-1e-303d0b0e.us-east-1.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9101.sea19.amazon.com with ESMTP;
 22 Dec 2019 15:51:53 +0000
Received: from EX13MTAUEA002.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1e-303d0b0e.us-east-1.amazon.com (Postfix) with ESMTPS
 id EE7FBA17FE; Sun, 22 Dec 2019 15:51:47 +0000 (UTC)
Received: from EX13D19EUB003.ant.amazon.com (10.43.166.69) by
 EX13MTAUEA002.ant.amazon.com (10.43.61.77) with Microsoft SMTP Server (TLS)
 id 15.0.1236.3; Sun, 22 Dec 2019 15:51:46 +0000
Received: from u8a88181e7b2355.ant.amazon.com (10.43.162.9) by
 EX13D19EUB003.ant.amazon.com (10.43.166.69) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Sun, 22 Dec 2019 15:51:35 +0000
From: Hanna Hawa <hhhawa@amazon.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <tsahee@annapurnalabs.com>, 
 <antoine.tenart@bootlin.com>, <hhhawa@amazon.com>,
 <mchehab+samsung@kernel.org>, <davem@davemloft.net>,
 <gregkh@linuxfoundation.org>, <Jonathan.Cameron@huawei.com>,
 <tglx@linutronix.de>, <xuwei5@hisilicon.com>, <scott.branden@broadcom.com>,
 <dinguyen@kernel.org>, <zhang.lyra@gmail.com>, <treding@nvidia.com>
Subject: [PATCH v3 1/6] dt-bindings: arm: amazon: rename al,
 alpine DT binding to amazon, al
Date: Sun, 22 Dec 2019 17:50:33 +0200
Message-ID: <20191222155038.30633-2-hhhawa@amazon.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191222155038.30633-1-hhhawa@amazon.com>
References: <20191222155038.30633-1-hhhawa@amazon.com>
MIME-Version: 1.0
X-Originating-IP: [10.43.162.9]
X-ClientProxiedBy: EX13D19UWA002.ant.amazon.com (10.43.160.204) To
 EX13D19EUB003.ant.amazon.com (10.43.166.69)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_075207_087789_0C0693ED 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

As preparation to add device tree binding for Amazon's Annapurna Labs
Alpine v3 support. Rename al,alpine DT binding to amazon,al.

Signed-off-by: Hanna Hawa <hhhawa@amazon.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../bindings/arm/{al,alpine.yaml => amazon,al.yaml}           | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename Documentation/devicetree/bindings/arm/{al,alpine.yaml => amazon,al.yaml} (74%)

diff --git a/Documentation/devicetree/bindings/arm/al,alpine.yaml b/Documentation/devicetree/bindings/arm/amazon,al.yaml
similarity index 74%
rename from Documentation/devicetree/bindings/arm/al,alpine.yaml
rename to Documentation/devicetree/bindings/arm/amazon,al.yaml
index a70dff277e05..58eb4ad55a76 100644
--- a/Documentation/devicetree/bindings/arm/al,alpine.yaml
+++ b/Documentation/devicetree/bindings/arm/amazon,al.yaml
@@ -1,10 +1,10 @@
 # SPDX-License-Identifier: GPL-2.0
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/arm/al,alpine.yaml#
+$id: http://devicetree.org/schemas/arm/amazon,al.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Annapurna Labs Alpine Platform Device Tree Bindings
+title: Amazon's Annapurna Labs Alpine Platform Device Tree Bindings
 
 maintainers:
   - Tsahee Zidenberg <tsahee@annapurnalabs.com>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
