Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 124821A636D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 09:07:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qu9vBqExFNrAtk2vZm5K9JFpgrXXpR7o1Dh0lww3O7w=; b=B30
	foppk/Xthud9Rz3Gh5O5sm7M6a32c0PjMZ/hHLtUbCpc7PzkmkBg0HlteYwxgzK4NSSpVtdV7dfNZ
	5CiK4NlCss9YSX82glEMOMO294JeB85K8R8egqhW8ApqOFwbdfvD21RxNiAAp4N2ICTUAwKshYLyA
	G9nV3YTPkRMZME9alV6xfeDgkVm52VeqaUv4+H+qCmTOJV4+exEjkSPQSk8jGhK0zYBNAt3x6gDVL
	sD8ALpzmRLffv7y8MnZYpdQa23uy5Se4oFoCMttwHVwSnAG29SdKieG9qpcplD0skDYqrsiIqYw1e
	cDY2tCIMXGzTkL/RdTldBeI22r1p5vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNtBa-0004u8-2J; Mon, 13 Apr 2020 07:07:14 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNtBT-0004td-5e
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 07:07:08 +0000
Received: by mail-wr1-x444.google.com with SMTP id k11so8569373wrp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 00:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=AAv/DZIIqObpFGeuaX2msSUs1tzPRF/Ik5oZ/oe4Msw=;
 b=GxPUIOQc1pkI91EKUzGLU+h8wVXFyWA+PWpEfNbqlfBG6isc+YN+GtlVCFModDU+lU
 3/xJ0tGwG8EnhevVYL1Xm1vzZxBEhJcOX0/0e+AJ+yqet4iyAXxQJDTcuTonUc140Hwv
 5x/dbuMt4LhpHeRKNlAbMomCi2Z1qig2UJ7oGWp1AdmXAwse5kj1xiQWknMQDVAsDHaS
 BGEzUPwQas933q7whObeYE30gOYv8dzjUrp3uPTeg8kEhDS0Hj7WGqAgbsN97IZaED+z
 SllAMWJ516LMKa1PNwXKwG3FJqnAqRSR51jhKd7WJEspSjUQ/ZX0MQGVRHiMJqwV4iSr
 IdfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=AAv/DZIIqObpFGeuaX2msSUs1tzPRF/Ik5oZ/oe4Msw=;
 b=jAGMF9mqzSSuWVzRdk9ey5tFfj4GEONBOZ0TILDbA4+VVAToX5Yfvff2m05KrtDFLH
 AqYlaUunIfO1h3B4jRdBlkQpsmj4I5GWj2fCx35Nox3sSnm8eQDz9R4VHk2lLxhvjEDt
 xrew5I7Nh9c4Ks7zY6fFMWtmlyUexxscKUcLOR0z9oz9diq2dNt2Job2sIb++keCyPC0
 P2CNSICcNa3cGXC6P6cifnjNr3KJAbMd7DCLJ/VR0HD9rg5nazGZzUBYY7sc0mQsgLyU
 FNeQecteCuvoLQZMvgTmZRB66ItKNSx9v3IQYc7l3mTi05qtvWV+SpjliWKfBH4u4pQW
 +ilA==
X-Gm-Message-State: AGi0PuZVliEZmVqdRZuzjSaDNm8yRVPooGpbWJoLwFA8NSl0LHKGhX6D
 IoznWt3LCwl8xVUqmepzrRQ=
X-Google-Smtp-Source: APiQypLTafHisWQ43wHE8ka6qzevNdAkeaCgrnVZbGgzHgnjRaYxOf9JhrdyAQuGeO8eF3HBAoDsWg==
X-Received: by 2002:adf:cd12:: with SMTP id w18mr17078764wrm.311.1586761624661; 
 Mon, 13 Apr 2020 00:07:04 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2da9:2f00:c0be:812e:7fb0:ebe0])
 by smtp.gmail.com with ESMTPSA id q18sm7173352wmj.11.2020.04.13.00.07.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 00:07:03 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>
Subject: [PATCH v2] MAINTAINERS: correct typo in new NXP LAYERSCAPE GEN4
Date: Mon, 13 Apr 2020 09:06:49 +0200
Message-Id: <20200413070649.7014-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_000707_236190_47DAC81B 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lukas.bulwahn[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pci@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Joe Perches <joe@perches.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 3edeb49525bb ("dt-bindings: PCI: Add NXP Layerscape SoCs PCIe Gen4
controller") includes a new entry in MAINTAINERS, but slipped in a typo in
one of the file entries.

Hence, since then, ./scripts/get_maintainer.pl --self-test complains:

  warning: no file matches F: \
    drivers/pci/controller/mobibeil/pcie-layerscape-gen4.c

Correct the typo in PCI DRIVER FOR NXP LAYERSCAPE GEN4 CONTROLLER.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
Rob, please pick this patch (it is not urgent, though).

v1: https://lore.kernel.org/lkml/20200314142559.13505-1-lukas.bulwahn@gmail.com/
  - already received: Reviewed-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
  - Bjorn Helgaas' suggestion to squash this into commit 3edeb49525bb
    ("dt-bindings: PCI: Add NXP Layerscape SoCs PCIe Gen4 controller") before
    merging upstream did not happen.

v1 -> v2:
  - v1 does not apply after reordering MAINTAINERS, i.e., commit 4400b7d68f6e
    ("MAINTAINERS: sort entries by entry name") and commit 3b50142d8528
    ("MAINTAINERS: sort field names for all entries").
  - PATCH v2 applies on v5.7-rc1 now. Please pick v2 instead of v1.


 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index e64e5db31497..0fd27329e6f7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12941,7 +12941,7 @@ L:	linux-pci@vger.kernel.org
 L:	linux-arm-kernel@lists.infradead.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt
-F:	drivers/pci/controller/mobibeil/pcie-layerscape-gen4.c
+F:	drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c
 
 PCI DRIVER FOR RENESAS R-CAR
 M:	Marek Vasut <marek.vasut+renesas@gmail.com>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
