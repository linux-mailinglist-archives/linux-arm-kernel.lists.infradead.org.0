Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5A7B7645
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 11:27:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5em6R4gHunBmXTNdfsR5/xZzC25379yHvZGM+IjtCyk=; b=FzZYAfM+858OKzmV8peYwqjDO8
	A1mSxZGB0FQEvnvHE8edXqchK8ZFJaf2Ty7MuLp/z6GnL4hvzJXsrhoeuByppk0Rtq4HVcAihVqiE
	qE22gbrgZLzkucjtXt6LDbO97F5Ewj/n9f3uc31+BBdCj0lisEJbICSz4hhuowgi4rR1QTo2YQxDr
	9HTAWIk+TMfQtlNWi/PNYoFEmza5c3hO6gH7hmuiDuGO3CF3dKmdL/fmScwfjl9etO/BxCbwTKIic
	pnIhyl+4+qgq6VkEQtfx4zuvS/5k26q8cPJEueAF9aebmzZ+rQc4a5GToXuyn2+NAbOX8hB4ATAPB
	rHes/BGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAsiW-0001It-Jj; Thu, 19 Sep 2019 09:27:12 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAsiH-0001B5-9I
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 09:26:58 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190919092655euoutp023186be232f1f1d3af5cad8b659d60e6d~FzMqVZ4fl1020910209euoutp02o
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 09:26:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190919092655euoutp023186be232f1f1d3af5cad8b659d60e6d~FzMqVZ4fl1020910209euoutp02o
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568885215;
 bh=D+m0aHcd9T/WfIv+1XDM1QO0NNkgoqwe0icYPM320Tk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=h/olSvEOyQuyOEVis58DWSi7ol24q+z4XOett+XRzw+w4n51Lzqm6iMGYQdgHRIFV
 0AnyOXXHniWHVd8CARixRIKL/fM9X35z6jUzsKN41drQq19QQXZknGAm07GkB/sJPz
 uJ+WwA81ODHZRXuu4oMG61zsn5Bsf0MOGggA8k20=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190919092654eucas1p15fd8edd4afc32fde3ab3afbb24d2dc83~FzMpToHlA1757917579eucas1p1x;
 Thu, 19 Sep 2019 09:26:54 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 58.BE.04309.ED9438D5; Thu, 19
 Sep 2019 10:26:54 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190919092653eucas1p21a1caa00589649fbc972bc7b84fe0d89~FzMoazQZf0154301543eucas1p2M;
 Thu, 19 Sep 2019 09:26:53 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190919092653eusmtrp1a8e29865528ca40187f3d975bcff403a~FzMoLftNt1357513575eusmtrp1X;
 Thu, 19 Sep 2019 09:26:53 +0000 (GMT)
X-AuditID: cbfec7f4-f2e849c0000010d5-fb-5d8349de0794
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id FF.EB.04117.DD9438D5; Thu, 19
 Sep 2019 10:26:53 +0100 (BST)
Received: from AMDC3778.digital.local (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190919092652eusmtip1c5d69d1c43c191f4332651f74bf56ade~FzMnbAi4E1634516345eusmtip1c;
 Thu, 19 Sep 2019 09:26:52 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/2] dt-bindings: ddr: Add bindings for Samsung LPDDR3
 memories
