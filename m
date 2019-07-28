Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6292781A8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 23:05:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wBFSSjS5qV+xL4Yq6qynru1zP+ln91Xig5HXa2Njv2s=; b=HAko+iQaqL8QBl
	pQ4ylHmKVtktjJ58bedyq3OM9a8Ieiy/Ovh3HIgBstXPchCxJ3w8FNZKJ3NRTZiPfX4LqsH6zQQav
	549CW7b+CoZy361xJoAwLyxV7i9xrTED7/bpCY3HozpM5JWIpgnjA7v88cf+Sq22apFq3VRr1K7gd
	z+5W+ISGNWlZWvGEy7K1DhQGPOxxhn9s2Eazmy3r5nrDNVC7KTvtHAouROQNvfC1Bevo/bu318O6o
	aBwOVuDWqYgSjzxKHocuI9/MCvyiR/574q9lh7FbUCp8RbeF1itxSRZQyozG9pIUErjhLaDXfJxnk
	jYQdGIWVXgYBMi5VyBMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrqLp-0005Wf-Th; Sun, 28 Jul 2019 21:05:06 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrqLK-0005LQ-Hr
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 21:04:36 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id D59FE741559; Sun, 28 Jul 2019 23:04:29 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: [PATCH 0/2] at91: add support for Arietta G25
Date: Sun, 28 Jul 2019 23:04:01 +0200
Message-Id: <20190728210403.2730-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_140434_748869_EC947921 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, info@acmesystems.it,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpJIG5vdyB0b29rIHRoZSB0aW1lIHRvIHdvcmsgb24gbWFpbmxpbmUgc3VwcG9ydCBm
b3IgdGhlIEFyaWV0dGEgRzI1LgoKSXQgYm9vdHMgZmluZSBvbiB2NS4zLXJjMSBhcGFydCBmcm9t
IHRoZSBpc3N1ZSBJIHJlcG9ydGVkIG9uIHRoZSBMaW51eApBUk0gbGlzdCB5ZXN0ZXJkYXlbMV0u
CgpCZXN0IHJlZ2FyZHMKVXdlCgpbMV0gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJt
YWlsL2xpbnV4LWFybS1rZXJuZWwvMjAxOS1KdWx5LzY2OTE2Ny5odG1sCgpVd2UgS2xlaW5lLUvD
tm5pZyAoMik6CiAgZHRzOiBhZGQgdmVuZG9yIHByZWZpeCAiYWNtZSIgZm9yICJBY21lIFN5c3Rl
bXMgc3JsIgogIEFSTTogZHRzOiBhdDkxOiBhZGQgc3VwcG9ydCBmb3IgQXJpZXR0YSBHMjUKCiAu
Li4vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbCAgfCAgMiArCiBhcmNo
L2FybS9ib290L2R0cy9hdDkxc2FtOWcyNS1hcmlldHRhLmR0cyAgICAgfCA4NiArKysrKysrKysr
KysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDg4IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBhcmNoL2FybS9ib290L2R0cy9hdDkxc2FtOWcyNS1hcmlldHRhLmR0cwoKLS0gCjIu
MjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
