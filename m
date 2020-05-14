Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA181D2422
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 02:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=5rEeVElZzU9G1mJlHKU0fyC6fSXgF4zkp8hhKnrswuQ=; b=gaL5oaJrxH+UhT
	0cIx2jLBtUQLtoywkeFt6XgPNeAmqF5DwFXxulPqGpuYG2lXQ6AcLGMffHwvdaOXA6a+bFbkq+N33
	olkKNTa6T0hBhGJEhlDFAGvjFM0VgtTdMbjJ+HEWVRkOuUZuO6uiPF2H2w6Tbq4eHaoKwlWKdRKYd
	IDqKpb9O/S1mpQ0MIDMKieTT0te7DKu0DNj8o+yraYTusLcYwC/whtVmvhEWv4Ngm6QwMSo2bp7Xd
	K9zRReNC7vaC1FPfivJckSQ0NzrYOm7GjfVtfVD3f9WxBRI26KUTwiuzAXytuf6XbTiM9CsYCzJMS
	VdV123G8/JCcXMgN6pRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ27W-0000kN-I2; Thu, 14 May 2020 00:53:06 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ27M-0000jN-I5
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 00:52:58 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200514005252epoutp03e7bdaa0cb9dad9ada51ece2818995f5d~OvtyBNJrv0800108001epoutp03j
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 00:52:52 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200514005252epoutp03e7bdaa0cb9dad9ada51ece2818995f5d~OvtyBNJrv0800108001epoutp03j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589417572;
 bh=GhMRsS1h/gD9h5aE/zmh63UKJ+NWU3Qir1xA7Z3zSwY=;
 h=From:To:Cc:Subject:Date:References:From;
 b=uzEqmuQXjutqfckyyXJzN7DP+tG/y6AaXKCQvvaxinL+AGN/vjONY+dARfQR4h1Rf
 mKbLiWArUKpASFX+T7Is8m3CL9cTsDzorIpIxaqRzWZIcf7YGqzcyhOOjd4e/lV8Ht
 S0vh5ekZOFnPLk8iVFa5g68yl4+q00n3PV4RundM=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200514005252epcas5p47992066d410ead3bcfbfb70f7dad3000~OvtxqEXLj1638216382epcas5p4k;
 Thu, 14 May 2020 00:52:52 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 04.45.10010.4669CBE5; Thu, 14 May 2020 09:52:52 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200514005251epcas5p39ff05e1b6f4f8735f1516fbb670d6810~OvtxN7VTu1578415784epcas5p3a;
 Thu, 14 May 2020 00:52:51 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200514005251epsmtrp289194194f5f358b119e5dd00d2367c7a~OvtxNChb91517815178epsmtrp2L;
 Thu, 14 May 2020 00:52:51 +0000 (GMT)
X-AuditID: b6c32a49-71fff7000000271a-e8-5ebc9664b9b9
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 CA.C3.18461.3669CBE5; Thu, 14 May 2020 09:52:51 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200514005249epsmtip247c895e5b14e5827c766988a33db237b~OvtvTC5tu2487624876epsmtip2j;
 Thu, 14 May 2020 00:52:49 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v9 00/10] exynos-ufs: Add support for UFS HCI
