Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7516CCFF0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 18:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmiisTjMkrJdGNI/9W8wHOKzNUhGfDSeX7wLTiDoywU=; b=uEJqETzo/1MZvR
	ZegYlwDgWBnPs5PoRSal/SHz5WYEVvYJJRFMt3n1/jIpIja4ZV/zLTNFYj+Un2RPRPkTdJtB5XCkv
	ySwc7JT+dMtRnHLQDIOzElVN4b9ASfwc5SF67eiq7fPLySUnrc/i4HBEIdPJyBAuqFG3YVw3JJTce
	t/5Om1FK7nMBT/E2ygmdbZMoVrZeV+L/eFR4g0OIwHo43DQBuykPtCvtxGsj1V2dovEplOmnD0edo
	HItwgs2pMKp3PkaFtQwJh2REguU5xT4vf3GWPMX4vo/i6Cd6/1uLcOUxYmrqj12bMkIFxwxDFv1/U
	kwtWlrmQK4ptEQyi3l+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHsUH-0002Vt-ET; Tue, 08 Oct 2019 16:37:25 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHsUA-0002VN-So
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 16:37:20 +0000
X-Originating-IP: 195.57.117.247
Received: from localhost (unknown [195.57.117.247])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 3490060012;
 Tue,  8 Oct 2019 16:37:03 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Marek =?utf-8?Q?Beh=C3=BAn?= <marek.behun@nic.cz>, Miquel Raynal
 <miquel.raynal@bootlin.com>
Subject: Re: [PATCH mvebu-dt64 1/1] arm64: dts: armada-3720-turris-mox:
 convert usb-phy to phy-supply
In-Reply-To: <20191008145944.21659-1-marek.behun@nic.cz>
References: <20191008145944.21659-1-marek.behun@nic.cz>
Date: Tue, 08 Oct 2019 18:37:03 +0200
Message-ID: <871rvntcr4.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_093719_065415_5D68E999 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyZWssCgo+IFVwZGF0ZSBUdXJyaXMgTW94IGRldmljZSB0cmVlIHRvIHVzZSB0aGUgcGh5
LXN1cHBseSBwcm9wZXJ0eSBvZiB0aGUKPiBnZW5lcmljIFBIWSBmcmFtZXdvcmsgaW5zdGVhZCBv
ZiB0aGUgbGVnYWN5IHVzYi1waHkgcHJvcGVydHkuCj4KPiBUaGlzIGlzIG5lZWRlZCBzaW5jZSBp
dCBjYXVzZWQgYSByZWdyZXNzaW9uIG9uIFR1cnJpcyBNb3ggc2luY2UgY29tbWl0Cj4gZWI2YzJl
YjZjN2ZiICgidXNiOiBob3N0OiB4aGNpLXBsYXQ6IFByZXZlbnQgYW4gYWJub3JtYWxseS4uLiIp
Lgo+CgpJIGFtIG5vdCBhZ2FpbnN0IHRoaXMgcGF0Y2ggYW5kIGlmIGl0IHRoZSByaWdodCBmaXgg
Zm9yIHRoZSByZWdyZXNzaW9uIEkKd2lsbCBhcHBsaWVkIGl0IG9uIG15IG12ZWJ1L2ZpeGVzIGJy
YW5jaCB0byBiZSBwYXJ0IG9mIHY1LjQuIEhvd2V2ZXIgSSdkCmxpa2UgdG8gaGF2ZSB0aGUgZmVl
ZGJhY2sgZnJvbSBNaXF1ZWwgb24gdGhpcyBvbmUsIGFzIGZvciBtZSBpdCBpcyBub3QKb2J2aW91
cyB0aGF0IGl0IGlzIHRlIGNvcnJlY3QgZml4LgoKR3JlZ29yeQoKPiBTaWduZWQtb2ZmLWJ5OiBN
YXJlayBCZWjDum4gPG1hcmVrLmJlaHVuQG5pYy5jej4KPiBGaXhlczogZWI2YzJlYjZjN2ZiICgi
dXNiOiBob3N0OiB4aGNpLXBsYXQ6IFByZXZlbnQgYW4gYWJub3JtYWxseS4uLiIpCj4gQ2M6IE1p
cXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+Cj4gQ2M6IEdyZWdvcnkgQ0xF
TUVOVCA8Z3JlZ29yeS5jbGVtZW50QGJvb3RsaW4uY29tPgo+IENjOiBBbmRyZXcgTHVubiA8YW5k
cmV3QGx1bm4uY2g+Cj4gLS0tCj4gIC4uLi9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLXR1
cnJpcy1tb3guZHRzICAgICB8IDEzICsrKysrKystLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtdHVycmlzLW1veC5kdHMgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtdHVycmlzLW1veC5kdHMKPiBpbmRleCBkMTA1
OTg2YzZiZTEuLjVmMzUwY2M3MWEyZiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L21hcnZlbGwvYXJtYWRhLTM3MjAtdHVycmlzLW1veC5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtdHVycmlzLW1veC5kdHMKPiBAQCAtNjAsMTEgKzYw
LDYgQEAKPiAgCQlncGlvID0gPCZncGlvc2IgMCBHUElPX0FDVElWRV9ISUdIPjsKPiAgCX07Cj4g
IAo+IC0JdXNiM19waHk6IHVzYjMtcGh5IHsKPiAtCQljb21wYXRpYmxlID0gInVzYi1ub3AteGNl
aXYiOwo+IC0JCXZjYy1zdXBwbHkgPSA8JmV4cF91c2IzX3ZidXM+Owo+IC0JfTsKPiAtCj4gIAl2
c2RjX3JlZzogdnNkYy1yZWcgewo+ICAJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWdwaW8iOwo+
ICAJCXJlZ3VsYXRvci1uYW1lID0gInZzZGMiOwo+IEBAIC0yNTUsMTAgKzI1MCwxNiBAQAo+ICAJ
c3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+ICAKPiArJmNvbXBoeTIgewo+ICsJY29ubmVjdG9yIHsK
PiArCQljb21wYXRpYmxlID0gInVzYi1hLWNvbm5lY3RvciI7Cj4gKwkJcGh5LXN1cHBseSA9IDwm
ZXhwX3VzYjNfdmJ1cz47Cj4gKwl9Owo+ICt9Owo+ICsKPiAgJnVzYjMgewo+ICAJc3RhdHVzID0g
Im9rYXkiOwo+ICAJcGh5cyA9IDwmY29tcGh5MiAwPjsKPiAtCXVzYi1waHkgPSA8JnVzYjNfcGh5
PjsKPiAgfTsKPiAgCj4gICZtZGlvIHsKPiAtLSAKPiAyLjIxLjAKPgoKLS0gCkdyZWdvcnkgQ2xl
bWVudCwgQm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCmh0dHA6
Ly9ib290bGluLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
