Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D94E117150
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 17:16:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3hWHVfftmmYrD3ovrTxzhJW1KZcoal/h2BtafucRxyo=; b=t4IfPEcUQO0pWm
	rQuqCpVMC+go9VXZ+yexp6Ova8kr03HYLq22eV8HicHdjozWlbo5zPhCebFGkSfqJdxm50K1yOJHt
	D5pe1xhaK4u19zmHmbfD049q2uHtLuOSYcP9Ob4ZdPdH6AgeKlRnrDicQBWrH2azLpADggKgGeNHU
	Ca6rRYWJ04O28nIQL+pgB7FhUGnepthWlXgVNeeSp7TTqpItEFcJ0FQDRd1ccysgstpVcRPkErvjf
	KnAxde/egpG+WyHArUCgp3eleA4ngneLLjl0MfN/ALy68QKpxEv/I8AGksqJofl0XSj663iINW+UG
	krIxQYWLXTXpy7MVKh/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieLhV-00082w-Vb; Mon, 09 Dec 2019 16:15:57 +0000
Received: from smtp-fw-9101.amazon.com ([207.171.184.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieLgT-0006DJ-Sb
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 16:14:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1575908094; x=1607444094;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=uMnXp1yWyVH+CrMePDPxPXe2A8X/nSidUOR1QEpk4uE=;
 b=RhI84XoxHS3THvrBjmy4+qB7YeTSd/Bctkyna41y3XunC6vnolPS/zAc
 +DDpAdVH6FMJRiP3WoVSBx8GFIANWykjxrgNRkjsV6lylv12DJGzXBGXP
 62EzXiWR55PIClbcAwtQeF+8QMCgz7ZPcBVKsM4vvWdOzKgw3MDCg8sNk Y=;
IronPort-SDR: NMkVla5HmGiJCfdtqEKZ3T4//u+UPqwcKqxaHs+9j/cn+8h/TRWFdnZH5SD7ehVrsIdDrDQdwR
 8nXdcEjZMmVA==
X-IronPort-AV: E=Sophos;i="5.69,296,1571702400"; 
   d="scan'208";a="4054888"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-1e-c7c08562.us-east-1.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9101.sea19.amazon.com with ESMTP;
 09 Dec 2019 16:14:44 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1e-c7c08562.us-east-1.amazon.com (Postfix) with ESMTPS
 id 50A5C2450DE; Mon,  9 Dec 2019 16:14:39 +0000 (UTC)
Received: from EX13D19EUB003.ant.amazon.com (10.43.166.69) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.243) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 9 Dec 2019 16:14:38 +0000
Received: from ua9e4f3715fbc5f.ant.amazon.com (10.43.162.249) by
 EX13D19EUB003.ant.amazon.com (10.43.166.69) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 9 Dec 2019 16:14:27 +0000
From: Hanna Hawa <hhhawa@amazon.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <tsahee@annapurnalabs.com>, 
 <antoine.tenart@bootlin.com>, <hhhawa@amazon.com>,
 <mchehab+samsung@kernel.org>, <davem@davemloft.net>,
 <gregkh@linuxfoundation.org>, <Jonathan.Cameron@huawei.com>,
 <tglx@linutronix.de>, <khilman@baylibre.com>, <chanho.min@lge.com>,
 <heiko@sntech.de>, <nm@ti.com>
Subject: [PATCH v2 3/6] dt-bindings: arm: amazon: update maintainers of amazon,
 al DT bindings
Date: Mon, 9 Dec 2019 16:13:38 +0000
Message-ID: <20191209161341.29607-4-hhhawa@amazon.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209161341.29607-1-hhhawa@amazon.com>
References: <20191209161341.29607-1-hhhawa@amazon.com>
MIME-Version: 1.0
X-Originating-IP: [10.43.162.249]
X-ClientProxiedBy: EX13D14UWB003.ant.amazon.com (10.43.161.162) To
 EX13D19EUB003.ant.amazon.com (10.43.166.69)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_081453_982925_6CC14FC7 
X-CRM114-Status: UNSURE (   8.88  )
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

Update maintainers of amazon,al DT bindings.

Signed-off-by: Hanna Hawa <hhhawa@amazon.com>
---
 Documentation/devicetree/bindings/arm/amazon,al.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/amazon,al.yaml b/Documentation/devicetree/bindings/arm/amazon,al.yaml
index 58eb4ad55a76..19ee489396f9 100644
--- a/Documentation/devicetree/bindings/arm/amazon,al.yaml
+++ b/Documentation/devicetree/bindings/arm/amazon,al.yaml
@@ -7,8 +7,9 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Amazon's Annapurna Labs Alpine Platform Device Tree Bindings
 
 maintainers:
-  - Tsahee Zidenberg <tsahee@annapurnalabs.com>
-  - Antoine Tenart <antoine.tenart@bootlin.com>
+  - Hanna Hawa <hhhawa@amazon.com>
+  - Talel Shenhar <talel@amazon.com>, <talelshenhar@gmail.com>
+  - Ronen Krupnik <ronenk@amazon.com>
 
 properties:
   compatible:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
