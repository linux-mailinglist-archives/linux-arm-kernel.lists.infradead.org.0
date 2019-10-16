Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FA3D8C6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 11:21:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UUt4b9+8/FvOxSzZsmT3vfNpH99JnsRI+IPJb+Hvc68=; b=np4rZizU6LrLKv
	K02SDYbCzRHU7BAICGM0WprYTaEGuWI0CUo1JfrglQX1GKGtBME0hzTZnwT/lzbkfFTIA4qgOIrtu
	2dJ8OAzNPe01P/9HrXWEsDGtW7T+vGknth8urblWEfSJ5ZyT901kJ6/+7Nsm+fHrcAMhjIYiESOJ9
	wdr9Qf2JDy2Hbre/X5g04DsUf6FoFQ7fqLANnnck78bpFMFJcRVrqwihIYQ38Rz52hvU2ASJmTNOs
	KvRf1biwPC23j3f7eB+yqM29LD+kgvuZ1GuVb6ZUgHr6Y4Dno1rZdfdWtE22w9KAR2xWV6JXUWn6A
	ZWxm6t7BMbT3w1hSGLeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKfV4-0001cP-RG; Wed, 16 Oct 2019 09:21:46 +0000
Received: from mail.savoirfairelinux.com ([208.88.110.44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKfUs-0001bJ-7r
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 09:21:35 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id 7DD609C02F3;
 Wed, 16 Oct 2019 05:21:26 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id HYlKbr2B05BK; Wed, 16 Oct 2019 05:21:25 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id CCB989C03A3;
 Wed, 16 Oct 2019 05:21:25 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id DtRpUWLBM3Fo; Wed, 16 Oct 2019 05:21:25 -0400 (EDT)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com
 [192.168.48.237])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id 900CB9C02F3;
 Wed, 16 Oct 2019 05:21:25 -0400 (EDT)
Date: Wed, 16 Oct 2019 05:21:25 -0400 (EDT)
From: Gilles Doffe <gilles.doffe@savoirfairelinux.com>
To: shawnguo <shawnguo@kernel.org>
Message-ID: <1837032218.9373931.1571217685548.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: <20191007112430.GD7150@dragon>
References: <20190916104353.7278-1-gilles.doffe@savoirfairelinux.com>
 <20191007112430.GD7150@dragon>
Subject: Re: [PATCH v3] ARM: dts: imx6qdl-rex: add gpio expander pca9535
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.11_GA_3737 (ZimbraWebClient - GC76 (Linux)/8.8.11_GA_3737)
Thread-Topic: imx6qdl-rex: add gpio expander pca9535
Thread-Index: 0SgUHsAJvXpg4HUlY55gc/ziL2JF9g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_022134_416569_4326B526 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [208.88.110.44 listed in list.dnswl.org]
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
Cc: mark rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, s hauer <s.hauer@pengutronix.de>,
 rennes <rennes@savoirfairelinux.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, robh+dt <robh+dt@kernel.org>,
 linux-imx <linux-imx@nxp.com>, kernel <kernel@pengutronix.de>,
 =?utf-8?Q?J=C3=A9rome?= Oufella <jerome.oufella@savoirfairelinux.com>,
 festevam <festevam@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

LS0tLS0gTGUgNyBPY3QgMTksIMOgIDEzOjI0LCBzaGF3bmd1byBzaGF3bmd1b0BrZXJuZWwub3Jn
IGEgw6ljcml0IDoKCj4gT24gTW9uLCBTZXAgMTYsIDIwMTkgYXQgMTI6NDM6NTNQTSArMDIwMCwg
R2lsbGVzIERPRkZFIHdyb3RlOgo+PiBUaGUgcGNhOTUzNSBncGlvIGV4cGFuZGVyIGlzIHByZXNl
bnQgb24gdGhlIFJleCBiYXNlYm9hcmQsIGJ1dCBtaXNzaW5nCj4+IGZyb20gdGhlIGR0c2kuCj4+
IFRoZSBwY2E5NTM1IGlzIG9uIGkyYzIgYnVzIHdoaWNoIGlzIGNvbW1vbiB0byB0aGUgdGhyZWUg
U09NCj4+IHZhcmlhbnRzIChCYXNpYy9Qcm8vVWx0cmEpLCB0aHVzIGl0IGlzIGFjdGl2YXRlZCBi
eSBkZWZhdWx0Lgo+PiAKPj4gQWRkIGFsc28gdGhlIG5ldyBncGlvIGNvbnRyb2xsZXIgYW5kIHRo
ZSBhc3NvY2lhdGVkIGludGVycnVwdCBsaW5lCj4+IE1YNlFETF9QQURfTkFOREZfQ1MzX19HUElP
Nl9JTzE2Lgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogR2lsbGVzIERPRkZFIDxnaWxsZXMuZG9mZmVA
c2F2b2lyZmFpcmVsaW51eC5jb20+Cj4+IC0tLQo+PiAgYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFk
bC1yZXguZHRzaSB8IDE5ICsrKysrKysrKysrKysrKysrKysKPj4gIDEgZmlsZSBjaGFuZ2VkLCAx
OSBpbnNlcnRpb25zKCspCj4+IAo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14
NnFkbC1yZXguZHRzaQo+PiBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtcmV4LmR0c2kKPj4g
aW5kZXggOTdmMTY1OTE0NGVhLi44YTc0OGNhMWIxMDggMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJt
L2Jvb3QvZHRzL2lteDZxZGwtcmV4LmR0c2kKPj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14
NnFkbC1yZXguZHRzaQo+PiBAQCAtMTMyLDYgKzEzMiwxOSBAQAo+PiAgCXBpbmN0cmwtMCA9IDwm
cGluY3RybF9pMmMyPjsKPj4gIAlzdGF0dXMgPSAib2theSI7Cj4+ICAKPj4gKwlwY2E5NTM1OiBn
cGlvOEAyNyB7Cj4gCj4gZ3Bpby1leHBhbmRlciBtaWdodCBiZSBhIGJldHRlciBub2RlIG5hbWU/
Cj4gCj4gU2hhd24KCkluZGVlZCwgdjQgaW5jb21pbmcuIDspCgpUaGFuayB5b3UgU2hhd24uCgo+
IAo+PiArCQljb21wYXRpYmxlID0gIm54cCxwY2E5NTM1IjsKPj4gKwkJcmVnID0gPDB4Mjc+Owo+
PiArCQlncGlvLWNvbnRyb2xsZXI7Cj4+ICsJCSNncGlvLWNlbGxzID0gPDI+Owo+PiArCQlwaW5j
dHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiArCQlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfcGNhOTUz
NT47Cj4+ICsJCWludGVycnVwdC1wYXJlbnQgPSA8JmdwaW82PjsKPj4gKwkJaW50ZXJydXB0cyA9
IDwxNiBJUlFfVFlQRV9MRVZFTF9MT1c+Owo+PiArCQlpbnRlcnJ1cHQtY29udHJvbGxlcjsKPj4g
KwkJI2ludGVycnVwdC1jZWxscyA9IDwyPjsKPj4gKwl9Owo+PiArCj4+ICAJZWVwcm9tQDU3IHsK
Pj4gIAkJY29tcGF0aWJsZSA9ICJhdG1lbCwyNGMwMiI7Cj4+ICAJCXJlZyA9IDwweDU3PjsKPj4g
QEAgLTIzNyw2ICsyNTAsMTIgQEAKPj4gIAkJCT47Cj4+ICAJCX07Cj4+ICAKPj4gKwkJcGluY3Ry
bF9wY2E5NTM1OiBwY2E5NTM1IHsKPj4gKwkJCWZzbCxwaW5zID0gPAo+PiArCQkJCU1YNlFETF9Q
QURfTkFOREZfQ1MzX19HUElPNl9JTzE2CTB4MTcwNTkKPj4gKwkJICAgPjsKPj4gKwkJfTsKPj4g
Kwo+PiAgCQlwaW5jdHJsX3VhcnQxOiB1YXJ0MWdycCB7Cj4+ICAJCQlmc2wscGlucyA9IDwKPj4g
IAkJCQlNWDZRRExfUEFEX0NTSTBfREFUMTBfX1VBUlQxX1RYX0RBVEEJMHgxYjBiMQo+PiAtLQo+
PiAyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
