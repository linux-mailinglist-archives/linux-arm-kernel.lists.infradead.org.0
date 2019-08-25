Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA1E9C32E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 14:18:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:From:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BUvSuQsJ6LUu+Sn+gEsNC5l++36Ni3hj0QqW4PY3iAE=; b=cs9AzZd2IFt9hA
	CHbovLWjFmGJq7Q5jl+6SUQdEwfi/JhL7ktI/uMdGosQXI5Ffv1SZBuQtaOjxgCTh1dJ3bUBvuCBu
	SkSWCvhYURsq2TzjLufOyzNJcQlZjqi2eOdvrfLUeB0CsrVtJVb44r1gC4biMSTVJMGWfFqphGi9s
	jYJ7qqJ1shg4/7AcLf3Raf1/CB2QRInAxQG7T7Q4w4S8/ubT7JhyZyiT0qpCrFKm187GYOKJlkBZH
	UsaIn/0y0lbenIz88x7tylpdQIu9UHW8F4SbQ36pjazBNxvRSwrdOIIPvNleqsBlYa+Qsycft8hud
	MDuxtu6BK3ULlTRFWtOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1rT2-0003hX-4t; Sun, 25 Aug 2019 12:17:56 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1rSp-0003eW-4U
 for linux-arm-kernel@lists.infradead.org; Sun, 25 Aug 2019 12:17:44 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 46GYy30s3Vz55;
 Sun, 25 Aug 2019 14:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1566735358; bh=midx80iUy3avtT/Mo/OB+mMlAmfHoL2kDdpN3DL3rD8=;
 h=Date:From:Subject:To:Cc:From;
 b=eauM8c1/MyDyDyTQkcK2LHoYBiaBO2oi7tltzy+B3oKUvTdU7jf2D3eAGtrOJgUDb
 agOVBJfxzwopF+7o3MXULCFvrXUwKhsSQCnjmn5/P+YIQZzWG3LgGV5x9Q/8TeThkt
 uRswhsbFHFStN3YzbTU4qZUnu0oLiVkv4ude3S9Yz9YZL0vAjaImIIBgvQocCsVQ5I
 cJAf0aAjFSHAoflws+z/SIOF7XHXbUenP8C8u4RqkJp2Qjxr2RWKMLD9Qc4rLqzsLZ
 3soSE+Q01tFJl4y9Hoa8ZrA61vnG+P561zUNpudqou0DPwsqYw//n/WIGE05Cbj73/
 xO1ZgVPYLvOtQ==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.2 at mail
Date: Sun, 25 Aug 2019 14:17:30 +0200
Message-Id: <cover.1566734630.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH v2 0/4] wm8904: adapt driver for use with audio-graph-card
MIME-Version: 1.0
To: alsa-devel@alsa-project.org,
	patches@opensource.cirrus.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_051743_346965_AAFAEBD6 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Maxime Jourdan <mjourdan@baylibre.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Kirill Marinushkin <kmarinushkin@birdec.tech>,
 Liam Girdwood <lgirdwood@gmail.com>, Paul Cercueil <paul@crapouillou.net>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Jerome Brunet <jbrunet@baylibre.com>, Anders Roxell <anders.roxell@linaro.org>,
 Takashi Iwai <tiwai@suse.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 Charles Keepax <ckeepax@opensource.cirrus.com>,
 Piotr Stankiewicz <piotrs@opensource.cirrus.com>,
 Annaliese McDermond <nh6z@nh6z.net>,
 Richard Fitzgerald <rf@opensource.cirrus.com>, Mark Brown <broonie@kernel.org>,
 Nariman Poushin <npoushin@opensource.cirrus.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jaroslav Kysela <perex@perex.cz>,
 zhong jiang <zhongjiang@huawei.com>, Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Nikesh Oswal <nikesh@opensource.cirrus.com>, linux-kernel@vger.kernel.org,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBzZXJpZXMgYWxsb3dzIHRvIHVzZSBXTTg5MDQgY29kZWMgYXMgYXVkaW8tZ3JhcGgtY2Fy
ZCBjb21wb25lbnQuCkl0IHN0YXJ0cyB3aXRoIHJld29yayBvZiBGTEwgaGFuZGxpbmcgaW4gdGhl
IGNvZGVjJ3MgZHJpdmVyLCBhbmQgYXMgYW4KZXhhbXBsZSBpbmNsdWRlcyAodW50ZXN0ZWQpIHJl
d29yayBmb3IgY29kZWMgd2l0aCBzaW1pbGFyIEZMTDogV004OTk0LgoKU2VyaWVzIGJhc2VkIG9u
IHRpd2FpL3NvdW5kL2Zvci1uZXh0IHRyZWUuIFlvdSBjYW4gYWxzbyBwdWxsIGZyb206CiAgIGh0
dHBzOi8vcmVyZS5xbXFtLnBsL2dpdC9saW51eApicmFuY2g6CiAgIHdtODkwNAoKKGJyYW5jaCBp
bmNsdWRlcyB0d28gZml4ZXMgYWxyZWFkeSBzZW50IHRvIGFsc2EtZGV2ZWwsIGJ1dCBub3QgbWVy
Z2VkIHlldCkuCgpNaWNoYcWCIE1pcm9zxYJhdyAoNCk6CiAgQVNvQzogd21fZmxsOiBleHRyYWN0
IGNvbW1vbiBjb2RlIGZvciBXb2xmc29uIEZMTHMKICBBU29DOiB3bTg5MDQ6IHVzZSBjb21tb24g
RkxMIGNvZGUKICBBU29DOiB3bTg5MDQ6IGF1dG9tYXRpY2FsbHkgY2hvb3NlIGNsb2NrIHNvdXJj
ZQogIFtSRlRdIEFTb0M6IHdtODk5NDogdXNlIGNvbW1vbiBGTEwgY29kZQoKIHNvdW5kL3NvYy9h
dG1lbC9hdG1lbF93bTg5MDQuYyB8ICAxMSArLQogc291bmQvc29jL2NvZGVjcy9LY29uZmlnICAg
ICAgIHwgICA5ICsKIHNvdW5kL3NvYy9jb2RlY3MvTWFrZWZpbGUgICAgICB8ICAgMiArCiBzb3Vu
ZC9zb2MvY29kZWNzL3dtODkwNC5jICAgICAgfCA1MTYgKysrKysrKysrKystLS0tLS0tLS0tLS0t
LS0tLS0tLS0KIHNvdW5kL3NvYy9jb2RlY3Mvd204OTA0LmggICAgICB8ICAgNSAtCiBzb3VuZC9z
b2MvY29kZWNzL3dtODk5NC5jICAgICAgfCAyODEgKysrKystLS0tLS0tLS0tLS0tCiBzb3VuZC9z
b2MvY29kZWNzL3dtODk5NC5oICAgICAgfCAgIDQgKy0KIHNvdW5kL3NvYy9jb2RlY3Mvd21fZmxs
LmMgICAgICB8IDUxOCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIHNvdW5kL3Nv
Yy9jb2RlY3Mvd21fZmxsLmggICAgICB8ICA2MCArKysrCiA5IGZpbGVzIGNoYW5nZWQsIDg0OSBp
bnNlcnRpb25zKCspLCA1NTcgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgc291bmQv
c29jL2NvZGVjcy93bV9mbGwuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IHNvdW5kL3NvYy9jb2RlY3Mv
d21fZmxsLmgKCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
