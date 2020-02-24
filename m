Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC8216AC81
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 17:59:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RRYWvMtD5oCVYLJfIJq37gAo/qDK19lkj5w2GT4q/2c=; b=JSulOxSAzMgfmF
	EdopA5UuQ6+/RfwsFbS+dE4FxUqRopmN81lkWO2QU1Mxi3C+LWB2UUrhNVDk1orv7PaVbu0YlYI13
	jDzf6wd2axbHxhmFtFjy3MNh6msAsYHJlon2dY/zbmPLkZzNXX3CCLDtVCyGP7iusaaFKlHkynqDf
	Cav8qoxaP+Tx5InqNxWluk9wj0Ijim6j5YwvbAZgI1Cagx/ILa0veCMZpQU68Dn1Ni1KgBnmPlgsi
	cMd1Y89doSFUTSUaPkMhj+llr4u+L9uD7MK1LtjMtY6hAfGg5ZL/s5ORvzlIogO5nRVvrvD28lJkW
	OMU3Y/oqp49xGkh5bdhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6H4h-0002GQ-NG; Mon, 24 Feb 2020 16:59:19 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6H4R-0002Ev-9v
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 16:59:04 +0000
Received: by mail-wm1-x344.google.com with SMTP id a6so54168wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 08:59:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=scmbAO6wzrt+IWcheRPZehqNHYX56WQHidyo5gafnSg=;
 b=lTdy9mhOFPsmoLMiWYWzUPwO5/L1ZW/zHrw5WHhTOGFGqo0qp1pO1XqXgivCA5tu8f
 4WQQor5LDVG67jiip5XJXjVu0KBJp/48upaRAm3sUJkDdX8PI8Y/dZ2sqayP4YFM7Lth
 M6NG+tFPUc0L24XYFzihuldbhJ9jKoGp/GZFOaf6/CoDo5RnB+s36ZN5IY188JGQYAua
 D1Q+Xkpfkhq1pefdMw0+/huUWPOh1m1Yli+CU0oFvjD/jwECwDIQHByH5vst8JzbuY8K
 pPjJqk1eTJaZLDapQ2r9fU/Bhlrc+tTo4251aNoGDPfuLR/VY5I8Ze3QoL1+aHlvUZRj
 ecdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=scmbAO6wzrt+IWcheRPZehqNHYX56WQHidyo5gafnSg=;
 b=liazi2dXS31RZCP+4LmDqca72ezTLY+HIEYKAnvCvBhGOpf0Zvpkdr0KsM7/ly5hJa
 xlVBt018buWbJGEyWxXkuBmDbLA9HZE2sb+lD00qgraa0jCf5jtx+F0MWoB9IhOrQf+9
 mB8+G3AQOxMiaYwaa37P9793vPSyNihOP2yh/Iq/TfQP0rMEUYjcdp1uyBsMXr8gnspq
 tGwfNKa0lz0GW/oDFzXDoKU+m9+JJUjTS9gZ7K6hrnQo6cY/uRBDe5bQYcwmTMyjw9Mo
 XlXHpkfjpY2fNna1sUBa6FGqmvckJnBLN1Inj2qbtGPERmKKfOtAmTQFe+G6r4OpoahO
 RKhQ==
X-Gm-Message-State: APjAAAUwkFjA2RQxrXiYS3IiBu7ioqi+/Jz2fh/7MUlSmE9fLerph+4d
 JpfwQRQSOOyobZn6CMHf6iRmqQ==
X-Google-Smtp-Source: APXvYqxpXn2k4aIHPUjRRSjdhBRuWiMSxycEwYczmhlVZO7EaXRfsvHlrCGZTCB+GlB0NKSXYk0O+w==
X-Received: by 2002:a1c:4144:: with SMTP id o65mr22387669wma.81.1582563542078; 
 Mon, 24 Feb 2020 08:59:02 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id b10sm19473978wrt.90.2020.02.24.08.59.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 08:59:01 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, will@kernel.org, bhelgaas@google.com
Subject: [PATCH v2 0/6] iommu/arm-smmu-v3: Finish PASID support and command
 queue batching
Date: Mon, 24 Feb 2020 17:58:40 +0100
Message-Id: <20200224165846.345993-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_085903_411574_B0FB04C8 
X-CRM114-Status: UNSURE (   7.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: zhangfei.gao@linaro.org, joro@8bytes.org, robin.murphy@arm.com,
 robh@kernel.org, jonathan.cameron@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Finish off PASID support for SMMUv3, and batch command queue.

Since v1 [1]:
* Added patch 4 to factor command queue batching
* Included patch 6 from Rob [2]

[1] https://lore.kernel.org/linux-iommu/20200213101435.229932-1-jean-philippe@linaro.org/
[2] https://lore.kernel.org/linux-iommu/20200213205600.19690-1-robh@kernel.org/

Jean-Philippe Brucker (5):
  PCI/ATS: Export symbols of PASID functions
  iommu/arm-smmu-v3: Add support for PCI PASID
  iommu/arm-smmu-v3: Write level-1 descriptors atomically
  iommu/arm-smmu-v3: Add command queue batching helpers
  iommu/arm-smmu-v3: Batch context descriptor invalidation

Rob Herring (1):
  iommu/arm-smmu-v3: Batch ATC invalidation commands

 drivers/iommu/arm-smmu-v3.c | 139 ++++++++++++++++++++++++++++--------
 drivers/pci/ats.c           |   4 ++
 2 files changed, 115 insertions(+), 28 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
