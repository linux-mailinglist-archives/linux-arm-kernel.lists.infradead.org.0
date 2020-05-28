Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 357741E6978
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 20:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:From:References
	:In-Reply-To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OhHiDjdlnaA7CkKMQit/McBEbZ9egAQOX1d6RYfbNJY=; b=XoSziMOlVZWX+X
	7IY3RyDvpsRv1bxrBUIEG7qp3uQbcAGSn+2556XpvdLji9pC/T4P284EOj768mcCpE658oLu7ytdp
	k84U8FsE1oWzr7Zg1kzGRN8vvX1ThTuXtEmKEbG0OlwlMZgoXeueWxs6xfp7GL9vZj1DSH9y2Wcjo
	OodU4Xd+uguhBNhBu9W41L9grWcOhM9LPYZ73XYob1oSXoRFp2RRU1qTMpcIiF0zN96ipzzEhM7sA
	Bytnp/xPLIsae9G8HKlXV3o6k1GOi0KH6UllPJe7fm/AdM+Y1KsPVffKrQ2WdIiBM5KWHpi93w0qU
	xTpnD9gGR9Ki6XaltuFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeNOG-0007TY-3U; Thu, 28 May 2020 18:36:28 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeNNq-0007Ho-CN
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 18:36:03 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 49XxGd6lrsz8L;
 Thu, 28 May 2020 20:35:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1590690954; bh=QmkFZ9eFWaDioQbY5TlOYF/cOWllJop5t2LIsaqe1rM=;
 h=Date:In-Reply-To:References:From:Subject:To:Cc:From;
 b=DSYwmJKqLQR1j43Pw1ma9FilGqrQlukUQnwtIS1e0acU6URtVDx7cnu0TB7h34fC0
 VFfv9E5BcBBkMUVaxUkOXMM7z5O82aEOYO1N0oQDQh2g6TdvRTZczZdLI7ZwBOlW6D
 PbduX7w/RvIf4xGNcKqsfd82lS91QpvUK894dCrFTiTHgccTAjlf7INvudkR/qcy46
 xRYrREQrmvARzTMeta1K5WovgTndiuHiznQY20heVNga5kvR8xJypVcf9xsyzxpGQu
 D/rkv++3qBVApjnSudeXLpv0NxeWE1ZNCJsSudNcVRU6md9JeBAXth8Fs/RfUkZz7h
 yrGzVXgwPdBIA==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Thu, 28 May 2020 20:35:53 +0200
Message-Id: <9a5ad692ad2d615d28901c6393716b79005c1c25.1590690650.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1590690650.git.mirq-linux@rere.qmqm.pl>
References: <cover.1590690650.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH 1/3] usb: gadget: udc: atmel: remove outdated comment in
 usba_ep_disable()
MIME-Version: 1.0
To: Cristian Birsan <cristian.birsan@microchip.com>,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Songjun Wu <songjun.wu@atmel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_113602_588796_6917A4DD 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rml4ZWQgY29tbWl0IHJlbW92ZWQgdGhlIG9mZmVuZGluZyBiZWhhdmlvdXIgZnJvbSB0aGUgZHJp
dmVyLCBidXQgbWlzc2VkCnRoZSBjb21tZW50IGFuZCBhc3NvY2lhdGVkIHRlc3QuIFJlbW92ZSB0
aGVtIG5vdy4KCkZpeGVzOiAzOGU1ODk4NmU2ZmMgKCJ1c2I6IGdhZGdldDogdWRjOiBhdG1lbDog
ZG9uJ3QgZGlzYWJsZSBlbnBkb2ludHMgd2UgZG9uJ3Qgb3duIikKU2lnbmVkLW9mZi1ieTogTWlj
aGHFgiBNaXJvc8WCYXcgPG1pcnEtbGludXhAcmVyZS5xbXFtLnBsPgotLS0KIGRyaXZlcnMvdXNi
L2dhZGdldC91ZGMvYXRtZWxfdXNiYV91ZGMuYyB8IDggKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3Vz
Yi9nYWRnZXQvdWRjL2F0bWVsX3VzYmFfdWRjLmMgYi9kcml2ZXJzL3VzYi9nYWRnZXQvdWRjL2F0
bWVsX3VzYmFfdWRjLmMKaW5kZXggZDY5ZjYxZmYwMTgxLi45MTUzZTIyMDg0OGQgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvdXNiL2dhZGdldC91ZGMvYXRtZWxfdXNiYV91ZGMuYworKysgYi9kcml2ZXJz
L3VzYi9nYWRnZXQvdWRjL2F0bWVsX3VzYmFfdWRjLmMKQEAgLTY3NiwxMyArNjc2LDcgQEAgc3Rh
dGljIGludCB1c2JhX2VwX2Rpc2FibGUoc3RydWN0IHVzYl9lcCAqX2VwKQogCiAJaWYgKCFlcC0+
ZXAuZGVzYykgewogCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZ1ZGMtPmxvY2ssIGZsYWdzKTsK
LQkJLyogUkVWSVNJVCBiZWNhdXNlIHRoaXMgZHJpdmVyIGRpc2FibGVzIGVuZHBvaW50cyBpbgot
CQkgKiByZXNldF9hbGxfZW5kcG9pbnRzKCkgYmVmb3JlIGNhbGxpbmcgZGlzY29ubmVjdCgpLAot
CQkgKiBtb3N0IGdhZGdldCBkcml2ZXJzIHdvdWxkIHRyaWdnZXIgdGhpcyBub24tZXJyb3IgLi4u
Ci0JCSAqLwotCQlpZiAodWRjLT5nYWRnZXQuc3BlZWQgIT0gVVNCX1NQRUVEX1VOS05PV04pCi0J
CQlEQkcoREJHX0VSUiwgImVwX2Rpc2FibGU6ICVzIG5vdCBlbmFibGVkXG4iLAotCQkJCQllcC0+
ZXAubmFtZSk7CisJCURCRyhEQkdfRVJSLCAiZXBfZGlzYWJsZTogJXMgbm90IGVuYWJsZWRcbiIs
IGVwLT5lcC5uYW1lKTsKIAkJcmV0dXJuIC1FSU5WQUw7CiAJfQogCWVwLT5lcC5kZXNjID0gTlVM
TDsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
