Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21891189A72
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 12:18:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=M+I0owk1wLGS1KbfOmIm6w6MJtuuDiQYnMa20NMAXx4=; b=kb
	mdyM3JqPyZDcOwXVaYcqGqyLH8y2WqBZh69NqzTcxuJI+36e4LYuDjDH3crqN3V2u6Tc1ryrESAaK
	BrZXt9/ocFaj6sBQcef76dSCSQuV1wiDotJx2ohjdjPr4SeWAlBzYi9aXrSKTQYFfjaST26dloIbi
	JLZ7317moFJScVe14b8R01ZUKIFu1t8vMNu0slNOdVQgtWD4JJDO9v7xuODf2u6RRcNVbB3gF3eua
	yeCJl7ud4Q8N/DsFT4PORx8p5D872pU537/Ao6pVdSGIBzX0UaQaKLDSh9g5YLdBQ41DgEI6umV/F
	9uxsuUPLQ7pe6gcYUqNozDciMr6AHhmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEWiP-0007fU-9J; Wed, 18 Mar 2020 11:18:25 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEWi7-0007ez-IC
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 11:18:10 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200318111804epoutp0259c1c44561d047ff40040303472071eb~9YeYOSy281325313253epoutp02u
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 11:18:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200318111804epoutp0259c1c44561d047ff40040303472071eb~9YeYOSy281325313253epoutp02u
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1584530284;
 bh=55cxe52jChgOZW7Na66AxnLPO88pMONYr5hUMEzlyDM=;
 h=From:To:Cc:Subject:Date:References:From;
 b=oaMDPKKL/6Qw8rtF4vKUJIjBi1PZ/zCtx/d8I1oNP3DACaM3xULUiJMAIGgwPb26g
 amuCJF6l5Zqd34UMPRIxFeNmjQP/RpSH6k00SOwRW8hYT3rcwQgLRXfF8UECxwDgfj
 GlpHGXpgMuxPV3z8MxiXkO93d/uNlR/puOWGk3O4=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200318111804epcas5p12c1e516f5788d702bafd5cfef625aece~9YeX1y3xi2459224592epcas5p1D;
 Wed, 18 Mar 2020 11:18:04 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 86.4E.04736.C63027E5; Wed, 18 Mar 2020 20:18:04 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200318111803epcas5p3f1ce09223a1cf97e813b3cbf0c9ba29f~9YeXUaULi1553915539epcas5p3x;
 Wed, 18 Mar 2020 11:18:03 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200318111803epsmtrp1d819d26f04ff4b971c65d48a2dca626e~9YeXSkOvn1841218412epsmtrp1r;
 Wed, 18 Mar 2020 11:18:03 +0000 (GMT)
X-AuditID: b6c32a4b-ae3ff70000001280-f8-5e72036c817e
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 1D.AD.04158.B63027E5; Wed, 18 Mar 2020 20:18:03 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200318111801epsmtip295cf5d0f2af25c47a04135612fbdd8d3~9YeVmZZIm0257602576epsmtip2d;
 Wed, 18 Mar 2020 11:18:01 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: [PATCH v2 0/5] exynos-ufs: Add support for UFS HCI
Date: Wed, 18 Mar 2020 16:41:39 +0530
Message-Id: <20200318111144.39525-1-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmphleLIzCtJLcpLzFFi42LZdlhTQzeHuSjO4NQEVosH87axWbz8eZXN
 4tP6ZawW84+cY7U4f34Du8XNLUdZLDY9vsZqcXnXHDaLGef3MVl0X9/BZrH8+D8mi9a9R9gt
 lm69yejA63G5r5fJY9OqTjaPzUvqPVpO7mfx+Pj0FotH35ZVjB6fN8l5tB/oZgrgiOKySUnN
 ySxLLdK3S+DKmLNgLWPBcuGKvY8/MDYw3uHrYuTkkBAwkTjY94Wti5GLQ0hgN6PE9ClTWSCc
 T4wSfx6fYgepEhL4xigxZWklTMemNZuYIIr2Mkp87f7DDuG0MEnc+X2IFaSKTUBb4u70LUwg
 tohAgMSl9wfBdjALzGOSWPSoBywhLGAt0bLjANgKFgFViafb54DFeQVsJFrnTmGCWCcvsXrD
 AWaQZgmBE2wS0z/vZoZIuEjM2XSPFcIWlnh1fAs7hC0l8bK/DcjmALKzJXp2GUOEaySWzjvG
 AmHbSxy4MocFpIRZQFNi/S59kDCzAJ9E7+8nTBCdvBIdbUIQ1aoSze+uQnVKS0zs7oZa6iEx
 Z+FUVkgAxUqsu76AcQKjzCyEoQsYGVcxSqYWFOempxabFhjnpZbrFSfmFpfmpesl5+duYgSn
 DS3vHYybzvkcYhTgYFTi4eXYUBAnxJpYVlyZe4hRgoNZSYR3cWF+nBBvSmJlVWpRfnxRaU5q
 8SFGaQ4WJXHeSaxXY4QE0hNLUrNTUwtSi2CyTBycUg2MzMd0jqSvF0rfzbKz8MKpd04XtZfm
 KGfHN0iz8IpMcFrwwUl7Sar6dP4jF7e/fvtUfU9ozdKjNtF3S+aesPVj7Uz/qar1XcWqV9mD
 9YrKneDjN6QrshSN9nk//6KyJVj4Ko+Jjvpj00ki2RuXHDv+du6L35M5BctUFdN3czhkXV51
 +lvHhkfPlFiKMxINtZiLihMBJS2GGRcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrBLMWRmVeSWpSXmKPExsWy7bCSvG42c1GcQfsNJYsH87axWbz8eZXN
 4tP6ZawW84+cY7U4f34Du8XNLUdZLDY9vsZqcXnXHDaLGef3MVl0X9/BZrH8+D8mi9a9R9gt
 lm69yejA63G5r5fJY9OqTjaPzUvqPVpO7mfx+Pj0FotH35ZVjB6fN8l5tB/oZgrgiOKySUnN
 ySxLLdK3S+DKmLNgLWPBcuGKvY8/MDYw3uHrYuTkkBAwkdi0ZhNTFyMXh5DAbkaJXa2fmSES
 0hLXN05gh7CFJVb+ew5mCwk0MUls3pYCYrMJaEvcnb6FCcQWEQiSuLdmLSvIIGaBVUwSnb1n
 GUESwgLWEi07DoA1swioSjzdPgesgVfARqJ17hQmiAXyEqs3HGCewMizgJFhFaNkakFxbnpu
 sWGBUV5quV5xYm5xaV66XnJ+7iZGcHhqae1gPHEi/hCjAAejEg9vwqaCOCHWxLLiytxDjBIc
 zEoivIsL8+OEeFMSK6tSi/Lji0pzUosPMUpzsCiJ88rnH4sUEkhPLEnNTk0tSC2CyTJxcEo1
 MMpHb3998r34xbcZof8+G8zmk3KXLf7Ya3XqS+3Hc5kBpj0Xpl1WF7ppmPPoZJvv0cyiyxLr
 WoozHzj8nPzaI8Lv7HGXIxr2jXps29y1XxdM+fpmjY16aCrX432MrJN39rHcXMqv/djU/T9D
 ZFLjXUabaJb3Zyft7tkWcmXaSZYHhycecHz8I1yJpTgj0VCLuag4EQC/yPmiSwIAAA==
