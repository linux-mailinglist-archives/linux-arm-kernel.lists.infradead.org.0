Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 134621696FC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 10:10:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3Gfg2ipqKltA+frcsw4Oycbr3Qknc256JXTewpfqFIk=; b=A/4
	5wwa0oXhL+5tLMivsT+/dZ9LPwl4B+nitK1ZGyp8OG0Kogj0erQxs5Clyf7e4erV/uhEXVUDCseeo
	X/U2+5qgJUqTmbXF2DxOJXZFoBQDXAH9QlCx/ddiWZRsZFTR2gqMgKDlF6+but4J+IYRk8x5WK+70
	WPE563zR6wbI/phrnDydvk2eN1ycKrYZrxY/8MUsepoKC5eIIoD4wRLNarcsFDaCmh69GaGFI6fyq
	I5xMihsr7E95ET72mnffwFsz36ZoMqYRhqPiKhKqm3ZnEVgraUM+XrI9xJfhyl8ewALTtXnupVSA/
	o1qHYDL0OeRsvAlUcpH7EGtnfdc/F+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5nHD-0003JO-KA; Sun, 23 Feb 2020 09:10:15 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5nGz-0002wr-Lw
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 09:10:03 +0000
Received: by mail-wr1-x443.google.com with SMTP id r11so6799012wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Feb 2020 01:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ZNp+EvVTHUsQTuzdSBoBSK7Xad89HXC39l9IXgu0L6k=;
 b=qgn/kwOXb6rkHNyIZ6bRJng6LH3lH/HQl5AZwfwLmx0GS4J8ExGX9cHMVHTZ6gusnp
 IxdZB3kMaWI9O5J58icoAOeghd7kIJXFSaavCppXoXS0C5m3QARTQhU6Q57ozihS0u7K
 BM8LR6pw3Q2yk8nHMMjekoD5UTYdHdJ3hrjbUTWeJncaHnsoJk74/rvV9u/jbZD6CjH/
 1yjLIPRfXIQKpf6Bn68PMnc8yvQrLQ4yW+qAI90qtMXww/UmKLdkGUPgI9+ZqqmGRzWc
 bb2CfW3OuE9pYU3+GjUS0v/aUAcKONVTMl8Q7cxujjpxhnQwr0+XE1q+d9nSeEyDWDLr
 wSLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ZNp+EvVTHUsQTuzdSBoBSK7Xad89HXC39l9IXgu0L6k=;
 b=T5D2mMpHl9Gjb6qDiiNb2K+2PWudY1R37e1ONlduIqvze7BVJ6kjl7vnEMGsdJUafP
 qSAyH9NCz+LoWgybOWU/pyWWPTi7SMYzvGxvjU1DZKSHIjWGG/2Khw4sLwjCOW5/qbZh
 BbgXSumU0PHcuQ3iEn8PphKTK51XBTD2h1qdscY8sw42kHXVvK/dpOJxnEO1RDw61+wa
 DLi9XCLLZ3rB+hhDeIVS7UV5X0rTBtVw5Ju1hMtPAoeE6GmaOpIBC9iyDtpl9J+mIghQ
 aqgPzaMJQcKyGjNmoHiEFyVYTj6g3knQFurCWpxRstlcQ6W/grOcf6cMOhx0ebBG5plR
 PgXA==
X-Gm-Message-State: APjAAAW9QRrfum2Jr7dxsoSD4a7Sfy9IAYcXCNPx4ql5vE487FzjVbbh
 9KP1bXrW0JRfeWUp+ivXnac=
X-Google-Smtp-Source: APXvYqynWcijyO/xnVA8R+8xgwTevrjbD+iuKtHMtHFQDIaNbai1TGHrC8jRZpNnLtRHAd/Ruv6k3g==
X-Received: by 2002:a5d:5381:: with SMTP id d1mr58709265wrv.259.1582448998448; 
 Sun, 23 Feb 2020 01:09:58 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2de2:db00:5dbb:1717:2cb6:4104])
 by smtp.gmail.com with ESMTPSA id d9sm12657464wrx.94.2020.02.23.01.09.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Feb 2020 01:09:58 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: David Daney <david.daney@cavium.com>,
 Robert Richter <rrichter@marvell.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] MAINTAINERS: clean up PCIE DRIVER FOR CAVIUM THUNDERX
Date: Sun, 23 Feb 2020 10:09:50 +0100
Message-Id: <20200223090950.5259-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_011001_742015_89058750 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lukas.bulwahn[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-pci@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Joe Perches <joe@perches.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit e1ac611f57c9 ("dt-bindings: PCI: Convert generic host binding to
DT schema") combines all information from pci-thunder-{pem,ecam}.txt
into host-generic-pci.yaml, and deleted the two files in
Documentation/devicetree/bindings/pci/.

Since then, ./scripts/get_maintainer.pl --self-test complains:

  no file matches F: Documentation/devicetree/bindings/pci/pci-thunder-*

As the PCIE DRIVER FOR CAVIUM THUNDERX-relevant information is only a
small part of the host-generic-pci.yaml, do not add this file to the
PCIE DRIVER FOR CAVIUM THUNDERX entry, and only drop the reference to
the removed files.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
Robert, are you still the maintainer of this driver?
Rob Herring, please pick this patch.
applies cleanly on current master and next-20200221

 MAINTAINERS | 1 -
 1 file changed, 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 2af5fa73155e..d43a8f9769db 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12953,7 +12953,6 @@ M:	Robert Richter <rrichter@marvell.com>
 L:	linux-pci@vger.kernel.org
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Supported
-F:	Documentation/devicetree/bindings/pci/pci-thunder-*
 F:	drivers/pci/controller/pci-thunder-*
 
 PCIE DRIVER FOR HISILICON
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
