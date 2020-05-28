Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3931E6E13
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 23:46:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uhNlCuuqM61wwpyZ7J+myOF3nB4hQ5V2aLAhhQqQbxM=; b=F2HWIhv3Oj9jkx
	Wz/rcf0yi1oSHj2Os9bRAgfC//F8mavDYCrvK0jUpGNkOAeIAd5BI9KtG13kBKoVTkzaM4cLKlfG8
	ZRdawaw0IIDLhaxIhnXpbnaQtpGPW1j9zQy/sPUtbkQPwrkYmTv5S7Xflaairu8IRPw+R3ozAOeyL
	StkojvAS9ZQ6GXqmpUoZHKhYbXodxpUApvNwtWKeT1iD3dE2UjUGDCggOQR7e4kp3v+kP9IKoT3ZQ
	1QVYBQmz1aDnpeeBi/JzbmKZGNL3XjdwaJ3HpKDyWnTmWGnV9GUejnt3pcv+9ID4A9aX+EQZaEV93
	iNiaSbVO6dria9nE/9dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeQML-00089L-VP; Thu, 28 May 2020 21:46:41 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeQM4-000876-EE
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 21:46:25 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id BF5BB2A8;
 Thu, 28 May 2020 23:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1590702381;
 bh=2kQLJ6ihq2PvrAL0aFkV0qdd4HEG8jQjlPEKzcWA4zI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aNNmYmnx/YtiaQVF0zhm6NKUhO6tyxYre9WWwiDlNS9QeKkblOPHKa6HLKEXjG+4j
 lNUPQzPegoZeRz0wrGN3ySSpAhmrl3OfbCK8+SDVn8I76Sr/WH83NJZ3j3uohoSBvM
 OYwD8YwyTzk36wLhNTnG1MiavALmhYO0KitlmpBg=
Date: Fri, 29 May 2020 00:46:07 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
Subject: Re: [PATCH v2 4/4] drm/bridge: tfp410: Fix setup and hold time
 calculation
Message-ID: <20200528214607.GB14756@pendragon.ideasonboard.com>
References: <20200514143612.2094-1-ricardo.canuelo@collabora.com>
 <20200514143612.2094-5-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514143612.2094-5-ricardo.canuelo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_144624_629451_26E2548B 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org, tomi.valkeinen@ti.com,
 kernel@collabora.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUmljYXJkbywKClRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgoKT24gVGh1LCBNYXkgMTQsIDIw
