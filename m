Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCD51B428D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 13:02:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/SmuH22i/AJD5+Y8DNkZ1ZOfaRthCiIUwl1PTitbXE=; b=CcpX2C+3d1w7W7
	vO9ehsKQwXjdOCSRoK0IM7xOvyYnNIjwoPoRQFdg05huya1d/mAB5tomsumTaxwp/nhJITzeaG9yc
	nfKUFnpgOI7Fg6RZG7bulILZ1/UTu1zd3Sc44XbxwRyrR8xXdB+6nkYbEjTFcjlE6YJbMO6JmckYa
	L/u9bk/0PpcJKZQVC78rpK0Q5XvvoXEAWDHCtMiLV3CiyKbWdtvTkdwz/bBmZ4GkoxZUkYRzErNm+
	0gP2mzlBbXakPARa9rLsWbP9iVlMoWpBEDobqHz+nlBJGpvHZMrp27vNG4qruoqjMVefV1d/LteHP
	qAW3cDG1jlEfQfUpO7UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRD9N-0000Ly-Pi; Wed, 22 Apr 2020 11:02:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRD9E-0000Kg-IE
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 11:02:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ABE1E31B;
 Wed, 22 Apr 2020 04:02:31 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8B6DB3F6CF;
 Wed, 22 Apr 2020 04:02:31 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
 id 451BC682F3D; Wed, 22 Apr 2020 12:02:30 +0100 (BST)
Date: Wed, 22 Apr 2020 12:02:30 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 09/17] mfd: vexpress-sysreg: Drop selecting
 CONFIG_CLKSRC_MMIO
Message-ID: <20200422110230.GU364558@e110455-lin.cambridge.arm.com>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-10-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419170810.5738-10-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_040232_647138_84BEDB91 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Sebastian Reichel <sre@kernel.org>, Kevin Brodsky <Kevin.Brodsky@arm.com>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBBcHIgMTksIDIwMjAgYXQgMTI6MDg6MDJQTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gTm90aGluZyBpbiB0aGUgVkV4cHJlc3Mgc3lzcmVncyBub3IgdGhlIE1GRCBjaGlsZCBk
cml2ZXJzIHVzZQo+IENPTkZJR19DTEtTUkNfTU1JTy4gVGhlcmUncyB0aGUgMjRNSHogY291bnRl
ciwgYnV0IHRoYXQncyBoYW5kbGVkIGJ5Cj4gZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci12ZXJz
YXRpbGUuYyB3aGljaCBkb2Vzbid0IHVzZQo+IENPTkZJR19DTEtTUkNfTU1JTyBlaXRoZXIuIFNv
IGxldCdzIGp1c3QgZHJvcCBDT05GSUdfQ0xLU1JDX01NSU8uCj4gCj4gQXMgdGhlICFBUkNIX1VT
RVNfR0VUVElNRU9GRlNFVCBkZXBlbmRlbmN5IHdhcyBhZGRlZCBmb3IKPiBDT05GSUdfQ0xLU1JD
X01NSU8sIHRoYXQgY2FuIGJlIGRyb3BwZWQsIHRvby4KPiAKPiBDYzogTGl2aXUgRHVkYXUgPGxp
dml1LmR1ZGF1QGFybS5jb20+CgpBY2tlZC1ieTogTGl2aXUgRHVkYXUgPGxpdml1LmR1ZGF1QGFy
bS5jb20+Cgo+IENjOiBTdWRlZXAgSG9sbGEgPHN1ZGVlcC5ob2xsYUBhcm0uY29tPgo+IENjOiBM
b3JlbnpvIFBpZXJhbGlzaSA8bG9yZW56by5waWVyYWxpc2lAYXJtLmNvbT4KPiBDYzogTGludXMg
V2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPgo+IENjOiBMZWUgSm9uZXMgPGxlZS5q
b25lc0BsaW5hcm8ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL0tjb25maWcgfCAzICstLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbWZkL0tjb25maWcgYi9kcml2ZXJzL21mZC9LY29uZmlnCj4gaW5kZXggMGE1OTI0OTE5
OGQzLi5iMTMxMWRlYTJkYTEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZmQvS2NvbmZpZwo+ICsr
KyBiL2RyaXZlcnMvbWZkL0tjb25maWcKPiBAQCAtMjAyOSw5ICsyMDI5LDggQEAgZW5kbWVudQo+
ICAKPiAgY29uZmlnIE1GRF9WRVhQUkVTU19TWVNSRUcKPiAgCWJvb2wgIlZlcnNhdGlsZSBFeHBy
ZXNzIFN5c3RlbSBSZWdpc3RlcnMiCj4gLQlkZXBlbmRzIG9uIFZFWFBSRVNTX0NPTkZJRyAmJiBH
UElPTElCICYmICFBUkNIX1VTRVNfR0VUVElNRU9GRlNFVAo+ICsJZGVwZW5kcyBvbiBWRVhQUkVT
U19DT05GSUcgJiYgR1BJT0xJQgo+ICAJZGVmYXVsdCB5Cj4gLQlzZWxlY3QgQ0xLU1JDX01NSU8K
PiAgCXNlbGVjdCBHUElPX0dFTkVSSUNfUExBVEZPUk0KPiAgCXNlbGVjdCBNRkRfQ09SRQo+ICAJ
c2VsZWN0IE1GRF9TWVNDT04KPiAtLSAKPiAyLjIwLjEKPiAKCi0tIAo9PT09PT09PT09PT09PT09
PT09PQp8IEkgd291bGQgbGlrZSB0byB8CnwgZml4IHRoZSB3b3JsZCwgIHwKfCBidXQgdGhleSdy
ZSBub3QgfAp8IGdpdmluZyBtZSB0aGUgICB8CiBcIHNvdXJjZSBjb2RlISAgLwogIC0tLS0tLS0t
LS0tLS0tLQogICAgwq9cXyjjg4QpXy/CrwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