X-CMS-MailID: 20200318111803epcas5p3f1ce09223a1cf97e813b3cbf0c9ba29f
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200318111803epcas5p3f1ce09223a1cf97e813b3cbf0c9ba29f
References: <CGME20200318111803epcas5p3f1ce09223a1cf97e813b3cbf0c9ba29f@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_041807_983854_27BC724C 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org,
 Alim Akhtar <alim.akhtar@samsung.com>, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch-set introduces UFS (Universal Flash Storage) host controller support
for Samsung family SoC. Mostly, it consists of UFS PHY and host specific driver.

- Changes since v1:
* fixed make dt_binding_check error as pointed by Rob
* Addressed Krzysztof's review comments
* Added Reviewed-by tags

 
patch 1/5: define devicetree bindings for UFS PHY
patch 2/5: Adds UFS PHY driver
patch 3/5: define devicetree bindings for UFS HCI 
patch 4/5: Adds Samsung UFS HCI driver
patch 5/5: Enabled UFS on exynos7 platform

Note: This series is based on Linux-5.6-rc2 
      In past there was couple of attempt to upstream this driver, but
      it didn't went upstream for some or other reason.


Alim Akhtar (5):
  dt-bindings: phy: Document Samsung UFS PHY bindings
  phy: samsung-ufs: add UFS PHY driver for samsung SoC
  Documentation: devicetree: ufs: Add DT bindings for exynos UFS host
    controller
  scsi: ufs-exynos: add UFS host support for Exynos SoCs
  arm64: dts: Add node for ufs exynos7

 .../bindings/phy/samsung,ufs-phy.yaml         |   62 +
 .../devicetree/bindings/ufs/ufs-exynos.txt    |  104 ++
 .../boot/dts/exynos/exynos7-espresso.dts      |   16 +
 arch/arm64/boot/dts/exynos/exynos7.dtsi       |   44 +-
 drivers/phy/samsung/Kconfig                   |    9 +
 drivers/phy/samsung/Makefile                  |    1 +
 drivers/phy/samsung/phy-exynos7-ufs.h         |   85 +
 drivers/phy/samsung/phy-samsung-ufs.c         |  311 ++++
 drivers/phy/samsung/phy-samsung-ufs.h         |  100 ++
 drivers/scsi/ufs/Kconfig                      |   12 +
 drivers/scsi/ufs/Makefile                     |    1 +
 drivers/scsi/ufs/ufs-exynos.c                 | 1399 +++++++++++++++++
 drivers/scsi/ufs/ufs-exynos.h                 |  268 ++++
 drivers/scsi/ufs/unipro.h                     |   41 +
 include/linux/phy/phy-samsung-ufs.h           |   70 +
 15 files changed, 2521 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/ufs/ufs-exynos.txt
 create mode 100644 drivers/phy/samsung/phy-exynos7-ufs.h
 create mode 100644 drivers/phy/samsung/phy-samsung-ufs.c
 create mode 100644 drivers/phy/samsung/phy-samsung-ufs.h
 create mode 100644 drivers/scsi/ufs/ufs-exynos.c
 create mode 100644 drivers/scsi/ufs/ufs-exynos.h
 create mode 100644 include/linux/phy/phy-samsung-ufs.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
