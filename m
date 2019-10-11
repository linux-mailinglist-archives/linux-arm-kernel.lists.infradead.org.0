Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2496D37F9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 05:47:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YpyjnkUACrjO3KtIrJLB8TkTNE24GB1kHomZutLVFeM=; b=sS3
	j1v6TjDEv/YwkjHLhAk29R0Q/KZMQxu3mT/+XkyXE1/Ouh421HiwMqMkWNx1vt0/YBeSlzWJ3ClOm
	7Ty7TL//tHQ9PEnDO0J9ToqitrYSNd35bLTowG2GDiuYchWQna75oGOIBdMG2dszKEbR24NRzc9WA
	YiH9NQhB7yoRqEbo6CU3Rhi2Ucb3LYgJGF6P6V2znAH7IIu8K0rUPPD20RR9GEfKNbe6goayWmbdf
	aeix5aOZ1i4y9Uss1UIpRk7NLR3T9b3+y/1zthzu6hwVKxZHLsGh8b2b5ii/veYv6DPDTBngpP/AF
	KYP7Rbaa0G8SPymP6Z1XsYjemzYUEmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIltp-0005Kv-9G; Fri, 11 Oct 2019 03:47:29 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIlte-0005J0-5O
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 03:47:19 +0000
Received: by mail-pl1-x643.google.com with SMTP id u12so3788477pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 20:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=lwaGexEIk4Tlv5FRwTaoLvYkPu+sAPH7np80Oye+n20=;
 b=Tv2D/j9IhiVwpOomkMei9mX/yftFh3M+jMXDqPObnbTzNhkl3Vbwz8nfJt804LsPWh
 IciDobUmz3EIfjwukLWZxWxft7TKG+lQlr1HIcNDIM95T5GmFnxBh0PykfqcZUF7nGuJ
 st/oFLIiOnlYOIsi/QPu+nMU9JawJsEhsXlo7oBSWtOMGGgZplUJRBzKreEHEFhxtKnF
 kIENpylMwCncC7haXNujmrB+OKFJ0oMJFyyhOZW+jCRvJpupe0S8Wr3g0q9X106g2d15
 vGR81cJiKSNy/G4YPrbEaW/YduaOG9S5kuIaOYGcKC5oHBox9NzEtg9IAVveiZnhtEAT
 HDKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=lwaGexEIk4Tlv5FRwTaoLvYkPu+sAPH7np80Oye+n20=;
 b=Tm15Sd7MtTOOCLFFiFW5EwY0wPHXmD2J6Tkmx0ivSSTvaSypZasms7SPU+nAF/lfOO
 iARWQfHeiagBwtf7heC0/OrZ5F1VPS+AHtvEFeMFOPRWFZMnOoP9ai/sffJd8sKFl9iI
 d54OjQEPoo4f+hoQgX7H90X3ZnAA6w4ese9HFPDQSQpMIYSUVXYWV3PbtLxJCwzMmt2x
 KZNEkVPL/1eMooII5HrdT1z9/tT9IaPdM1qa2Nlw8BjtJnwIjXxRwbAasXDBCd5mGXf7
 83diHGfCtalffDHgskX91sonuoU6xzNfvHyF4jWsXKnj7Q1+lz828f2udwv9z8ZyGNxG
 nKLQ==
X-Gm-Message-State: APjAAAWtIqJYg9oICsbx1Fhb40zbxKzdI4bESJboKs/eDSBz4J6o1FNb
 XUH1p5suAPlhX5nau4vCDAY=
X-Google-Smtp-Source: APXvYqyR1rmTzHQKhSUn3T3BkL6TnScR8FJqXArtRUVHc2yY16j/jZMdOqQe/IiJJA8w+1/i2ZTwMg==
X-Received: by 2002:a17:902:ba95:: with SMTP id
 k21mr4891378pls.49.1570765634586; 
 Thu, 10 Oct 2019 20:47:14 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id u3sm7493267pfn.134.2019.10.10.20.47.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 20:47:13 -0700 (PDT)
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: joro@8bytes.org, robh+dt@kernel.org, mark.rutland@arm.com, will@kernel.org,
 robin.murphy@arm.com
Subject: [PATCH 0/2] iommu/arm-smmu: Add an optional "input-address-size"
 property
Date: Thu, 10 Oct 2019 20:46:07 -0700
Message-Id: <20191011034609.13319-1-nicoleotsuka@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_204718_228964_0FDFEC67 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series of patches add an optional DT property to allow an SoC to
specify how many bits being physically connected to its SMMU instance,
depending on the SoC design.

Nicolin Chen (2):
  dt-bindings: arm-smmu: Add an optional "input-address-size" property
  iommu/arm-smmu: Read optional "input-address-size" property

 Documentation/devicetree/bindings/iommu/arm,smmu.txt |  7 +++++++
 drivers/iommu/arm-smmu.c                             | 10 ++++++++--
 2 files changed, 15 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
