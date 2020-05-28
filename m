Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E191E6972
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 20:36:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:From:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XzzjbhYIiislKuGAZpQ0dg3CBHGguTpST+HDIv7zbe0=; b=GrbxJ6fJNVNKqC
	FJLh15k5mlfzPv6dm+6GxACK35GfHQA5Pv2iTTIuRMzUyzKbcBGsYt/6kZfgx0N5eT7k0DsQFY6/j
	NEbFj9vPo4/Vl91y8l5lIiWA0JU5/baohVS3Dl83pZyBg8CVaKl6zNiDy2jCg0V0nu7XEff4oKeiz
	cqElRph6azt95YJGruJm/EWxiyu0tBk0Vn7VajHiZkdWUG/6FLNN1QT47k5SQCdVfo99f6LCGPduB
	vzLmIy+UNEbYqEl68Ut1alWrgFpCmw6MWMEQbzvWo08nOlyDv+nf3FoMOGA0Uk7oU3DTw6cTj60+E
	fEIf3MnWqEyprkdfzPEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeNO0-0007JH-Kl; Thu, 28 May 2020 18:36:12 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeNNq-0007Hp-DE
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 18:36:03 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 49XxGT4LZGz63;
 Thu, 28 May 2020 20:35:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1590690953; bh=JDXQmGIW53NRlTH7B094Eeot8dV9wNZ5qBuxOCKPMUY=;
 h=Date:From:Subject:To:Cc:From;
 b=m+xP5gErbXWNOqVWw+QSCUTA256Y3YYdiXr/xLyb3IUQ11U6aFUXkBL/65iQQ2/GC
 qWo9/51NWY9Ul5gqdLLIi7kg7Gz1qH6a1lQqygHcAwj2ykNr1x9X0mIxQxTm1NPMlN
 IyalaCwTS+GUaak0fSlxzFMqfKTMYpXjI+1xpaQ8V+nDpqQ8N8Tgfv0GBy2WNuVJas
 SY9EVlk3PKZFiPpTIhBFOiOvnXo1RSiOZMLRnv7yaGbm2JcHIAd/1Kg9vecGqDaH8T
 93BgjBYaRaR2e62MJhWQ0qbv2hz5C/f/25/U3lBnh0s3Wz2im1wYduvxwR2Ec9zB9N
 BgtVKsrysOogg==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Thu, 28 May 2020 20:35:45 +0200
Message-Id: <cover.1590690650.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH 0/3] usb: gadget: udc: atmel: assorted fixes
MIME-Version: 1.0
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Cristian Birsan <cristian.birsan@microchip.com>,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Songjun Wu <songjun.wu@atmel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_113602_617246_BE668592 
X-CRM114-Status: UNSURE (   5.01  )
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

VHdvIHRyaXZpYWwgZml4ZXMgYW5kIC5wdWxsdXAgaW1wbGVtZW50YXRpb24gZm9yIEF0bWVsIFVE
QyBkcml2ZXIgdG8KbWFrZSBjb21wb3NpdGUgZ2FkZ2V0IGhhcHB5IHdoZW4gaGFuZGxpbmcgcmVj
b25maWd1cmF0aW9uLgoKTWljaGHFgiBNaXJvc8WCYXcgKDMpOgogIHVzYjogZ2FkZ2V0OiB1ZGM6
IGF0bWVsOiByZW1vdmUgb3V0ZGF0ZWQgY29tbWVudCBpbiB1c2JhX2VwX2Rpc2FibGUoKQogIHVz
YjogZ2FkZ2V0OiB1ZGM6IGF0bWVsOiBmaXggdW5pbml0aWFsaXplZCByZWFkIGluIGRlYnVnIHBy
aW50awogIHVzYjogZ2FkZ2V0OiB1ZGM6IGF0bWVsOiBpbXBsZW1lbnQgLnB1bGx1cCBjYWxsYmFj
awoKIGRyaXZlcnMvdXNiL2dhZGdldC91ZGMvYXRtZWxfdXNiYV91ZGMuYyB8IDMwICsrKysrKysr
KysrKysrKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCA4IGRl
bGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
