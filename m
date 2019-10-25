Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E3EE55CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 23:24:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FhL+lnhVp6m8krXQJdh4p+uD9CL3L/3S3nIzNz/ZeQ=; b=Krq1d3W0Fln0VM
	rz0dVGjbCV59Gz1dEZc355RpMFnOFNJGfLS/J2z5agj+74iRA01noWETlhgu0+kGJJrT5MlHApRwV
	o2V+JEhfhyPDgCUJoN1us0seN58BkkXMYuA4dVNm+fqWcFC4N0a2JeLPmcYNNt/QGWIS0/+h5xFCi
	+6Mnfj9vHGJ1JODTESiBsYy0S/BmYgPPHl+KLyEVIYElscB4twSBSXJRXmcLZrgTWo1erYAv6ifgk
	276mXkFiIyiVc7YVa6nKXxQdgP512iLCYqOx8w6pmwahJk2ErFZswR7UP+ZzEq0J9KEy20XwkiIbu
	9p/RvYG5Zq6f5n+IlBLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO74O-0005pa-JS; Fri, 25 Oct 2019 21:24:28 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO749-0005od-OP; Fri, 25 Oct 2019 21:24:15 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 040CDB1C1;
 Fri, 25 Oct 2019 21:24:09 +0000 (UTC)
Subject: Re: [PATCH v2 1/8] dt-bindings: watchdog: realtek: Convert RTD119x to
 schema
To: Rob Herring <robh@kernel.org>
References: <20191020040817.16882-1-afaerber@suse.de>
 <20191020040817.16882-2-afaerber@suse.de> <20191025211638.GA28819@bogus>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <aeb0d0ed-5649-9035-c753-39e8a1511c9d@suse.de>
