Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97767B61C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 12:48:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Aqo17SEnttPNZeg/nj5g2oDVwNwwzS46Zzu4x/B0QcA=; b=URYMlqrmC/eEVJAX3N1GdDhW/v
	KyZv5zc3bZhjXnDrLLa5/LA91kUy4sp5BehT9uoS1Pn4dS6fCkWw0w1vZzvOTw1AXCjsuI73tvH8h
	6O5OarwGE+WbxfeGUVNcL/3figkGsufM1AU0Xfyjse2DWq/JYXuCeOX89DaAev3dcPYXdySzCWIBo
	JEXnbJ9eFaZc52tiViENUtiSVvAxRi0A49+46T9NmONZz5/SU8osTwETfBHrCUY2NELJP6nRDQB2M
	IJzfVwUh0oOc5ujdCUrnsclTrclsY4TxMG3Uo5Rq0Ax5xWcjKn2CIlNwBbNGmd8Mq9a6YYaaLEn5W
	O2nMDgaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAXVE-0001ai-LL; Wed, 18 Sep 2019 10:48:04 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAXUI-0000bc-Os
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 10:47:08 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190918104705euoutp01c572fb45b3d2906f3277b28670d303da~FgpXYrtYm1221812218euoutp011
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 10:47:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190918104705euoutp01c572fb45b3d2906f3277b28670d303da~FgpXYrtYm1221812218euoutp011
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568803625;
 bh=I7U/aKHNrCY1D+09WXBMjW4deg9Mt3W9OYXWUaaxfto=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kSmfmWVaZvAfw9toDeYq24CqZE+1x7MEWIg/zx/CSAG6CSGS70o6MsS89KAdeLN3T
 hQgLeLdL0xrrazOQXwsvIMLKnkOeb1E0FQ7LWLnFEi4F8gIvEw46qeM/LT9ciQpifr
 EefCR6UU7WtETs9y0EYwkse4p3rLOIrcBDIaIjnY=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190918104704eucas1p1423adf7331dc8711d0739adfe4519ecd~FgpWh648W2008520085eucas1p1m;
 Wed, 18 Sep 2019 10:47:04 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 86.B4.04309.82B028D5; Wed, 18
 Sep 2019 11:47:04 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190918104703eucas1p1a06ecce433753ba42b422317ec7db48c~FgpVznU012985529855eucas1p1P;
 Wed, 18 Sep 2019 10:47:03 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190918104703eusmtrp2a908048a1a8b4996403345653f978e8a~FgpVkEUs_1555615556eusmtrp2m;
 Wed, 18 Sep 2019 10:47:03 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-16-5d820b282f21
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 26.2C.04117.72B028D5; Wed, 18
 Sep 2019 11:47:03 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190918104702eusmtip17fabbbca8d2668ec5a92c504d233cd8d~FgpU6jEB50585005850eusmtip1L;
 Wed, 18 Sep 2019 10:47:02 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: broonie@kernel.org
Subject: [PATCH v1 6/9] ASoC: dt-bindings: Document "samsung,arndale-wm1811"
 compatible
