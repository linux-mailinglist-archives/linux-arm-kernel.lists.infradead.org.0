Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84690B37D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 12:08:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b5hoktUBS+NLu/5O30acFdugccD/yQdGCN901w5ACrU=; b=a1OW13CUX7gK2qrSfFPOThi/9T
	etSXP8b0ZN+i+OCMi4eniuDB9+q00NOLo7n5oRkMOhT5qo8udq0DjqT2wl8CWGxk4jl0ClRx5u5Pa
	88GMb9ArHcc7ruzQJBQAMkzqPDYuzP4Koc7RxfWNgjfDudapKTywL/7mPC587Unl+eu8ckGOUlX0u
	W7SJ6aVRo1FdX4qeXnRtUBzi4guvqqtunMEUFhh7o3XHqwrMz6a6bBmBaZFeJBW2VABIo3fPNPw87
	9b0dkAMupifEEanBSd3ojXP693eZlXkHTx8eCFD2+fF2B3DSTAjN/WUXhyOQcolbXlqO1YtNcWbwR
	LzAbzKSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9nvo-0004FR-P1; Mon, 16 Sep 2019 10:08:28 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9nuk-0003Z6-Ov
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 10:07:25 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190916100720euoutp0286cc576b4c3378ed240db2d38293c2e1~E40F-Vsir1439714397euoutp02e
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 10:07:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190916100720euoutp0286cc576b4c3378ed240db2d38293c2e1~E40F-Vsir1439714397euoutp02e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568628440;
 bh=XCpywVkI329sDQjdpFeqg4Vg35D4fsOKYMe/L6jwhUk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QLhRI9XDofoN9AlreOWZuEFzLVBNZ7kc778gEi8PAyGDIHAT7TnhnFV8OmIZV8Mm2
 6FhtP+ZdkT8Ry/uOI6EXlQqqJXzxA7WlwnfoCyUkxEUKAMjtV7+JCJf+xNc2qS5TKX
 U26Blqv1LKSe4XJ2b92wU5AjH9cxSU/SzInEUtdU=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190916100719eucas1p1a5dd076b0f2cf3141be89bf5181ee3e1~E40FWmNTA0509905099eucas1p16;
 Mon, 16 Sep 2019 10:07:19 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 90.EE.04469.7DE5F7D5; Mon, 16
 Sep 2019 11:07:19 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190916100719eucas1p206fe95982b774840b5d6e62ba9c42c79~E40Ee3DKp1206112061eucas1p2B;
 Mon, 16 Sep 2019 10:07:19 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190916100719eusmtrp219462259880a3a41ca04f0e24f1e67c9~E40Ed-s1T2883028830eusmtrp2-;
 Mon, 16 Sep 2019 10:07:19 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-eb-5d7f5ed7318b
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id C8.93.04166.6DE5F7D5; Mon, 16
 Sep 2019 11:07:19 +0100 (BST)
Received: from AMDC3778.digital.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190916100718eusmtip21012935db0b900e96025d78b50e5e327~E40DxKu8Z3251632516eusmtip2A;
 Mon, 16 Sep 2019 10:07:18 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/3] dt-bindings: ddr: Add bindings for Samsung LPDDR3
 memories
