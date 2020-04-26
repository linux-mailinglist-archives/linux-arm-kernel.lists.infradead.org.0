Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E95561B91A2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 18:20:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/SuLr6ZvjHpv0+NWLVyEkAUTPTOB9lDsPruuw10iuOw=; b=GSzCuAmVtjdwBt
	muFsM2/aGF4CSOYItpjy6cJ/VjOVFpdh90t5OnpGO8u2uqTttaF2mPOZrWDLXsUFnObnaD6/rt7Bh
	cXxSdsWhg0BckDeitzBRRarJ6444rO+Zmu/a0qbF7lG9jMj468J4neVwAmW8CAnS60qWwqyHQu71S
	Nj054lncoZ7g52TuhK+GUBfXnQH/CZ9zMX9giLNG3xEeXdXbJ2y8/JEjCSHl2Hdtt/0CFNHb+aBa9
	FKDHNdfbvpcycoKW+GhKqQdUWRhtTPsNf4ga7zgl7eUm5/tyafsCIJLUOFgpeHFr/T1Z2obApb7ML
	2CEZ3xRs1wzXzgUZ18Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSk0b-000502-9e; Sun, 26 Apr 2020 16:19:57 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSk0S-0004z6-4h
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 16:19:49 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id D631D5C0108;
 Sun, 26 Apr 2020 12:19:45 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sun, 26 Apr 2020 12:19:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=08cZaxzjUx3KWTJnjYaSKDI0WL
 CA0zQwamq6nPQn4BA=; b=G5828/aF5IPOjVpUeSAGbVkj4QRJ+CtHAvLIfPzpjg
 lAcySDrltHxO0N5lb8l5+KfRbuR6yNSgkzk08vEWO837mfX3VTdAz9VNvQq6B1Aw
 93ny0TcXtt6uCF5qNiOcHtWjlgtbKg8o7sTAWTGVUoAzChIMbnEBBuIagd/d2xXa
 VCtRgMl+VYtFpLTj827TQMKA3N87R4wkZMTIXeBgdcwN4wxC4quPDyyb+J6BglSG
 zLG/vUBBK1vI+yXKcsI2SoDi6Heo+TJDSVhstvlqkRhwI5QUGl9QYYx7U/0k1kFR
 aDNoQyDibvY2/uedftS8MD7sRMM+B3jzWkQpjGPdsdJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=08cZaxzjUx3KWTJnj
 YaSKDI0WLCA0zQwamq6nPQn4BA=; b=tNRnK53VNLGw1CRlP9uKY7OXsv4PXryXp
 YieyKzdUsb6lNWglKdmtV/ZDOAeFq5TfQEJ6oyNFj9ulW/kXLxUKeMS6fcFrgxX1
 LhRc3GV/Waam5R6CF2H5DFSzvezsKeqgxOMhmxgn4NN6sW6/+hmt0UWCKg3xSZfw
 S0w1GAkNfFNlMNRT7nRQfvqg0dwRTs6j0NyMqnEEWDo/70rAiXxbwHk3Me4sduvB
 iB+V94FaPfRK12ruN1twyFH80PjKTSslwON0HoiihB5pIGQEwzblRLx8MV9duWeD
 /grhp2vcyQEBrn0KyHKOmzteCaDG46DyTpGyQZB45zVDVfUdX8ecg==
X-ME-Sender: <xms:obSlXvjnBYbqsqY9ls8Hy7CgGy4hUMo9R1flmMw4C6PY6OzNkn7NSQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrheejgddutdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgvlhcu
 jfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkphepje
 dtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
 pehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:obSlXtSw5sIBQEpiw6MCyCVcEwm9RUMU6ThAQuPdT9AaBGIToDPp2w>
 <xmx:obSlXnjGT50zvjz0lQLb5mWwYAIYZu_Y7qhkRF4UN_VXdDblDe7Kcg>
 <xmx:obSlXidiWACOzH8ALbl9iQj3LWrOm5VIXja5xhqtM2GcJZttF9zCkg>
 <xmx:obSlXmu3bo8bFGj6rfG5qVHSTMis9A5myyopj7ljTKrREGOfwkemYg>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0EF183280060;
 Sun, 26 Apr 2020 12:19:45 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH] arm64: dts: allwinner: a64: pinetab: Fix cpvdd supply name
Date: Sun, 26 Apr 2020 11:23:53 -0500
Message-Id: <20200426162353.52465-1-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_091948_312109_5B4EAB72 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

An older version of the analog codec binding referenced the headphone
amplifier binding as "hpvcc". However, by the time it was merged in
commit 21dd30200e3d ("ASoC: dt-bindings: sun50i-codec-analog: Add
headphone amp regulator supply"), the regulator reference was renamed to
"cpvdd". This board's device tree still uses the old name, which fails
to work at runtime, and which causes a warning from `make dtbs_check`.
Resolve both by fixing the name.

Fixes: 674ef1d0a7b2 ("arm64: dts: allwinner: a64: add support for PineTab")
Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
index 316e8a443913..dc4ab6b434f9 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
@@ -98,7 +98,7 @@ &codec {
 };
 
 &codec_analog {
-	hpvcc-supply = <&reg_eldo1>;
+	cpvdd-supply = <&reg_eldo1>;
 	status = "okay";
 };
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
