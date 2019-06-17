Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 051E948FC0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 21:42:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ugT+CXwnDPKbgmteJKSmZHo6WuPTHqt7wXPy+OjY/lA=; b=r5anZOl2N736ZAcazZdJ/ihME
	RbW+8RGujhTg1jdcdYoJaB2X37crlSGGRoCs9cCGDSLuw7AE47J0m64qHaCnFZIBv36rGKHFN4zFT
	qW6NSpfkck4R4I7nIWCLrrhjKMLu6cjHh6ojgXYtHXEx/DP4L4O3Xcu0j8hgO1xenyYwBAj8fEgKQ
	Lszz3oRnYL4Uc2xMvSEyBwFOa8+UhuojvPhXMfGE+lq2HfFCvHPWtITNiZy+Nz35gLQIwotZ2EXr1
	tyFq60LWPOAKD9lZq792Apv2zUUPJqWAeZFCrOqfB3FBY9zoHT18E+7RUmF0aekS24qgZENFL0QSL
	5opNJncNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcxWb-0003bz-0e; Mon, 17 Jun 2019 19:42:41 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcxWO-0003bO-Ul
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 19:42:30 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5HJgQhb014546;
 Mon, 17 Jun 2019 14:42:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560800546;
 bh=OXjiS+8UpF2zY/61W6xFfGT6Jb8eSjrF0tnxlXIhGpI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=LArX8aBJp/5jwJJ0zcvOANjmJJgDDxPXINd+/m79fJ6Jy+KwLIdhFogW2vSiahtmA
 xxv+fFkw/23U9IU349WmEeQNpX1OQcFpEKIMJ64kl+krU/OBH/Di5UCTgsnWz5NW/K
 SNLsoOpGijZjUE+xkM8tN3YOodQvnk/iKhGY22XU=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5HJgQXB084710
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 17 Jun 2019 14:42:26 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 17
 Jun 2019 14:42:25 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 17 Jun 2019 14:42:25 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5HJgNvD058998;
 Mon, 17 Jun 2019 14:42:24 -0500
Subject: Re: [PATCH] arm64: dts: ti: k3-am65: Add MSMC RAM ranges in
 interconnect node
To: Suman Anna <s-anna@ti.com>, Nishanth Menon <nm@ti.com>
References: <20190529211344.18014-1-s-anna@ti.com>
 <20190530104903.ldcmkunjnk7a5y3c@akan>
 <3c53679c-4246-43e1-e6d6-2e1c7db201d7@ti.com>
 <b1f7aa31-4f3b-b9d9-6951-092f3a87d078@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <ac862030-6843-2906-3823-8e93da1b22da@ti.com>