Date: Mon, 16 Sep 2019 12:07:04 +0200
Message-Id: <20190916100704.26692-4-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916100704.26692-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+3Z2do7Do8ej5IuOxEEXo6wg8IuyGpisKMwoIsVq5UGtTW1H
 TStqRdayplFkoeUlFW15nWKaGbp57eK6TxKhXKiURniJIrqts+q/3/u8l+fh46MJrpYMoJOS
 03h9skarlMmlzT1f7Usdu0/ELa98tRQ3XKsjsWNmjMTFXQMkznN+ILDdXk/hx6cmKPzaoMAW
 5ysSP797XYanTV0IX7Pfl+CarmEKVzieSvDQySoZzm7vorBt4iyJP/eNoPU+6uqiaqRuLRim
 1BbzOZm6sfyEuvPjPYk6t8mM1NOWeVupGPmaeF6blMHrl63dK08sb9mSOu2ZOTgaaEAOeQ6i
 aWBXQnvVphwkpzm2CkGupUcqFjMIOi0F7mIawcOpMkkO8viz4ZyZosRGJYKTRYPUv5X+R62U
 666MDYUW8yHXgh9bhuCzLcbFBNssAdOswsW+7Hb4XtFHuljKzofC0WLKxQy7DuwV791mQXC7
 voNwsQe7Hr5UdROi3kNBqTVN5Ai4+bpRKrIvvO9tokRWwM/WYvcdAQymUiTyMXDm3XDPrAZb
 71PSFZlgQ6Du7jJRVkH7kyZSfCEvGJz0EdN7waXmq4QoM2A8w4nTi6DpwhO30VyorM6nxBE1
 fHrwJy/HXkbwsjDsIgoq+G9VgpAZ+fPpgi6BF1Yk84dDBY1OSE9OCN2forOg37/o4Y/eqRY0
 +2yfFbE0UnoyhuzjcRypyRCydFYENKH0Y3Yaj8ZxTLwm6wivT9mjT9fyghUF0lKlP3N0zptY
 jk3QpPEHeT6V1//tSmiPAANizquctm/DI2EjQwGDE7dGtObxhYYa/5J0VZG9OcL7Q/678BfU
 tgO8KnqJcRLs37+mDXl4B888Cu7fasiENxsViccCP4Z3m7ULOiOndkSd9t3ASRs+rbqSuytr
 bDxa8dakzGjLjeqMjcwfeGFsuXO8w4dx1CpCOK/ZBx2bLzJtSqmQqFmxmNALml8tLT/IQQMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xe7rX4+pjDT6pWmycsZ7V4vqX56wW
 84+cY7Xof/ya2eL8+Q3sFmeb3rBb3GqQsdj0+BqrxeVdc9gsPvceYbSYcX4fk8XaI3fZLZZe
 v8hkcbtxBZtF694j7BaH37SzWnw78YjRQdBjzbw1jB47Z91l99i0qpPNY/OSeo+D7/YwefRt
 WcXo8XmTXAB7lJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayVkamSvp1NSmpOZllq
 kb5dgl7Gkh2+BZ95Km48k25gvM7VxcjJISFgIvH4yyd2EFtIYCmjxKrdBRBxMYlJ+7azQ9jC
 En+udbF1MXIB1XxilDjee4exi5GDg01AT2LHqkKQuIjAckaJY6veMoM4zAJHmCT6d81jBekW
 FgiSOLNsGSOIzSKgKjH72XywqbwC9hLnl75igtggL7F6wwFmEJtTwEHix4qjzBAX2UtMuf6D
 cQIj3wJGhlWMIqmlxbnpucWGesWJucWleel6yfm5mxiBMbLt2M/NOxgvbQw+xCjAwajEw9vQ
 WhcrxJpYVlyZe4hRgoNZSYQ3vKM6Vog3JbGyKrUoP76oNCe1+BCjKdBRE5mlRJPzgfGbVxJv
 aGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mDU6qBUTB++Wq1Z6s/f1U6K+jh
 I5nJ5Xx1Xq3dtvqSy5YqJgn/P17v/Z/hf/+gv8Rzz9mG37hS/Bckvpt2+LUDz8//L5auP+rq
 xsKZvrDsnMVPc8VNO64f3V+o/Wh3/wOejcu+Hj3I9sNpptLjMtYUNuFE97pJNsYmCSmpgfel
 xa1YDJ2/3Dvh8OdKhxJLcUaioRZzUXEiAB7ItF2nAgAA
X-CMS-MailID: 20190916100719eucas1p206fe95982b774840b5d6e62ba9c42c79
X-Msg-Generator: CA
X-RootMTR: 20190916100719eucas1p206fe95982b774840b5d6e62ba9c42c79
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190916100719eucas1p206fe95982b774840b5d6e62ba9c42c79
References: <20190916100704.26692-1-l.luba@partner.samsung.com>
 <CGME20190916100719eucas1p206fe95982b774840b5d6e62ba9c42c79@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_030722_948512_38ABA5DF 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, b.zolnierkie@samsung.com,
 krzk@kernel.org, Lukasz Luba <l.luba@partner.samsung.com>,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, robh+dt@kernel.org,
 kgene@kernel.org, s.nawrocki@samsung.com, myungjoo.ham@samsung.com,
 m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatible for Samsung k3qf2f20db LPDDR3 memory bindings.
Introduce minor fixes in the old documentation.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 Documentation/devicetree/bindings/ddr/lpddr3.txt | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/ddr/lpddr3.txt b/Documentation/devicetree/bindings/ddr/lpddr3.txt
index 3b2485b84b3f..49afe794daaa 100644
--- a/Documentation/devicetree/bindings/ddr/lpddr3.txt
+++ b/Documentation/devicetree/bindings/ddr/lpddr3.txt
@@ -1,7 +1,9 @@
 * LPDDR3 SDRAM memories compliant to JEDEC JESD209-3C
 
 Required properties:
-- compatible : Should be  - "jedec,lpddr3"
+- compatible : should be one of the following:
+	Generic default - "jedec,lpddr3".
+	For Samsung 542x SoC - "samsung,K3QF2F20DB", "jedec,lpddr3".
 - density  : <u32> representing density in Mb (Mega bits)
 - io-width : <u32> representing bus width. Possible values are 8, 16, 32, 64
 - #address-cells: Must be set to 1
@@ -43,7 +45,7 @@ Child nodes:
 Example:
 
 samsung_K3QF2F20DB: lpddr3 {
-	compatible	= "Samsung,K3QF2F20DB", "jedec,lpddr3";
+	compatible	= "samsung,K3QF2F20DB", "jedec,lpddr3";
 	density		= <16384>;
 	io-width	= <32>;
 	#address-cells	= <1>;
@@ -73,7 +75,8 @@ samsung_K3QF2F20DB: lpddr3 {
 
 	timings_samsung_K3QF2F20DB_800mhz: lpddr3-timings@800000000 {
 		compatible	= "jedec,lpddr3-timings";
-		reg		= <800000000>; /* workaround: it shows max-freq */
+		/* workaround: 'reg' shows max-freq */
+		reg		= <800000000>;
 		min-freq	= <100000000>;
 		tRFC		= <65000>;
 		tRRD		= <6000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
