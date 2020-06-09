Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0611F4732
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 21:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Js29xLAt7H4XDEdhGOjQoWZKYGzd6VAyP9JsCJjmpVY=; b=l9PjRqCG1CQdpd
	HBHKxJL6X7Vv5V2z7fHps4XC9WxEJ/zQmbFCGlNrxZf+XKMWanEJbHUk8cq3yN4ITU/UDsCjscWOi
	Frpv5xzIqy8/J3NAASYFZl1Bf2SX9j2ItEAZdIeUPi5euB4ccVX/w2zyElZgGwPF0paRNGrZ2G96u
	ChfodMYjmJuTRjxhvacZGF+e+tMjyx0tNcCKwSkb10EV8LQGTiTPsLgVQiGiLYC4GcD/PFfi8oF02
	ND3YX2BZF22HYqKO6IXPG7o24rOpVJ7hjWLpzy0v6WxuzDvk0Wjc5Bj99WjxrP+x9WehNITdKGGH8
	/xusgfY3LG1hE6yuZTqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jik7O-0001qe-UI; Tue, 09 Jun 2020 19:41:06 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jik6u-0001eg-3Q
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 19:40:37 +0000
Received: by mail-qk1-x741.google.com with SMTP id f18so22081694qkh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 12:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marek-ca.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fooRxBUyxBVZY7kJJL8VBy6grxiTlxx+OOYM9dBJ/2A=;
 b=M8PvEfs14mubrLj1XaXYuw77/9Sq33tjev7K9cNSQaxOHDR6yrSRTFwfmH4RdcsptN
 clItDCqBLGzhMO6BQxz8iY+SD7ORaFgogN0+hGx3LhLx2U5if5zrUtze9Cvuqx2wWmyf
 rVWn2umVU71LVwdc9Y1ADjYiP3GYlZBhLhBYHkT9ZvvGyzJj/7/lKO1Qfa3N/42fl1hk
 wj9BQXiP3HLYmgLp0xcIf6ahnjNgYmYP2y2OzCIQKvx3vfjKou6iKGKCX6eZFp5CVQoa
 bnB0dIKg22iA7Iv6XuLQCJATB1ao2T2Nm3oZNEVNKJDKHvUSmTPUMgV7nCcwWSdoExnm
 BmVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fooRxBUyxBVZY7kJJL8VBy6grxiTlxx+OOYM9dBJ/2A=;
 b=LbctO/Yn6z3RPogWCp8RHPfExdcQsln1SV7jYToRi9SBeSbth7XTPk9Ln8fSdKCT1e
 Gd6iLmXAnWLqRwrEZ+PlTCRyCLEOE8L4C/VmFqmf0gLzEL5yRuNG8FhYotYnGfJkY2gJ
 ZzyOUAb+NEzmP1QTRbvsFyvGVXnxJY9EpkJ9pvHChOqHPGN7arqrfsX5lbzNanOjODhS
 NGF0YfeAjaQoc3l+g9VJ/Jj5p4pFxBySStPp3RZyUlFbAVePa7qrh0G3zNYuypa5T4Zz
 SVOMZDzXIF2bidNm2vs9lCbd9fauPLKpX0sq7+DfM/lCdvTpA60N1IzTia5qJYuni8CJ
 j9mQ==
X-Gm-Message-State: AOAM533niNq7INE7+7kcga6htpmcDFnicrhAcLdLT4oBi37nJ5aCDCdJ
 JjRSfg1ai7X5kUgBEYQnBdnd7Hw/mG+48g==
X-Google-Smtp-Source: ABdhPJyBKbeiX6PPFfn4v6iP/rDxW8LkNd+ZfOa5pftTCgh+62D/kuaiIKUv+4K4cVgbFk/e+K0MsA==
X-Received: by 2002:a05:620a:153c:: with SMTP id
 n28mr29203054qkk.457.1591731633704; 
 Tue, 09 Jun 2020 12:40:33 -0700 (PDT)
Received: from localhost.localdomain ([147.253.86.153])
 by smtp.gmail.com with ESMTPSA id v8sm10513181qto.21.2020.06.09.12.40.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 12:40:32 -0700 (PDT)
From: Jonathan Marek <jonathan@marek.ca>
To: linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 0/8] arm64: dts: qcom: smmu/USB nodes and HDK855/HDK865 dts
Date: Tue,  9 Jun 2020 15:40:18 -0400
Message-Id: <20200609194030.17756-1-jonathan@marek.ca>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_124036_209688_579A100F 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Will Deacon <will@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Andy Gross <agross@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM SMMU DRIVERS" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add dts nodes for apps_smmu and USB for both sm8150 and sm8250.

Also add initial dts files for HDK855 and HDK865, based on mtp dts, with a
few changes. Notably, the HDK865 dts has regulator config changed a bit based
on downstream (I think sm8250-mtp.dts is wrong and copied too much from sm8150).

V2 changes:
* Added two patches for sm8150 and sm8250 iommu compatibles
* Changed apps_smmu node patches to use new compatibles
* Updated commit messages for apps_smmu patches to be more correct
* Updated HDK dts patches based on Bjorn's comments

Jonathan Marek (8):
  dt-bindings: arm-smmu: Add sm8150 and sm8250 compatible strings
  iommu: arm-smmu-impl: Use qcom impl for sm8150 and sm8250 compatibles
  arm64: dts: qcom: sm8150: add apps_smmu node
  arm64: dts: qcom: sm8250: add apps_smmu node
  arm64: dts: qcom: sm8150: Add secondary USB and PHY nodes
  arm64: dts: qcom: sm8250: Add USB and PHY device nodes
  arm64: dts: qcom: add sm8150 hdk dts
  arm64: dts: qcom: add sm8250 hdk dts

 .../devicetree/bindings/iommu/arm,smmu.yaml   |   2 +
 arch/arm64/boot/dts/qcom/Makefile             |   2 +
 arch/arm64/boot/dts/qcom/sm8150-hdk.dts       | 463 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8150.dtsi          | 180 +++++++
 arch/arm64/boot/dts/qcom/sm8250-hdk.dts       | 454 +++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8250.dtsi          | 287 +++++++++++
 drivers/iommu/arm-smmu-impl.c                 |   4 +-
 7 files changed, 1391 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/qcom/sm8150-hdk.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sm8250-hdk.dts

-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
