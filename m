Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA7EC34EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 14:55:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bPWRNsoRwzcTX5QBhV8lIfwTAGg63cHRnVVw0Yo5q78=; b=obJaGwvlRMjUdQQ3RAJrg4ddvH
	RGN7iuftpXaVL2pD9E5Rx6O/OXctb0rEKPaR4tZZNHO04wyMFdtjSQZvI7l+1+SNJzA3FHGdiszJE
	9fxVre9MqxFh4HRP52/n9gaYtmkHDeZIJbyR7VN/15vAVYRU/bgAgdSaBS/X+zwPy+A1vsZ0acvpV
	PK0mDUTv2OtnK8nbCKdMw4vyoj+MnucURroptzzKQHDWZGJ+QbpUWCC/iC8SITAopdvtHnMPrcMUo
	JyzUwRjUT6Z7ITow3s2cwaTCuFaliIW/uFuiYHIz+LEndMy2mA4fiaDLtOPcbxAG7P9xuy5Aau063
	z6mDY39A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFHgY-0006TO-Q1; Tue, 01 Oct 2019 12:55:22 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFHfz-0006F8-7P
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 12:54:48 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191001125445euoutp014ac5b8e3a647d1beb4f5837c00627ae5~JhxjcPguU2384323843euoutp01x
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  1 Oct 2019 12:54:45 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191001125445euoutp014ac5b8e3a647d1beb4f5837c00627ae5~JhxjcPguU2384323843euoutp01x
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569934485;
 bh=Dff1QQUQTxaLdn9SHTAHGnAGkjyFlPwvKZ2REzcJ6xQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oGObJtHHcw0VbfCPJOZYWRuonkBCvuvUa0603o9cUTr7PqauoIfeb7LJWry8hupxD
 xjLJ9BPYnRi8FE6a+ufI5oCkb24GqNnbAt6zgho9iI/+2RvEVKAUOJFVusl0Zzv7yJ
 3yyu00rTOECsWcb8y/bBmYcFQ3IVDb/Iyd5qNWUw=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191001125445eucas1p2fac5195573391f634fd79286b51b81f2~Jhxi9Tpnx0692006920eucas1p2Y;
 Tue,  1 Oct 2019 12:54:45 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id A0.FB.04309.59C439D5; Tue,  1
 Oct 2019 13:54:45 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191001125444eucas1p2e4254acf8434e1fadf0e208dbe62b2d7~JhxifxGrv0693606936eucas1p2R;
 Tue,  1 Oct 2019 12:54:44 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191001125444eusmtrp1cc6132812dd0108339642ad2d6067443~Jhxie2J5x1469914699eusmtrp1o;
 Tue,  1 Oct 2019 12:54:44 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-6a-5d934c95df99
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D1.D5.04117.49C439D5; Tue,  1
 Oct 2019 13:54:44 +0100 (BST)
Received: from AMDC3778.digital.local (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191001125444eusmtip1452069ff3bb73b3f1d41a685afecc540~JhxhxjLxQ2421824218eusmtip1E;
 Tue,  1 Oct 2019 12:54:44 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/4] dt-bindings: memory-controllers: Add Exynos5422 DMC
 interrupts description
