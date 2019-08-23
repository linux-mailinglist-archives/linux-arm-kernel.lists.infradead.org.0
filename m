Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6589B9B12F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 15:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ERR7GgWhVNfvY0REUuPgghRU1BS+pIjL2KSI9gw4G7I=; b=RkE8AVpY030XgL
	BOR9rsi+lTVGqtOm8FfNaAWN01wFpUlFuq/FK47JdoVqm4VQnEE6LHUmi6KVL7vYqzFkPNnTh+BB7
	BP/HhJDdgMuynojUxAkJ90wkXoKJSvr5L10qzDXVstJddJLgFe9hyg0WWO1PfTtYgVjJgSxCsXqOr
	oqVO4Rp1tWx5TIwPW5uvHLoH3VHWiUmP0aA7UWDAGcS4SMcZ4WvbUO3Q4Tml/oTq2TBRLxoNrMAjU
	uOT42q1AOY1qf0ZrJP7++UCcInAsFi8tzgGa7WEXbyFAnXgB2fPq90RkP/o2zAs5ZxCFJ3mZuqZ4P
	leuodN0ITIKlaQAWOc5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i19t2-0003cM-VJ; Fri, 23 Aug 2019 13:45:52 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i19ss-0003Te-Nn; Fri, 23 Aug 2019 13:45:44 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id AA80F5FA7B;
 Fri, 23 Aug 2019 15:45:39 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="VphKtHb6"; 
 dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id 6DD951D89681;
 Fri, 23 Aug 2019 15:45:39 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 6DD951D89681
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1566567939;
 bh=4DXT2J8mfFRCiwxSqy0mkdAE2qhxEDwsE+v9BSRv9mo=;
 h=From:To:Cc:Subject:Date:From;
 b=VphKtHb6a42eRPTzPTxmHYEDVRgcxRQVC/UGv7HMIqdMhJNRa0YhE0DdufZxZXWr9
 6mNhvtcx23q2xZH35r4DFHDRuoEAOP62k2vFBE0sx+tlzT6XV6dk9s77a57krT6ONk
 JDXw+9lPhGJR8tJDKztkexhSlH0MP0Kd1W7zEBRYJMkI8SZka+IO4iCDn4akory5qJ
 8ui8zWa/x2ozqxrTgtZnyzHwl/kRTBxpIalSuSW3B2UwngipsfpubRaOysC8CH2vFY
 XiRJtIJuxCwaf6ZbR+pjPOaW4Fr8//fBFqpBArHPm8+cdlzRdSVoRJGZVTrF4sFEZN
 +OV+M5caJdarw==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Nelson Chang <nelson.chang@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH net-next v3 0/3] net: ethernet: mediatek: convert to PHYLINK
Date: Fri, 23 Aug 2019 15:45:13 +0200
Message-Id: <20190823134516.27559-1-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_064543_079817_672A33E1 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 linux-mips@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, Stefan Roese <sr@denx.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlc2UgcGF0Y2hlcyBjb252ZXJ0cyBtZWRpYXRlayBkcml2ZXIgdG8gUEhZTElOSyBBUEkuCgp2
Mi0+djM6CiogUGh5bGluayBpbXByb3ZlbWVudHMgYW5kIGNsZWFuLXVwcyBhZnRlciByZXZpZXcK
djEtPnYyOgoqIFJlYmFzZSBmb3IgbXQ3Nng4IGNoYW5nZXMKKiBQaHlsaW5rIGltcHJvdmVtZW50
cyBhbmQgY2xlYW4tdXBzIGFmdGVyIHJldmlldwoqIFNHTUlJIHBvcnQgZG9lc24ndCBzdXBwb3J0
IDIuNUdiaXQgaW4gU0dNSUkgbW9kZSBvbmx5IGluIEJBU0UtWCBtb2RlLgogIFJlZmFjdG9yIHRo
ZSBjb2RlLgoKUmVuw6kgdmFuIERvcnN0ICgzKToKICBuZXQ6IGV0aGVybmV0OiBtZWRpYXRlazog
QWRkIGJhc2ljIFBIWUxJTksgc3VwcG9ydAogIG5ldDogZXRoZXJuZXQ6IG1lZGlhdGVrOiBSZS1h
ZGQgc3VwcG9ydCBTR01JSQogIGR0LWJpbmRpbmdzOiBuZXQ6IGV0aGVybmV0OiBVcGRhdGUgbXQ3
NjIyIGRvY3MgYW5kIGR0cyB0byByZWZsZWN0IHRoZQogICAgbmV3IHBoeWxpbmsgQVBJCgogLi4u
L2FybS9tZWRpYXRlay9tZWRpYXRlayxzZ21paXN5cy50eHQgICAgICAgIHwgICAyIC0KIC4uLi9k
dHMvbWVkaWF0ZWsvbXQ3NjIyLWJhbmFuYXBpLWJwaS1yNjQuZHRzICB8ICAyOCArLQogYXJjaC9h
cm02NC9ib290L2R0cy9tZWRpYXRlay9tdDc2MjIuZHRzaSAgICAgIHwgICAxIC0KIGRyaXZlcnMv
bmV0L2V0aGVybmV0L21lZGlhdGVrL0tjb25maWcgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9u
ZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9wYXRoLmMgIHwgIDc1ICstLQogZHJpdmVycy9u
ZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuYyAgIHwgNTI5ICsrKysrKysrKysrKy0t
LS0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuaCAgIHwgIDY4
ICsrLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX3NnbWlpLmMgICAgIHwgIDY1
ICsrLQogOCBmaWxlcyBjaGFuZ2VkLCA0NzcgaW5zZXJ0aW9ucygrKSwgMjkzIGRlbGV0aW9ucygt
KQoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
