Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 622EC18BA63
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 16:07:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=U29Sk71gAqR8M0aEny/7HJ08rdArEPg1m4fGNVPVleg=; b=rV
	5bHHGEC8Fg4RhVF1a0ea4h29kS2qnQO+J3FMWcx4u0No8SqmLWv8T97a2e9bwtx+1L+UehOYbxBPT
	alunSonzp4j1Nomb8ABKgdrx0+yRoa1AkGeWr+Xx++ihHTgJHqIlnFgKBK53j2NydDaqIlL3Eh2IN
	PStpUzW0lC1b8yxiM7YkwtS7ie/aqhiLeBtfC0NmwwPA8edur6cNAymdr/KHNrdUBhyKJILf7go/d
	fP5DWRLkMt5U49kTVNGBvWu5xzIKem1LpSyGBM0mAecKUGmUST8KIEGR5rQBFWzgXziQKUmSXIPLQ
	6ZwVi8bhUHhp2NlLkrWESEN4b9TOwJmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEwlX-0000nR-6Y; Thu, 19 Mar 2020 15:07:23 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEwlG-0000m7-6d
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 15:07:07 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200319150702epoutp04e36413ed832157d767e94cb9702a28dc~9vPlL6Ifu2604126041epoutp04-
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 15:07:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200319150702epoutp04e36413ed832157d767e94cb9702a28dc~9vPlL6Ifu2604126041epoutp04-
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1584630422;
 bh=Db/l7TgRCAf7yPHcvp6MbGe95jhhHvRJO7iIkGmuizw=;
 h=From:To:Cc:Subject:Date:References:From;
 b=ZZ/3zai6vmIHF6NUVPXsKP/iwrDCfRrdKKTWp9Q++iSU29XxicTawxMubHYuULBBQ
 5Lb/djCxa7zDbOvijAhaXKphTTpVVBKs13VPdBPYasPRQBgQHRYsN3VQw/D3jawVKg
 WlP71DHdBCqrEHo/Scu392186SpYCCtKhbvR3syg=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200319150701epcas5p42416a4ff1ae29c796a0afc955e7eaaf7~9vPkNjo1T0491704917epcas5p4b;
 Thu, 19 Mar 2020 15:07:01 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 EA.26.04778.59A837E5; Fri, 20 Mar 2020 00:07:01 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
 20200319150701epcas5p4bb4365de0a0f4a4a6c7bc533e16d66ec~9vPjwYdmC0723307233epcas5p4O;
 Thu, 19 Mar 2020 15:07:01 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200319150701epsmtrp1c0135e38d868f25a85d3c0bca40f4ee2~9vPjvA-Wv0357603576epsmtrp1a;
 Thu, 19 Mar 2020 15:07:01 +0000 (GMT)
X-AuditID: b6c32a4a-353ff700000012aa-c6-5e738a9599de
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 53.C7.04158.59A837E5; Fri, 20 Mar 2020 00:07:01 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200319150659epsmtip2e1b62c49812e77d05a99f98f52c173fb~9vPh9pLdm0607506075epsmtip2F;
 Thu, 19 Mar 2020 15:06:59 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: [PATCH v3 0/5] exynos-ufs: Add support for UFS HCI
