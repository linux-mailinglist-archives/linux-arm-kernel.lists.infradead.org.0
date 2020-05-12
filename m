Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9811CEBC7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 06:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JSlZEXchTY8nCqpY2+NsZPXGTLzRHGj/m2gPQuQ2y3Y=; b=MZx
	hH/yDd27Ybi7cSqwCzloxU9xKPQ0gxQUTb6sVHHcvSGZQmvilpiUc8g0Y9XmrE+oTO76hTaF00i0t
	BsCzos6U0X0x6ogASSlZ7jdzDJojyVBoPF+rzQKTitrc2cKKoMjHUF/qgmvcbNZRDX7P5rqlpFZsr
	gbO0hmDDJl6cKKV206IVqWmA0nHqEiuoaz4M0/ZQhvm4/GB6wRFe7tPQL4QH4p5xWfhHU8RHVl6bo
	xfbqKhjo2tXVmhzEOfsnYVOQVN3mg5MPjMU226RZw8MjBak/MfKJCrt17FWJO3SALpkYGarPR6y6r
	wE2xCCNbGi6o3tWU2xMD0OiXN8yDqeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYMEJ-0003K3-UY; Tue, 12 May 2020 04:09:19 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYMEB-0003Ji-Qh
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 04:09:13 +0000
Received: by mail-pf1-x442.google.com with SMTP id v63so5734609pfb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 21:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=yP6D/ixJy1go9I3dKKTs64wSH22i2lwmmxRms2M5Log=;
 b=rFjrz9rDOYj5kTHRA9iW5hkbpiDEvFt+HIsb9wikLbrAcUSBldbXdKbYpt7EC1eJDu
 vRHSLfztu+FL84B8qSEaDPj8TR5zF5dkvnWMEeUDhSnZ+o/ZnUI+g+/glbL5QZ2l26Ub
 Kf+pFuNVkyX/xujz123lwbFV/+v26ivFpNzRv/JeytkerLige4bEVIcCMmxeDtRlBM8m
 kZUZMWJ0WGaufznZ5GG/vWLyEE2dRwH2mFe4SPaUAVgmMAn5sVG2MoyfJcODZO8umdGA
 2Dmm/WMEM2kcg5U7AGkly7XNwyB+33DyaTkJex9y2wstyBJ+GIEa26FYtJloj3tV8CIr
 oPBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=yP6D/ixJy1go9I3dKKTs64wSH22i2lwmmxRms2M5Log=;
 b=kI5E7Con69Ij8lBRVJbOtNB/camJSk19lmeY0dfftxFRQMEtvka8el0h/wbm8XcuLD
 EA5Uni9V7Fw3+Hdy7YkfcKskTqZ3HNpY87XEYLOF8lh8ztRI/zbclRA2r6Ucg/yQucdN
 DnfJYtGUEznZ1N3S+nlxtbnXyuGnE/mzWdlwctbQVASpBdNeXei1La17MUmtte/C+NLC
 bsLlGUzfmslZtCfXsiCMw0SW1kYsHpBFLebiQwth5saq6MoDZkgl3HBvbJAPnV+jISHg
 BzgRovk+BcHJewxhXbI5hBVtDIIC4bfffw51ufcHkiPnTMqdcTAwEumIRFkTqxQ7rdKY
 +Piw==
X-Gm-Message-State: AOAM533iiApWhONL6bJDx5DwRH3HHd4W18layIagl65fgks6y72I8YFL
 qP1pGNLlFBA7J4U74U7OKrNFEQ==
X-Google-Smtp-Source: ABdhPJwR/mT3M4ET0gUnmGWVdzywReAuxXeomuc5BK5uwflbMkhGQbsFgUJAeMnqFKRm6B3nbWRNqQ==
X-Received: by 2002:a63:3ec4:: with SMTP id l187mr8207696pga.358.1589256549383; 
 Mon, 11 May 2020 21:09:09 -0700 (PDT)
Received: from localhost.localdomain ([240e:362:443:6f00:91af:f25c:441c:7ba4])
 by smtp.gmail.com with ESMTPSA id
 e4sm9471527pge.45.2020.05.11.21.08.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 May 2020 21:09:08 -0700 (PDT)
From: Zhangfei Gao <zhangfei.gao@linaro.org>
To: Joerg Roedel <joro@8bytes.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Hanjun Guo <guohanjun@huawei.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>,
 jean-philippe <jean-philippe@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, kenneth-lee-2012@foxmail.com,
 Wangzhou <wangzhou1@hisilicon.com>
Subject: [PATCH 0/2] Let pci_fixup_final access iommu_fwnode
Date: Tue, 12 May 2020 12:08:29 +0800
Message-Id: <1589256511-12446-1-git-send-email-zhangfei.gao@linaro.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_210912_087599_08032DAA 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-crypto@vger.kernel.org,
 Zhangfei Gao <zhangfei.gao@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some platform devices appear as PCI but are
actually on the AMBA bus, and they need fixup in
drivers/pci/quirks.c handling iommu_fwnode.
So calling pci_fixup_final after iommu_fwnode is allocated.

For example: 
Hisilicon platform device need fixup in 
drivers/pci/quirks.c

+static void quirk_huawei_pcie_sva(struct pci_dev *pdev)
+{
+	struct iommu_fwspec *fwspec;
+
+	pdev->eetlp_prefix_path = 1;
+	fwspec = dev_iommu_fwspec_get(&pdev->dev);
+	if (fwspec)
+		fwspec->can_stall = 1;
+}
+
+DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_HUAWEI, 0xa250, quirk_huawei_pcie_sva);
+DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_HUAWEI, 0xa251, quirk_huawei_pcie_sva);
 

Zhangfei Gao (2):
  iommu/of: Let pci_fixup_final access iommu_fwnode
  ACPI/IORT: Let pci_fixup_final access iommu_fwnode

 drivers/acpi/arm64/iort.c | 1 +
 drivers/iommu/of_iommu.c  | 1 +
 2 files changed, 2 insertions(+)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
