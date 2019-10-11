Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 168CDD47EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 20:49:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IUCgxHvDzV42qL11WSg6C5+/AYva7Y7D5tUaRHMALZM=; b=fAiMEBZOI1GkOr
	uLhrVuV7BNr7CqAxJeC2vrPevnQw7CknaiLIb3Lpz3x3LZp1RkuXugaGtQGpFNwpw5/HEnX4kaT3D
	/gb6Oo7V0RznBhjOSx2ezhjNHHLJ5oHELmKT8vZNsyVXAsLad2azAXyHjuGP5ZJOu5+Rvcko9zWLJ
	CK8/rBjum0bqgC8nFHxR93+mZ4ST/jrNXgDo9P9SEsd7stoPqKpkENx6Pj7bIdoxCVVGLyVucsnj/
	Lu4/wuJSg4qtaAFFcAaMbO3MJ96VijrmD6X79HsEAVaeUQ1o0DvNQKz7f+3pKzatjQrbwFQl8Kgf0
	d0c1VbHWriD4vYyfg5lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIzyF-0001yx-Nk; Fri, 11 Oct 2019 18:48:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIzxo-0001m1-L9; Fri, 11 Oct 2019 18:48:33 +0000
Received: from ziggy.de (unknown [37.223.145.112])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D218C21E6F;
 Fri, 11 Oct 2019 18:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570819712;
 bh=OSSt+reHfL3uEfpz09ftnbbXI7VLIRW3qEzvMgs8aKI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tY1MpDe+AdZS/V/qg85LK4kVcQbnvFT3fr2YtPdfdvVZUm8KTEeQOETC/KxFqWUpc
 r7aZTSVfJBHALLP7e8A8rOlpc8pMKv80UZXNRDJjsPVQpXvdVtKHjat6jPV9MnrLZR
 I50BTqRH+Z4BowwrAuBWqdHfff7fwSxGuXZ7dQqg=
From: matthias.bgg@kernel.org
To: Florian Fainelli <f.fainelli@gmail.com>,
 "David S . Miller" <davem@davemloft.net>
Subject: [PATCH v1 1/3] dt-bindings: net: bcmgenet add property for max DMA
 burst size
Date: Fri, 11 Oct 2019 20:48:19 +0200
Message-Id: <20191011184822.866-2-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191011184822.866-1-matthias.bgg@kernel.org>
References: <20191011184822.866-1-matthias.bgg@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_114832_712351_66D4F205 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Matthias Brugger <mbrugger@suse.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Stefan Wahren <wahrenst@gmx.net>,
 Matthias Brugger <matthias.bgg@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matthias Brugger <mbrugger@suse.com>

The maximal usable DMA burst size can vary in different SoCs.
Add a optional property to configure the DMA channels properly.

Signed-off-by: Matthias Brugger <mbrugger@suse.com>
---

 Documentation/devicetree/bindings/net/brcm,bcmgenet.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/brcm,bcmgenet.txt b/Documentation/devicetree/bindings/net/brcm,bcmgenet.txt
index 3956af1d30f3..10a7169ec902 100644
--- a/Documentation/devicetree/bindings/net/brcm,bcmgenet.txt
+++ b/Documentation/devicetree/bindings/net/brcm,bcmgenet.txt
@@ -30,6 +30,8 @@ Optional properties:
   See Documentation/devicetree/bindings/net/fixed-link.txt for information on
   the property specifics
 
+- dma-burst-sz: Maximal length of a burst.
+
 Required child nodes:
 
 - mdio bus node: this node should always be present regardless of the PHY
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