Date: Mon, 17 Jun 2019 22:42:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <b1f7aa31-4f3b-b9d9-6951-092f3a87d078@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_124229_101146_C28B0FC0 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTcvMDYvMjAxOSAxODo1MywgU3VtYW4gQW5uYSB3cm90ZToKPiBPbiA2LzE3LzE5IDk6NTQg
QU0sIFRlcm8gS3Jpc3RvIHdyb3RlOgo+PiBPbiAzMC8wNS8yMDE5IDEzOjQ5LCBOaXNoYW50aCBN
ZW5vbiB3cm90ZToKPj4+IE9uIDE2OjEzLTIwMTkwNTI5LCBTdW1hbiBBbm5hIHdyb3RlOgo+Pj4+
IEZyb206IFJvZ2VyIFF1YWRyb3MgPHJvZ2VycUB0aS5jb20+Cj4+Pj4KPj4+PiBBZGQgdGhlIE1T
Q00gUkFNIGFkZHJlc3Mgc3BhY2UgdG8gdGhlIHJhbmdlcyBwcm9wZXJ0eSBvZiB0aGUgY2Jhc3Nf
bWFpbgo+Pj4+IGludGVyY29ubmVjdCBub2RlIHNvIHRoYXQgdGhlIGFkZHJlc3NlcyBjYW4gYmUg
dHJhbnNsYXRlZCBwcm9wZXJseS4KPj4+Pgo+Pj4+IFRoaXMgZml4ZXMgdGhlIHByb2JlIGZhaWx1
cmUgaW4gdGhlIHNyYW0gZHJpdmVyIGZvciB0aGUgTVNNQyBSQU0gbm9kZS4KPj4+Pgo+Pj4+IFNp
Z25lZC1vZmYtYnk6IFJvZ2VyIFF1YWRyb3MgPHJvZ2VycUB0aS5jb20+Cj4+Pj4gU2lnbmVkLW9m
Zi1ieTogU3VtYW4gQW5uYSA8cy1hbm5hQHRpLmNvbT4KPj4+PiAtLS0KPj4+Pgo+Pj4+IFRoZSBm
b2xsb3dpbmcgZXJyb3IgbWVzc2FnZSBpcyBzZWVuIHdpdGhvdXQgdGhpczoKPj4+PiBbwqDCoMKg
IDAuNDgwMjYxXSBzcmFtIGludGVyY29ubmVjdEAxMDAwMDA6c3JhbUA3MDAwMDAwMDogZm91bmQg
bm8KPj4+PiBtZW1vcnkgcmVzb3VyY2UKPj4+PiBbwqDCoMKgIDAuNDg3NDk3XSBzcmFtOiBwcm9i
ZSBvZiBpbnRlcmNvbm5lY3RAMTAwMDAwOnNyYW1ANzAwMDAwMDAKPj4+PiBmYWlsZWQgd2l0aCBl
cnJvciAtMjIKPj4+Pgo+Pj4+IHJlZ2FyZHMKPj4+PiBTdW1hbgo+Pj4+Cj4+Pj4gIMKgIGFyY2gv
YXJtNjQvYm9vdC9kdHMvdGkvazMtYW02NS5kdHNpIHwgMSArCj4+Pj4gIMKgIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvdGkvazMtYW02NS5kdHNpCj4+Pj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWFt
NjUuZHRzaQo+Pj4+IGluZGV4IDUwZjRiZTIwNDdhOS4uNjhiM2Y5NTRmMWQxIDEwMDY0NAo+Pj4+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtYW02NS5kdHNpCj4+Pj4gKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy90aS9rMy1hbTY1LmR0c2kKPj4+PiBAQCAtNjgsNiArNjgsNyBAQAo+
Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwweDAwIDB4MDA5MDAwMDAgMHgwMCAw
eDAwOTAwMDAwIDB4MDAgMHgwMDAxMjAwMD4sIC8qCj4+Pj4gc2VyZGVzICovCj4+Pj4gIMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDB4MDAgMHgwMTAwMDAwMCAweDAwIDB4MDEwMDAwMDAg
MHgwMCAweDBhZjAyNDAwPiwgLyoKPj4+PiBNb3N0IHBlcmlwaGVyYWxzICovCj4+Pj4gIMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDB4MDAgMHgzMDgwMDAwMCAweDAwIDB4MzA4MDAwMDAg
MHgwMCAweDBiYzAwMDAwPiwgLyoKPj4+PiBNQUlOIE5BVlNTICovCj4+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCA8MHgwMCAweDcwMDAwMDAwIDB4MDAgMHg3MDAwMDAwMCAweDAwIDB4MDAy
MDAwMDA+LCAvKgo+Pj4+IE1TTUMgU1JBTSAqLwo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIC8qIE1DVVNTIFJhbmdlICovCj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgPDB4MDAgMHgyODM4MDAwMCAweDAwIDB4MjgzODAwMDAgMHgwMCAweDAzODgwMDAwPiwKPj4+
PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MHgwMCAweDQwMjAwMDAwIDB4MDAgMHg0
MDIwMDAwMCAweDAwIDB4MDA5MDAxMDA+LAo+Pj4+IC0tIAo+Pj4+IDIuMjEuMAo+Pj4+Cj4+Pgo+
Pj4gQXJyZ2guLiBOaWNlIGNhdGNoLiBUaGFua3MuIFdlIHNob3VsZCBjb25zaWRlciBwdWxsaW5n
IHRoaXMgaW4gYXMgcGFydAo+Pj4gb2YgZWFybHkgcmMgZml4ZXMgcGxlYXNlLgo+Pj4KPj4+IEFj
a2VkLWJ5OiBOaXNoYW50aCBNZW5vbiA8bm1AdGkuY29tPgo+Pgo+PiBIbW0sIHdoYXQgaXMgdGhl
IGZhaWx1cmUgdGhpcyBjYXVzZXMsIGV4Y2VwdCB0aGUgcHJvYmUgbWVzc2FnZT8gU1JBTQo+PiBk
cml2ZXIgb2J2aW91c2x5IHdvbid0IHdvcmsgYnV0IGlzIGl0IHVzZWQgZm9yIGFueXRoaW5nIGF0
IHRoZSBtb21lbnQKPj4gYW55d2F5cz8KPj4KPj4gSSB3b3VsZCByYXRoZXIgcXVldWUgdGhpcyB0
b3dhcmRzIDUuMy4KPiAKPiBPSywgSSBhbSBmaW5lIGVpdGhlciB3YXkuCj4gCj4gcmVnYXJkcwo+
IFN1bWFuCj4gCgpPayB0aGFua3MsIHF1ZXVlZCB0b3dhcmRzIDUuMy4KClRoYXQgYmFzaWNhbGx5
IHNhdmVzIG1lIG9uZSBwdWxsLXJlcXVlc3QuIDopCgotVGVybwotLQpUZXhhcyBJbnN0cnVtZW50
cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4gWS10dW5udXMv
QnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
