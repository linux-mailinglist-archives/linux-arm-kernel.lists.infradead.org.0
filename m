Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5316BAD77B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 13:00:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l0Rw+sx14XRIO3r4nghz2rnL/8pszk1uFzUAD72sigI=; b=b05lT/rxu4aAzd
	CK2mOaVILlKvdMSDQTePCm6M2VaSeDL346w9IObPy4jVYuyidjCujM8RPaQpecV4QtD45a+XEFdSY
	k84PCZImVlDhCNiXFYEyXRKiN0uNOvpsKAIWV1hyi5x85J951Pk38Hg4fNKtcJ5MpVy6kDDpI98AD
	20Sejg8LxOUZdO06iBp598gPp/wt9d0Kyy1l81AldFond/sJUKBv3UFBj7eLd1hlE1jcZaGrPm9CF
	u17G6OiujmPKPtkJGPwVPSpWPRcAOS+HuEWO6f6MQIAlz5+5sfHNfBqajmv0wzPDMtib5sKYVdepg
	6lf47XHimd4AC8EZrrpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7HP2-0002n5-Gs; Mon, 09 Sep 2019 11:00:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7HOr-0002Sm-3a
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 11:00:02 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i7HOn-0003wJ-Jf; Mon, 09 Sep 2019 12:59:57 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1i7HOm-0006LO-SB; Mon, 09 Sep 2019 12:59:56 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH RFC] gpio: define gpio-init nodes to initialize pins similar
 to hogs