Date: Fri, 25 Oct 2019 23:24:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191025211638.GA28819@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_142413_941115_B7F3677A 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-realtek-soc@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjUuMTAuMTkgdW0gMjM6MTYgc2NocmllYiBSb2IgSGVycmluZzoKPiBPbiBTdW4sIE9jdCAy
MCwgMjAxOSBhdCAwNjowODoxMEFNICswMjAwLCBBbmRyZWFzIEbDpHJiZXIgd3JvdGU6Cj4+IENv
bnZlcnQgdGhlIFJlYWx0ZWsgd2F0Y2hkb2cgYmluZGluZyB0byBhIFlBTUwgc2NoZW1hLgo+Pgo+
PiBTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Cj4+IC0t
LQo+PiAgdjI6IE5ldwo+PiAgCj4+ICAuLi4vYmluZGluZ3Mvd2F0Y2hkb2cvcmVhbHRlayxydGQx
MTl4LnR4dCAgICAgICAgICB8IDE3IC0tLS0tLS0tLS0KPj4gIC4uLi9iaW5kaW5ncy93YXRjaGRv
Zy9yZWFsdGVrLHJ0ZDExOXgueWFtbCAgICAgICAgIHwgMzggKysrKysrKysrKysrKysrKysrKysr
Kwo+PiAgMiBmaWxlcyBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkK
Pj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
d2F0Y2hkb2cvcmVhbHRlayxydGQxMTl4LnR4dAo+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy93YXRjaGRvZy9yZWFsdGVrLHJ0ZDExOXgueWFt
bAo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dh
dGNoZG9nL3JlYWx0ZWsscnRkMTE5eC50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3Mvd2F0Y2hkb2cvcmVhbHRlayxydGQxMTl4LnR4dAo+PiBkZWxldGVkIGZpbGUgbW9kZSAx
MDA2NDQKPj4gaW5kZXggMDU2NTMwNTRiZDViLi4wMDAwMDAwMDAwMDAKPj4gLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9nL3JlYWx0ZWsscnRkMTE5eC50eHQK
Pj4gKysrIC9kZXYvbnVsbAo+PiBAQCAtMSwxNyArMCwwIEBACj4+IC1SZWFsdGVrIFJURDEyOTUg
V2F0Y2hkb2cKPj4gLT09PT09PT09PT09PT09PT09PT09PT09PQo+PiAtCj4+IC1SZXF1aXJlZCBw
cm9wZXJ0aWVzOgo+PiAtCj4+IC0tIGNvbXBhdGlibGUgOiAgU2hvdWxkIGJlICJyZWFsdGVrLHJ0
ZDEyOTUtd2F0Y2hkb2ciCj4+IC0tIHJlZyAgICAgICAgOiAgU3BlY2lmaWVzIHRoZSBwaHlzaWNh
bCBiYXNlIGFkZHJlc3MgYW5kIHNpemUgb2YgcmVnaXN0ZXJzCj4+IC0tIGNsb2NrcyAgICAgOiAg
U3BlY2lmaWVzIG9uZSBjbG9jayBpbnB1dAo+PiAtCj4+IC0KPj4gLUV4YW1wbGU6Cj4+IC0KPj4g
LQl3YXRjaGRvZ0A5ODAwNzY4MCB7Cj4+IC0JCWNvbXBhdGlibGUgPSAicmVhbHRlayxydGQxMjk1
LXdhdGNoZG9nIjsKPj4gLQkJcmVnID0gPDB4OTgwMDc2ODAgMHgxMDA+Owo+PiAtCQljbG9ja3Mg
PSA8Jm9zYzI3TT47Cj4+IC0JfTsKPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy93YXRjaGRvZy9yZWFsdGVrLHJ0ZDExOXgueWFtbCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy93YXRjaGRvZy9yZWFsdGVrLHJ0ZDExOXgueWFtbAo+PiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjVkOTJjZmRmZDA0Ngo+
PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy93YXRjaGRvZy9yZWFsdGVrLHJ0ZDExOXgueWFtbAo+PiBAQCAtMCwwICsxLDM4IEBACj4+ICsj
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vci1sYXRlciBPUiBCU0QtMi1DbGF1
c2UpCj4+ICslWUFNTCAxLjIKPj4gKy0tLQo+PiArJGlkOiAiaHR0cDovL2RldmljZXRyZWUub3Jn
L3NjaGVtYXMvd2F0Y2hkb2cvcmVhbHRlayxydGQxMTl4LnlhbWwjIgo+PiArJHNjaGVtYTogImh0
dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIyIKPj4gKwo+PiArdGl0
bGU6IFJlYWx0ZWsgUlREMTI5NSBXYXRjaGRvZwo+PiArCj4+ICttYWludGFpbmVyczoKPj4gKyAg
LSBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Cj4+ICsKPj4gK2FsbE9mOgo+PiAr
ICAtICRyZWY6IHdhdGNoZG9nLnlhbWwjCj4+ICsKPj4gK3Byb3BlcnRpZXM6Cj4+ICsgIGNvbXBh
dGlibGU6Cj4+ICsgICAgb25lT2Y6Cj4+ICsgICAgICAtIGNvbnN0OiByZWFsdGVrLHJ0ZDEyOTUt
d2F0Y2hkb2cKPiAKPiBZb3UgY2FuIGRyb3AgdGhlICdvbmVPZicgaGVyZSB1bmxlc3MgeW91J3Jl
IHBsYW5uaW5nIHRvIGFkZCBhbm90aGVyIAo+IGVudHJ5IHdpdGggMiBjb21wYXRpYmxlIHN0cmlu
Z3MuCgpJdCdzIGEgcHJlcGFyYXRpb24gZm9yIGFkZGluZyBydGQxMTk1LXdhdGNoZG9nIHdoZW4g
bmVlZGVkLCB0byBtYWtlCmZ1dHVyZSBkaWZmcyBzbWFsbGVyLiBUaGVyZSdzIGFsc28gUlREMTM5
NSBhbmQgUlREMTYxOSB0byBiZSB0ZXN0ZWQuCgo+IAo+IFdpdGggdGhhdCwKPiAKPiBSZXZpZXdl
ZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KClRoYW5rcywKQW5kcmVhcwoKLS0g
ClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQw
OSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFH
IE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