Date: Tue,  1 Oct 2019 14:54:33 +0200
Message-Id: <20191001125436.24086-2-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191001125436.24086-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSbUhTYRTHe+7d3b0OV7er6KGkaBSVkGb04YlejaB9sJIg6AWpqbclObXd
 rMygGWWlW5qjMumVNGttueYaalq5TWdGrjKa9oa0MsslyEwKluS8Vt9+53/+538ODw9DcnZq
 BpOVs5/X5qiyFVKZxNH+q2vRuRRj2mJrP+B7lXUU9o18ofBVdxeFy/yDJPZ6rTR+dixA4ze6
 OGzzv6Zwd9MlKQ4a3AhXeh8S2OJ+T+Ma3wsCvy26JcUnWtw0dgVOUni04yNaM11pvmJGysaq
 97TSZjotVdZXH1W2DjUTyjN2E1IGbbNS6e2yFZl8dtYBXpu4apdsjzPwksyrjTzkszyidcgm
 K0ERDLBLoWi0RVKCZAzH3kJQ+62REIsRBMdLfUgsggj09n7p35GL/X5JmDm2FsGn+qn/Jrqs
 zVQJYhgpmwANpn1hTzR7A8Goa3vYQ7IOAvpMo1S4EcVmwuDwp4lQCTsPPD8tZJjl7Gpor/xN
 istmwx3r4wmOYNfAzZf3qXAQsJ00BF1jlGhaBz02Ly1yFHzz2Cc5Dp4a9RKRBdAZriORj4C/
 7PKkZzm4PC8mjibZhVDXlCjKyVD1+QMdloGdCj3fp4dlchwrHBdIUZbDqWJOdC8Au/45IXIM
 1JrPT4YrYcDglorPY0TgMJeS5Wh21f9l1xAyoVg+X9CoeWFJDn8wQVBphPwcdUJGrsaGxv/S
 0zHPSANqCqU7EcsgRaS8/OvZNI5SHRAKNE4EDKmIlq8IVaRx8kxVwWFem7tTm5/NC040k5Eo
 YuWFU/p2cKxatZ/fy/N5vPZvl2AiZuhQ0mbvL1tZoJW3VHQMro1pI4ZSn1jW9WoK1ZH+B9XI
 2HR3Y3q3IY+RpX6J9cX7i8/H/Jjf5Y3ckt2XcXsgVDiknkY0r1f06V65is/pk6O3DW4YWTa8
 I3fT4+65AxzOr2kLqVMaStNeR1Afte9Werhpu0ucvTVR5n1brxTM6dzSqpAIe1RJ8aRWUP0B
 DSxpUUcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xu7pTfCbHGqw8aGqxccZ6VovrX56z
 Wsw/co7Vov/xa2aL8+c3sFucbXrDbnGrQcZi0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbdY
 ev0ik8XtxhVsFq17j7BbHH7Tzmrx7cQjRgdBjzXz1jB67Jx1l91j06pONo/NS+o9Dr7bw+TR
 t2UVo8fnTXIB7FF6NkX5pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZll
 qUX6dgl6GYfeXGIuWM5TcX3tfvYGxk1cXYycHBICJhIznz1m6WLk4hASWMoocWT6LnaIhJjE
 pH3boWxhiT/XuthAbCGBT4wSmx8ANXBwsAnoSexYVQjSKyKwnFHi2Kq3zCAOs8ARJomjq68x
 gjQICyRJbF2zCcxmEVCVOP5jLTOIzStgL3Fsxl9miAXyEqs3HACzOQUcJJZd2soKscxeYsq+
 14wTGPkWMDKsYhRJLS3OTc8tNtIrTswtLs1L10vOz93ECIyUbcd+btnB2PUu+BCjAAejEg+v
 xfOJsUKsiWXFlbmHGCU4mJVEeG3+TIoV4k1JrKxKLcqPLyrNSS0+xGgKdNREZinR5HxgFOeV
 xBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCUamA0mOL7R6ZqaihP1Xqz
 vDwu8dJ/DneXe91Nt5EVEZuxJL7L7u9ai23Pi4/YhnAxsGUyXph+ZoME573zyrs/+dfu3XpG
 zq+iSuVJ1J/pZ1fsnOj1xOf70pcT2+Z0SfrK6eWofDvsvvP2aab4qGvbKuRstsvyHd3Bk2yq
 k3dLdabqi77/Zc2fmCcosRRnJBpqMRcVJwIAN+QHDqoCAAA=
X-CMS-MailID: 20191001125444eucas1p2e4254acf8434e1fadf0e208dbe62b2d7
X-Msg-Generator: CA
X-RootMTR: 20191001125444eucas1p2e4254acf8434e1fadf0e208dbe62b2d7
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191001125444eucas1p2e4254acf8434e1fadf0e208dbe62b2d7
References: <20191001125436.24086-1-l.luba@partner.samsung.com>
 <CGME20191001125444eucas1p2e4254acf8434e1fadf0e208dbe62b2d7@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_055447_397684_6D8C9228 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, robh+dt@kernel.org,
 b.zolnierkie@samsung.com, krzk@kernel.org,
 Lukasz Luba <l.luba@partner.samsung.com>, cw00.choi@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add description for optional interrupt lines. It provides a new operation
mode, which uses internal performance counters interrupt when overflow.
This is more reliable than using default polling mode implemented in
devfreq.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 .../bindings/memory-controllers/exynos5422-dmc.txt     | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt b/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
index 02aeb3b5a820..afc38aea6b1c 100644
--- a/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
+++ b/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
@@ -31,6 +31,13 @@ Required properties for DMC device for Exynos5422:
 	The register offsets are in the driver code and specyfic for this SoC
 	type.
 
+Optional properties for DMC device for Exynos5422:
+- interrupt-parent : The parent interrupt controller.
+- interrupts : Contains the IRQ line numbers for the DMC internal performance
+  event counters. Align with specification of the interrupt line(s) in the
+  interrupt-parent controller.
+- interrupt-names : List of IRQ names.
+
 Example:
 
 	ppmu_dmc0_0: ppmu@10d00000 {
@@ -70,4 +77,7 @@ Example:
 		device-handle = <&samsung_K3QF2F20DB>;
 		vdd-supply = <&buck1_reg>;
 		samsung,syscon-clk = <&clock>;
+		interrupt-parent = <&combiner>;
+		interrupts = <16 0>, <16 1>;
+		interrupt-names = "drex_0", "drex_1";
 	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
