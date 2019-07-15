Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE8A68A19
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:58:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rED5pHTdBwHhXJ6c4UWkggdmJd9leyLY/JDHAAX7IrQ=; b=pkSES9hryEKtGTuUY2taHMs73F
	rO966TkBr5UblUsCtdCAehBc0bQEKCVjCXTUePEUXxQzlHf0u2xU7k99FXJwDJZpFJo8561q01vJb
	onNSEhQg3L7XKzrZk+9gSIYEY4Tm6fso6aXfOjKG37UA3rokSCsRpTSc5BJYX09oYmeyyfCcf2oQU
	FInqaNP7NgqLyDicS47USNT8xLbQbdnkZqCEaB9NaU3uDhA5Iz+BTKug86ExJxjaC5lvNrkW3d3x/
	ppl4Wfg1yoeA80Zy+Vq/RSNTFT1QzexFhg/t79m/tWkCayizuWcArOiRax2P3ZZpcBtmouQ0YbHSh
	gVoN32eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0Yl-00019U-Cz; Mon, 15 Jul 2019 12:58:27 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Lt-0004Np-0i
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:45:12 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124505euoutp01a5df44fd0e49404002df28b3d74b0f0f~xlU2FAqWo1950319503euoutp01E
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:45:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124505euoutp01a5df44fd0e49404002df28b3d74b0f0f~xlU2FAqWo1950319503euoutp01E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194705;
 bh=VjUehVjlqV4d9i1WqvKnygKijts5Agt7n2omeK3swGw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TQS4Xy5PhIGpRPpsar9x1gOsLZWRp/VWhx+a7fcpsOwf4BITvyhEY+AJqGDA29ImJ
 IOgPN83/wPpIdtzQTXokYq6RD8OoLaGVzWeqQgPdppzOWnUSwpN6FxBOkccbgW6lK6
 n/3+Fz3QSkK2XFw7roV8w9eet3UYe6j7Te5RT7QY=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190715124505eucas1p1ee22ecc2c0e3ea0839f3ce1fb19d70b7~xlU1jSh8u0147201472eucas1p1Z;
 Mon, 15 Jul 2019 12:45:05 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 53.35.04298.0557C2D5; Mon, 15
 Jul 2019 13:45:04 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124504eucas1p1afe0da2c6ac3a8b45d85017a77ba9edf~xlU0wR_Db0154701547eucas1p1b;
 Mon, 15 Jul 2019 12:45:04 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124504eusmtrp1cfb09b312f9156b6b18b4e2b7be4d23d~xlU0vrhCg0488104881eusmtrp1I;
 Mon, 15 Jul 2019 12:45:04 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-e7-5d2c75503d53
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id EB.17.04140.0557C2D5; Mon, 15
 Jul 2019 13:45:04 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124503eusmtip231c903003c4068ed5360f3f7a9e6f719~xlUz5PmBq0528005280eusmtip21;
 Mon, 15 Jul 2019 12:45:03 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 37/50] ARM: dts: exynos: change parent and rate of
 bus_fsys in Exynos5422
