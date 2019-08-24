Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2506C9B964
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 02:12:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mbaxhg8/TmtLEuvCoQkIrrJxCx8xYhgH1viX1StuFWc=; b=Tzw7N2dk057e3i
	mU4pbYNASwG45Mi3DEtFvN7b0aba7F47CRt9wMqYlr51Wurcek7roGQjIjAzk3f26DSSUg9rNjOBQ
	FwQTYSl9FcqQpeZ/58M7jzn5MCHhOA0xehf5Kq88b0nIAwS/QaIi6TyjfelQws9/qa6vrp44NJYMq
	UvmJ7aF3z1cbhE6uBmdkR5RoCS4fiTu6MZtOK70sugDCKMOYF+iZrdLgiWAz1sXNQPsFXsNR7HApv
	i2pnRWe45OR0cDrvDiI2ocjgqScoQ5iTKMDemwxZSIFotiF03F+6QEnVmzF8/iulwDnbMl5z0Rjka
	Hby0HiX+HZSPiXcWoLWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1JfG-00030g-D2; Sat, 24 Aug 2019 00:12:18 +0000
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1JeT-00026t-IO
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 00:11:31 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 1239877D4BA; Sat, 24 Aug 2019 02:10:58 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v2 4/6] pwm: atmel: document known weaknesses of both hardware
 and software
Date: Sat, 24 Aug 2019 02:10:39 +0200
Message-Id: <20190824001041.11007-5-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190824001041.11007-1-uwe@kleine-koenig.org>
References: <20190824001041.11007-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_171129_774962_2BFA802C 
X-CRM114-Status: UNSURE (   9.53  )
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

VGhpcyBkb2N1bWVudHMgdGhlIG15IGZpbmRpbmdzIHdoaWxlIHJlYWRpbmcgdGhyb3VnaCB0aGUg
ZHJpdmVyIGFuZCB0aGUKcmVmZXJlbmNlIG1hbnVhbC4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVp
bmUtS8O2bmlnIDx1d2VAa2xlaW5lLWtvZW5pZy5vcmc+Ci0tLQpDaGFuZ2VzIHNpbmNlIChpbXBs
aWNpdCkgdjEgc2VudCB3aXRoIE1lc3NhZ2UtSWQ6CjIwMTkwODE2MDkzNzQ4LjExNzY5LTEtdXdl
QGtsZWluZS1rb2VuaWcub3JnOgoKIC0gQWRkIHNvbWUgcHJvc2EgdG8gY29tbWl0IGxvZwoKIGRy
aXZlcnMvcHdtL3B3bS1hdG1lbC5jIHwgMTAgKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEw
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tYXRtZWwuYyBiL2Ry
aXZlcnMvcHdtL3B3bS1hdG1lbC5jCmluZGV4IDM3ODZhYjlkYjVjZi4uODlmM2E2MmY3NTQxIDEw
MDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tYXRtZWwuYworKysgYi9kcml2ZXJzL3B3bS9wd20t
YXRtZWwuYwpAQCAtNyw2ICs3LDE2IEBACiAgKgogICogTGlua3MgdG8gcmVmZXJlbmNlIG1hbnVh
bHMgZm9yIHRoZSBzdXBwb3J0ZWQgUFdNIGNoaXBzIGNhbiBiZSBmb3VuZCBpbgogICogRG9jdW1l
bnRhdGlvbi9hcm0vbWljcm9jaGlwLnJzdC4KKyAqCisgKiBMaW1pdGF0aW9uczoKKyAqIC0gUGVy
aW9kcyBzdGFydCB3aXRoIHRoZSBpbmFjdGl2ZSBsZXZlbC4KKyAqIC0gSGFyZHdhcmUgaGFzIHRv
IGJlIHN0b3BwZWQgaW4gZ2VuZXJhbCB0byB1cGRhdGUgc2V0dGluZ3MuCisgKgorICogU29mdHdh
cmUgYnVncy9wb3NzaWJsZSBpbXByb3ZlbWVudHM6CisgKiAtIFdoZW4gYXRtZWxfcHdtX2FwcGx5
KCkgaXMgY2FsbGVkIHdpdGggc3RhdGUtPmVuYWJsZWQ9ZmFsc2UgYSBjaGFuZ2UgaW4KKyAqICAg
c3RhdGUtPnBvbGFyaXR5IGlzbid0IGhvbm9yZWQuCisgKiAtIEluc3RlYWQgb2Ygc2xlZXBpbmcg
dG8gd2FpdCBmb3IgYSBjb21wbGV0ZWQgcGVyaW9kLCB0aGUgaW50ZXJydXB0CisgKiAgIGZ1bmN0
aW9uYWxpdHkgY291bGQgYmUgdXNlZC4KICAqLwogCiAjaW5jbHVkZSA8bGludXgvY2xrLmg+Ci0t
IAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