Date: Mon,  9 Sep 2019 12:59:19 +0200
Message-Id: <20190909105919.30418-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_040001_154595_14877DFC 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U29tZXRpbWVzIGl0IGlzIGhhbmR5IHRvIGJlIGFibGUgdG8gZWFzaWx5IGRlZmluZSBhICJzYWZl
IiBzdGF0ZSBmb3IgYQpHUElPLiBUaGlzIG1pZ2h0IGZvciBleGFtcGxlIGJlIHVzZWQgdG8gZW5z
dXJlIHRoYXQgYW4gZXRoZXJuZXQgcGh5IGlzCnByb3Blcmx5IHJlc2V0IGR1cmluZyBzdGFydHVw
IG9yIGp1c3QgdGhhdCBhbGwgcGlucyBoYXZlIGEgZGVmaW5lZCBzdGF0ZQp0byBtaW5pbWl6ZSBs
ZWFrYWdlIGN1cnJlbnQuIEFzIHN1Y2ggYSBwaW4gbXVzdCBiZSByZXF1ZXN0YWJsZSAoYW5kCmNo
YW5nYWJsZSkgYnkgYSBkZXZpY2UgZHJpdmVyLCBhIGdwaW8taG9nIGNhbm5vdCBiZSB1c2VkLgoK
U28gZGVmaW5lIGEgR1BJTyBpbml0aWFsaXplciB3aXRoIGEgc3ludGF4IGlkZW50aWNhbCB0byBh
IEdQSU8gaG9nIGp1c3QKdXNpbmcgImdwaW8taW5pdCIgYXMgaWRlbnRpZmllciBpbnN0ZWFkIG9m
ICJncGlvLWhvZyIuCgpUaGUgdXNhZ2UgSSBoYXZlIGluIG1pbmQgKGFuZCBhbHNvIGltcGxlbWVu
dGVkIGluIGEgY3VzdG9tIHBhdGNoIHN0YWNrCm9uIHRvcCBvZiBiYXJlYm94IGFscmVhZHkpIGlz
IHRhcmdldGluZyB0aGUgYm9vdGxvYWRlciBhbmQgbm90Cm5lY2Vzc2FyaWx5IExpbnV4IGFzIHN1
Y2ggYW4gYm9vdC11cCBpbml0aWFsaXNhdGlvbiBzaG91bGQgYmUgZG9uZSBhcwplYXJseSBhcyBw
b3NzaWJsZS4KCk5vdC15ZXQtc2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xl
aW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCkhlbGxvLAoKbWF5YmUgaXQgYWxzbyBtYWtl
cyBzZW5zZSB0byB1c2UgImdwaW8tc2FmZSI/IE1heWJlIGl0ICh0aGVuKSBtYWtlcwpzZW5zZSB0
byByZXNldCB0aGUgZ3BpbyBpbiB0aGUgaW5kaWNhdGVkIHN0YXRlIGFmdGVyIGl0IGlzIHJlbGVh
c2VkPwoKQWxzbyBpdCBtaWdodCBiZSBiZW5lZmljaWFsIHRvIG1ha2UgdGhlIHdvcmRpbmcgbW9y
ZSBleHBsaWNpdCBpbiB0aGUKZGVzY3JpcHRpb24gYW5kIGZvciBleGFtcGxlIHRlbGwgdGhhdCBv
bmx5IG9uZSBvZiBncGlvLWhvZyBhbmQgZ3Bpby1pbml0Cm11c3QgYmUgcHJvdmlkZWQuIAoKQmVz
dCByZWdhcmRzClV3ZQoKIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ncGlvL2dw
aW8udHh0IHwgOSArKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2dwaW8vZ3Bpby50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZ3Bp
by9ncGlvLnR4dAppbmRleCBhODg5NWQzMzliZmUuLjViNzg4M2Y1NTIwZiAxMDA2NDQKLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vZ3Bpby50eHQKKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vZ3Bpby50eHQKQEAgLTE4MiwxMyAr
MTgyLDE2IEBAIGdwaW8tY29udHJvbGxlckAwMDAwMDAwMCB7CiAJCSJwb3dlcm9mZiIsICJyZXNl
dCI7CiB9CiAKLVRoZSBHUElPIGNoaXAgbWF5IGNvbnRhaW4gR1BJTyBob2cgZGVmaW5pdGlvbnMu
IEdQSU8gaG9nZ2luZyBpcyBhIG1lY2hhbmlzbQotcHJvdmlkaW5nIGF1dG9tYXRpYyBHUElPIHJl
cXVlc3QgYW5kIGNvbmZpZ3VyYXRpb24gYXMgcGFydCBvZiB0aGUKLWdwaW8tY29udHJvbGxlcidz
IGRyaXZlciBwcm9iZSBmdW5jdGlvbi4KK1RoZSBHUElPIGNoaXAgbWF5IGNvbnRhaW4gR1BJTyBo
b2cgYW5kIGluaXQgZGVmaW5pdGlvbnMuIEdQSU8gaG9nZ2luZyBpcyBhCittZWNoYW5pc20gcHJv
dmlkaW5nIGF1dG9tYXRpYyBHUElPIHJlcXVlc3QgYW5kIGNvbmZpZ3VyYXRpb24gYXMgcGFydCBv
ZiB0aGUKK2dwaW8tY29udHJvbGxlcidzIGRyaXZlciBwcm9iZSBmdW5jdGlvbi4gQW4gR1BJTyBp
bml0aWFsaXplciBpcyBzaW1pbGFyIGJ1dAorZG9lc24ndCBwcmV2ZW50IGxhdGVyIHJlcXVlc3Rp
bmcgYW5kIHJlY29uZmlndXJhdGlvbi4KIAogRWFjaCBHUElPIGhvZyBkZWZpbml0aW9uIGlzIHJl
cHJlc2VudGVkIGFzIGEgY2hpbGQgbm9kZSBvZiB0aGUgR1BJTyBjb250cm9sbGVyLgogUmVxdWly
ZWQgcHJvcGVydGllczoKIC0gZ3Bpby1ob2c6ICAgQSBwcm9wZXJ0eSBzcGVjaWZ5aW5nIHRoYXQg
dGhpcyBjaGlsZCBub2RlIHJlcHJlc2VudHMgYSBHUElPIGhvZy4KKy0gZ3Bpby1pbml0OiAgQSBw
cm9wZXJ0eSBzcGVjaWZ5aW5nIHRoYXQgdGhpcyBjaGlsZCBub2RlIHJlcHJlc2VudHMgYSBHUElP
CisJICAgICAgaW5pdGlhbGl6ZXIuCiAtIGdwaW9zOiAgICAgIFN0b3JlIHRoZSBHUElPIGluZm9y
bWF0aW9uIChpZCwgZmxhZ3MsIC4uLikgZm9yIGVhY2ggR1BJTyB0bwogCSAgICAgIGFmZmVjdC4g
U2hhbGwgY29udGFpbiBhbiBpbnRlZ2VyIG11bHRpcGxlIG9mIHRoZSBudW1iZXIgb2YgY2VsbHMK
IAkgICAgICBzcGVjaWZpZWQgaW4gaXRzIHBhcmVudCBub2RlIChHUElPIGNvbnRyb2xsZXIgbm9k
ZSkuCi0tIAoyLjIzLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