Date: Wed, 18 Sep 2019 12:46:31 +0200
Message-Id: <20190918104634.15216-7-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190918104634.15216-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+87Z2TmuVsdp+jFFYRhdIG8YHJhIgcQIAv+JbojNPKjkVDYv
 aYmmaF5qmZiazRyycFqiTRlppPNSK4XNmcwbosNLplngluFcrW1H67/3fd7f873P9/ERKK8N
 4xOp6Vm0NF2cJmBzWNoPO8bTJw4Wx4fXWTBq0jSEUK8bOjHqiWWZTU2WagDVPGLAKKOxC6e2
 J8sRSrNkxqgGYz9CdYzM45T1xwBGlb4bwanhb/cxyqS2IWcPi7qsxWxRb+M8LtK0V7BF3apC
 Ub3CCUTynnYgsmqC4vBrnOgkOi01h5aGxdzgpHR+d7Ay6/Db3atbWBGoZlcCLwKSUXClaZxV
 CTgEj1QDuGZ3okxjA3BhtdND8UgrgP1fIvYdyzo5YKBWAO2LG8g/h+VXK+am2GQEfPjeTXkR
 vqQfnFNUeI5FSQcCN383stwDH/Iq3Py84DGwyGOwo8SMumsuKYRTcjnOrAuGL7t0Ht2LjIZb
 44uesJDU4lCnViIMFAsHDVMoU/vAdX3PnjkQOnubEcZQAuCDt3M401S7bqdXAoYSwmG9yRWD
 cOU7CTv7whj5HBxcLcHdMiQPw+lNb7eMusoabT3KyFxYXsZj6BC4216/F4cPq5adLKYWwReq
 Gpx5oUcAmqpW0GoQ3Ph/mRKAduBPZ8skybQsMp3ODZWJJbLs9OTQmxkSDXB9oLE/etsb0OdI
 HAIkAQSHuLrRongeJs6R5UmGACRQgS83rqAwnsdNEufl09KMBGl2Gi0bAgEES+DPvXNg8TqP
 TBZn0bdoOpOW7k8RwotfBGrP5z1PNEQNCDMiJbnQVmCY9Z6WaO2f1BOVS+wFX8rYL/948Yhw
 beNCAmjxu9yT3/I0SD5mOe674zi6rVLMXpox7AaEK5Zq1+8af5aNPeOHZLbZctqCGpScho3d
 M49nWiYS7Lv2r6Z7qlfBYeOS0ZjAKvMVurgj1twk51r8BSxZijjiFCqVif8CX0K+tjwDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgkeLIzCtJLcpLzFFi42I5/e/4XV117qZYg+ntQhZXLh5istg4Yz2r
 xdSHT9gsrrRuYrSYf+Qcq8X58xvYLb5d6WCy2PT4GqvFjPP7mCzWHrnLbvH5/X5Wi9a9R9gt
 Dr9pZ7W4uOILkwOfx4bPTWweO2fdZffYtKqTzWPzknqP6XP+M3r0bVnF6PF5k1wAe5SeTVF+
 aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexvp3f1gKprFX
 bH72ibWBcQJbFyMnh4SAicSTA32MXYxcHEICSxkllq6cxdTFyAGUkJKY36IEUSMs8edaF1i9
 kMAnRonnx1RBbDYBQ4neoyC9nBwiAmISt+d0MoPMYRboYpZ4v+MXK0hCWCBcYt3aLewgNouA
 qsTa5mvMIDavgLXE9b4+dogF8hKrNxwAi3MK2Eh8uvCABWKZtcSCY9MYJzDyLWBkWMUoklpa
 nJueW2ykV5yYW1yal66XnJ+7iREYC9uO/dyyg7HrXfAhRgEORiUeXomzDbFCrIllxZW5hxgl
 OJiVRHgDautjhXhTEiurUovy44tKc1KLDzGaAh01kVlKNDkfGKd5JfGGpobmFpaG5sbmxmYW
 SuK8HQIHY4QE0hNLUrNTUwtSi2D6mDg4pRoYN2y84KCjaBd7g+NemcUya7+LU/M9rkpJ79wb
 1Pje4URoWdL+GbOX3k0pDizpyX/612FZY8M/JZHc76LMbLWxIdyH2Nhn5ky/zOTvZu3tY9W1
 Mr2R41Fq4o6EVw0G0YLSk6qD596Pca8z1uTiWujy+6ppanPOtmei9a8vd8edavHuaKhrnqfE
 UpyRaKjFXFScCAD8b0pwmwIAAA==
X-CMS-MailID: 20190918104703eucas1p1a06ecce433753ba42b422317ec7db48c
X-Msg-Generator: CA
X-RootMTR: 20190918104703eucas1p1a06ecce433753ba42b422317ec7db48c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190918104703eucas1p1a06ecce433753ba42b422317ec7db48c
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104703eucas1p1a06ecce433753ba42b422317ec7db48c@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_034706_953565_E9C7EE8C 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, krzk@kernel.org, robh+dt@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatible string for boards with WM1811 CODEC to the list.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
 Documentation/devicetree/bindings/sound/arndale.txt | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/arndale.txt b/Documentation/devicetree/bindings/sound/arndale.txt
index 0e76946385ae..17530120ccfc 100644
--- a/Documentation/devicetree/bindings/sound/arndale.txt
+++ b/Documentation/devicetree/bindings/sound/arndale.txt
@@ -1,8 +1,9 @@
 Audio Binding for Arndale boards
 
 Required properties:
-- compatible : Can be the following,
-			"samsung,arndale-rt5631"
+- compatible : Can be one of the following:
+		"samsung,arndale-rt5631",
+		"samsung,arndale-wm1811"
 
 - samsung,audio-cpu: The phandle of the Samsung I2S controller
 - samsung,audio-codec: The phandle of the audio codec
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
