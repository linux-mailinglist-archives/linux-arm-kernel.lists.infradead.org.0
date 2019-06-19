Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 030334B734
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 13:39:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=Ma3+xgxenU1ipTF1hHYWJ/KaWKsD2Uhe3kjVVniogq4=; b=Wh
	ZTdQEJxNzxzTpmWg/jnW0+uIdvoqEOT5RJAscpBTeUcHREXvlIFFgP5FE6TsU3FpP6l5eKF15gQpA
	8Gc0Ao0aZ47kM6ky35ptfBETbBn+LjfHTZefvYxkbYYfzY8ITJb/c36NaQ2IsQnuNu5q3K/yQY1p4
	eaMBkK52SUKCHnCG9B/sjQT1txueft2+fA/SmowtP1nMWrOFkvxoZfI+ZO96/6rn7+aEnLOQ0pzww
	z6orjss1C9tIwyRUQ23VdaW2VWW4GFunGtxNNjjeE0xSw1sju4rDlj99iNiHkjhplVUVwDWbjAz8q
	YyhIIQtZGd/tZKPWcKOkZTeo3JebP/ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdYvu-00050f-IA; Wed, 19 Jun 2019 11:39:18 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdYvm-00050L-Qy
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 11:39:12 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190619113906epoutp03b59e898f8c090dc05766c73fc8abcdc4~plp0BMDsK2489524895epoutp03y
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 11:39:06 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190619113906epoutp03b59e898f8c090dc05766c73fc8abcdc4~plp0BMDsK2489524895epoutp03y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1560944346;
 bh=Abp7EpTVp7nDdPSWDCKCmZkD28ccLG090DnuFaeJj2A=;
 h=From:To:Cc:Subject:Date:References:From;
 b=lfPq3Zkni7ZjjBlCvvcF6hGdd9Y59i9iWSdX8steOhoTu17CEk/I0mGj0wFmGfqsn
 5DbNBW2PfBo+M9CHnlm1ZsWwMHK7/mUvFzsRExJSJmOjL7kZAb4YDTMn3O2hXc05dZ
 aSN839yliwqHI/023XuGRZIZsgN6WWdHRttMvc4s=