Date: Thu, 19 Mar 2020 20:30:26 +0530
Message-Id: <20200319150031.11024-1-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTURzHOfe162hymUKnGRUDgy18ldI1LSMKLtUfQn8lZV30Nk03x66u
 lEArXel89PbBnCtSlxmaLRmaz1ai+SBNQ5cplYqJyhRMkTTnVfrvw/f7+5zzO3BIVHoLl5Hx
 mmROp2ET5YQYq3+vUPg9zuGjA40TSnrcXE/Q0yuDBL1QU4HTZY5enO7rqxXRw7YPGF33cwin
 BxpMBF3U14zQxq92gq7sWEPorCaHiC5/OwyOS5iB/DyEqavKJpg3z9OZzM4WjHFNjGBMvq0K
 MIt1e5g7rUYkkowSh8dyifF6Thdw7LI4zpKXgWtLvK5/6i7DM4DTMwd4kJAKhv1OlygHiEkp
 1QhgT8uMyF1IqQUAS6ZihGIJwO+FY8i2UTD+AhGKJgCX/4xtGZkIvFkM3UxQB+BooW1T8KYi
 Yf98G+EWUMqMwGc/cjcLLyoMzjxpxNyMUb7Q8M6MullChcOWqixcuG0vfFnbigrsIOCrkasC
 n4RrU7lAYC/4u8MmElgGpwsMG0xucALMbTgkxDdgufkjJnAEbP1iwtwjKKWANQ0B7hilPGHe
 6i9EMCXwrkEqTPvC23ODW6YPvG80bi3GQMfDqa2XX4TNtmnsHthd8v9QCwBVYBen5dUqjg/R
 HtRw1/x5Vs2naFT+MUnqOrD5M5Sn7aCi92w7oEgg3yEpMvDRUpzV86nqdgBJVO4t8VNtRJJY
 NjWN0yVd0qUkcnw78CEx+U7JA3zwgpRSsclcAsdpOd12i5AesgwQl74v7cyQOCy8SPEZOZq9
 aLKMPhp1DdlDrKcC5084iJUuqxMoZ1n1ksmxSgXLKopVR2ZVrE565e/+Adfc4c6sEFcUE61o
 X113Mt+yJ89V98Cg0I6Y4eTQ0ojmJn3/067qzrZl4yS5aNPj3fbXrHLdWprAVk6et3pTFkSO
 8XFskBLV8ew/X9ahZBUDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrBLMWRmVeSWpSXmKPExsWy7bCSvO7UruI4g7M72S0ezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLFr3HmG3
 WLr1JqMDr8flvl4mj02rOtk8Ni+p92g5uZ/F4+PTWywefVtWMXp83iTn0X6gmymAI4rLJiU1
 J7MstUjfLoErY0FvA2vBLOGK02fmszYw3ubrYuTkkBAwkeh/sJIJxBYS2M0ocXu3HkRcWuL6
 xgnsELawxMp/z4FsLqCaJiaJ5YfmMIIk2AS0Je5O3wLWLCIQJHFvzVpWkCJmgVVMEp29Z8GK
 hAWsJV5P280CYrMIqEq07ZnHDGLzCthI7F/VygqxQV5i9YYDzBMYeRYwMqxilEwtKM5Nzy02
 LDDKSy3XK07MLS7NS9dLzs/dxAgOTy2tHYwnTsQfYhTgYFTi4XVoKY4TYk0sK67MPcQowcGs
 JMKrmw4U4k1JrKxKLcqPLyrNSS0+xCjNwaIkziuffyxSSCA9sSQ1OzW1ILUIJsvEwSnVwNhw
 v2ObrklZBSPnraarz5vMC79JK9osfCjjt2v/8R8aBS9nbL0avXdDlnKEql3SNR/7fEWedd9X
 1jysnsaRqd0w0eHpivUyWya8nnVip/DjF28rhYLDF3vGuqX/z2E+tpHx157722TXmKybOr9q
 XezXSY78WpEWlxW+2jMuqzzS9ZHx7eU59/KVWIozEg21mIuKEwHNCXedSwIAAA==
X-CMS-MailID: 20200319150701epcas5p4bb4365de0a0f4a4a6c7bc533e16d66ec
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200319150701epcas5p4bb4365de0a0f4a4a6c7bc533e16d66ec
References: <CGME20200319150701epcas5p4bb4365de0a0f4a4a6c7bc533e16d66ec@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_080706_491975_B3A8FB28 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

- Changes since v2:
* fixed build warning by kbuild test robot 
* Added Reported-by tags

- Changes since v1:
* fixed make dt_binding_check error as pointed by Rob
* Addressed Krzysztof's review comments
* Added Reviewed-by tags

 
patch 1/5: define devicetree bindings for UFS PHY
patch 2/5: Adds UFS PHY driver
patch 3/5: define devicetree bindings for UFS HCI 
patch 4/5: Adds Samsung UFS HCI driver
patch 5/5: Enabled UFS on exynos7 platform

Note: This series is based on Linux-5.6-rc6 (commit: fb33c6510d55)


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
