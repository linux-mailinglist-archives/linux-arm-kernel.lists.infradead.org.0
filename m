Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B92AB5A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 12:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fAPKyTPXQ7JZ3g1EqU8IJH1/3u/KRSiAZb63rCS9qZc=; b=MPwjNBA6ik8AdQEHeAUSv8ZFoi
	cjKRrKYiARgoan9SIKQTMYBq7TqPlT6dmkiTEg2CH42hq/tzkhKri6duG7maRBmqnxyVfAn9BVp4W
	PZ44HmaL7XtNAggVMlmTfhwcbI5dt89yWBVTz0goZXvpPCOfH5B+DQu8qYz3OzBF/muj9Slso4k5j
	FZouvSvypeMC+55uUWPn7PP1abgmmDpv7XzMwDJAftlkZcrmfOc28va9rH04ClFQJpFVpleX8TO8i
	49TcBoqlbf/Cj9cAKaix7YxNAWrCUXYwpAKgBV9dchCcHWOfniL8PfXaSsFZO6lilLKCzXJEMjzcf
	gHfJeB5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6BGy-0006ZM-Jk; Fri, 06 Sep 2019 10:15:20 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6BFs-0005tM-L0
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 10:14:14 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190906101409euoutp018976c11261580b41353c715dcda797a2~B0dL43fAO0918309183euoutp01e
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Sep 2019 10:14:09 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190906101409euoutp018976c11261580b41353c715dcda797a2~B0dL43fAO0918309183euoutp01e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1567764849;
 bh=OHYIHhGJeuiILvH2fW3MHBtLQfu9LguRK9+tcyvHP4c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NdPtgxNiZMP1AMJx/AbbQL+wxEl2+EPgvsKMjA9i2vERZsb5M9D20Wu8IoVlnhLDS
 F0/1uxfvZ2jR00TYVHlNh3Z6RFFJHJeBh0XQmLBX95y+Wj2xK5om+KFrEdFJpqoOqW
 ERw1fp0KAttIAFBKgAiuTPiZt10ulZm1KmZSR0eA=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190906101408eucas1p2caf15ca314d5e5d19d9fffb64873f487~B0dLFjkyq0165501655eucas1p2S;
 Fri,  6 Sep 2019 10:14:08 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 05.C7.04469.071327D5; Fri,  6
 Sep 2019 11:14:08 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190906101407eucas1p15eb0df53374b27497b4793eab24becf6~B0dKEa8Lv0522205222eucas1p1v;
 Fri,  6 Sep 2019 10:14:07 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190906101407eusmtrp137eb26ab183ca80cb8352672348ab41e~B0dJ16fBx1272412724eusmtrp1e;
 Fri,  6 Sep 2019 10:14:07 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-e9-5d723170a0e3
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id AB.9E.04166.F61327D5; Fri,  6
 Sep 2019 11:14:07 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190906101406eusmtip12f0d144656723f3a4441858294962e36~B0dJBndGY2707427074eusmtip19;
 Fri,  6 Sep 2019 10:14:06 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] dt-bindings: ddr: Add bindings for Samsung LPDDR3 memories