Received: from epsmges1p5.samsung.com (unknown [182.195.40.166]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190619113905epcas1p2b98ad8cc73c5491bd72e966fc3666e46~plpy1jGBw0473804738epcas1p2E;
 Wed, 19 Jun 2019 11:39:05 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 A3.00.04108.9DE1A0D5; Wed, 19 Jun 2019 20:39:05 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190619113904epcas1p23e2c335cda62dfa5ea02c4eb5cb0d788~plpyMLPRB0650106501epcas1p2y;
 Wed, 19 Jun 2019 11:39:04 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190619113904epsmtrp1ccb20c1c9ed38eaea0ba4b92bf7d2bb4~plpyF9XxI3043230432epsmtrp17;
 Wed, 19 Jun 2019 11:39:04 +0000 (GMT)
X-AuditID: b6c32a39-8b7ff7000000100c-26-5d0a1ed9fd8e
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 21.76.03692.8DE1A0D5; Wed, 19 Jun 2019 20:39:04 +0900 (KST)
Received: from U16PB1-0090.tn.corp.samsungelectronics.net (unknown
 [10.253.235.20]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190619113904epsmtip154479b2a50747595a0935d46484ebf57~plpx5-YjY1503315033epsmtip1I;
 Wed, 19 Jun 2019 11:39:04 +0000 (GMT)
From: jinho lim <jordan.lim@samsung.com>
To: will.deacon@arm.com
Subject: [PATCH] arm64: remove useless condition
Date: Wed, 19 Jun 2019 20:38:57 +0900
Message-Id: <20190619113857.5053-1-jordan.lim@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrMKsWRmVeSWpSXmKPExsWy7bCmru5NOa5Yg93dahY9u3cyWew7kWzx
 f1sLu8WNZWEWmx5fY7W4vGsOm8XfO//YLJZev8hk8XlZG4vFy48nWBy4PNbMW8PosXPWXXaP
 BZtKPTYvqffo27KK0ePzJjmPKYfaWQLYo3JsMlITU1KLFFLzkvNTMvPSbZW8g+Od403NDAx1
 DS0tzJUU8hJzU22VXHwCdN0yc4BuU1IoS8wpBQoFJBYXK+nb2RTll5akKmTkF5fYKqUWpOQU
 GBoU6BUn5haX5qXrJefnWhkaGBiZAlUm5GQ0Te9hLPjCUnH72VX2BsYeli5GTg4JAROJdY8f
 MXYxcnEICexglDj94BErhPOJUeLh/Z1QmW+MEq8uT2SDabl7/AlU1V5GieaDrcwQTgeTxO6N
 m5hBqtgENCQeLF4AtkREQFzizMQtTCA2s8APRonpOyS7GDk4hAUMJFbt4AcJswioSrz6cQ2s
 hFfASmLJqu1Qy+QlVm84ADZfQmAFm8SXa/eYIRIuEp9/TYCyhSVeHd/CDmFLSbzsb2OHaGhm
 lDhw6h1UdwOjxKxLX6DGGkv09lxgBrmCWUBTYv0ufYiwosTO33MZIQ7lk3j3tYcVpERCgFei
 o00IwlSR+LO8DmbV757vUGs9JGa9WsYKYgsJxEqsajvKOIFRdhbC/AWMjKsYxVILinPTU4sN
 C0yRY2kTIzjBaVnuYDx2zucQowAHoxIPr8Bnjlgh1sSy4srcQ4wSHMxKIrzczZyxQrwpiZVV
 qUX58UWlOanFhxhNgaE3kVlKNDkfmHzzSuINTY2MjY0tTMzMzUyNlcR547lvxggJpCeWpGan
 phakFsH0MXFwSjUwZh+ZYew+R8iUZ4nE69gg2VBf7a8bzI/u+hHyyiuVv/Vw2+qNTfaJ6+4p
 XUvYJPOu1mpvs1/EByWXO1kyBnM2XatZtX9T1/dpEVf+/5W1f1bw4xxXmKFc644bMvuES7L0
 g28smeNTX27JnWO48cns/MxnGtMLvtgu3vGCS2T7tMoUI2WxB2+KlViKMxINtZiLihMBxpB2
 1IYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPLMWRmVeSWpSXmKPExsWy7bCSnO4NOa5YgzsfDCx6du9ksth3Itni
 /7YWdosby8IsNj2+xmpxedccNou/d/6xWSy9fpHJ4vOyNhaLlx9PsDhweayZt4bRY+esu+we
 CzaVemxeUu/Rt2UVo8fnTXIeUw61swSwR3HZpKTmZJalFunbJXBlNE3vYSz4wlJx+9lV9gbG
 HpYuRk4OCQETibvHn7CC2EICuxklnj8RhIhLSXz83c3cxcgBZAtLHD5c3MXIBVTSxiTR8vUX
 M0gNm4CGxIPFC8DmiAiIS5yZuIUJpIhZoIlJ4uu6n2DNwgIGEqt28IPUsAioSrz6cY0JxOYV
 sJJYsmo7G8QueYnVGw4wT2DkWcDIsIpRMrWgODc9t9iwwDAvtVyvODG3uDQvXS85P3cTIzjY
 tDR3MF5eEn+IUYCDUYmHd8cHjlgh1sSy4srcQ4wSHMxKIrzczZyxQrwpiZVVqUX58UWlOanF
 hxilOViUxHmf5h2LFBJITyxJzU5NLUgtgskycXBKNTDOWNdTsHd+Sx+DDr8a2yTjzJ3HP22L
 dNhwYPXed1OZBXoOGCtarJnt7yZx4VH2f/mg9AQNwVeJBznK3J96KM4ov+/4YsfC71qc6ec6
 V9yfv7PaJTdBoTFSVrl0GQ8/e/UR4+jbb+X6NNN7jmnVlrjL9smGf/adnHAlRK2h/57wpysL
 FeJ4fiqxFGckGmoxFxUnAgAJ61A3MgIAAA==
X-CMS-MailID: 20190619113904epcas1p23e2c335cda62dfa5ea02c4eb5cb0d788
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190619113904epcas1p23e2c335cda62dfa5ea02c4eb5cb0d788
References: <CGME20190619113904epcas1p23e2c335cda62dfa5ea02c4eb5cb0d788@epcas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_043911_208818_B424F768 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, anshuman.khandual@arm.com, marc.zyngier@arm.com,
 andreyknvl@google.com, linux-kernel@vger.kernel.org, seroto7@gmail.com,
 jinho lim <jordan.lim@samsung.com>, ebiederm@xmission.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dump_instr function checks user_mode internally.

Signed-off-by: jinho lim <jordan.lim@samsung.com>
---
 arch/arm64/kernel/traps.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index ccc13b45d9b1..694e78b950ca 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -182,8 +182,7 @@ static int __die(const char *str, int err, struct pt_regs *regs)
 	print_modules();
 	show_regs(regs);
 
-	if (!user_mode(regs))
-		dump_instr(KERN_EMERG, regs);
+	dump_instr(KERN_EMERG, regs);
 
 	return ret;
 }
-- 
2.13.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
