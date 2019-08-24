Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC109B95C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 02:11:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=32asPbeIADuMO1qrSsyBrTdoT27nnvgOLCBVx34q8Go=; b=cFoVlPqJNeO05D
	8jGkogenB86nQ5OriJG2y9gSDo82uc9JK5+KfcdzXSjioiPWHjCOAYF8048b+PGP4R/JClDTEdluZ
	oMk7Lh2OJvbTs4+nXuWcmOUsp3JebtreEKPNifEGpqfRHE3X5OzJsAQHMXY0kMo4nlmPfHjPR9V8N
	wUORvViL6nvoDzzlmPQoHFVG6VDLDBF/PvfrdO92kK/hhXN6Nh26v0ggaWHdXyrkHF7ptvSoXrAT2
	KAWsciPC6cBZe+dEIdMMtn+z0uLLEnojfcca3Q9LZSlUDfKBAsTtbqWP2kDJt4zJ/LcvAX3HJdRHb
	WGYo6/6tkFjMuSBKtLSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Jeb-00022d-DI; Sat, 24 Aug 2019 00:11:37 +0000
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1JeH-0001t3-VZ
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 00:11:19 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id B8DEA77D4B2; Sat, 24 Aug 2019 02:10:46 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v2 0/6] Updates for the atmel PWM driver
Date: Sat, 24 Aug 2019 02:10:35 +0200
Message-Id: <20190824001041.11007-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_171118_157467_824071AE 
X-CRM114-Status: UNSURE (   6.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.130.110.236 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pwm@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgp0aGlzIGlzIHYyIG9mIG15IHNlcmllcyB0byB1cGRhdGUgdGhlIGF0bWVsIFBXTSBk
cml2ZXIuIChJbXBsaWNpdCkgdjEKd2FzIHNlbnQgb24gQXVnIDE1LCBzdGFydGluZyB3aXRoIE1l
c3NhZ2UtSWQ6CjIwMTkwODE1MjE0MTMzLjExMTM0LTEtdXdlQGtsZWluZS1rb2VuaWcub3JnLgoK
SSB1cGRhdGVkIHRoZSBwYXRjaGVzIGZyb20gdGhlIGZlZWRiYWNrIEkgZ290IGluIHYxLCBzZWUg
dGhlIGluZGl2aWR1YWwKcGF0Y2hlcyBmb3IgdGhlIGRldGFpbHMuCgpCZXN0IHJlZ2FyZHMKVXdl
CgpVd2UgS2xlaW5lLUvDtm5pZyAoNik6CiAgcHdtOiBhdG1lbDogQWRkIGEgaGludCB3aGVyZSB0
byBmaW5kIGhhcmR3YXJlIGRvY3VtZW50YXRpb24KICBwd206IGF0bWVsOiB1c2UgYSBjb25zdGFu
dCBmb3IgbWF4aW11bSBwcmVzY2FsZSB2YWx1ZQogIHB3bTogYXRtZWw6IHJlcGxhY2UgbG9vcCBp
biBwcmVzY2FsZSBjYWxjdWxhdGlvbiBieSBhZC1ob2MgY2FsY3VsYXRpb24KICBwd206IGF0bWVs
OiBkb2N1bWVudCBrbm93biB3ZWFrbmVzc2VzIG9mIGJvdGggaGFyZHdhcmUgYW5kIHNvZnR3YXJl
CiAgcHdtOiBhdG1lbDogdXNlIGF0bWVsX3B3bV93cml0ZWwgaW4gYXRtZWxfcHdtX2NoX3dyaXRl
bDsgZGl0dG8gZm9yCiAgICByZWFkbAogIHB3bTogYXRtZWw6IGltcGxlbWVudCAuZ2V0X3N0YXRl
KCkKCiBkcml2ZXJzL3B3bS9wd20tYXRtZWwuYyB8IDg2ICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNzMgaW5zZXJ0aW9ucygrKSwgMTMg
ZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