Date: Thu, 14 May 2020 06:09:04 +0530
Message-Id: <20200514003914.26052-1-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGKsWRmVeSWpSXmKPExsWy7bCmlm7KtD1xBodPCVk8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujIO9bxgLWmQqPrRvZW5gPCbaxcjJISFgIvHp3mmWLkYuDiGB3YwSW9+9h3I+
 MUrsm/EcyvnGKPHm9XY2mJbPz9ugEnsZJRp+vmeGcFqYJLo/3WQHqWIT0Ja4O30LE4gtIiAs
 ceRbGyOIzSxwg0niwUoXEFtYwFZizpupLCA2i4CqxL9Pr5lBbF4BG4nHx09CbZOXWL3hAFRc
 UOLkzCcsEHPkJZq3zgZbLCEwl0Ni2tkPLBANLhInp/yDahaWeHV8CzuELSXx+d1eoDgHkJ0t
 0bPLGCJcI7F03jGoVnuJA1fmsICUMAtoSqzfpQ+xik+i9/cTJohOXomONiGIalWJ5ndXoTql
 JSZ2d7NClHhIrLkODl0hgViJvX/Wsk5glJuF5P5ZSO6fhbBrASPzKkbJ1ILi3PTUYtMCw7zU
 cr3ixNzi0rx0veT83E2M4KSk5bmD8e6DD3qHGJk4GA8xSnAwK4nw+q3fHSfEm5JYWZValB9f
 VJqTWnyIUZqDRUmc93TaljghgfTEktTs1NSC1CKYLBMHp1QDk8aZC1/a3TkV593UdLFf+Xdn
 41+fHFl73R/+m/SZ89y/6vlUi6bFaelbLLjSWStemZpqFLTzwHSpSnfnUxuXhr9r75FZmSSW
 FqxTHjjttcPryb7Fnl+S+bY9e9H9raHxfnDKwf+9LxtXbe22qb1v1xVhfbBl8xL2u3qfj/Oy
 cbryFNn3tVyusS514dASFo9O/TtX+8O7zQVz76wve/aNv2Buy+GrblM2TF22W0jldPmWVWcj
 cw9+KhKVCMwriGQ/Zp7aG70lu9zo5rGXf/Ivrpv9cZ0fn9FXO6kjX+y9fnxY27LOuvyqWE/z
 45f918OWr8mzeDHnf2TfrPMvpI8sL5mpnG38dWlX/KyKpxlHlFiKMxINtZiLihMBXukWdbkD
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrILMWRmVeSWpSXmKPExsWy7bCSvG7ytD1xBqsmG1o8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujIO9bxgLWmQqPrRvZW5gPCbaxcjJISFgIvH5eRtLFyMXh5DAbkaJh183sEAk
 pCWub5zADmELS6z895wdoqiJSeJZyzc2kASbgLbE3elbmEBsEaCiI9/aGEFsZoFnTBKnHpaC
 2MICthJz3kwFG8oioCrx79NrZhCbV8BG4vHxk2wQC+QlVm84ABUXlDg58wlQPQfQHHWJ9fOE
 IEbKSzRvnc08gZF/FpKqWQhVs5BULWBkXsUomVpQnJueW2xYYJiXWq5XnJhbXJqXrpecn7uJ
 ERwrWpo7GLev+qB3iJGJg/EQowQHs5IIr9/63XFCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeW8U
 LowTEkhPLEnNTk0tSC2CyTJxcEo1MLHamJ7/8Fgq/ejxH+7vtt+OUnPaG3BBoi3nnYdWw6wL
 +Z/V370/um25id+s9I/dSXvUj0xszon3bIhY2Lxv17zEf5qrP0ZN3MNv+j3p1I17Bje081bt
 jN91dJpA/8M/ekqflPdrTHdKTp5VU31rt8b2NHVZV47oNtaHCkZ7TDhbrnT9LbsbEL+nz8hw
 RfrWxbMbMqo97Fjc5j5zvpI5OZOP+1DHHIYT5l7h4VenXOP8n630sHjGs1ef3zBuOKLa/7Wb
 6b1a0sZIk3erHLlijGczPnrtxqt1lPvw3k922SvktrfU73PepO/qXrfAW/6ED+/d+348CopL
 UtbGpgntFb1VPjNvxuEyRiXmn186uJVYijMSDbWYi4oTAb6u2sEEAwAA
X-CMS-MailID: 20200514005251epcas5p39ff05e1b6f4f8735f1516fbb670d6810
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200514005251epcas5p39ff05e1b6f4f8735f1516fbb670d6810
References: <CGME20200514005251epcas5p39ff05e1b6f4f8735f1516fbb670d6810@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_175256_840897_D74515F0 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org,
 Alim Akhtar <alim.akhtar@samsung.com>, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch-set introduces UFS (Universal Flash Storage) host controller support
