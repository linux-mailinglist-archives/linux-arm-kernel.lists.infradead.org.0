Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC337633A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:12:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ayux2ADhx5DWd99sFXNfLbmB+nU416LfHi1iyiKtOT4=; b=f/vs7ayZlDjRTp
	Oqcz23XZZEazpEylcadolN8EGkHKgBCId19ve4e5JOQfM96OZF6LSAvQnyiu1NsZGrfLXGhZSnPHh
	FmTqgxHWhGq2mIH4nOjOROi5eUASW6QLvurOyc/6bN1123ZaTVMUs4SFSeD9ccduAYnjfY8P+5I2x
	PQSFFjmt65RUCF2iDeJZEOZjx4R+k4sy1APZ/vQJURWq2Ha6T7RwcmbzqB4VRrYpOKvhil1EVrUl5
	zTJgCCZErG3Ya9fW3VHWgl0l6XlXbSu9lG27Tnm8UJPzuNuiaawVVIuz1G7sz9FeUkXG/FMp8Ttds
	MQk49T8lSsO+F8VOKEJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqwrL-00063g-0V; Fri, 26 Jul 2019 09:49:55 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqwqm-0005qd-0F
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 09:49:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 66D6EFB04;
 Fri, 26 Jul 2019 11:49:14 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cdYBpbSNeu8W; Fri, 26 Jul 2019 11:49:13 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id EF5BC46AA1; Fri, 26 Jul 2019 11:49:12 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Robert Chiras <robert.chiras@nxp.com>, Marek Vasut <marex@denx.de>,
 Stefan Agner <stefan@agner.ch>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/1] drm/mxsfb: Read bus flags from bridge if present
Date: Fri, 26 Jul 2019 11:49:11 +0200
Message-Id: <cover.1564134488.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_024920_199955_397FBF82 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGJyaWRnZSBtaWdodCBoYXZlIHNwZWNpYWwgcmVxdWlybWVudGVzIG9uIHRoZSBpbnB1dCBi
dXMuIFRoaXMKaXMgZS5nLiB1c2VkIGJ5IHRoZSBpbXgtbndsIGJyaWRnZS4KClJvYmVydCwgbWF5
YmUgeW91IGNhbiBhZGQgdGhpcyBwYXRjaCB0byB5b3VyICdJbXByb3ZlbWVudHMgYW5kIGZpeGVz
IGZvciBteHNmYgpEUk0gZHJpdmVyJyBzaW5jZSBpdCBkZXBlbmRzIG9uIHRoZSBmaXJzdCBwYXRj
aCBpbiB0aGlzIHNlcmllcyBhbnl3YXk/CgpUZXN0ZWQgd2l0aCAnSW1wcm92ZW1lbnRzIGFuZCBm
aXhlcyBmb3IgbXhzZmIgRFJNIGRyaXZlcidbMF0gYW5kICdkcm06IGJyaWRnZToKQWRkIE5XTCBN
SVBJIERTSSBob3N0IGNvbnRyb2xsZXIgc3VwcG9ydCdbMV0gb24gbmV4dC0yMDE5MDcyNS4KClsw
XTogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MjgyMi8KWzFdOiBo
dHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY0MTg1LwoKR3VpZG8gR8O8
bnRoZXIgKDEpOgogIGRybS9teHNmYjogUmVhZCBidXMgZmxhZ3MgZnJvbSBicmlkZ2UgaWYgcHJl
c2VudAoKIGRyaXZlcnMvZ3B1L2RybS9teHNmYi9teHNmYl9jcnRjLmMgfCA1ICsrKystCiAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgotLSAKMi4yMC4xCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
