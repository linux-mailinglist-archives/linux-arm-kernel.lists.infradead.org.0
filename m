Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC541374A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:20:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0IQYTeuLrmREfU4wEU4Z/spepDocR95H4r6TocKwXsE=; b=pPKawoAfsN4RFl
	C/jEGOXzaOZ/1lguvv6MnuaVDZRFpR84fPQ/e6Nvh4wdq0gWYBwKC2+Duzn6En/IaTDnIrCbItBcb
	AP1aRDycM+UYsv8xXk3RgyzjTQ3pEUukflES0RKIttlRpVmRJa53zOKk/NJp70KND3khHjxYj7Wvg
	DvqOfqnZX+3zUl+f2136CzVtFOv+0fx/kCoCQ+9UCkkVoqHhy6YcSRxyZ8Ea5rfqcfGpWgJkZOk4i
	amciA9C7xcat2/B9D35utf1ZBcQyzM3upRO6NUlSGC0avqzGd+cZ6gCm4vWfDBy09vDIC5zqx+iT3
	HssWIXQ2UtrNbmpugMiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipxxi-0001Ma-FU; Fri, 10 Jan 2020 17:20:42 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipxxT-0001F4-Et
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:20:29 +0000
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id A18D3200007;
 Fri, 10 Jan 2020 17:20:16 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] ARM: dts: at91: sama5d3: define clock rate range for tcb1
Date: Fri, 10 Jan 2020 18:20:07 +0100
Message-Id: <20200110172007.1253659-2-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200110172007.1253659-1-alexandre.belloni@bootlin.com>
References: <20200110172007.1253659-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_092027_648147_6757CEF2 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 =?UTF-8?q?Karl=20Rudb=C3=A6k=20Olsen?= <karl@micro-technic.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGNsb2NrIHJhdGUgcmFuZ2UgZm9yIHRoZSBUQ0IxIGNsb2NrIGlzIG1pc3NpbmcuIGRlZmlu
ZSBpdCBpbiB0aGUgZGV2aWNlCnRyZWUuCgpSZXBvcnRlZC1ieTogS2FybCBSdWRiw6ZrIE9sc2Vu
IDxrYXJsQG1pY3JvLXRlY2huaWMuY29tPgpGaXhlczogZDJlODE5MGI3OTE2ICgiQVJNOiBhdDkx
L2R0OiBkZWZpbmUgc2FtYTVkMyBjbG9ja3MiKQpTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kcmUgQmVs
bG9uaSA8YWxleGFuZHJlLmJlbGxvbmlAYm9vdGxpbi5jb20+Ci0tLQogYXJjaC9hcm0vYm9vdC9k
dHMvc2FtYTVkM190Y2IxLmR0c2kgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3NhbWE1ZDNfdGNiMS5kdHNpIGIvYXJj
aC9hcm0vYm9vdC9kdHMvc2FtYTVkM190Y2IxLmR0c2kKaW5kZXggMTU4NDAzNWRhZjUxLi4yMTU4
MDJiOGRiMzAgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3NhbWE1ZDNfdGNiMS5kdHNp
CisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3NhbWE1ZDNfdGNiMS5kdHNpCkBAIC0yMiw2ICsyMiw3
IEBAIHBlcmlwaGNrIHsKIAkJCQkJdGNiMV9jbGs6IHRjYjFfY2xrIHsKIAkJCQkJCSNjbG9jay1j
ZWxscyA9IDwwPjsKIAkJCQkJCXJlZyA9IDwyNz47CisJCQkJCQlhdG1lbCxjbGstb3V0cHV0LXJh
bmdlID0gPDAgMTY2MDAwMDAwPjsKIAkJCQkJfTsKIAkJCQl9OwogCQkJfTsKLS0gCjIuMjQuMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
