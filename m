Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CBF1A6AC3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 19:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5XK6+yzmSD3cLpPdKWxHKf8T5L1erCm5szoMadCgRpc=; b=m6FsG0cr7b2kqE
	zpRrCExZ9lDu5ot4rEOfES+kjnOosXI9LZjGjxxxJCq83AgEHm4nnZNuHAVXdheekqfvBLLbBxVHC
	LSdV3fV1Kn+4WvpaTnMQ32wkkoKbd3Vuzhx0sAkeBqmTyt9il9QyCKx9bGQdJ34ygG32U1I8YxBT5
	UKBh4I2/lVoVK1sfcIjP6MItRL8RXye7eYuZGe1jOmGf4DPnqqyokgQkJ69w14tbUQdS1G74nptPd
	OwAmoUNq1AoNrbKI0zeyWiu4EBIsedUGBwo1CNU9W8y0s9U22QPo8JKga6Dcn4SGhyBGhjEYZsZ1G
	tVWsa+cEguEaOfsCLt/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO2S3-0008DV-A7; Mon, 13 Apr 2020 17:00:51 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO2Rv-0008DA-Fh
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 17:00:45 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id AA1EC84C;
 Mon, 13 Apr 2020 13:00:39 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 13 Apr 2020 13:00:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flameeyes.com;
 h=from:to:cc:subject:date:message-id:mime-version:content-type
 :content-transfer-encoding; s=fm1; bh=rjS5RKjaHcqpS/dvmfJxBDYFeS
 umeuLyfmukhQ7mbJw=; b=lXV/o5piGg2JPtBPp1fW8tFS3RiOm9qdYz4zDex/d9
 vETFDx1BzgV56infcTuKW4/vfFnOAhXAldVmgJhpcOCvzGlzoV61NuxWev359IlI
 iNhJ+znWOOsVLAaP1fMqBH6hmU/CLXnRWUCtFP2mzioPMpY2DAT+gva+MjMut4Dl
 rpmFI5oHY7vRX3auKtYx6lTVywmYbu6ALQM42uwxVLj5v4bGeuLO4CFkljo8dQXa
 pETZ9RBlmZruyMvOiSN5WuYP/LMtUXOfS9Gur323fPSrGa9yrUGKjf8wLPFS9AMT
 lkYL3Zarn3fP9i2f9ZBbQEG/nZaS7boRyHXiT0YEipXA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:message-id:mime-version:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=rjS5RK
 jaHcqpS/dvmfJxBDYFeSumeuLyfmukhQ7mbJw=; b=JG91dUFo2ZqW8eBABUgLn6
 2QKIc3uOft6Dee2zsbSINb8Jd3R522IRUGQ6YaRUCB/Cmb3jYiuuPB5aC+hkbwSc
 dfrY3IZdrUABm8jMyAQzOEGIYyW+Bpmn8OU5Wt64RLetasKUwL/ZJDH0IWr/ENS2
 mxmUOhJJtL/0nprPiIMBUNYa7xpoTRNTOcIRIB/tt8Nm8dNfAe2hykRPFD7l2OmY
 wNyCxwwgSm0O7XEFtDWJwhwhV0/jqUjOhQTZN8PB4CTSIfOrEQ+ToZVjR8Ask8GH
 AAZl6hCE/0EIqZY4DuSW40h4ibjWwsyjIfTHfl8udCiJ9b+DTq12L3+W6eb8rBeg
 ==
X-ME-Sender: <xms:tpqUXvtm6aykpSHByDjubKl4Rx-Ky71WfKrZmO54ESbBllkuzWh8vA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrvdelgdduuddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffogggtgfesthekredtredtjeenucfhrhhomhepffhivghgohcu
 gfhlihhoucfrvghtthgvnhpjuceofhhlrghmvggvhigvshesfhhlrghmvggvhigvshdrtg
 homheqnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghdpsggvrhhlihhoshdruggvpdht
 hhgvkhgvlhhlvgihshdrohhrghdruhhknecukfhppeekkedrleekrddvfeekrddufedtne
 cuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepfhhlrghm
 vggvhigvshesfhhlrghmvggvhigvshdrtghomh
X-ME-Proxy: <xmx:tpqUXjq4HQg-s3LMdulqqyG97nkWwEbEUg3RJ8UQfF5gMnwZdbCVpg>
 <xmx:tpqUXpmi0MKfnvpvm-fWrxcHNzXmGZXGI2TVs-h3_ZyXNwjzO0eEYg>
 <xmx:tpqUXjTOh5X-9NDlM7nx8E1lKBcWYuoecrFqMxYZGytn0kMoJV9sHQ>
 <xmx:t5qUXr8IGUX17_5bM6W223x8WCCrQ2jUJt33nE4jjrMKGCC5SSuadA>
Received: from localhost.localdomain (unknown [88.98.238.130])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9B3A73280066;
 Mon, 13 Apr 2020 13:00:37 -0400 (EDT)
