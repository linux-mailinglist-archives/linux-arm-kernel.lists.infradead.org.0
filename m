Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 387AD1D1015
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:43:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQaBXisZW0J3M8QjGvkgwM5/g5ZyvwSn8QE69+Iv+VU=; b=oe9FwbTUDSmSWV
	AO6XSWKFZTusmfAm+hh5eXVUbnHrZ4QQwRSn4NOhvcUT5vqiVHzUUe/VnTtQWL4fh7Ozx2Gsmp4UM
	mzA4KKOEO8g6vBsY/O9UfU/nDWaselyszSK/5yvYIA6EImuKTygc2iuWUWK0GdgvHxNamWNmilE5H
	nWpc/9AVAvQMaKDs+jYmvtNatp7+t/P+ZxcksMKAJ8Q6JCz7eN+GIN+kc8vEA0aYLrvOYsudThoLG
	pniE7jhP+N75RMSzdS2GhaVOfOqyoMbcZAJUBfb71LgqAWHOp8p67BkPz3jU0mpqEC2c0yMCNwndM
	Ke2EnZxdF7A3AWg+TYiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYor3-000841-Ud; Wed, 13 May 2020 10:43:13 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYopZ-0005Q2-7s
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:41:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A1977AC6D;
 Wed, 13 May 2020 10:41:39 +0000 (UTC)
Date: Wed, 13 May 2020 12:41:27 +0200
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: Stephen Warren <swarren@wwwdotorg.org>
Subject: Re: [PATCH 2/4] dt-bindings: sram: add documentation for
 reserved-only flag
Message-ID: <20200513104127.GA2309@suse.de>
References: <20200512144803.24344-1-ykaukab@suse.de>
 <20200512144803.24344-2-ykaukab@suse.de>
 <52f099e4-5c03-2141-f049-cd3adeb04c5b@wwwdotorg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52f099e4-5c03-2141-f049-cd3adeb04c5b@wwwdotorg.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_034141_427237_FC7FBF5F 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, jonathanh@nvidia.com,
 talho@nvidia.com, thierry.reding@gmail.com, linux-tegra@vger.kernel.org,
 robin.murphy@arm.com, afaerber@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMTIsIDIwMjAgYXQgMDE6NDU6MjhQTSAtMDYwMCwgU3RlcGhlbiBXYXJyZW4g
d3JvdGU6Cj4gT24gNS8xMi8yMCA4OjQ4IEFNLCBNaWFuIFlvdXNhZiBLYXVrYWIgd3JvdGU6Cj4g
PiBBZGQgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIG5ldyBvcHRpb25hbCBmbGFnIGFkZGVkIGZvciBT
UkFNIGRyaXZlci4KPiAKPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3Mvc3JhbS9zcmFtLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3Mvc3JhbS9zcmFtLnlhbWwKPiAKPiA+ICsgIHJlc2VydmVkLW9ubHk6Cj4gPiArICAgIGRlc2Ny
aXB0aW9uOgo+ID4gKyAgICAgIFRoZSBmbGFnIGluZGljYXRpbmcsIHRoYXQgb25seSBTUkFNIHJl
c2VydmVkIHJlZ2lvbnMgaGF2ZSB0byBiZSByZW1hcHBlZC4KPiA+ICsgICAgICByZW1hcHBpbmcg
dHlwZSBpcyBzZWxlY3RlZCBkZXBlbmRpbmcgdXBvbiBuby1tZW1vcnktd2MgYXMgdXN1YWwuCj4g
PiArICAgIHR5cGU6IGJvb2xlYW4KPiAKPiBUaGlzIGZlZWxzIGEgYml0IGxpa2UgYSBTVyBmbGFn
IHJhdGhlciB0aGFuIGEgSFcgZGVzY3JpcHRpb24sIHNvIEknbSBub3QKPiBzdXJlIGl0J3MgYXBw
cm9wcmlhdGUgdG8gcHV0IGl0IGludG8gRFQuCgpSZXNlcnZlZCByZWdpb25zIHRoZW1zZWx2ZXMg
YXJlIHNvZnR3YXJlIGRlc2NyaXB0aW9ucywgbm8/IFRoZW4gd2UgaGF2ZSAncG9vbCcKZmxhZyB3
aGljaCBpcyBhZ2FpbiBhIHNvZnR3YXJlIGZsYWcgYW5kIHNvIG9uLiBUaGlzIGZsYWcgZmFsbHMg
aW50byBzYW1lCmNhdGVnb3J5IGFuZCBub3RoaW5nIG91dCBvZiBvcmRpbmFyeS4KPiAKPiBBcmUg
dGhlcmUgYW55IGNhc2VzIHdoZXJlIHRoZSBTVyBzaG91bGQgbWFwIGFsbCBvZiB0aGUgU1JBTSwg
aS5lLiB3aGVyZQo+IHdlIHdvdWxkbid0IGV4cGVjdCB0byBzZXQgcmVzZXJ2ZWQtb25seT8gWy4u
Ll0KClllcywgaGVyZSBhcmUgYSBmZXcgZXhhbXBsZXM6CmFyY2gvYXJtL2Jvb3QvZHRzL2FzcGVl
ZC1nKi5kdHNpCmFyY2gvYXJtL2Jvb3QvZHRzL2F0OTEqLmR0c2kKYXJjaC9hcm0vYm9vdC9kdHMv
YmNtNzQ0NS5kdHNpClRoZW4gYXJjaC9hcm0vYm9vdC9kdHMvZHJhNy5kdHNpIGlzIGFuIGV4YW1w
bGUgd2hlcmUgd2Ugc2hvdWxkIG1hcCBldmVyeXRoaW5nCmV4Y2VwdCB0aGUgcmVzZXJ2ZWQgcmVn
aW9uLgoKPiBbLi4uXSBJJ2QgZXhwZWN0IHJlc2VydmVkLW9ubHkgdG8gYmUKPiB0aGUgZGVmYXVs
dCwgYW5kIHBlcmhhcHMgb25seSwgbW9kZSBvZiBvcGVyYXRpb24gZm9yIHRoZSBTUkFNIGRyaXZl
ci4KCkl0IHdpbGwgYnJlYWsgY29tcGF0aWJpbGl0eSB3aXRoIGV4aXN0aW5nIGR0YnMuCgo+IElm
IHdlIGNhbid0IGRvIHRoYXQgYmVjYXVzZSBzb21lIFNXIGN1cnJlbnRseSBleHBlY3RzIHRvIGJl
IGFibGUgdG8gbWFwCj4gYXJiaXRyYXJ5IHBvcnRpb25zIG9mIHRoZSBTUkFNLCBzaG91bGRuJ3Qg
dGhhdCBTVyBiZSBmaXhlZCB0byB0ZWxsIHRoZQo+IFNSQU0gZHJpdmVyIHdoaWNoIHBhcnRzIGl0
J3MgdXNpbmcsIGhlbmNlIHN0aWxsIGFsbG93aW5nIHRoZSBkcml2ZXIgdG8KPiBvbmx5IG1hcCBp
bi11c2UgcG9ydGlvbnM/CgpVc2VyIGRvZXNu4oCZdCBuZWVkIHNyYW0gZHJpdmVyIGluIHRoYXQg
Y2FzZS4gSXQgY2FuIHVzZSBnZW5hbGxvYyBhcGkgZGlyZWN0bHkuCgpCUiwKWW91c2FmCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