Date: Fri,  6 Sep 2019 12:13:44 +0200
Message-Id: <20190906101344.3535-4-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190906101344.3535-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe1BMYRjGfXvO2XNqbL5Wo3cqmlmMW7qMy3yqcRmXOaNh9IcxI4ZVRzUq
 2zlFYVi5N8KsySWJblPWEqtpSC3VTiFsGIqtJnZMLiG2Iky0zuK/3/u8z/O977zzcZS6kvHj
 ElPSBDFFm6RRetJVjYMPp+vCxLWhJUYvcvVUBUNa+7oZcs76kCFHHe8pYrNdYcmDrB6WvNAH
 ELPjGUOeVOcriTPHisgpm0VBLlk7WFLa+khB7LvLlWRfrZUlDT0HGDJw5xWa782bCkyIv5HX
 wfJm4yElf61kF1/3sUbBH6k0It5pHreCXe0ZGSckJW4RxJC56z0THPbvCl0RzqjtPEPpUb0q
 G3lwgGeC/e1lRTby5NS4HEHXUBMjF30ITpi+UnLhRFBeWMT8jZSettJyowxBtsWA/kVM9qrh
 CMcpcTBcN6a6Aj64GMFAw2oXU7hKATn9AS4ejaMhN7eOdTGNJ8I3cxHtYhWeC4PX3tDysEC4
 eOU25WIPPA8MFbl/BgNuZKF4+GCyaRH02mxI5tHwrqmSlTkAmo8fdj8kgT6n0O3ZAY6jZ92e
 CGhoesS4dqbwFKioDpHlBfArz6B0yYC9oO2Dt7y+FxiqTlKyrIKD+9WyezJUHm5RyDwGykwn
 3I/z0Hn/gvs6BgRDzU72GArM+z/sPEJG5CukS8nxghSWImwNlrTJUnpKfHDs5mQzGv5LzUNN
 X66j/scb6hHmkGakCvfp1qoZ7RYpM7keAUdpfFQVV4clVZw2c5sgbl4npicJUj3y52iNr2r7
 iK4YNY7XpgmbBEEniH+7Cs7DT492Wp5PwlGT21bdWzItfHz0Qj48RwwZFPljHpaMzsD27peO
 9vPSA1Xc0sHo3qJDWRuooHyNfmH14tabT6Occz6t9P/8FOtPtliCSuypNc7IH3V3dSHxt4wr
 XtPFyxNnjNqIZsXEzI5MjU2K+Fm8rOB4C1kzNnSNcU/2bHrvBAOdF6yhpQRt2FRKlLS/AVO/
 2OdHAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xu7r5hkWxBhMvsFhsnLGe1eL6l+es
 FvOPnGO16H/8mtni/PkN7BZnm96wW9xqkLHY9Pgaq8XlXXPYLD73HmG0mHF+H5PF2iN32S2W
 Xr/IZHG7cQWbReveI+wWh9+0s1p8O/GI0UHQY828NYweO2fdZffYtKqTzWPzknqPg+/2MHn0
 bVnF6PF5k1wAe5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZ
 apG+XYJexuPbv5gKFglU7L03m7mB8RBvFyMnh4SAicTSmUdYuhi5OIQEljJK7Jn8mQUiISYx
 ad92dghbWOLPtS42iKJPjBI7pnQzdjFycLAJ6EnsWFUIEhcRWM4ocWzVW2YQh1ngCJNE/655
 rCDdwgL+Elfm/WQGsVkEVCV+bFoEtoFXwE7i5+YXUNvkJVZvOABWwylgLzFp/VSwuBBQza4p
 nSwTGPkWMDKsYhRJLS3OTc8tNtQrTswtLs1L10vOz93ECIyVbcd+bt7BeGlj8CFGAQ5GJR5e
 gS8FsUKsiWXFlbmHGCU4mJVEeNdvBArxpiRWVqUW5ccXleakFh9iNAU6aiKzlGhyPjCO80ri
 DU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1MBZ2dDVv8wrpsbb03P79
 molSXODx7mSrXvaSBtdDS94YZjyoCIzw/X9uZd++4K+LHH5uOfv8o+9j1rcZDudPrw9/U1yo
 riL6fkXlra/b9oUoTngrJ2LC/WZmUHqI6PaP7zl6Xzi2lffdefcup1XX706Yz10vrdmeJa7f
 3u92LDaKuKc1T/TkQiWW4oxEQy3mouJEAAynBn+rAgAA
X-CMS-MailID: 20190906101407eucas1p15eb0df53374b27497b4793eab24becf6
X-Msg-Generator: CA
X-RootMTR: 20190906101407eucas1p15eb0df53374b27497b4793eab24becf6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190906101407eucas1p15eb0df53374b27497b4793eab24becf6
References: <20190906101344.3535-1-l.luba@partner.samsung.com>
 <CGME20190906101407eucas1p15eb0df53374b27497b4793eab24becf6@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_031412_818427_7B4E8CE0 
X-CRM114-Status: GOOD (  12.34  )
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

Add description of bindings for Samsung k3qf2f20db LPDDR3 memory.
Minor fixes in the old documentation.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 .../devicetree/bindings/ddr/lpddr3.txt        | 29 +++++++++++++++++--
 1 file changed, 27 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/ddr/lpddr3.txt b/Documentation/devicetree/bindings/ddr/lpddr3.txt
index 3b2485b84b3f..de0905239767 100644
--- a/Documentation/devicetree/bindings/ddr/lpddr3.txt
+++ b/Documentation/devicetree/bindings/ddr/lpddr3.txt
@@ -40,10 +40,34 @@ Child nodes:
   a given speed-bin. Please see Documentation/devicetree/
   bindings/ddr/lpddr3-timings.txt for more information on "lpddr3-timings"
 
+Samsung K3QF2F20DB LPDDR3 memory
+------------------------------------------------------------
+
+This binding uses the LPDDR3 binding (described above)
+
+Required properties:
+- compatible:	Should be:
+		"samsung,K3QF2F20DB"
+		followed by "jedec,lpddr3"
+- density  : <u32> representing density in Mb (Mega bits)
+- io-width : <u32> representing bus width. Possible value 32
+- #address-cells: Must be set to 1
+- #size-cells: Must be set to 0
+
+Optional properties:
+
+The optional properties are the same as in the LPDDR3 generic bindings and
+values should be taken from the data-sheet. Detailed bindings are described
+above.
+
+Child nodes:
+
+Detailed bindings are described in LPDDR3 generic bindings described above.
+
 Example:
 
 samsung_K3QF2F20DB: lpddr3 {
-	compatible	= "Samsung,K3QF2F20DB", "jedec,lpddr3";
+	compatible	= "samsung,K3QF2F20DB", "jedec,lpddr3";
 	density		= <16384>;
 	io-width	= <32>;
 	#address-cells	= <1>;
@@ -73,7 +97,8 @@ samsung_K3QF2F20DB: lpddr3 {
 
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
