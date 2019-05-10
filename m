Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 181191A24A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 19:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U+zG9aqbqObYK0PbtYXv4rTMDjTLzW2NLSX+VhQRC0Q=; b=p0HscyMpRygYs8W9jXOU23w+KT
	/K9iHj1Xwo+d5dkS4afgHFoiL35MZGVZvpyy4WUcRxGEggWtSDZGT1/Q4D8YK0QGppmRHKKSAHmbF
	6YQHAOU8rXI/1lRBaOmRueYfAJ/S0j94JRsPz1wjzdpi3p7ZfQC/qQoKR3D0/mTBJZq+W4KE6gMAX
	sqcraxIBsl/Ug0AMI/04hEXojJ0BuxtrpuOWGGrLXfOydrF9azhRv/qkYx+MdqIdTXkiSxsoOyrDl
	65ZZx0Fe9hdf57IrjkVBfnGH1n32Q6/o1Y5CghwJfVNFWQ39pKgarXHWeVD/fZnZlp3mwS2P07xcI
	CAvBWK1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP9NQ-0008Eg-T8; Fri, 10 May 2019 17:32:08 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP9NI-0008DV-3W
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 17:32:01 +0000
Received: by mail-ed1-x543.google.com with SMTP id w33so6099329edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 10:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=w7FukaSOWmU1MZzQqS+AmxHZTAQNw2SrsDsc9k5kRs0=;
 b=qYzl9fLUzXiEcDEudYYZG9z4EZzyB0fYZl4wq9mDCOi5OFRQiD0vtS7yehPbo7lCbI
 UC988nHKI4i+dJI6WNij5/63TbO4pVnAXWTLklylRyFefzKmNQdMJV6Qe3tfy8nKysV2
 Aqv2+guc+GqFEtY68R5BmfH0ZTURhyoHUL3TuoB9pWtVHOJAtisz3iwkyIl0xckxXy3v
 B+PJ4qWr+iBFwl3fsX5wydly9fxxLRoD6HucLGxAeVCLSy1ThUwuwIfbYoJruY3kEZfH
 A1JvDtzTSXf6JBBYvergPvsZOVdZbDgK8f2+baIbvdaU7jd03u6VqIEtGxJWj6rm3DRi
 ViAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=w7FukaSOWmU1MZzQqS+AmxHZTAQNw2SrsDsc9k5kRs0=;
 b=sJR58m0s7cxW2XxH8fiikx19EUT3CMJI50Je/UUUwjP3bJjKtMtZX4KJtQXjNSYf+q
 GCsi020lsRmCgiCixn9xroToa3iMfOYYnuZFr1wT3/EzXqxNowY6FMUEwJZ0EON7ua3p
 msviduXsVr9yCq32iHuJUqlYsKzCQKrc0pnq23RFR0nZTFCRemHa0gdL9ZEdOs8ea+DR
 D6k4ivm9hYXeRdxYkSjuuUN0gBIQZ43eZlShxWG2QDj8lyjRiPy7R++7PciSiL4sBbmG
 SFWqHINxfGc9WSlU7I/f4uWkcxAZmxMKTVt4CRLVomkhw8FzWWgGzt3Fmb1hh1gCj5C1
 N7vQ==
X-Gm-Message-State: APjAAAVsB6JPZ6XvEh0fS5/3eJyFXmLY5D2r9w5U4s8CoZ/+lysEDAvS
 ayFI+wXuXxQmTgPIgKZXEJg=
X-Google-Smtp-Source: APXvYqxA/71Z6cfoww2mIZJyYH2jEGbUgRiMBIJC+7SOpG/Sa9uTAE+AGJ6aHz6MVd7YP755lBdqTQ==
X-Received: by 2002:a17:906:3955:: with SMTP id
 g21mr9629259eje.61.1557509517569; 
 Fri, 10 May 2019 10:31:57 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id v16sm1599567edm.56.2019.05.10.10.31.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 10:31:56 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: rng: Document BCM7211 RNG compatible string
Date: Fri, 10 May 2019 10:31:10 -0700
Message-Id: <20190510173112.2196-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190510173112.2196-1-f.fainelli@gmail.com>
References: <20190510173112.2196-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_103200_148967_FB6BDB82 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: stefan.wahren@i2se.com, Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, herbert@gondor.apana.org.au,
 Scott Branden <sbranden@broadcom.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Ray Jui <rjui@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-crypto@vger.kernel.org, mpm@selenic.com,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, wahrenst@gmx.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

BCM7211 features a RNG200 block, document its compatible string.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt b/Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt
index 0014da9145af..c223e54452da 100644
--- a/Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt
+++ b/Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt
@@ -2,6 +2,7 @@ HWRNG support for the iproc-rng200 driver
 
 Required properties:
 - compatible : Must be one of:
+	       "brcm,bcm7211-rng200"
 	       "brcm,bcm7278-rng200"
 	       "brcm,iproc-rng200"
 - reg : base address and size of control register block
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
