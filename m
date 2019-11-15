Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B1AFD31C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 04:03:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jP0HmJj2s6nVNM2eRUBr+Uia+m8VQjDs/cDny8AdHcA=; b=TbVvor4/Qktgod
	/88f9qh5Pn8/ixPyFryTV1IFKEThO6ZN5ZBiHgAM1oPfrWxEwZQf3cQIZSZltYPULxL5A0bQrEwOw
	b4zz/OGl9B++AsAJfCem+kojPh1eI0dhQsaZluWk8ndGVkODiT7Jv01r7O0EXEhtBSuurglADQldx
	IBz7NgVh5D7eBRTbUjmkLwK/VD+q3brOTLAn9rOaeqL+5N+wz6eAsIPj6sCJ2bKBYmUwOTf5iyiB0
	7yUdSpq4KBykuR0KfrUoUkSfqS0yzAs2goKTzRsJ6r5zFz2qYQYrXf2jwJVSMxn9+jjIe8MNTUpFY
	HGaRz/zTNW7B8xk+yoYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVRtU-00048g-Kp; Fri, 15 Nov 2019 03:03:32 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVRtL-00047r-Qz; Fri, 15 Nov 2019 03:03:25 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5F901AFCD;
 Fri, 15 Nov 2019 03:03:21 +0000 (UTC)
Subject: Re: [PATCH v3 0/2] arm64: dts: Initial RTD1619 SoC and Realtek
 Mjolnir EVB support
To: James Tai <james.tai@realtek.com>
References: <540b62715e77486485365081e992af76@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <44a543b9-988f-b56c-ca70-7d1faa40bffb@suse.de>
Date: Fri, 15 Nov 2019 04:03:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <540b62715e77486485365081e992af76@realtek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_190324_019774_BCEC1F3D 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, 'DTML' <devicetree@vger.kernel.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpBbSAxMi4xMS4xOSB1bSAxNjo0NSBzY2hyaWViIEphbWVzIFRhaToKPiBUaGlz
IHNlcmllcyBhZGRzIGluaXRpYWwgRGV2aWNlIFRyZWVzIGZvciBSZWFsdGVrIFJURDE2MTkgU29D
IGFuZAo+IFJlYWx0ZWsgTWpvbG5pciBFVkIuCj4gCj4gdjIgLT4gdjM6Cj4gKiBBZGp1c3QgdGhl
IGFkZHJlc3MtY2VsbHMgYW5kIGFkZHJlc3Mtc2l6ZSBwcm9wZXJ0eSBvZiByb290IG5vZGUKPiAq
IEFkanVzdCByYW5nZXMgcHJvcGVydHkgb2Ygci1idXMgbm9kZQo+ICogQWRqdXN0IHVhcnQgbm9k
ZSBhZGRyZXNzaW5nCj4gKiBBZGQgY29tbWVudHMgZm9yIHVhcnQgbm9kZQo+ICogUmV2ZXJ0IHNv
YyBub2RlCj4gCj4gdjEgLT4gdjI6Cj4gKiBEZWZpbmUgY29tcGF0aWJsZSBzdHJpbmdzIGZvciBS
ZWFsdGVrIFJURDE2MTkgU29DIGFuZCBSZWFsdGVrIE1qb2xuaXIKPiAqIEFkZCB1YXJ0MSBhbmQg
dWFydDIgZGV2aWNlIG5vZGUgaW50byBydGQxNnh4LmR0c2kKPiAqIG1vdmUgY3B1cyBub2RlIGFu
ZCB0aGUgaW50ZXJydXB0LWFmZmluaXR5IGludG8gcnRkMTZ4eC5kdHNpCj4gKiBTcGVjaWZ5IHRo
ZSByLWJ1cyByYW5nZXMKClNvbWUgb2JzZXJ2YXRpb25zIG9mIHdoYXQgaXMgbm90IGluIHRoaXMg
cGF0Y2hzZXQ6CgoqIFRoZXJlIGlzIG5laXRoZXIgL21lbXJlc2VydmUvIG5vciAvcmVzZXJ2ZWQt
bWVtb3J5IGhlcmUuIFdoYXQgYWJvdXQKQm9vdCBST00sIFRFRSBhbmQgUlBDPwoqIFRoZSByZXNl
dCBjb250cm9sbGVycyBmb3IgdGhlIFVBUlRzIGFyZSBtaXNzaW5nLiBDYW4gd2UgdGFrZSB0aGUg
c2FtZQpzaG9ydGN1dCBhcyBpbiBteSBSVEQxMzk1IHBhdGNoIHRvIGFkZCB0aGVtIG5vdywgaS5l
LiBhcmUgdGhleQpjb21wYXRpYmxlIHdpdGggUlREMTI5NT8KKiBJcyB0aGUgd2F0Y2hkb2cgaW5j
b21wYXRpYmxlLCBvciBpcyBpdCBqdXN0IG5vdCBlbmFibGVkIGJ5IHRoZQpib290bG9hZGVyIGFu
ZCBkZXBlbmRzIG9uIGZ1dHVyZSwgZS5nLiwgY2xrIHBhdGNoZXM/CiogSXMgdGhlIFJUQyBub3Qg
ZW5hYmxlZCBvbiBib290LCBzaW1pbGFyIHRvIHRoZSBvdGhlciBTb0NzPwoKUmVnYXJkcywKQW5k
cmVhcwoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3Ry
LiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIg
MzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