MjAgYXQgMDQ6MzY6MTJQTSArMDIwMCwgUmljYXJkbyBDYcOxdWVsbyB3cm90ZToKPiBUaGUgdGZw
NDEwIGhhcyBhIGRhdGEgZGUtc2tldyBmZWF0dXJlIHRoYXQgYWxsb3dzIHRoZSB1c2VyIHRvIGNv
bXBlbnNhdGUKPiB0aGUgc2tldyBiZXR3ZWVuIElEQ0sgYW5kIHRoZSBwaXhlbCBkYXRhIGFuZCBj
b250cm9sIHNpZ25hbHMuCj4gCj4gSW4gdGhlIGRyaXZlciwgdGhlIHNldHVwIGFuZCBob2xkIHRp
bWVzIGFyZSBjYWxjdWxhdGVkIGZyb20gdGhlIGRlLXNrZXcKPiB2YWx1ZS4gVGhpcyByZXRyaWV2
ZXMgdGhlIGRlc2tldyB2YWx1ZSBmcm9tIHRoZSBEVCB1c2luZyB0aGUgcHJvcGVyCj4gZGF0YXR5
cGUgYW5kIHJhbmdlIGNoZWNrIGFzIGRlc2NyaWJlZCBieSB0aGUgYmluZGluZyAodTMyIGZyb20g
MCB0byA3KQo+IGFuZCBmaXhlcyB0aGUgY2FsY3VsYXRpb24gb2YgdGhlIHNldHVwIGFuZCBob2xk
IHRpbWVzLgoKSG93IGFib3V0IG1lbnRpb25pbmcgdGhhdCB0aGUgZml4IHJlc3VsdHMgZnJvbSBh
IGNoYW5nZSBpbiB0aGUgRFQKYmluZGluZ3MgPyBPdGhlcndpc2UgaXQgc291bmRzIGl0IHdhcyBh
IGJ1ZyBpbiB0aGUgZHJpdmVyLgoKSSB3b3VsZCBhbHNvIG1lbnRpb24gdGhhdCB0aGUgcGF0Y2gg
Zml4ZXMgdGhlIG1pbigpIGNhbGN1bGF0aW9uLCB3aGljaAp3YXMgY2xlYXJseSB3cm9uZy4gSSB0
aGluayBJIHdvdWxkIGhhdmUgc3BsaXQgdGhpcyBpbiB0d28gcGF0Y2hlcy4KCldpdGggdGhpcyBh
ZGRyZXNzZWQsCgpSZXZpZXdlZC1ieTogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFy
dEBpZGVhc29uYm9hcmQuY29tPgoKPiBTaWduZWQtb2ZmLWJ5OiBSaWNhcmRvIENhw7F1ZWxvIDxy
aWNhcmRvLmNhbnVlbG9AY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2Jy
aWRnZS90aS10ZnA0MTAuYyB8IDEwICsrKysrLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2JyaWRnZS90aS10ZnA0MTAuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvdGktdGZwNDEw
LmMKPiBpbmRleCBlM2ViNjM2NGMwZjcuLjIxZDk5YjRlYTBjOSAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vYnJpZGdlL3RpLXRmcDQxMC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2Jy
aWRnZS90aS10ZnA0MTAuYwo+IEBAIC0yMjAsNyArMjIwLDcgQEAgc3RhdGljIGludCB0ZnA0MTBf
cGFyc2VfdGltaW5ncyhzdHJ1Y3QgdGZwNDEwICpkdmksIGJvb2wgaTJjKQo+ICAJc3RydWN0IGRl
dmljZV9ub2RlICplcDsKPiAgCXUzMiBwY2xrX3NhbXBsZSA9IDA7Cj4gIAl1MzIgYnVzX3dpZHRo
ID0gMjQ7Cj4gLQlzMzIgZGVza2V3ID0gMDsKPiArCXUzMiBkZXNrZXcgPSAwOwo+ICAKPiAgCS8q
IFN0YXJ0IHdpdGggZGVmYXVsdHMuICovCj4gIAkqdGltaW5ncyA9IHRmcDQxMF9kZWZhdWx0X3Rp
bWluZ3M7Cj4gQEAgLTI3NCwxMiArMjc0LDEyIEBAIHN0YXRpYyBpbnQgdGZwNDEwX3BhcnNlX3Rp
bWluZ3Moc3RydWN0IHRmcDQxMCAqZHZpLCBib29sIGkyYykKPiAgCX0KPiAgCj4gIAkvKiBHZXQg
dGhlIHNldHVwIGFuZCBob2xkIHRpbWUgZnJvbSB2ZW5kb3Itc3BlY2lmaWMgcHJvcGVydGllcy4g
Ki8KPiAtCW9mX3Byb3BlcnR5X3JlYWRfdTMyKGR2aS0+ZGV2LT5vZl9ub2RlLCAidGksZGVza2V3
IiwgKHUzMiAqKSZkZXNrZXcpOwo+IC0JaWYgKGRlc2tldyA8IC00IHx8IGRlc2tldyA+IDMpCj4g
KwlvZl9wcm9wZXJ0eV9yZWFkX3UzMihkdmktPmRldi0+b2Zfbm9kZSwgInRpLGRlc2tldyIsICZk
ZXNrZXcpOwo+ICsJaWYgKGRlc2tldyA+IDcpCj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gIAo+IC0J
dGltaW5ncy0+c2V0dXBfdGltZV9wcyA9IG1pbigwLCAxMjAwIC0gMzUwICogZGVza2V3KTsKPiAt
CXRpbWluZ3MtPmhvbGRfdGltZV9wcyA9IG1pbigwLCAxMzAwICsgMzUwICogZGVza2V3KTsKPiAr
CXRpbWluZ3MtPnNldHVwX3RpbWVfcHMgPSAxMjAwIC0gMzUwICogKChzMzIpZGVza2V3IC0gNCk7
Cj4gKwl0aW1pbmdzLT5ob2xkX3RpbWVfcHMgPSBtYXgoMCwgMTMwMCArIDM1MCAqICgoczMyKWRl
c2tldyAtIDQpKTsKPiAgCj4gIAlyZXR1cm4gMDsKPiAgfQoKLS0gClJlZ2FyZHMsCgpMYXVyZW50
IFBpbmNoYXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
