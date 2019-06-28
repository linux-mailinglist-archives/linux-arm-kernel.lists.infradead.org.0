Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1A35936C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 07:31:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Sg/Yl2xSw2K4wta0M8+gN13FcsDNnBXqa5lFV2u6uTQ=; b=nqy5Vu//WkXBRpfsyGAkOx5aK
	69CmNyWQyPG8riXNKOmhAKHmQVv82i8SovAPSM86NjweNlO+iQ6m9nA3HTwe1tGdNgrBaV5SGxjJV
	suoMRlGuU5u4lvFlh0snrzPNLungosv0vfvnN7jOczXU3uvoQrStaxOwv+39J8HQXZnRZXzl2NtfG
	z6bFNxJ+r32HbmSM2nJ8vsC5m1l23AVVXZul0vzhPRZpHLTLUMB79i/l+jLMQkBsWHcj1TnkwhOA3
	sh37eY1mMfa2l2OdkQLqCJXM7d+Mn8dI0gy3gbjaAUS1nz5oNX733eNudmCUZe1PaKYc3NCg4e6wS
	HyIQIyxOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgjTv-0005gP-Ll; Fri, 28 Jun 2019 05:31:32 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgjTj-0005fk-AV
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 05:31:21 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5S5VBps018069;
 Fri, 28 Jun 2019 00:31:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561699871;
 bh=le/kLOgKWgcGqGCbF2xBtsGaEOEKQgL9XFusz99WkeA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=KbgV8x8zXO3WMbmYJmvPxMLaEiyMoy2ybzkc+1Jv7WTvmoVzj5+HXQTezb+hCXIe+
 6knPVYDjuoDzPbD8koQ8egH7OFuyEtoyU5tKIYZc/1TjK9NGhh6Nj70ktM2nT0e921
 vsJcJ6EddDMoXPR9HX/6o3eqRcxYYJxqclayrVa8=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5S5VBpb111235
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 28 Jun 2019 00:31:11 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 28
 Jun 2019 00:31:10 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 28 Jun 2019 00:31:10 -0500
Received: from [172.24.191.45] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5S5V77S094198;
 Fri, 28 Jun 2019 00:31:08 -0500
Subject: Re: [RESEND PATCH 00/10] crypto: k3: Add sa2ul driver
To: Eric Biggers <ebiggers@kernel.org>
References: <20190628042745.28455-1-j-keerthy@ti.com>
 <20190628045318.GC673@sol.localdomain>
 <7ca64e49-6e1f-c74e-4d8e-0e08607fe5c5@ti.com>
 <20190628052544.GH673@sol.localdomain>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <17f6aab0-653f-cdb9-37ed-53d0429e3e5d@ti.com>