Date: Thu, 19 Sep 2019 11:26:41 +0200
Message-Id: <20190919092641.4407-3-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190919092641.4407-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSbUhTURjHO7v37l5Xs9uMfDJfYhTZ26woOaVoRcKtCArmhwqpldcXci53
 1TSDplKWLVOLHGKWaDinpa0hKhWmMwOtZS8axiQ0MdJE095N8nqNvv3Oc37P+T/ncBhC1Uj5
 MPGJybwxUZeglivI+ic/Xev7dmdHbcgdY/E9Sy2FeyaHKDw8XUTim87nFL4yMExgl6uOxs+y
 Rmjca/LF9oFuCr9qKpHjictOhC2uRzJ8x+mm8e2eLhl+l2mV43MPnTRuHcmh8Len/Wi7iqsp
 rUFcY7Gb5uy2i3LufsVZbnywl+Qejz6QcXkOG+Im7P77mUOK0Gg+IT6VNwaFHVXEParPJ066
 lWk9lhzShBzzc5EHA+xmmP7xmshFCkbFWhFk1ZXS0mISwceuMVK0VOwEgmpzaC5iZjuKTRmS
 U4ng+5/u/w22piGZKMlZDTTYksTexWw5gm+th0Qm2Bcy6KjyE9mL1ULnVzct6iS7ElxjviIq
 2TB4WZAqzRYA1XXNhMgebDjUFP6eTQK2m4aqBpNMknZBoc1OSewFn9odtMS+0HHVTEosgOly
 GZL4DAxcuTHnhEBrexcl5hLsaqhtCpLKO+BtzgQt3dYT3n5eJA3vCYX1RYRUVsKF8yrJDgSH
 +cXcMEugsub63OEcOEpMlPR+hQgsl/T5KKD4f9YthGzIm08R9LG8sCmRP6URdHohJTFWc9yg
 t6OZD9Ux3T7ZgJqmjrUglkHqBcofq7KiVJQuVUjXtyBgCPViZcmWmZIyWpd+mjcajhhTEnih
 BS1jSLW3MmPe+8MqNlaXzJ/g+ZO88d+ujPHwMSGlSTMY9CDw5Ya+yHBD0emgvhNrUyLuejcv
 3xmvzdiXlWbYOmpdM7V6ymouy+fcpQn17LLYvZY3fqv8ZYPX4mhNzK91B2qntlWEG7KDLyrW
 x4xHOEMMbVptX+QeXbnzi+A04pyfgd6dk+fN5QcXhvXb2/KCfbKTPmSu0EJB/NJeNSnE6Tau
 IYyC7i+KpmNzTAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xu7p3PZtjDT4eErTYOGM9q8X1L89Z
 LV7/m85iMf/IOVaL/sevmS3On9/AbnG26Q27xa0GGYtNj6+xWlzeNYfN4nPvEUaLGef3MVms
 PXKX3WLp9YtMFrcbV7BZtO49wm5x+E07q8W3E48YHYQ81sxbw+ixc9Zddo9NqzrZPDYvqff4
 +PQWi8fBd3uYPPq2rGL0+LxJLoAjSs+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbK
 yFRJ384mJTUnsyy1SN8uQS9j37YJzAV3eSuuz2hnaWDcwt3FyMEhIWAiMauhuouRi0NIYCmj
 xKzHL9i7GDmB4mISk/Zth7KFJf5c62KDKPrEKHH0xzxmkGY2AT2JHasKQeIiAssZJY6tessM
 4jALPGCSuDj3GCNIt7BAkMT2qbsYQRpYBFQlzn+QATF5BewkLk0sg5gvL7F6wwFmEJtTwF5i
 zaTfYHuFgEqWdx9lm8DIt4CRYRWjSGppcW56brGRXnFibnFpXrpecn7uJkZg5Gw79nPLDsau
 d8GHGAU4GJV4eH+oN8UKsSaWFVfmHmKU4GBWEuGdYwoU4k1JrKxKLcqPLyrNSS0+xGgKdNJE
 ZinR5HxgVOeVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCUamCM3iVR
 le59/1jMqUYv1/lHqpfX2s26XP2n7NYX5WtrW7tUFx5emjfBfam+Ul5tre8aF6d7v7jfSbj3
 JOkbyknsthFsbZsV723sdyKae4PQ3Tc1X0KCF7r7HLvdWfBWyOqxleWxm5vDzzrb+CZGnci0
 t7oyTypmqRnrBMNr+U4zbwZw/RI5uVuJpTgj0VCLuag4EQDT0o7qsgIAAA==
X-CMS-MailID: 20190919092653eucas1p21a1caa00589649fbc972bc7b84fe0d89
X-Msg-Generator: CA
X-RootMTR: 20190919092653eucas1p21a1caa00589649fbc972bc7b84fe0d89
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190919092653eucas1p21a1caa00589649fbc972bc7b84fe0d89
References: <20190919092641.4407-1-l.luba@partner.samsung.com>
 <CGME20190919092653eucas1p21a1caa00589649fbc972bc7b84fe0d89@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_022657_540210_922F2570 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 dan.carpenter@oracle.com, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatible for Samsung k3qf2f20db LPDDR3 memory bindings.
Suggested to based on at25.txt compatible section.
Introduce minor fixes in the old documentation.

Suggested-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 Documentation/devicetree/bindings/ddr/lpddr3.txt | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/ddr/lpddr3.txt b/Documentation/devicetree/bindings/ddr/lpddr3.txt
index 3b2485b84b3f..a0eda35a86ee 100644
--- a/Documentation/devicetree/bindings/ddr/lpddr3.txt
+++ b/Documentation/devicetree/bindings/ddr/lpddr3.txt
@@ -1,7 +1,10 @@
 * LPDDR3 SDRAM memories compliant to JEDEC JESD209-3C
 
 Required properties:
-- compatible : Should be  - "jedec,lpddr3"
+- compatible : Should be "<vendor>,<type>", and generic value "jedec,lpddr3".
+  Example "<vendor>,<type>" values:
+    "samsung,K3QF2F20DB"
+
 - density  : <u32> representing density in Mb (Mega bits)
 - io-width : <u32> representing bus width. Possible values are 8, 16, 32, 64
 - #address-cells: Must be set to 1
@@ -43,7 +46,7 @@ Child nodes:
 Example:
 
 samsung_K3QF2F20DB: lpddr3 {
-	compatible	= "Samsung,K3QF2F20DB", "jedec,lpddr3";
+	compatible	= "samsung,K3QF2F20DB", "jedec,lpddr3";
 	density		= <16384>;
 	io-width	= <32>;
 	#address-cells	= <1>;
@@ -73,7 +76,8 @@ samsung_K3QF2F20DB: lpddr3 {
 
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