From: =?UTF-8?q?Diego=20Elio=20Petten=C3=B2?= <flameeyes@flameeyes.com>
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: [PATCH 1/4] at76c50x-usb: update dead links.
Date: Mon, 13 Apr 2020 18:00:31 +0100
Message-Id: <20200413170031.13104-1-flameeyes@flameeyes.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_100043_650831_17FDBBCC 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?q?Diego=20Elio=20Petten=C3=B2?= <flameeyes@flameeyes.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXBkYXRlIHdpa2kgVE9ETyBsaW5rLCBhbmQgcG9pbnQgYXQgYW4gYWN0dWFsbHktZXhpc3Rpbmcg
cGFnZSBmb3IgdGhlCmZpcm13YXJlIGRvd25sb2FkLgoKU2lnbmVkLW9mZi1ieTogRGllZ28gRWxp
byBQZXR0ZW7DsiA8ZmxhbWVleWVzQGZsYW1lZXllcy5jb20+Ci0tLQogZHJpdmVycy9uZXQvd2ly
ZWxlc3MvYXRtZWwvYXQ3NmM1MHgtdXNiLmMgfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93
aXJlbGVzcy9hdG1lbC9hdDc2YzUweC11c2IuYyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0bWVs
L2F0NzZjNTB4LXVzYi5jCmluZGV4IDNiMjY4MDc3MmYwMy4uMzZlNjY3ZDlmNWNiIDEwMDY0NAot
LS0gYS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdG1lbC9hdDc2YzUweC11c2IuYworKysgYi9kcml2
ZXJzL25ldC93aXJlbGVzcy9hdG1lbC9hdDc2YzUweC11c2IuYwpAQCAtMTAsMTQgKzEwLDE0IEBA
CiAgKiBDb3B5cmlnaHQgKGMpIDIwMDcgS2FsbGUgVmFsbyA8a2FsbGUudmFsb0Bpa2kuZmk+CiAg
KiBDb3B5cmlnaHQgKGMpIDIwMTAgU2ViYXN0aWFuIFNtb2xvcnogPHNlc21vQGdteC5uZXQ+CiAg
KgotICogVGhpcyBmaWxlIGlzIHBhcnQgb2YgdGhlIEJlcmxpb3MgZHJpdmVyIGZvciBXTEFOIFVT
QiBkZXZpY2VzIGJhc2VkIG9uIHRoZQorICogVGhpcyBmaWxlIGlzIHBhcnQgb2YgdGhlIGRyaXZl
ciBmb3IgV0xBTiBVU0IgZGV2aWNlcyBiYXNlZCBvbiB0aGUKICAqIEF0bWVsIEFUNzZDNTAzQS81
MDUvNTA1QS4KICAqCiAgKiBTb21lIGl3X2hhbmRsZXIgY29kZSB3YXMgdGFrZW4gZnJvbSBhaXJv
LmMsIChDKSAxOTk5IEJlbmphbWluIFJlZWQKICAqCiAgKiBUT0RPIGxpc3QgaXMgYXQgdGhlIHdp
a2k6CiAgKgotICogaHR0cDovL3dpcmVsZXNzLmtlcm5lbC5vcmcvZW4vdXNlcnMvRHJpdmVycy9h
dDc2YzUweC11c2IjVE9ETworICogaHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4v
dXNlcnMvZHJpdmVycy9hdDc2YzUweC11c2IjVE9ETwogICovCiAKICNpbmNsdWRlIDxsaW51eC9p
bml0Lmg+CkBAIC0xNjIxLDcgKzE2MjEsNyBAQCBzdGF0aWMgc3RydWN0IGZ3ZW50cnkgKmF0NzZf
bG9hZF9maXJtd2FyZShzdHJ1Y3QgdXNiX2RldmljZSAqdWRldiwKIAkJZGV2X2VycigmdWRldi0+
ZGV2LCAiZmlybXdhcmUgJXMgbm90IGZvdW5kIVxuIiwKIAkJCWZ3ZS0+ZnduYW1lKTsKIAkJZGV2
X2VycigmdWRldi0+ZGV2LAotCQkJInlvdSBtYXkgbmVlZCB0byBkb3dubG9hZCB0aGUgZmlybXdh
cmUgZnJvbSBodHRwOi8vZGV2ZWxvcGVyLmJlcmxpb3MuZGUvcHJvamVjdHMvYXQ3NmM1MDNhL1xu
Iik7CisJCQkieW91IG1heSBuZWVkIHRvIGRvd25sb2FkIHRoZSBmaXJtd2FyZSBmcm9tIGh0dHA6
Ly93d3cudGhla2VsbGV5cy5vcmcudWsvYXRtZWwvXG4iKTsKIAkJZ290byBleGl0OwogCX0KIAot
LSAKMi4yNi4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
