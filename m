Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C15B89BC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 05:30:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ui+Fv6e39VA1bWj7Kd+ADl1uwg7nEsyqom6QGkmMTxc=; b=tOyYkpNkvale5l
	3rKNTr0fhKk/9yC5yM1tvxwPqYXgW+O3UY6cVJiPEw8Kcyfd/Zm5N+LCfS2ow0hSBKrsAj7a+kmfr
	LSYuMK60m4EcLOifPSiZsea43WUc/zD+YjcZv1adlc+3mC/Y9r8MFg7vOmszYP7/K+cAaqxUmQM0X
	KVd/agPfrSKMIOpFEBLb9otJ4/hZvkEcEMjivljxotBA4ECcPqrK7sisZmUnV7bnOwbvO1N8Td2D6
	TIJI/4yh5bOpZWRquzfGZVUiTuRtgW/4lCgBdC8T1SZu9/vMTCALjcNm7P8OiRGo/PQPRlWgqytZu
	DP59M44Fn8R1ZHSWa1AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB9cH-0005bF-Ln; Fri, 20 Sep 2019 03:29:53 +0000
Received: from [2601:1c0:6280:3f0::9a1f]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB9c6-0005ap-BV; Fri, 20 Sep 2019 03:29:42 +0000
Subject: Re: [PATCH 1/2] soc: ti: big cleanup of Kconfig file
To: santosh.shilimkar@oracle.com, LKML <linux-kernel@vger.kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>
References: <8437a1f9-18f2-dd03-4fea-de5ba71f25c9@infradead.org>
 <97a9a11e-7784-111e-c134-ef88bd6b51ec@oracle.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <7fd80120-1743-302c-ebc4-f5c7e9b0be05@infradead.org>
Date: Thu, 19 Sep 2019 20:29:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <97a9a11e-7784-111e-c134-ef88bd6b51ec@oracle.com>
Content-Language: en-US
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
Cc: Dave Gerlach <d-gerlach@ti.com>, Tony Lindgren <tony@atomide.com>,
 Keerthy <j-keerthy@ti.com>, Sandeep Nair <sandeep_n@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Olof Johansson <olof@lixom.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gOS8xOS8xOSA2OjE0IFBNLCBzYW50b3NoLnNoaWxpbWthckBvcmFjbGUuY29tIHdyb3RlOgo+
IE9uIDkvMTkvMTkgMzozMyBQTSwgUmFuZHkgRHVubGFwIHdyb3RlOgo+PiBGcm9tOiBSYW5keSBE
dW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4KPj4KPj4gQ2xlYW51cCBkcml2ZXJzL3NvYy90
aS9LY29uZmlnOgo+PiAtIGRlbGV0ZSBkdXBsaWNhdGUgd29yZHMKPj4gLSBlbmQgc2VudGVuY2Vz
IHdpdGggJy4nCj4+IC0gZml4IHR5cG9zL3NwZWxsb3MKPj4gLSBTdWJzeXN0ZW0gaXMgb25lIHdv
cmQKPj4gLSBjYXBpdGFsaXplIGFjcm9ueW1zCj4+IC0gcmVmbG93IGxpbmVzIHRvIGJlIDw9IDgw
IGNvbHVtbnMKPj4KPj4gRml4ZXM6IDQxZjkzYWY5MDBhMiAoInNvYzogdGk6IGFkZCBLZXlzdG9u
ZSBOYXZpZ2F0b3IgUU1TUyBkcml2ZXIiKQo+PiBGaXhlczogODgxMzllZDAzMDU4ICgic29jOiB0
aTogYWRkIEtleXN0b25lIE5hdmlnYXRvciBETUEgc3VwcG9ydCIpCj4+IEZpeGVzOiBhZmU3NjFm
OGQzZTkgKCJzb2M6IHRpOiBBZGQgcG0zM3h4IGRyaXZlciBmb3IgYmFzaWMgc3VzcGVuZCBzdXBw
b3J0IikKPj4gRml4ZXM6IDVhOTlhZTAwOTJmZSAoInNvYzogdGk6IHBtMzN4eDogQU00MzdYOiBB
ZGQgcnRjX29ubHkgd2l0aCBkZHIgaW4gc2VsZi1yZWZyZXNoIHN1cHBvcnQiKQo+PiBGaXhlczog
YTg2OWI3YjMwZGFjICgic29jOiB0aTogQWRkIFN1cHBvcnQgZm9yIEFNNjU0IFNvQyBjb25maWcg
b3B0aW9uIikKPj4gRml4ZXM6IGNmZjM3N2Y3ODk3YSAoInNvYzogdGk6IEFkZCBTdXBwb3J0IGZv
ciBKNzIxRSBTb0MgY29uZmlnIG9wdGlvbiIpCj4+IFNpZ25lZC1vZmYtYnk6IFJhbmR5IER1bmxh
cCA8cmR1bmxhcEBpbmZyYWRlYWQub3JnPgo+PiBDYzogT2xvZiBKb2hhbnNzb24gPG9sb2ZAbGl4
b20ubmV0Pgo+PiBDYzogU2FudG9zaCBTaGlsaW1rYXIgPHNzYW50b3NoQGtlcm5lbC5vcmc+Cj4+
IENjOiBTYW5kZWVwIE5haXIgPHNhbmRlZXBfbkB0aS5jb20+Cj4+IENjOiBEYXZlIEdlcmxhY2gg
PGQtZ2VybGFjaEB0aS5jb20+Cj4+IENjOiBLZWVydGh5IDxqLWtlZXJ0aHlAdGkuY29tPgo+PiBD
YzogVG9ueSBMaW5kZ3JlbiA8dG9ueUBhdG9taWRlLmNvbT4KPj4gQ2M6IGxpbnV4LWtlcm5lbEB2
Z2VyLmtlcm5lbC5vcmcKPj4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+PiAtLS0KPj4gQFNhbnRvc2g6IE1BSU5UQUlORVJTIHNheXMgdGhhdCB5b3UgbWFpbnRhaW4g
ZHJpdmVycy9zb2MvdGkvKiwKPj4gYnV0IHRoZXJlIGlzIG1vcmUgdGhhdCBLZXlzdG9uZS1yZWxh
dGVkIGNvZGUgaW4gdGhhdCBzdWJkaXJlY3RvcnkKPj4gbm93Li4uIGp1c3QgaW4gY2FzZSB5b3Ug
d2FudCB0byB1cGRhdGUgdGhhdCBpbmZvLgo+Pgo+IFllcyBhbSBhd2FyZSB0aGVyZSBtb3JlIGRy
aXZlcnMgYW5kIHNvIGZhciBJIGhhdmUgYmVlbiB0YWtpbmcKPiBjYXJlIG9mIGV2ZXJ5dGhpbmcg
aW4gZHJpdmVycy9zb2MvdGkvKgoKT0sgOikKCj4+IMKgIGRyaXZlcnMvc29jL3RpL0tjb25maWcg
fMKgwqAgMjAgKysrKysrKysrKy0tLS0tLS0tLS0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEwIGlu
c2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+Pgo+IFBhdGNoIGxvb2tzIGZpbmUgdG8gbWUu
IERvIHlvdSB3YW50IG1lIHRvIHBpY2sgdGhpcyB1cCA/Cj4gCgpZZXMsIHBsZWFzZS4KCi0tIAp+
UmFuZHkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
