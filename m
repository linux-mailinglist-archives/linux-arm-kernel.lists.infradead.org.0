Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CC235965
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 11:14:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9TRD+1we5L8NQ7hbgvfoqzOFQtbx5996fsS/McjHVZ8=; b=oYrWgCvqHk3OGBjNh3KBlHjGR2
	Yojo6bpROHc0Z9Zw4dmOccpWp75vyU2vIXWJZIuM3kuHH1GLGzb5fGnXCXBNwqAMobbZ0cN1IKh3/
	QCeVcnBg/80Sl0ANxMfxMpH+rJyVyEXAaf9LhrrAiKMZCVzv0InpkzsEb+TZ88vQTrNZDRa/1WqoK
	UFE+hjz4vJBBIX8odSIg5P7pigewt8IBeRyeHqCfmP553zWuhhvESV+oqDgruj4Ruo83RfTeO/HFY
	d8he8cNtkBQ2Bhc6tYhxjG8FNv1Rf+kWT3ylOLQivYSTeZP+1MlTbxbB5GHgSNTw2fPyPHPTztlUA
	9HRBtiHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRzq-0003TJ-9q; Wed, 05 Jun 2019 09:14:14 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRyq-0002Du-UL
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 09:13:16 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190605091306euoutp02cb725f0738ad68da611292ebba615502~lQoVeaLTn2393623936euoutp02h
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  5 Jun 2019 09:13:06 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190605091306euoutp02cb725f0738ad68da611292ebba615502~lQoVeaLTn2393623936euoutp02h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1559725986;
 bh=p1ciuR2zati+bXIjUeTHD6GvYRFmX4EBTdt0xqfp0gs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WACTbgVyAHB0l6iD9Tvr3LEMXFwUuXW3GqebF9wgCbxFJitROVJtOhqu0rTqMwqol
 XKU2Xpirak8UFEfMxfmR4CjFjoJ5ckcpM1LSFZHnYdhfbkqDHjMFYVAFg5vaiCGxp2
 BIhG/TJp+XwMFsDaEf3K/HHAdRJVH6Sgkjqf8pqU=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190605091305eucas1p18906cc1ffa3e78e404eac4680ea16d04~lQoU9aOOi1094610946eucas1p1K;
 Wed,  5 Jun 2019 09:13:05 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 62.06.04298.1A787FC5; Wed,  5
 Jun 2019 10:13:05 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190605091305eucas1p136332cc3d1a299d90617bddcb365bee0~lQoUEVhb31225212252eucas1p1Q;
 Wed,  5 Jun 2019 09:13:05 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190605091304eusmtrp1668f764d5880035023b14fd9e0034d58~lQoT0ouvC0947509475eusmtrp1f;
 Wed,  5 Jun 2019 09:13:04 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-53-5cf787a1075e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 05.8A.04140.0A787FC5; Wed,  5
 Jun 2019 10:13:04 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190605091304eusmtip1ecc8c4f8c8d4a4be73f8d5f8f90d3da7~lQoTHWPOr2955629556eusmtip1j;
 Wed,  5 Jun 2019 09:13:03 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 5/5] DT: arm: exynos4412: add event data type which is
 monitored
