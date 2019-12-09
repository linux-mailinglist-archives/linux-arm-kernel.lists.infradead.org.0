Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A168117144
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 17:15:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hS8l+lmlKREriNqwki8+wBENmKQCmE7elrinqc3tYyA=; b=SNVt4/AfMarBgx
	3TnGAqSk5/IN2/X3qe+WSWCbc0DDkGAEnUq2MLT6COzeyOxKYSyGhoeSjIMWAGSD4ezHWKxb0C/9n
	Nosyl7LIoUWnRp6kMv2/tHAIzY4ayiyeC7INg+ZaOjwohBzc4WTD7jIGksJEB8X6IabSVwLGeEf7N
	pBBU7KQwdqo8jdpkzpNeT8OPFKe41uQLqrLYRhKfijZY83rdNzDfK39iPrY20gI1O6p6LNipZkh+z
	fmcNHFUUrNpGdJ8d2pbbxv9HxTz+NuyYO6olonZXCMwZC7KdFliIALgYZ+/6ftWIiLMElDInCC7HD
	ixZst6vbUS+dAlTeVkqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieLgX-00061w-Sf; Mon, 09 Dec 2019 16:14:58 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieLgC-0005t2-J7
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 16:14:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1575908077; x=1607444077;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=dRAj+24O/DNhPXqhlSFLxDdO38Y8vU0UA4+4k/zbqbI=;
 b=Vn9a9OsiL0VCiR2JgLSGovH0/rJw/CUsqOHAlVxehK7Xxt5UpcXkwDZn
 A68nDOYZp/gIf8IcXdjW/PXDEOp0RR618Pj9xLpeY2xXgVLIWr1KU2A6M
 C0Ttw8nuREFtOhz7lgm3ROPAlMjTw/vkygfg+iNQdlLEq+LgLvbqpulOw E=;
IronPort-SDR: aUluDAvmHf5KurEnf9rUkg3fWTVrUf0RitArAhjqkPY6kaHTulgpYe+wip4OLWjQB6Un3UPgjd
 sUMxoiHzUK3w==
X-IronPort-AV: E=Sophos;i="5.69,296,1571702400"; d="scan'208";a="12463299"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-1d-37fd6b3d.us-east-1.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP;
 09 Dec 2019 16:14:24 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1d-37fd6b3d.us-east-1.amazon.com (Postfix) with ESMTPS
 id AD4D62828D9; Mon,  9 Dec 2019 16:14:18 +0000 (UTC)
Received: from EX13D19EUB003.ant.amazon.com (10.43.166.69) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.243) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 9 Dec 2019 16:14:17 +0000
Received: from ua9e4f3715fbc5f.ant.amazon.com (10.43.162.249) by
 EX13D19EUB003.ant.amazon.com (10.43.166.69) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 9 Dec 2019 16:14:07 +0000
From: Hanna Hawa <hhhawa@amazon.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <tsahee@annapurnalabs.com>, 
 <antoine.tenart@bootlin.com>, <hhhawa@amazon.com>,
 <mchehab+samsung@kernel.org>, <davem@davemloft.net>,
 <gregkh@linuxfoundation.org>, <Jonathan.Cameron@huawei.com>,
 <tglx@linutronix.de>, <khilman@baylibre.com>, <chanho.min@lge.com>,
 <heiko@sntech.de>, <nm@ti.com>
Subject: [PATCH v2 1/6] dt-bindings: arm: amazon: rename al,
 alpine DT binding to amazon, al
Date: Mon, 9 Dec 2019 16:13:36 +0000
Message-ID: <20191209161341.29607-2-hhhawa@amazon.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209161341.29607-1-hhhawa@amazon.com>
References: <20191209161341.29607-1-hhhawa@amazon.com>
MIME-Version: 1.0
X-Originating-IP: [10.43.162.249]
X-ClientProxiedBy: EX13D14UWB003.ant.amazon.com (10.43.161.162) To
 EX13D19EUB003.ant.amazon.com (10.43.166.69)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_081436_675448_F639B8D0 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.29 listed in list.dnswl.org]
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

As preparation to add device tree binding for Amazon's Annapurna Labs
Alpine v3 support. Rename al,alpine DT binding to amazon,al.

Signed-off-by: Hanna Hawa <hhhawa@amazon.com>
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
