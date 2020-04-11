Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CABD1A5332
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 19:49:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mNLNB96kY0TRqg5Iaj0ePH/t3rwZRTwdsYYUs5dbWNs=; b=IHaoBW25SEL5HK
	U/RnXmuKQ/VjD+e4IVwoxJevaMOuF0ie7TXkU5Cp3q/ZTuhwW8wMQI+UYR/KHB6BjEfx2BMuDUZUN
	I6BnfyduC6gduAxC0Mh6CU6ewV5pLc4yLDQTrEJITcT0Xi0iq0wXN0qpjS5ChiFQFttVLwx7bLZ6R
	ArC6Y8khUIw2TqWUac3wjmzbXnIjtmhsIuDEsCFS6HbqtOL+8sR8CQjXlY9qkUvSQx1+PGKQHqtQS
	G23ZIoB2+Nujb5112ENogZ/jlH7ViB12cqe88OfsPBAiomiC8ut/uW2IkLocgAubC8p7zvZrtVosn
	X22YvPsjOdBXNfsHYyEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNKG5-0006dD-0N; Sat, 11 Apr 2020 17:49:33 +0000
Received: from smtp-outgoing.laposte.net ([160.92.124.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNKFv-0006c6-PO
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 17:49:26 +0000
Received: from outgoing-mail.laposte.net (localhost.localdomain [127.0.0.1])
 by mlpnf0114.laposte.net (SMTP Server) with ESMTP id 4902SC4TF8z1GBw0;
 Sat, 11 Apr 2020 19:48:59 +0200 (CEST)
X-mail-filterd: 0.4.0.2
X-mail-filterd: 0.4.0.2
X-lpn-spamrating: 36
X-lpn-spamlevel: not-spam
X-lpn-spamcause: OK,
 (-100)(0000)gggruggvucftvghtrhhoucdtuddrgeduhedrvdeggdduvddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecunfetrffquffvgfdpqfgfvfdpggftfghnshhusghstghrihgsvgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvufffkffogggtgfesthekredtredtjeenucfhrhhomhepgghinhgtvghnthcuufhtvghhlhoruceovhhinhgtvghnthdrshhtvghhlhgvsehlrghpohhsthgvrdhnvghtqeenucffohhmrghinhepsggrnhgrnhgrqdhpihdrohhrghenucfkphepkeekrdduvddurddugeelrdegleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopehrohhmuhgrlhgurdgsvghrghgvrhhivgdpihhnvghtpeekkedruddvuddrudegledrgeelpdhmrghilhhfrhhomhepvhhinhgtvghnthdrshhtvghhlhgvsehlrghpohhsthgvrdhnvghtpdhrtghpthhtohepihgtvghnohifhiesrghoshgtrdhiohdprhgtphhtthhopeifvghnshestghsihgvrdhorhhgpdhrtghpthhtohepmhhrihhprghrugeskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheprhhosghhodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepvhhinhgtvghnthdrshhtvghhlhgvsehlrghpohhsthgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfr
 hgruggvrggurdhorhhgpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-lpn-mailing: LEGIT
Received: from romuald.bergerie (unknown [88.121.149.49])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mlpnf0114.laposte.net (SMTP Server) with ESMTPSA id 4902SC0h0Vz1GBvc;
 Sat, 11 Apr 2020 19:48:59 +0200 (CEST)
Received: from radicelle.bergerie (radicelle.bergerie [192.168.124.12])
 by romuald.bergerie (Postfix) with ESMTPS id A70DA37FE060;
 Sat, 11 Apr 2020 19:48:58 +0200 (CEST)
Received: from vincent by radicelle.bergerie with local (Exim 4.93)
 (envelope-from <vincent@radicelle.bergerie>)
 id 1jNKFW-000152-BQ; Sat, 11 Apr 2020 19:48:58 +0200
From: =?UTF-8?q?Vincent=20Stehl=C3=A9?= <vincent.stehle@laposte.net>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: sun8i-h2-plus-bananapi-m2-zero: Fix led polarity
Date: Sat, 11 Apr 2020 19:48:43 +0200
Message-Id: <20200411174843.4112-1-vincent.stehle@laposte.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=lpn-wlmd;
 t=1586627348; bh=AcBvHLPmHFu6rApjMG0R0hlig2Vi1pp7NLIlCkMKiWA=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding;
 b=bYUz2ZjV0XZDUsGFNUJX6TTKN1+v6GcM2bWmNQgNkj6ywVs7BtoXE8XmY1LOFTwLD3RfhvoFdd+TLjt/FVK7J3lfF0PJKNu4InPtsyX6k5+nH3IKW9d3DHihcPul14iNXF6fDHFLhia92QntjKJ2Ds53g2CJ1dvYm925wzMqmy6lLcj6Kb/qgkjNK+0nK3ldyE3ug1Pp68+mSVqeiCIxX2ykrelaayvImXlPpwURUTIfedoarZrsnUe7BSzqS+N+MTG9XT/CYHWCmfci1AX/Fm5sPdC667LUvFAe0sN1uLWUr6Bzc5N0HTA11zFlvok3ia36r2Nd8UroTuKSsWwE0Q==;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_104924_132003_7848FC1D 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vincent.stehle[at]laposte.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Icenowy Zheng <icenowy@aosc.io>, Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?q?Vincent=20Stehl=C3=A9?= <vincent.stehle@laposte.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIFBXUi1MRUQgb24gdGhlIGJhbmFuYXBpIG0yIHplcm8gYm9hcmQgaXMgb24gd2hlbiBncGlv
IFBMMTAgaXMgbG93LgpUaGlzIGhhcyBiZWVuIHZlcmlmaWVkIG9uIGEgYm9hcmQgYW5kIGluIHRo
ZSBzY2hlbWF0aWNzIFsxXS4KClsxXTogaHR0cDovL3dpa2kuYmFuYW5hLXBpLm9yZy9CYW5hbmFf
UGlfQlBJLU0yX1pFUk8jRG9jdW1lbnRzCgpGaXhlczogOGI4MDYxZmNiZmFlICgiQVJNOiBkdHM6
IHN1bjhpOiBoMis6IGFkZCBzdXBwb3J0IGZvciBCYW5hbmEgUGkgTTIgWmVybyBib2FyZCIpClNp
Z25lZC1vZmYtYnk6IFZpbmNlbnQgU3RlaGzDqSA8dmluY2VudC5zdGVobGVAbGFwb3N0ZS5uZXQ+
CkNjOiBJY2Vub3d5IFpoZW5nIDxpY2Vub3d5QGFvc2MuaW8+CkNjOiBNYXhpbWUgUmlwYXJkIDxt
cmlwYXJkQGtlcm5lbC5vcmc+Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktaDItcGx1cy1i
YW5hbmFwaS1tMi16ZXJvLmR0cyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWgy
LXBsdXMtYmFuYW5hcGktbTItemVyby5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9zdW44aS1oMi1w
bHVzLWJhbmFuYXBpLW0yLXplcm8uZHRzCmluZGV4IGQyNzdkMDQzMDMxYjIuLjRjNjcwNGU0YzU3
ZWMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWgyLXBsdXMtYmFuYW5hcGkt
bTItemVyby5kdHMKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktaDItcGx1cy1iYW5hbmFw
aS1tMi16ZXJvLmR0cwpAQCAtMzEsNyArMzEsNyBAQCBsZWRzIHsKIAogCQlwd3JfbGVkIHsKIAkJ
CWxhYmVsID0gImJhbmFuYXBpLW0yLXplcm86cmVkOnB3ciI7Ci0JCQlncGlvcyA9IDwmcl9waW8g
MCAxMCBHUElPX0FDVElWRV9ISUdIPjsgLyogUEwxMCAqLworCQkJZ3Bpb3MgPSA8JnJfcGlvIDAg
MTAgR1BJT19BQ1RJVkVfTE9XPjsgLyogUEwxMCAqLwogCQkJZGVmYXVsdC1zdGF0ZSA9ICJvbiI7
CiAJCX07CiAJfTsKLS0gCjIuMjUuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