for Samsung family SoC. Mostly, it consists of UFS PHY and host specific driver.

- Changes since v8
* fixed make dt_binding_check error as pointed by Rob
* Addressed review comments from Randy Dunlap

- Changes since v7:
* fixed review comments from Rob and Kishon
* Addeded reviwed-by tags
* rebased on top of v5.7-rc4
 
- Changes since v6:
* Addressed review comments from Avri and Christoph
* Added Reviewed-by tags of Avri and Can on various patches

- Changes since v5:
* re-introduce various quicks which was removed because of no driver
* consumer of those quirks, initial 4 patches does the same.
* Added Reviewed-by tags
* rebased on top of v5.7-rc1
* included Kiwoong's patch in this series, which this driver needs

- Changes since v4:
* Addressed review comments from Avir and Rob 
* Minor improvment on the ufs phy and ufshc drivers
* Added Tested-by from Pawel
* Change UFS binding to DT schema format


- Changes since v3:
* Addressed Kishon's and Avir's review comments
* fixed make dt_binding_check error as pointed by Rob 

- Changes since v2:
* fixed build warning by kbuild test robot 
* Added Reported-by tags

- Changes since v1:
* fixed make dt_binding_check error as pointed by Rob
* Addressed Krzysztof's review comments
* Added Reviewed-by tags

Note: This series is based on Linux-5.7-rc4 (commit: 0e698dfa2822)

Alim Akhtar (9):
  scsi: ufs: add quirk to fix mishandling utrlclr/utmrlclr
  scsi: ufs: add quirk to disallow reset of interrupt aggregation
  scsi: ufs: add quirk to enable host controller without hce
  scsi: ufs: introduce UFSHCD_QUIRK_PRDT_BYTE_GRAN quirk
  dt-bindings: phy: Document Samsung UFS PHY bindings
  phy: samsung-ufs: add UFS PHY driver for samsung SoC
  dt-bindings: ufs: Add DT binding documentation for ufs
  scsi: ufs-exynos: add UFS host support for Exynos SoCs
  arm64: dts: Add node for ufs exynos7

Kiwoong Kim (1):
  scsi: ufs: add quirk to fix abnormal ocs fatal error

 .../bindings/phy/samsung,ufs-phy.yaml         |   75 +
 .../bindings/ufs/samsung,exynos-ufs.yaml      |   91 ++
 .../boot/dts/exynos/exynos7-espresso.dts      |    4 +
 arch/arm64/boot/dts/exynos/exynos7.dtsi       |   43 +-
 drivers/phy/samsung/Kconfig                   |    9 +
 drivers/phy/samsung/Makefile                  |    1 +
 drivers/phy/samsung/phy-exynos7-ufs.h         |   86 ++
 drivers/phy/samsung/phy-samsung-ufs.c         |  380 +++++
 drivers/phy/samsung/phy-samsung-ufs.h         |  143 ++
 drivers/scsi/ufs/Kconfig                      |   12 +
 drivers/scsi/ufs/Makefile                     |    1 +
 drivers/scsi/ufs/ufs-exynos.c                 | 1292 +++++++++++++++++
 drivers/scsi/ufs/ufs-exynos.h                 |  287 ++++
 drivers/scsi/ufs/ufshcd.c                     |  126 +-
 drivers/scsi/ufs/ufshcd.h                     |   29 +
 drivers/scsi/ufs/unipro.h                     |   33 +
 16 files changed, 2598 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
 create mode 100644 drivers/phy/samsung/phy-exynos7-ufs.h
 create mode 100644 drivers/phy/samsung/phy-samsung-ufs.c
 create mode 100644 drivers/phy/samsung/phy-samsung-ufs.h
 create mode 100644 drivers/scsi/ufs/ufs-exynos.c
 create mode 100644 drivers/scsi/ufs/ufs-exynos.h


base-commit: 0e698dfa282211e414076f9dc7e83c1c288314fd
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