Date: Mon, 15 Jul 2019 14:44:04 +0200
Message-Id: <20190715124417.4787-38-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSaUhUYRSG++auihPXUfSgWTRROC2aEvRhaQZZ91fYX6Ny0ouJjstcrVyo
 KcoNyzArW63QrNEyzdRWRxuSMh21csUKFyRTJxslTJTmdqf6957nvO974ONjCdUzyouNTUgR
 9AnaeDXtTNa9nmvfEJ66ft/GnsdBuP9BO4Wri6so3DMzRuESs30sGP5GYIvlIYPbTk4wuN+w
 DNcMd1N4Ov8Thd8/vUbjYstLBb5vHmRwWU+nAne+DcMDJ+7S+PQLM4NfTWRTeLG7mgx14ytv
 VCLe2nua4WuMuTT/qPQ43zT1XMGfrTUi3lazPJyJcN4aLcTHHhb0/iGRzoduZOXTSRbmaM5t
 CzKgBjoPObHAbYL6+nEiDzmzKu4ugrLxClIeZhC8sVoVkkvF2RBUjWr+Jj6P9joS5Qje9WQT
 /xIluVftCZalOT9oMCZLAXeuFIF57qDkIbg+BTwfeUJJCzduP5gWbaTkJ7nVUNToImEltw1+
 WptI+dgKqHhoIiTtZOdzFztoqQe4LgaKbB8oKQvcDig3ecp+NxhvqWVkvQxaz+c7ekQwnLmF
 ZJ0JwwXXHZ4t8Kql808NwWmg6qm/jLfDhY4xR/tS6J10lTBhl4V1lwgZKyEnSyW7faE2v0Mh
 aw8or7zoKOfB2leM5McpRLDQ9oA+h1Zc+X/sJkJG5CmkiroYQQxIEI74iVqdmJoQ4xeVqKtB
 9i/VutjyowHNdh1sRhyL1C7K0Oh1+1SU9rCYpmtGwBJqd2XwrB0po7Vp6YI+8YA+NV4Qm5E3
 S6o9lRlLvuxVcTHaFCFOEJIE/d+tgnXyMqA14QOwedr8sSku40XsXOCu6csjrgdWVUcAGfus
 mMy5Z5g0WQr7jqu6jlo8cnYGRg0c81yu6/cuWRr8YybSV0zXNOYlPyk0Zv/0mOK/7mkrsGnG
 Egc18z5DvYZy97Nh8+3V1zODVg6F7I46dX/lne7AX9+9fQwm49fAhW/zmptvhtWkeEgbsJbQ
 i9rfl/no+E4DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7oBpTqxBtuuCFvcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2MeW09bAXn2Ss6Fp1nbGDcwdbFyMkhIWAicf/pDeYuRi4OIYGljBKr
 rmxihEiISUzat50dwhaW+HOtiw2i6BOjxPcfDUAdHBxsAnoSO1YVgtSICKxglJh8whukhlng
 NZPEkaPvWEESwgIxEr+/zGICqWcRUJWYsp8HJMwrYC/x/f1BFoj58hKrNxxgBrE5geI/p10A
 O05IwE5i8dGfTBMY+RYwMqxiFEktLc5Nzy020itOzC0uzUvXS87P3cQIjJxtx35u2cHY9S74
 EKMAB6MSD69DinasEGtiWXFl7iFGCQ5mJRFe269AId6UxMqq1KL8+KLSnNTiQ4ymQDdNZJYS
 Tc4HRnVeSbyhqaG5haWhubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQZG+SmZYUc5
 HDoK5li+r+fwtzxav0tD0K91aYogl4DPLj0D37/7HCZuj+HZtSku8XngYbO2/67fFISWWPE6
 ivbp6s4+nzOd16Zp59XfnB9bvxhdP1ww22xlXsjLFcuYVDTdVZJnaHezlclXRRYdfSHKbHcz
 KvHLP8ce7spZTxw//Qz4c2S7zQElluKMREMt5qLiRACNe08esgIAAA==
X-CMS-MailID: 20190715124504eucas1p1afe0da2c6ac3a8b45d85017a77ba9edf
X-Msg-Generator: CA
X-RootMTR: 20190715124504eucas1p1afe0da2c6ac3a8b45d85017a77ba9edf
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124504eucas1p1afe0da2c6ac3a8b45d85017a77ba9edf
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124504eucas1p1afe0da2c6ac3a8b45d85017a77ba9edf@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054509_696745_8C94C388 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, cw00.choi@samsung.com, b.zolnierkie@samsung.com,
 sboyd@kernel.org, mturquette@baylibre.com, krzk@kernel.org,
 Lukasz Luba <l.luba@partner.samsung.com>, a.hajda@samsung.com,
 robh+dt@kernel.org, kyungmin.park@samsung.com, kgene@kernel.org,
 myungjoo.ham@samsung.com, s.nawrocki@samsung.com, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The FSYS bus OPP table has been aligned to the new parent rate. This patch
sets the proper parent and picks the init frequency before the devfreq
governor starts working. It sets also parent rate (DPLL to 1200MHz).

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
index d460041f716c..6a82dd175b8a 100644
--- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
@@ -72,6 +72,11 @@
 
 &bus_fsys {
 	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_MOUT_ACLK200_FSYS>,
+			  <&clock CLK_DOUT_ACLK200_FSYS>,
+			  <&clock CLK_FOUT_DPLL>;
+	assigned-clock-parents = <&clock CLK_MOUT_SCLK_DPLL>;
+	assigned-clock-rates = <0>, <240000000>,<1200000000>;
 	status = "okay";
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
