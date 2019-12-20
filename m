Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7F2127241
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 01:18:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EsX0KwgORhOp3tAg9oYj2YLhLqFF03SYG7ufhUU/5WQ=; b=MYEplzUbSeWV7/rMu1vRZvGoiQ
	LqLbhEccgL9E5TD+zKCvK9iDkAV2jT289Bbf8hzfwPTN6EZ6lzm/AZdXytNEVk9fJRHlEFDWCSt0F
	Ctl6v/5mlBEtzBtl21e8Uj5i1Yv4pzPytOFJxCDkHhzUcXXtvJkyFlsC5viSkOxi8Gzz3wYlzZvVo
	i2b0Z6K1H/hyJjwemfve2ZSHrRTd4miG66X0IanXcji6ZrJnB8h5bnyO6pO/JmDDVTdVzLRa89AW1
	KCOCe8JUsrQD0vywvz9gLvn7VKmYUbzeJeGSuzYEKKJ6/+6a1PELUwUQLPDRrs5P50oY2h6fVHEa2
	87pKnMSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii608-0007fN-CA; Fri, 20 Dec 2019 00:18:40 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5zf-0007PF-Kj
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 00:18:13 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20191220001804epoutp017e5011b6d8904f32af37a285a47d7d62~h7DtZMngb2163621636epoutp01U
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 00:18:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20191220001804epoutp017e5011b6d8904f32af37a285a47d7d62~h7DtZMngb2163621636epoutp01U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576801084;
 bh=/s3dxL0leRBi85ExHunIXP3vYxsxh3UAXcd6sT3XK1M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hEJQxBmhkBxWkDyQmTusbBhBGf86AGt454siwSO9ydeyO9N3Xif/3detY6uQ8KRaF
 TeMq240PRzRtUykmkAI3o6dIw/vc0oNLLwtU7dPdFcM5PcPDcAVKQfIhkumWpnzm7Q
 Ik8wXaaIfg1Sksv9O6/I3MHCGAysmpYSrBpEgvbc=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20191220001803epcas1p32ebd9275f7e31e17632c68e25a75f0f7~h7DstLUIE1379413794epcas1p3T;
 Fri, 20 Dec 2019 00:18:03 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.153]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 47f8Th5SWQzMqYm6; Fri, 20 Dec
 2019 00:18:00 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 E5.E5.57028.8331CFD5; Fri, 20 Dec 2019 09:18:00 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20191220001800epcas1p383927f73060e0e9aaad2fd9aaf881b6d~h7Dp1U7hT1359613596epcas1p3Z;
 Fri, 20 Dec 2019 00:18:00 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191220001800epsmtrp119f7e7e296e4bd068e5def73fea14971~h7Dp0aekq1705617056epsmtrp1W;
 Fri, 20 Dec 2019 00:18:00 +0000 (GMT)