Date: Fri, 28 Jun 2019 11:01:44 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190628052544.GH673@sol.localdomain>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_223119_464028_3D2E5650 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: nm@ti.com, devicetree@vger.kernel.org, herbert@gondor.apana.org.au,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyOC8wNi8xOSAxMDo1NSBBTSwgRXJpYyBCaWdnZXJzIHdyb3RlOgo+IE9uIEZyaSwgSnVu
IDI4LCAyMDE5IGF0IDEwOjQ0OjI2QU0gKzA1MzAsIGtlZXJ0aHkgd3JvdGU6Cj4+Cj4+Cj4+IE9u
IDYvMjgvMjAxOSAxMDoyMyBBTSwgRXJpYyBCaWdnZXJzIHdyb3RlOgo+Pj4gSGkgS2VlcnRoeSwK
Pj4+Cj4+PiBPbiBGcmksIEp1biAyOCwgMjAxOSBhdCAwOTo1NzozNUFNICswNTMwLCBLZWVydGh5
IHdyb3RlOgo+Pj4+IFRoZSBzZXJpZXMgYWRkcyBDcnlwdG8gaGFyZHdhcmUgYWNjZWxlcmF0b3Ig
c3VwcG9ydCBmb3IgU0EyVUwuCj4+Pj4gU0EyVUwgc3RhbmRzIGZvciBzZWN1cml0eSBhY2NlbGVy
YXRvciB1bHRyYSBsaXRlLgo+Pj4+Cj4+Pj4gVGhlIFNlY3VyaXR5IEFjY2VsZXJhdG9yIChTQTJf
VUwpIHN1YnN5c3RlbSBwcm92aWRlcyBoYXJkd2FyZQo+Pj4+IGNyeXB0b2dyYXBoaWMgYWNjZWxl
cmF0aW9uIGZvciB0aGUgZm9sbG93aW5nIHVzZSBjYXNlczoKPj4+PiDigKIgRW5jcnlwdGlvbiBh
bmQgYXV0aGVudGljYXRpb24gZm9yIHNlY3VyZSBib290Cj4+Pj4g4oCiIEVuY3J5cHRpb24gYW5k
IGF1dGhlbnRpY2F0aW9uIG9mIGNvbnRlbnQgaW4gYXBwbGljYXRpb25zCj4+Pj4gICAgIHJlcXVp
cmluZyBEUk0gKGRpZ2l0YWwgcmlnaHRzIG1hbmFnZW1lbnQpIGFuZAo+Pj4+ICAgICBjb250ZW50
L2Fzc2V0IHByb3RlY3Rpb24KPj4+PiBUaGUgZGV2aWNlIGluY2x1ZGVzIG9uZSBpbnN0YW50aWF0
aW9uIG9mIFNBMl9VTCBuYW1lZCBTQTJfVUwwCj4+Pj4KPj4+PiBTQTJVTCBuZWVkcyBvbiB0eCBj
aGFubmVsIGFuZCBhIHBhaXIgb2YgcnggZG1hIGNoYW5uZWxzLgo+Pj4+Cj4+Pj4gVGhpcyBzZXJp
ZXMgaGFzIGRlcGVuZGVuY3kgb24gVURNQSBzZXJpZXMuIEhlbmNlIGlzIGJhc2VkIG9uIHRvcCBv
ZjoKPj4+Pgo+Pj4+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1k
bWFlbmdpbmUvbGlzdC8/c2VyaWVzPTExNDEwNQo+Pj4+Cj4+Pj4gVGhlIGFib3ZlIHNlcmllcyBh
ZGRzIGNvdXBsZSBvZiBkbWFlbmdpbmUgQVBJcyB0aGF0IGFyZSB1c2VkCj4+Pj4gYnkgdGhlIHNh
MnVsIGRyaXZlci4gSGVuY2UgdGhlcmUgaXMgYSBoYXJkIGRlcGVuZGVuY3kgb24gdGhlCj4+Pj4g
YWJvdmUgc2VyaWVzLgo+Pj4+Cj4+Pj4gUmVzZW5kaW5nIHdpdGggbGludXgtY3J5cHRvIGxpc3Qg
aW4gQ2MuCj4+Pj4KPj4+PiBLZWVydGh5ICgxMCk6Cj4+Pj4gICAgIGR0LWJpbmRpbmdzOiBjcnlw
dG86IGszOiBBZGQgc2EydWwgYmluZGluZ3MgZG9jdW1lbnRhdGlvbgo+Pj4+ICAgICBjcnlwdG86
IHNhMnVsOiBBZGQgY3J5cHRvIGRyaXZlcgo+Pj4+ICAgICBjcnlwdG86IHNhMnVsOiBBZGQgQUVT
IEVDQiBNb2RlIHN1cHBvcnQKPj4+PiAgICAgY3J5cHRvOiBzYTJ1bDogQWRkIGFlYWQgc3VwcG9y
dCBmb3IgaG1hYyhzaGExKWNiYyhhZXMpIGFsZ29yaXRobQo+Pj4+ICAgICBjcnlwdG86IHNoYTI1
Nl9nZW5lcmljOiBFeHBvcnQgdGhlIFRyYW5zZm9ybSBmdW5jdGlvbgo+Pj4+ICAgICBjcnlwdG86
IHNhMnVsOiBBZGQgaG1hYyhzaGEyNTYpY2JjKGFlcykgQUVBRCBBbGdvIHN1cHBvcnQKPj4+PiAg
ICAgY3J5cHRvOiBzYTJ1bDogQWRkIGhtYWMoc2hhMSkgSE1BQyBhbGdvcml0aG0gc3VwcG9ydAo+
Pj4+ICAgICBjcnlwdG86IHNhMnVsOiBBZGQgaG1hYyhzaGEyNTYpIEhNQUMgYWxnb3JpdGhtIHN1
cHBvcnQKPj4+PiAgICAgc2EydWw6IEFkZCAzREVTIEVDQiAmIENCQyBNb2RlIHN1cHBvcnQKPj4+
PiAgICAgYXJtNjQ6IGR0czogazMtYW02OiBBZGQgY3J5cHRvIGFjY2VsYXJhdG9yIG5vZGUKPj4+
Pgo+Pj4+ICAgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2NyeXB0by9zYTJ1bC50eHQgICAgICB8
ICAgNDcgKwo+Pj4+ICAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtYW02NS1tYWluLmR0c2kg
ICAgICB8ICAgMzMgKwo+Pj4+ICAgIGNyeXB0by9zaGEyNTZfZ2VuZXJpYy5jICAgICAgICAgICAg
ICAgICAgICAgICB8ICAgIDMgKy0KPj4+PiAgICBkcml2ZXJzL2NyeXB0by9LY29uZmlnICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgIDE3ICsKPj4+PiAgICBkcml2ZXJzL2NyeXB0by9NYWtlZmls
ZSAgICAgICAgICAgICAgICAgICAgICAgfCAgICAxICsKPj4+PiAgICBkcml2ZXJzL2NyeXB0by9z
YTJ1bC5jICAgICAgICAgICAgICAgICAgICAgICAgfCAyMjMyICsrKysrKysrKysrKysrKysrCj4+
Pj4gICAgZHJpdmVycy9jcnlwdG8vc2EydWwuaCAgICAgICAgICAgICAgICAgICAgICAgIHwgIDM4
NCArKysKPj4+PiAgICBpbmNsdWRlL2NyeXB0by9zaGEuaCAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAgICAxICsKPj4+PiAgICA4IGZpbGVzIGNoYW5nZWQsIDI3MTcgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+Pj4+ICAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvY3J5cHRvL3NhMnVsLnR4dAo+Pj4+ICAgIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL2NyeXB0by9zYTJ1bC5jCj4+Pj4gICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvY3J5cHRvL3NhMnVsLmgKPj4+Cj4+PiBEaWQgeW91IHJ1biB0aGUgY3J5cHRvIHNlbGYt
dGVzdHMgb24gdGhpcyBkcml2ZXI/ICBpLmUuIGJvb3QgYSBrZXJuZWwgd2l0aAo+Pj4KPj4+IAkj
IENPTkZJR19DUllQVE9fTUFOQUdFUl9ESVNBQkxFX1RFU1RTIGlzIG5vdCBzZXQKPj4+IAlDT05G
SUdfREVCVUdfS0VSTkVMPXkKPj4+IAlDT05GSUdfQ1JZUFRPX01BTkFHRVJfRVhUUkFfVEVTVFM9
eQo+Pj4KPj4+IFdoYXQgYXJlIHRoZSByZXN1bHRzPwo+Pgo+PiBFcmljLAo+Pgo+PiBUaGFua3Mg
Zm9yIHlvdXIgcmVzcG9uc2UuIEkgZGlkIHRyeSB3aXRoIHRoYXQuIEFsbCB0ZXN0IGNhc2VzCj4+
IHdlcmUgcGFzc2luZyBvbiA0LjE5IGtlcm5lbCBiZWZvcmUgdGhlIHRlc3RtZ3IgcmV2YW1wLgo+
Pgo+IAo+IFRoYXQncyBzdXJwcmlzaW5nLCBzaW5jZSB5b3VyIGRyaXZlciBkb2Vzbid0IGltcGxl
bWVudCB1cGRhdGUoKSBmb3IgaGFzaGluZywgc28KPiBpdCBzaG91bGQgaGF2ZSBiZWVuIGZhaWxp
bmcgYXQgbGVhc3QgdGhlIEhNQUMgdGVzdHMuICBBcmUgeW91IHN1cmUgeW91IHJlYWxseQo+IHJh
biB0aGUgdGVzdHM/CgpZZXMgcGFydGlhbCB1cGRhdGUgd2FzIHRoZSBmYWlsaW5nIGNhc2UuCgo+
IAo+PiBDdXJyZW50bHkgZmV3IG9mIHRoZSB0ZXN0IGNhc2VzIGRvIGZhaWwuIEZvciBleDogQXBw
ZW5kaW5nCj4+IHRoZSBsYXN0IGl2bGVuIGJ5dGVzIG9mIGNpcGhlciB0ZXh0IGFzIHRoZSBJVi4K
PiAKPiBXZWxsLCB0aGVzZSBuZWVkIHRvIGJlIGZpeGVkLgoKT2theS4gU28gcGFzc2luZyBhbGwg
dGhlIGNyeXB0byBtYW5hZ2VyIHRlc3QgY2FzZXMgc2VlbXMgdG8gYmUgdGhlIApwcmVyZXF1aXNp
dGUuIEkgd2lsbCB3b3JrIG9uIHRoZW0uCgoKPiAKPj4KPj4+Cj4+PiBBbHNvLCB0aGlzIHBhdGNo
c2V0IGRvZXMgbm90IGNvbXBpbGUgZm9yIG1lLgo+Pgo+PiBUaGlzIGhhcyBkZXBlbmRlbmN5IG9u
IFVETUEgc2VyaWVzOgo+PiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzEwOTMw
OTY5Lwo+IAo+IEkgaGFkIHRoYXQgYXBwbGllZC4KCk9rYXkuIEkgd2lsbCBjaGVjayBpZiB0aGVy
ZSB3ZXJlIGFkZGl0aW9uYWwgcGF0Y2hlcyB0aGF0IHdlcmUgbmVlZGVkLgoKVGhhbmtzLApLZWVy
dGh5Cgo+IAo+IC0gRXJpYwo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