Date: Wed,  5 Jun 2019 11:12:36 +0200
Message-Id: <20190605091236.24263-6-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190605091236.24263-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTcRTvf+/u7nW1uE3Lk0nWosgemlD0hyLT/DApyIw+ZJLd9DIjH7mr
 phm5inz1UJRqSE98lc60+Whqa6VrM7SWFhqJIQ6MzCIfWUFZXa/Wtx+/1zkcDkOqaigv5khC
 Mq9L4OLUcoWs0f7Duf529rfIDf25a/F9Qw2FeyfeU/im7QWF810fSex01tL4+ZkRGr/Ve2OT
 q4fCr5qvyfH4RRvCBucjAlfb+mlc1ttF4L7Td+T4nMVG47aRbApPtg+i7Qs0xhtGpGkq7qc1
 pspcuaauNFPz5PNDQnOpvhJpxk1Lw+gIxdYYPu5IKq/z33ZIEWt9Okoc+6BM6/wRpEd6RR5y
 Y4DdCIUF5bI8pGBU7B0E5qttlCio2AkE7177SsI4AkvuaWo2MXqpi5SECgSu0hL0L9GSsycP
 MYyc9QNzZZJIe7AlCCbbIkQ/yZYT8OjsGCEK7uw+6G8YnM7K2JXQ92tiGivZQPjZZCakYT5Q
 VfuYFDvd2O1QZwgUe4C10zBVlyMTeWBDYLg7WbK7w7CjnpawN3QUXZBJWAD9xdtIwifBlX99
 xrMF2hxdlFhDsr5Q0+wv0UFgsVoJqX0+vPm0QKTJv7Cw8Sop0UrIyVJJ7tVQf+HlzL6LoMJ4
 ZaZcA/qBalK6TRECZ1ZsAfIp/j/rFkKVyJNPEeK1vBCQwB/3E7h4ISVB6xedGG9Cf9+oY8ox
 ZkZfuw+3IpZB6nnKL9xkpIriUoX0+FYEDKn2UHJ9E5EqZQyXfoLXJUbpUuJ4oRUtYWRqT2XG
 nIEDKlbLJfNHef4Yr5tVCcbNS4926o1hv6Pm5HQVdx/0PB821/p977rohhCf/BWbX9vJnkyv
 Uw3Lh/xDuw0OR/Lm2oYHVe1rFvaM0PJ7A6su24NdzXG3JjvVoaONGWlod1mg+VmL8/owsfRL
 SJkjE65V28vu5i5u1Q7tqrAYfYKjnhZZDMtOhYcnYcN+X1PR1KYdVrVMiOUC1pA6gfsDtLgw
 n0IDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGIsWRmVeSWpSXmKPExsVy+t/xu7oL2r/HGKzcrG2xccZ6VovrX56z
 Wsw/co7Vov/xa2aL8+c3sFucbXrDbnGrQcZi0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbdY
 ev0ik8XtxhVsFq17j7BbHH7Tzmrx7cQjRgdBjzXz1jB67Jx1l91j06pONo/NS+o9Dr7bw+TR
 t2UVo8fnTXIB7FF6NkX5pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZll
 qUX6dgl6GfuPfmQqeMlbceanYwNjA1cXIyeHhICJxMe+i8xdjFwcQgJLGSWONW5jgkiISUza
 t50dwhaW+HOtiw2i6BOjxLSTJ1i6GDk42AT0JHasKgSJiwgsB2pe9RZsErPANiaJPVd2M4J0
 CwsESyy7uh9sKouAqsTtv1/A4rwC9hJ/du6A2iYvsXrDAWaQoZwCDhKbZ9iDhIWASo6f3co8
 gZFvASPDKkaR1NLi3PTcYiO94sTc4tK8dL3k/NxNjMA42Xbs55YdjF3vgg8xCnAwKvHwfkj8
 FiPEmlhWXJl7iFGCg1lJhDfx9pcYId6UxMqq1KL8+KLSnNTiQ4ymQDdNZJYSTc4HxnBeSbyh
 qaG5haWhubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQbGvZ2+69fdveez02LT4voN
 U67NMrVrc3kummx+y4Onw3nV/RM/Jwv1zFcPLUmYfeN1z/UCF7XuLY7JH9y7QgS8bv16433t
 9VX2muXxSY7X2T8fXHFg7tOw13v8PNvvdbnd7lV9wv42evXTbEuD2u9HDz2L/NHXf4OFnUNi
 d93uHwJ35q51MnYUVGIpzkg01GIuKk4EAMWQWpqpAgAA
X-CMS-MailID: 20190605091305eucas1p136332cc3d1a299d90617bddcb365bee0
X-Msg-Generator: CA
X-RootMTR: 20190605091305eucas1p136332cc3d1a299d90617bddcb365bee0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190605091305eucas1p136332cc3d1a299d90617bddcb365bee0
References: <20190605091236.24263-1-l.luba@partner.samsung.com>
 <CGME20190605091305eucas1p136332cc3d1a299d90617bddcb365bee0@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_021313_361954_EED25A02 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, kgene@kernel.org,
 b.zolnierkie@samsung.com, krzk@kernel.org, l.luba@partner.samsung.com,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, robh+dt@kernel.org,
 myungjoo.ham@samsung.com, s.nawrocki@samsung.com, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch adds new field in the PPMU event which shows explicitly
what kind of data the event is monitoring. It is possible to change it
using defined values in exynos_ppmu.h file.

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos4412-ppmu-common.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/exynos4412-ppmu-common.dtsi b/arch/arm/boot/dts/exynos4412-ppmu-common.dtsi
index 3a3b2fafefdd..549faba85a7a 100644
--- a/arch/arm/boot/dts/exynos4412-ppmu-common.dtsi
+++ b/arch/arm/boot/dts/exynos4412-ppmu-common.dtsi
@@ -6,12 +6,16 @@
  * Author: Chanwoo Choi <cw00.choi@samsung.com>
  */
 
+#include <dt-bindings/pmu/exynos_ppmu.h>
+
 &ppmu_dmc0 {
        status = "okay";
 
        events {
 	       ppmu_dmc0_3: ppmu-event3-dmc0 {
 		       event-name = "ppmu-event3-dmc0";
+		       event-data-type = <(PPMU_RO_DATA_CNT |
+					   PPMU_WO_DATA_CNT)>;
 	       };
        };
 };
@@ -22,6 +26,8 @@
        events {
 	       ppmu_dmc1_3: ppmu-event3-dmc1 {
 		       event-name = "ppmu-event3-dmc1";
+		       event-data-type = <(PPMU_RO_DATA_CNT |
+					   PPMU_WO_DATA_CNT)>;
 	       };
        };
 };
@@ -32,6 +38,8 @@
        events {
 	       ppmu_leftbus_3: ppmu-event3-leftbus {
 		       event-name = "ppmu-event3-leftbus";
+		       event-data-type = <(PPMU_RO_DATA_CNT |
+					   PPMU_WO_DATA_CNT)>;
 	       };
        };
 };
@@ -42,6 +50,8 @@
        events {
 	       ppmu_rightbus_3: ppmu-event3-rightbus {
 		       event-name = "ppmu-event3-rightbus";
+		       event-data-type = <(PPMU_RO_DATA_CNT |
+					   PPMU_WO_DATA_CNT)>;
 	       };
        };
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