X-AuditID: b6c32a35-50bff7000001dec4-17-5dfc13382638
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 02.CA.10238.8331CFD5; Fri, 20 Dec 2019 09:18:00 +0900 (KST)
Received: from localhost.localdomain (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191220001800epsmtip15529ed17bdc843f3aeac8dfa45c0bece~h7Dpi_L0H2050220502epsmtip1z;
 Fri, 20 Dec 2019 00:18:00 +0000 (GMT)
From: Chanwoo Choi <cw00.choi@samsung.com>
To: robh+dt@kernel.org, krzk@kernel.org, heiko@sntech.de,
 leonard.crestez@nxp.com, lukasz.luba@arm.com
Subject: [PATCH v2 08/11] PM / devfreq: rk3399_dmc: Replace the deprecated
 'devfreq-events' property
Date: Fri, 20 Dec 2019 09:24:27 +0900
Message-Id: <20191220002430.11995-9-cw00.choi@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191220002430.11995-1-cw00.choi@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFJsWRmVeSWpSXmKPExsWy7bCmga6F8J9Yg02HNC3uz2tltLj+5Tmr
 xfwj51gt/j96zWrR//g1s8X58xvYLc42vWG3WHH3I6vFpsfXWC0u75rDZvG59wijxacH/5kt
 Zpzfx2SxsKmF3WLtkbvsFkuvX2SyuN24gs2ide8RdgchjzXz1jB6bFrVyeaxeUm9x8Z3O5g8
 +rasYvTYfm0es8fnTXIB7FHZNhmpiSmpRQqpecn5KZl56bZK3sHxzvGmZgaGuoaWFuZKCnmJ
 uam2Si4+AbpumTlAbygplCXmlAKFAhKLi5X07WyK8ktLUhUy8otLbJVSC1JyCiwL9IoTc4tL
 89L1kvNzrQwNDIxMgQoTsjM+LD3GXHCOo+LYjrusDYxz2LsYOTkkBEwk9vQ1MncxcnEICexg
 lGja9ZgVwvnEKNG+7TArSJWQwDdGiavthjAdC3/PZIMo2sso8eH/Iaj2L4wSPQ/mMIFUsQlo
 Sex/cYMNxBYRyJCY+foy2FhmgY9MEl3b7oIlhAXSJL7e3wtkc3CwCKhKTO83AgnzClhJ/Gyf
 xQqxTV5i9YYDzCA2p4C1xJZnD9lB5kgI/GeT+NK8mA2iyEWi69JXJghbWOLV8S1Qz0lJvOxv
 g7KrJVaePMIG0dzBKLFl/wWoDcYS+5dOZgI5gllAU2L9Ln2IsKLEzt9zGUFsZgE+iXdfe1hB
 SiQEeCU62oQgSpQlLj+4C7VWUmJxeyfUOR4Sfzf/YoIESh+jxLxVBxgnMMrNQtiwgJFxFaNY
 akFxbnpqsWGBIXKUbWIEp1Mt0x2MU875HGIU4GBU4uF1SPsdK8SaWFZcmXuIUYKDWUmE93bH
 z1gh3pTEyqrUovz4otKc1OJDjKbAkJzILCWanA9M9Xkl8YamRsbGxhYmhmamhoZK4rwcPy7G
 CgmkJ5akZqemFqQWwfQxcXBKNTDukMl1X1t46mIBd8aLQwpv7rXnZIW/XyeaphDoVxMpLTol
 ifHzY/sPl89t5C1LqndT0pkufGUr42qvk36dizndpip6SZ78ofBvYbjtD7Vml8fv+J72KIu+
 k7hstInp+EluMwbz2epdXcdP27VNOnKu43GVmUvX7sMOPdxXWna92je7eXZ7zVIlluKMREMt
 5qLiRABqtMr1vQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMLMWRmVeSWpSXmKPExsWy7bCSnK6F8J9Yg5MXBSzuz2tltLj+5Tmr
 xfwj51gt/j96zWrR//g1s8X58xvYLc42vWG3WHH3I6vFpsfXWC0u75rDZvG59wijxacH/5kt
 Zpzfx2SxsKmF3WLtkbvsFkuvX2SyuN24gs2ide8RdgchjzXz1jB6bFrVyeaxeUm9x8Z3O5g8
 +rasYvTYfm0es8fnTXIB7FFcNimpOZllqUX6dglcGR+WHmMuOMdRcWzHXdYGxjnsXYycHBIC
 JhILf89k62Lk4hAS2M0ocfzrWWaIhKTEtItHgWwOIFtY4vDhYoiaT4wS799OYASpYRPQktj/
 4gYbiC0ikCexaeNXZpAiZoH/TBLfTz4AKxIWSJHofbGIDWQQi4CqxPR+I5Awr4CVxM/2WawQ
 u+QlVm84ALaXU8BaYsuzh2DHCQHVvDx/gXUCI98CRoZVjJKpBcW56bnFhgWGeanlesWJucWl
 eel6yfm5mxjBQa+luYPx8pL4Q4wCHIxKPLwOab9jhVgTy4orcw8xSnAwK4nw3u74GSvEm5JY
 WZValB9fVJqTWnyIUZqDRUmc92nesUghgfTEktTs1NSC1CKYLBMHp1QDY8k0WcMrgbc3vjPa
 Pnfzs9dO/3rEDWYUvn3mPDV3gwXvQeXXq/+xslUc2yzPZqa4R/0Po3hjj4jQvOAY6YmmTm8r
 N79/+ZmBw/fPyY3+Ddznti7ayr/YvtX52YXNu50KV84o6m9XbPrzm61PgeEaZ3qQ+HyXUvv9
 v3YYXNJYXp6U8zRBra+yUomlOCPRUIu5qDgRAJNV9QR2AgAA
X-CMS-MailID: 20191220001800epcas1p383927f73060e0e9aaad2fd9aaf881b6d
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191220001800epcas1p383927f73060e0e9aaad2fd9aaf881b6d
References: <20191220002430.11995-1-cw00.choi@samsung.com>
 <CGME20191220001800epcas1p383927f73060e0e9aaad2fd9aaf881b6d@epcas1p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_161812_018547_E9806FD3 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 a.swigon@samsung.com, linux-kernel@vger.kernel.org, cw00.choi@samsung.com,
 kyungmin.park@samsung.com, myungjoo.ham@samsung.com, kgene@kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace the deprecated 'devfreq-events' property with 'rockchip,dfi-device'
property. But, to guarantee the backward-compatibility, keep the support
of 'devfreq-events' property.

Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 drivers/devfreq/rk3399_dmc.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
index e712c8662d2f..2294de13a3dc 100644
--- a/drivers/devfreq/rk3399_dmc.c
+++ b/drivers/devfreq/rk3399_dmc.c
@@ -306,11 +306,14 @@ static int of_get_ddr_timings(struct dram_timing *timing,
 static struct devfreq_event_dev *of_get_edev(struct device_node *np,
 							int index)
 {
-	struct device_node *node = of_parse_phandle(np, "devfreq-events",
+	struct device_node *node = of_parse_phandle(np, "rockchip,dfi-device",
 							index);
 
-	if (!node)
-		return ERR_PTR(-ENODEV);
+	if (!node) {
+		node = of_parse_phandle(np, "devfreq-events", index);
+		if (!node)
+			return ERR_PTR(-ENODEV);
+	}
 	return devfreq_event_get_edev_by_node(node);
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
