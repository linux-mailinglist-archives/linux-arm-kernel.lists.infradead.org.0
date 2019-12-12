Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEEFB11CB8F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 11:57:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vzexiz1vCdFuW45EGYVeQKrUhofdKWU+NcZIoI0dI+s=; b=qvuuhS/9qEOrI3o4bSWKi4GME
	sKBFdVUbDUlAwqkkq7QbKXlDggzeYg5D370iRHK+RN80c4EAOgN+IuRObWP4anA6sNSUvLqKLi/nZ
	cXEia3ZPTgbdDUYfuu+W2BdSBELWGsS350bDg0Xps5TuaRoWuMJz8N7+DDzD26apoaUgMHyKj/mTl
	lJZFDgJsrpcifAcGrxC4S6F8bcdlIpkqCog/CQQpK4e8LXwRRnI1U4k6Ib23qLZ8SyKa990rUVDL6
	Ms9GR8I0OTbJRF3LjlbSFxJHngAaA3DNGF1ZpU2gSCKejNsyagY6BpSfNCVkCbUait7rQ5UPP9SW7
	/+0w64qpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifMA9-0002xm-Kc; Thu, 12 Dec 2019 10:57:41 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifM9z-0002xS-0D
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 10:57:33 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBCAvJ0l075674;
 Thu, 12 Dec 2019 04:57:19 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576148239;
 bh=9BJw21zKkA84h/GzKtFKJOUECkkIDuNyvEpYI8HhEao=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=CSSI9SjpAqK36uXcXIlV4NDzrF88HVW/Farf1jKmRFZdX5pxOKHjGhoI3BLd16STN
 O6somz67i8pDl312S2oR3Gluvv10jQw0Q0J74pXR8vL6VdvxlHhIfs6BvMqFnXkfaG
 npKJs2lxGSwYyg40w9fr3PS1Ez7ZiyOTeh3LIgJo=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBCAvJxf031510
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 12 Dec 2019 04:57:19 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 12
 Dec 2019 04:57:18 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 12 Dec 2019 04:57:18 -0600
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBCAvDHH016208;
 Thu, 12 Dec 2019 04:57:14 -0600
Subject: Re: [PATCH v7 00/12] dmaengine/soc: Add Texas Instruments UDMA support
From: Tero Kristo <t-kristo@ti.com>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <vkoul@kernel.org>,
 <robh+dt@kernel.org>, <nm@ti.com>, <ssantosh@kernel.org>,
 <marc.zyngier@arm.com>, <mbrugger@suse.com>, <okaya@kernel.org>
References: <20191209094332.4047-1-peter.ujfalusi@ti.com>
 <d2ba8ff9-56bd-538b-5f01-41a3b6f756c9@ti.com>
 <a89d971b-9de8-aaa0-0b13-b28ed561a9ce@ti.com>
Message-ID: <8742b5bc-b586-fc08-af94-63039e29949f@ti.com>
Date: Thu, 12 Dec 2019 12:57:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <a89d971b-9de8-aaa0-0b13-b28ed561a9ce@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_025731_136997_AB8635D5 
X-CRM114-Status: GOOD (  31.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, vigneshr@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 tony@atomide.com, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvMTIvMjAxOSAxMjo1NSwgVGVybyBLcmlzdG8gd3JvdGU6Cj4gT24gMTIvMTIvMjAxOSAx
MDo0NiwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+Cj4+Cj4+IE9uIDA5LzEyLzIwMTkgMTEuNDMs
IFBldGVyIFVqZmFsdXNpIHdyb3RlOgo+Pj4gSGksCj4+Pgo+Pj4gVmlub2QsIE5pc2hhbnRoLCBU
ZXJvLCBTYW50b3NoOiB0aGUgdGlfc2NpIHBhdGNoIGluIHRoaXMgc2VyaWVzIHdhcyBzZW50Cj4+
PiB1cHN0cmVhbSBvdmVyIGEgbW9udGggYWdvOgo+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bGttbC8yMDE5MTAyNTA4NDcxNS4yNTA5OC0xLXBldGVyLnVqZmFsdXNpQHRpLmNvbS8gCj4+Pgo+
Pj4KPj4+IEknbSBzdGlsbCB3YWl0aW5nIG9uIGl0J3MgZmF0ZSAoVGVybyBoYXMgZ2l2ZW4gaGlz
IHItYikuCj4+PiBUaGUgdGlfc2NpIHBhdGNoIGRpZCBub3QgbWFkZSBpdCB0byA1LjUtcmMxLCBi
dXQgSSBpbmNsdWRlZCBpdCBpbiB0aGUgCj4+PiBzZXJpZXMgYW5kCj4+PiBsZXQgdGhlIG1haW50
YWluZXJzIGRlY2lkZSBpZiBpdCBjYW4gZ28gdmlhIERNQWVuZ2luZSBmb3IgNS42IG9yIHRvIAo+
Pj4gbGF0ZXIKPj4+IHJlbGVhc2VzICg1LjYgcHJvYmFibHkgZm9yIHRoZSB0aV9zY2kgYW5kIDUu
NyBmb3IgdGhlIFVETUEgZHJpdmVyIAo+Pj4gcGF0Y2gpLgo+Pj4KPj4+IENoYW5nZXMgc2luY2Ug
djY6Cj4+PiAoaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LWRtYWVu
Z2luZS9saXN0Lz9zZXJpZXM9MjA5NDU1JnN0YXRlPSopIAo+Pj4KPj4+Cj4+PiAtIFVETUFQIERN
QWVuZ2luZSBkcml2ZXI6Cj4+PiDCoCAtIFNxdWFzaGVkIHRoZSBzcGxpdCBwYXRjaGVzCj4+PiDC
oCAtIFNxdWFzaGVkIHRoZSBlYXJseSBUWCBjb21wbGV0aW9uIGhhbmRsaW5nIHVwZGF0ZQo+Pj4g
ICAgIAo+Pj4gKGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1kbWFl
bmdpbmUvbGlzdC8/c2VyaWVzPTIxMDcxMyZzdGF0ZT0qKSAKPj4+Cj4+PiDCoCAtIEhhcmQgcmVz
ZXQgZml4IGZvciBSWCBjaGFubmVscyB0byBhdm9pZCBjaGFubmVsIGxvY2tkb3duCj4+PiDCoCAt
IENvcnJlY3QgY29tcGxldGVkIGRlc2NyaXB0b3IncyByZXNpZHVlIHZhbHVlCj4+Cj4+IEkgZ290
IGJ1aWxkIGZhaWx1cmUgd2l0aCBhbGxtb2Rjb25maWc6Cj4+Cj4+IEVSUk9SOiAiZGV2bV90aV9z
Y2lfZ2V0X29mX3Jlc291cmNlIiBbZHJpdmVycy9zb2MvdGkvazMtcmluZ2FjYy5rb10KPj4gdW5k
ZWZpbmVkIQo+PiBFUlJPUjogIm9mX21zaV9nZXRfZG9tYWluIiBbZHJpdmVycy9zb2MvdGkvazMt
cmluZ2FjYy5rb10gdW5kZWZpbmVkIQo+PiBFUlJPUjogImRldm1fdGlfc2NpX2dldF9vZl9yZXNv
dXJjZSIgW2RyaXZlcnMvZG1hL3RpL2szLXVkbWEua29dIAo+PiB1bmRlZmluZWQhCj4+IEVSUk9S
OiAib2ZfbXNpX2dldF9kb21haW4iIFtkcml2ZXJzL2RtYS90aS9rMy11ZG1hLmtvXSB1bmRlZmlu
ZWQhCj4+Cj4+IFRoZXkgYXJlIGJlY2F1c2UgYm90aCBkZXZtX3RpX3NjaV9nZXRfb2ZfcmVzb3Vy
Y2UgYW5kIG9mX21zaV9nZXRfZG9tYWluCj4+IGlzIG1pc3NpbmcgRVhQT1JUX1NZTUJPTF9HUEwo
KSwgc28gdGhleSBjYW4gbm90IGJlIHVzZWQgZnJvbSBtb2R1bGVzLgo+Pgo+PiBUaGVyZSB3ZXJl
IHBhdGNoZXMgaW4gdGhlIHBhc3QgdG8gYWRkIGl0IGZvciBvZl9tc2lfZ2V0X2RvbWFpbjoKPj4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzY2ODEyMy8KPj4gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzcxNjA0Ni8KPj4KPj4gSSBjYW4gbm90
IGZpbmQgYSByZWFzb24gd2h5IHRoZXNlIGFyZSBub3QgbWVyZ2VkLgo+PiBNYXR0aGlhcydzIHBh
dGNoIGxvb2tzIHRvIGJlIHRoZSBlYXJsaWVyIG9uZSwgaXMgaXQgT0sgaWYgSSByZXNlbmQgaXQK
Pj4gd2l0aGluIHY4Pwo+IAo+IFlvdSBjYW4ganVzdCBzZW5kIHRob3NlIHR3byBwYXRjaGVzIHNl
cGFyYXRlbHksIEkgY2FuIGFwcGx5IHRoZW0gZmlyc3QgCj4gYmVmb3JlIHRoaXMgc2VyaWVzLiBO
byBuZWVkIHRvIHJlc2VuZCB0aGlzIHNlcmllcy4KCk9vcHMsIHNvcnJ5IGFib3V0IHRoZSBub2lz
ZSwgSSBnb3QgY29uZnVzZWQgd2l0aCB0aGUgaW50ZXJuYWwgbWFpbGluZyAKbGlzdCBhbmQgdGhp
cyBvbmUgKHRyeWluZyB0byBnZXQgaXQgbWVyZ2VkIGludGVybmFsbHkgYXQgdGhlIHNhbWUgdGlt
ZS4pIApJZ25vcmUgbXkgY29tbWVudC4KCi1UZXJvCgo+IAo+Pgo+Pj4gQ2hhbmdlcyBzaW5jZSB2
NToKPj4+IChodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtZG1hZW5n
aW5lL2xpc3QvP3Nlcmllcz0yMDEwNTEmc3RhdGU9KikgCj4+Pgo+Pj4gLSBCYXNlZCBvbiA1LjQK
Pj4+Cj4+PiAtIGNwcGk1IGhlYWRlcgo+Pj4gwqAgLSBjbGVhciB0aGUgYml0cyBiZWZvcmUgc2V0
dGluZyBuZXcgdmFsdWUgd2l0aCAnfD0nCj4+Pgo+Pj4gLSBVRE1BUCBEVCBiaW5kaW5nczoKPj4+
IMKgIC0gdmFsaWQgY29tcGF0aWJsZXMgYXMgc2luZ2xlIGVudW0gbGlzdAo+Pj4KPj4+IC0gVURN
QVAgRE1BZW5naW5lIGRyaXZlcjoKPj4+IMKgIC0gRml4IHVkbWFfaXNfY2hhbl9ydW5uaW5nKCkK
Pj4+IMKgIC0gVXNlIGZsYWdzIGZvciBhY2MzMiwgYnVyc3Qgc3VwcG9ydCBpbnN0ZWFkIG9mIGEg
Ym9vbCBpbiAKPj4+IHVkbWFfbWF0Y2hfZGF0YQo+Pj4gwqDCoMKgIHN0cnVjdAo+Pj4gwqAgLSBU
RFRZUEUgaGFuZGxpbmcgKHRlYXJkb3duIGNvbXBsZXRpb24gaGFuZGxpbmcgZm9yIGo3MjFlKSBp
cyBtb3ZlZCAKPj4+IHRvIHNlcGFyYXRlCj4+PiDCoMKgwqAgcGF0Y2ggYXMgdGhlIHRpc2NpIGNv
cmUgcGF0Y2ggaGFzIG5vdCBtb3ZlZCBmb3Igb3ZlciBhIG1vbnRoLgo+Pj4gwqDCoMKgIEJvdGgg
dGlfc2NpIGFuZCB0aGUgaXRlcmF0aXZlIHBhdGNoIHRvIHVkbWEgaXMgaW5jbHVkZWQgaW4gdGhl
IAo+Pj4gc2VyaWVzLgo+Pj4KPj4+IENoYW5nZXMgc2luY2UgdjQKPj4+IChodHRwczovL3BhdGNo
d29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtZG1hZW5naW5lL2xpc3QvP3Nlcmllcz0xOTY2
MTkmc3RhdGU9KikgCj4+Pgo+Pj4gLSBCYXNlZCBvbiA1LjQtcmM3Cj4+Pgo+Pj4gLSByaW5nYWNj
IERUIGJpbmRpbmdzOgo+Pj4gwqAgLSBjbGFyaWZ5IHRoZSBtZWFuaW5nIG9mIHRpLHNjaS1kZXYt
aWQKPj4+Cj4+PiAtIHJpbmdhY2MgZHJpdmVyOgo+Pj4gwqAgLSBSZW1vdmUgJ2RlZmF1bHQgeScg
ZnJvbSBLY29uZmlnCj4+PiDCoCAtIEZpeCBzdHJ1Y3QgY29tbWVudHMKPj4+IMKgIC0gTW92ZSB0
cnlfbW9kdWxlX2dldCgpIGVhcmxpZXIgaW4gazNfcmluZ2FjY19yZXF1ZXN0X3JpbmcoKQo+Pj4K
Pj4+IC0gUFNJLUwgdGhyZWFkIGRhdGFiYXNlOgo+Pj4gwqAgLSBBZGQga2VybmVsIHN0eWxlIHN0
cnVjdC9lbnVtIGRvY3VtZW50YXRpb24KPj4+IMKgIC0gQWRkIG1pc3NpbmcgdGhyZWFkIGRlc2Ny
aXB0aW9uIGZvciBzYTJ1bCBzZWNvbmQgaW50ZXJmYWNlCj4+PiDCoCAtIENoYW5nZSBFWFBPUlRf
U1lNQk9MIHRvIEVYUE9SVF9TWU1CT0xfR1BMCj4+Pgo+Pj4gLSBVRE1BUCBEVCBiaW5kaW5nczoK
Pj4+IMKgIC0gbW92ZSB0byBkdWFsIGxpY2Vuc2UKPj4+IMKgIC0gY2hhbmdlIGNvbXBhdGlibGUg
ZnJvbSBjb25zdCB0byBlbnVtCj4+PiDCoCAtIGl0ZW1zIGRyb3BwZWQgZm9yIHRpLHNjaS1ybS1y
YW5nZXMtKgo+Pj4gwqAgLSBkZXNjcmlwdGlvbiB0ZXh0IG1vdmVkIGZyb20gbGl0ZXJhbCBibG9j
ayB3aGVuIGl0IGlzIHNlbnNpYmxlCj4+PiDCoCAtIGV4YW1wbGUgZml4ZWQgdG8gY29tcGlsZSBj
bGVhbmx5Cj4+PiDCoMKgIC0gYWRkZWQgcGFyZW50IHRvIHByb3ZpZGUgY29ycmVjdCBhZGRyZXNz
LWNlbGxzCj4+PiDCoMKgIC0gbmF2c3MgaXMgbW92ZWQgdG8gc2ltcGxlLW1mZCBmcm9tIHNpbXBs
ZS1idXMKPj4+Cj4+PiAtIFVETUFQIERNQWVuZ2luZSBkcml2ZXI6Cj4+PiDCoCAtIG1vdmUgZmRf
cmluZy9yX3JpbmcgdW5kZXIgcmZsb3cKPj4+IMKgIC0gZ2V0IHJpZCBvZiB1bnVzZWQgaW9tZW0g
Zm9yIHJmbG93cwo+Pj4gwqAgLSBSZW1vdmUgJ2RlZmF1bHQgeScgZnJvbSBLY29uZmlnCj4+PiDC
oCAtIFVzZSBkZWZpbmVzIGZvciByZmxvdyBzcmMvZHN0IHRhZyBzZWxlY3Rpb24KPj4+IMKgIC0g
TWVyZ2UgdGhlIHVkbWFfcmluZ19jYWxsYmFjaygpIGFuZCB1ZG1hX3RyX2V2ZW50X2NhbGxiYWNr
KCkgdG8gdGhlaXIKPj4+IMKgwqDCoCBjb3JyZXNwb25kaW5nIGludGVycnVwdCBoYW5kbGVyCj4+
PiDCoCAtIENyZWF0ZSBuZXcgZGVmaW5lcyBmb3IgdHgvcnggY2hhbm5lbCdzIHRpc2NpIHZhbGlk
IHBhcmFtZXRlciBmbGFncwo+Pj4gwqAgLSBSZW1vdmUgcmUtaW5pdGlhbGl6YXRpb24gdG8gMCBv
ZiB0aXNjaSByZXF1ZXN0IHN0cnVjdCBtZW1iZXJzCj4+PiDCoCAtIE1ha2Ugc3VyZSB0aGF0IHZj
aGFuIHRhc2tsZXRzIGFyZSBhbHNvIHN0b3BwZWQgd2hlbiByZW1vdmluZyB0aGUgCj4+PiBtb2R1
bGUKPj4+IMKgIC0gQWRkaXRpb25hbCBjaGVja3BhdGNoIC0tc3RyaWN0IGZpeGVzIHdoZW4gaXQg
bWFkZSBzZW5zZQo+Pj4gwqDCoCAtIG1ha2UgVz0xIHdhcyBjbGVhbgo+Pj4KPj4+IC0gVURNQVAg
Z2x1ZSBsYXllcjoKPj4+IMKgIC0gUmVtb3ZlICdkZWZhdWx0IHknIGZyb20gS2NvbmZpZwo+Pj4g
wqAgLSBjb21taXQgbWVzc2FnZSB1cGRhdGUgZm9yIGZlYXR1cmVzIG5lZWRpbmcgdGhlIGdsdWUg
bGF5ZXIKPj4+Cj4+PiBDaGFuZ2VzIHNpbmNlIHYzCj4+PiAoaHR0cHM6Ly9wYXRjaHdvcmsua2Vy
bmVsLm9yZy9wcm9qZWN0L2xpbnV4LWRtYWVuZ2luZS9saXN0Lz9zZXJpZXM9MTgwNjc5JnN0YXRl
PSopOiAKPj4+Cj4+PiAtIEJhc2VkIG9uIDUuNC1yYzUKPj4+IC0gRml4ZWQgdHlwb3MgcG9pbnRl
ZCBvdXQgYnkgVGVybwo+Pj4gLSBBZGRlZCByZXZpZXdlZC1ieSB0YWdzIGZyb20gVGVybwo+Pj4K
Pj4+IC0gcmluZyBhY2NlbGVyYXRvciBkcml2ZXIKPj4+IMKgIC0gVE9ET19HUyBpcyByZW1vdmVk
IGZyb20gdGhlIGhlYWRlcgo+Pj4gwqAgLSBwbV9ydW50aW1lIHJlbW92ZWQgYXMgTkFWU1MgYW5k
IGl0J3MgY29tcG9uZW50cyBhcmUgYWx3YXlzIG9uCj4+PiDCoCAtIENoZWNrIHZhbGlkaXR5IG9m
IE1lc3NhZ2UgbW9kZSBzZXR1cCAoZWxlbWVudCBzaXplID4gOCBieXRlcyBtdXN0IAo+Pj4gdXNl
IHByb3h5KQo+Pj4KPj4+IC0gY3BwaTUgaGVhZGVyCj4+PiDCoCAtIGFkZCBjb21taXQgbWVzc2Fn
ZQo+Pj4KPj4+IC0gVURNQVAgRFQgYmluZGluZ3MKPj4+IMKgIC0gRHJvcCB0aGUgcHNpbC1jb25m
aWcgbm9kZSB1c2Ugb24gdGhlIHJlbW90ZSBQU0ktTCBzaWRlIGFuZCB1c2UgCj4+PiBvbmx5IG9u
ZSBjZWxsCj4+PiDCoMKgwqAgd2hpY2ggaXMgdGhlIHJlbW90ZSB0aHJlYWRJRDoKPj4+Cj4+PiDC
oMKgwqDCoMKgIGRtYXMgPSA8Jm1haW5fdWRtYXAgMHhjNDAwPiwgPCZtYWluX3VkbWFwIDB4NDQw
MD47Cj4+PiDCoMKgwqDCoMKgIGRtYS1uYW1lcyA9ICJ0eCIsICJyeCI7Cj4+Pgo+Pj4gwqAgLSBU
aGUgUFNJLUwgdGhyZWFkIGNvbmZpZ3VyYXRpb24gZGVzY3JpcHRpb24gaXMgbW92ZWQgdG8ga2Vy
bmVsIGFzIAo+Pj4gYSBuZXcgbW9kdWxlOgo+Pj4gwqDCoMKgIGszLXBzaWwvazMtcHNpbC1hbTY1
NC9rMy1wc2lsLWo3MjFlCj4+PiDCoCAtIHRpLHBzaWwtYmFzZSBoYXMgYmVlbiByZW1vdmVkIGFu
ZCBtb3ZlZCB0byBrZXJuZWwKPj4+IMKgIC0gcmVtb3ZlZCB0aGUgbm8gbG9uZ2VyIG5lZWRlZCBk
dC1iaW5kaW5ncy9kbWEvazMtdWRtYS5oCj4+PiDCoCAtIENvbnZlcnQgdGhlIGRvY3VtZW50IHRv
IHNjaGVtYSAoeWFtbCkKPj4+Cj4+PiAtIE5FVyBQU0ktTCBlbmRwb2ludCBjb25maWd1cmF0aW9u
IGRhdGFiYXNlCj4+PiDCoCAtIGEgc2ltcGxlIGRhdGFiYXNlIGhvbGRpbmcgdGhlIHJlbW90ZSBl
bmQncyBjb25maWd1cmF0aW9uIG5lZWRlZCAKPj4+IGZvciBVRE1BUAo+Pj4gwqDCoMKgIGNvbmZp
Z3VyYXRpb24uIEFsbCBwcmV2aW91cyBwYXJhbWV0ZXJzIGZyb20gRFQgaGFzIGJlZW4gbW92ZWQg
Cj4+PiBoZXJlIGFuZCBtZXJnZWQKPj4+IMKgwqDCoCB3aXRoIHRoZSBsaW51eCBvbmx5IHRyIG1v
ZGUgY2hhbm5lbCBmbGFnLgo+Pj4gwqAgLSBDbGllbnQgZHJpdmVycyBjYW4gdXBkYXRlIHRoZSBy
ZW1vdGUgZW5kcG9pbnQgY29uZmlndXJhdGlvbiBhcyBpdCAKPj4+IGNhbiBiZQo+Pj4gwqDCoMKg
IGRpZmZlcmVudCBiYXNlZCBvbiBzeXN0ZW0gY29uZmlndXJhdGlvbiBhbmQgdGhlIGVuZHBvaW50
IGl0c2VsZiAKPj4+IGlzIHVuZGVyIHRoZQo+Pj4gwqDCoMKgIGNvbnRyb2wgb2YgdGhlIHBlcmlw
aGVyYWwgZHJpdmVyLgo+Pj4gwqAgLSBkYXRhYmFzZSBmb3IgYW02NTQgYW5kIGo3MjFlCj4+Pgo+
Pj4gLSBVRE1BUCBETUFlbmdpbmUgZHJpdmVyCj4+PiDCoCAtIHBtX3J1bnRpbWUgcmVtb3ZlZCBh
cyBOQVZTUyBhbmQgaXQncyBjb21wb25lbnRzIGFyZSBhbHdheXMgb24KPj4+IMKgIC0gcmNoYW5f
b2VzX29mZnNldCBhZGRlZCB0byBNU0kgZG9tbWFpbiBhbGxvY2F0aW9uCj4+PiDCoCAtIFVzZSB0
aGUgbmV3IFBTSS1MIGVuZHBvaW50IGRhdGFiYXNlIGZvciBVRE1BUCBjb25maWd1cmF0aW9uCj4+
PiDCoCAtIFN1cHBvcnQgZm9yIHdhaXRpbmcgZm9yIFBETUEgdGVhcmRvd24gY29tcGxldGlvbiBv
biBqNzIxZSBpbnN0ZWFkIG9mCj4+PiDCoMKgwqAgcmV0dXJuaW5nIHJpZ2h0IGF3YXkuIGRlcGVu
ZHMgb246Cj4+PiDCoMKgwqAgaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvMTAvMjUvMTg5Cj4+
PiDCoMKgwqAgTm90IGluY2x1ZGVkIGluIHRoaXMgc2VyaWVzLCBidXQgaXQgaXMgaW4gdGhlIGJy
YW5jaCBJIGhhdmUgCj4+PiBwcmVwYXJlZC4KPj4+IMKgIC0gcHNpbC1iYXNlIGlzIG1vdmVkIGZy
b20gRFQgdG8gYmUgcGFydCBvZiB1ZG1hX21hdGNoX2RhdGEKPj4+IMKgIC0gdHJfdGhyZWFkIG1h
cHMgaXMgcmVtb3ZlZCBhbmQgdXNpbmcgdGhlIFBTSS1MIGVuZHBvaW50IAo+Pj4gY29uZmlndXJh
dGlvbiBmb3IgaXQKPj4+Cj4+PiAtIFVETUFQIGdsdWUgbGF5ZXIKPj4+IMKgIC0gcG1fcnVudGlt
ZSByZW1vdmVkIGFzIE5BVlNTIGFuZCBpdCdzIGNvbXBvbmVudHMgYXJlIGFsd2F5cyBvbgo+Pj4g
wqAgLSBVc2UgdGhlIG5ldyBQU0ktTCBlbmRwb2ludCBkYXRhYmFzZSBmb3IgVURNQVAgY29uZmln
dXJhdGlvbgo+Pj4KPj4+IENoYW5nZXMgc2luY2UgdjIKPj4+IChodHRwczovL3BhdGNod29yay5r
ZXJuZWwub3JnL3Byb2plY3QvbGludXgtZG1hZW5naW5lL2xpc3QvP3Nlcmllcz0xNTI2MDkmc3Rh
dGU9KikgCj4+Pgo+Pj4gLSBCYXNlZCBvbiA1LjQtcmMxCj4+PiAtIFN1cHBvcnQgZm9yIEZsb3cg
b25seSBkYXRhIHRyYW5zZmVyIGZvciB0aGUgZ2x1ZSBsYXllcgo+Pj4KPj4+IC0gY3BwaTUgaGVh
ZGVyCj4+PiDCoCAtIGNvbW1lbnRzIGNvbnZlcnRlZCB0byBrZXJuZWwtZG9jIHN0eWxlCj4+PiDC
oCAtIFJlbW92ZSB0aGUgZXhjZXNzaXZlIFdBUk5fT05zIGFuZCByZWx5IG9uIHRoZSB1c2VyIGZv
ciBzYW5pdHkKPj4+IMKgIC0gbmV3IG1hY3JvIGZvciBjaGVja2luZyBUZWFyRG93biBDb21wbGV0
aW9uIE1lc3NhZ2UKPj4+Cj4+PiAtIHJpbmcgYWNjZWxlcmF0b3IgZHJpdmVyCj4+PiDCoCAtIGZp
eGVkIHVwIHRoIGNvbW1pdCBtZXNzYWdlIChTb0IsIFRJLVNDSSkKPj4+IMKgIC0gZml4ZWQgcmlu
ZyByZXNldAo+Pj4gwqAgLSBDT05GSUdfVElfSzNfUklOR0FDQ19ERUJVRyBpcyByZW1vdmVkIGFs
b25nIHdpdGggdGhlIAo+Pj4gZGJnX3dyaXRlL3JlYWQgZnVuY3Rpb25zCj4+PiDCoMKgwqAgYW5k
IHVzZSBkZXZfZGJnKCkKPj4+IMKgIC0gazNfcmluZ2FjY19yaW5nX2R1bXAoKSBpcyBtb3ZlZCB0
byBzdGF0aWMKPj4+IMKgIC0gc3RlcCBudW1iZXJpbmcgcmVtb3ZlZCBmcm9tIGszX3JpbmdhY2Nf
cmluZ19yZXNldF9kbWEoKQo+Pj4gwqAgLSBBZGQgY2xhcmlmaWNhdGlvbiBjb21tZW50IGZvciBz
aGFyZWQgcmluZyB1c2FnZSBpbiAKPj4+IGszX3JpbmdhY2NfcmluZ19jZmcoKQo+Pj4gwqAgLSBN
YWdpYyBzaGlmdCB2YWx1ZXMgaW4gazNfcmluZ2FjY19yaW5nX2NmZ19wcm94eSgpIGdvdCBkZWZp
bmVkCj4+PiDCoCAtIEszX1JJTkdBQ0NfUklOR19NT0RFX1FNIGlzIHJlbW92ZWQgYXMgaXQgaXMg
bm90IHN1cHBvcnRlZAo+Pj4KPj4+IC0gVURNQVAgRFQgYmluZGluZ3MKPj4+IMKgIC0gRml4IHBy
b3BlcnR5IHByZWZpeGluZzogcy9wZG1hLC90aSxwZG1hLQo+Pj4gwqAgLSBBZGQgdGksbm90ZHBr
dCBwcm9wZXJ0eSB0byBzdXBwcmVzcyB0ZWFyZG93biBjb21wbGV0aW9uIG1lc3NhZ2UgCj4+PiBv
biB0Y2hhbgo+Pj4gwqAgLSBleGFtcGxlIHVwZGF0ZWQgYWNjb3JkaW5nbHkKPj4+Cj4+PiAtIFVE
TUFQIERNQWVuZ2luZSBkcml2ZXIKPj4+IMKgIC0gQ2hhbmdlIF9fcmF3X3JlYWRsL3dyaXRlbCB0
byByZWFkbC93cml0ZWwKPj4+IMKgIC0gU3BsaXQgdXAgdGhlIHVkbWFfdGlzY2lfY2hhbm5lbF9j
b25maWcoKSBpbnRvIG0ybSwgdHggYW5kIHJ4IHRpc2NpCj4+PiDCoMKgwqAgY29uZmlndXJhdGlv
biBmdW5jdGlvbnMgZm9yIGNsYXJpdHkKPj4+IMKgIC0gRFQgYmluZGluZ3MgY2hhbmdlOiBzL3Bk
bWEsL3RpLHBkbWEtCj4+PiDCoCAtIENsZWFudXAgb2YgdWRtYV90eF9zdGF0dXMoKToKPj4+IMKg
wqAgLSByZXNpZHVlIGNhbGN1bGF0aW9uIGZpeCBmb3IgbTJtCj4+PiDCoMKgIC0gbm8gbmVlZCB0
byByZWFkIHBhY2tldCBjb3VudGVyIGFzIGl0IGlzIG5vdCB1c2VkCj4+PiDCoMKgIC0gcGVlciBi
eXRlIGNvdW50ZXIgb25seSBhdmFpbGFibGUgaW4gUERNQXMKPj4+IMKgwqAgLSBQcm9wZXIgbG9j
a2luZyB0byBhdm9pZCByYWNlIHdpdGggaW50ZXJydXB0IGhhbmRsZXIgKHBvbGxlZCBtMm0gCj4+
PiBmaXgpCj4+PiDCoCAtIFN1cHBvcnQgZm9yIHRpLG5vdGRwa3QKPj4+IMKgIC0gUkZMT1cgbWFu
YWdlbWVudCByZXdvcmsgdG8gc3VwcG9ydCBkYXRhIG1vdmVtZW50IHdpdGhvdXQgY2hhbm5lbDoK
Pj4+IMKgwqAgLSB0aGUgY2hhbm5lbCBpcyBub3QgY29udHJvbGxlZCBieSBMaW51eCBidXQgb3Ro
ZXIgY29yZSBhbmQgd2UgCj4+PiBvbmx5IGhhdmUKPj4+IMKgwqDCoMKgIHJmbG93cyBhbmQgcmlu
Z3MgdG8gZG8gdGhlIERNQSB0cmFuc2ZlcnMuCj4+PiDCoMKgwqDCoCBUaGlzIG1vZGUgaXMgb25s
eSBzdXBwb3J0ZWQgYnkgdGhlIEdsdWUgbGF5ZXIgZm9yIG5vdy4KPj4+Cj4+PiAtIFVETUFQIGds
dWUgbGF5ZXIKPj4+IMKgIC0gRGVidWcgcHJpbnQgaW1wcm92ZW1lbnRzCj4+PiDCoCAtIFN1cHBv
cnQgZm9yIHJmbG93L3Jpbmcgb25seSBkYXRhIG1vdmVtZW50Cj4+Pgo+Pj4gQ2hhbmdlcyBzaW5j
ZSB2MQo+Pj4gKGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1kbWFl
bmdpbmUvbGlzdC8/c2VyaWVzPTExNDEwNSZzdGF0ZT0qKSAKPj4+Cj4+PiAtIEFkZGVkIHN1cHBv
cnQgZm9yIGo3MjFlCj4+PiAtIEJhc2VkIG9uIDUuMy1yYzIKPj4+IC0gZHJvcHBlZCB0aV9zY2kg
QVBJIHBhdGNoIGZvciBSTSBtYW5hZ2VtZW50IGFzIGl0IGlzIGFscmVhZHkgdXBzdHJlYW0KPj4+
IC0gZHJvcHBlZCBkbWFkZXZfZ2V0X3NsYXZlX2NoYW5uZWwoKSBwYXRjaCwgdXNpbmcgCj4+PiBf
X2RtYV9yZXF1ZXN0X2NoYW5uZWwoKQo+Pj4gLSBBZGRlZCBSb2IncyBSZXZpZXdlZC1ieSB0byBy
aW5nYWNjIERUIGJpbmRpbmcgZG9jdW1lbnQgcGF0Y2gKPj4+IC0gRFQgYmluZGluZ3MgY2hhbmdl
czoKPj4+IMKgIC0gbGludXgsdWRtYS1tb2RlIGlzIGdvbmUsIEkgaGF2ZSBhIHNpbXBsZSBsb29r
dXAgdGFibGUgaW4gdGhlIAo+Pj4gZHJpdmVyIHRvIGZsYWcKPj4+IMKgwqDCoCBUUiBjaGFubmVs
cy4KPj4+IMKgIC0gU3VwcG9ydCBmb3IgajcyMWUKPj4+IC0gRml4IGJ1ZyBpbiBvZl9ub2RlX3B1
dCgpIGhhbmRsaW5nIGluIHhsYXRlIGZ1bmN0aW9uCj4+Pgo+Pj4gQ2hhbmdlcyBzaW5jZSBSRkMg
KGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvY292ZXIvMTA2MTI0NjUvKToKPj4+IC0gQmFz
ZWQgb24gbGludXgtbmV4dCAoMjAxOTA1MDYpIHdoaWNoIG5vdyBoYXZlIHRoZSB0aV9zY2kgaW50
ZXJydXB0IAo+Pj4gc3VwcG9ydAo+Pj4gLSBUaGUgc2VyaWVzIGNhbiBiZSBhcHBsaWVkIGFuZCB0
aGUgVURNQSB2aWEgRE1BZW5naW5lIEFQSSB3aWxsIGJlIAo+Pj4gZnVuY3Rpb25hbAo+Pj4gLSBJ
bmNsdWRlZCBpbiB0aGUgc2VyaWVzOiB0aV9zY2kgUmVzb3VyY2UgbWFuYWdlbWVudCBBUEksIGNw
cGk1IAo+Pj4gaGVhZGVyIGFuZAo+Pj4gwqDCoCBkcml2ZXIgZm9yIHRoZSByaW5nIGFjY2VsZXJh
dG9yLgo+Pj4gLSBUaGUgRE1BZW5naW5lIGNvcmUgcGF0Y2hlcyBoYXZlIGJlZW4gdXBkYXRlZCBh
cyBwZXIgdGhlIHJldmlldyAKPj4+IGNvbW1lbnRzIGZvcgo+Pj4gwqDCoCBlYXJsaWVyIHN1Ym1p
dHRpb24uCj4+PiAtIFRoZSBETUFlbmdpbmUgZHJpdmVyIHBhdGNoIGlzIGFydGlmaWNpYWxseSBz
cGxpdCB1cCB0byA2IHNtYWxsZXIgCj4+PiBwYXRjaGVzCj4+Pgo+Pj4gVGhlIGszLXVkbWEgZHJp
dmVyIGltcGxlbWVudHMgdGhlIERhdGEgTW92ZW1lbnQgQXJjaGl0ZWN0dXJlIAo+Pj4gZGVzY3Jp
YmVkIGluCj4+PiBBTTY1eCBUUk0gKGh0dHA6Ly93d3cudGkuY29tL2xpdC9wZGYvc3BydWlkNykg
YW5kCj4+PiBqNzIxZSBUUk0gKGh0dHA6Ly93d3cudGkuY29tL2xpdC9wZGYvc3BydWlsMSkKPj4+
Cj4+PiBUaGlzIERNQSBhcmNoaXRlY3R1cmUgaXMgYSBiaWcgZGVwYXJ0dXJlIGZyb20gJ3RyYWRp
dGlvbmFsJyAKPj4+IGFyY2hpdGVjdHVyZSB3aGVyZQo+Pj4gd2UgaGFkIGVpdGhlciBFRE1BIG9y
IHNETUEgYXMgc3lzdGVtIERNQS4KPj4+Cj4+PiBQYWNrZXQgRE1BcyB3ZXJlIHVzZWQgYXMgZGVk
aWNhdGVkIERNQXMgdG8gc2VydmljZSBvbmx5IG5ldHdvcmtpbmcgCj4+PiAoS2VzeXRvbmUyKQo+
Pj4gb3IgVVNCIChhbTMzNXgpIHdoaWxlIG90aGVyIHBlcmlwaGVyYWxzIHdlcmUgc2VydmljZWQg
YnkgRURNQS4KPj4+Cj4+PiBJbiBBTTY1eC9qNzIxZSB0aGUgVURNQSAoVW5pZmllZCBETUEpIGlz
IHVzZWQgZm9yIGFsbCBkYXRhIG1vdm1lbnQgCj4+PiB3aXRoaW4gdGhlCj4+PiBTb0MsIHRhc2tl
ZCB0byBzZXJ2aWNlIGFsbCBwZXJpcGhlcmFscyAoVUFSVCwgTWNTUEksIE1jQVNQLCAKPj4+IG5l
dHdvcmtpbmcsIGV0YykuCj4+Pgo+Pj4gVGhlIE5BVlNTL1VETUEgaXMgYnVpbHQgYXJvdW5kIENQ
UEk1IChDb21tdW5pY2F0aW9ucyBQb3J0IFByb2dyYW1taW5nIAo+Pj4gSW50ZXJmYWNlKQo+Pj4g
YW5kIGl0IHN1cHBvcnRzIFBhY2tldCBtb2RlIChzaW1pbGFyIHRvIENQUEk0LjEgaW4gS2V5c3Rv
bmUyIGZvciAKPj4+IG5ldHdvcmtpbmcpIGFuZAo+Pj4gVFIgbW9kZSAoc2ltaWxhciB0byBFRE1B
IGRlc2NyaXB0b3IpLgo+Pj4gVGhlIGRhdGEgbW92ZW1lbnQgaXMgZG9uZSB3aXRoaW4gYSBQU0kt
TCBmYWJyaWMsIHBlcmlwaGVyYWxzIAo+Pj4gKGluY2x1ZGluZyB0aGUKPj4+IFVETUEtUCkgYXJl
IG5vdCBhZGRyZXNzZWQgYnkgdGhlaXIgSS9PIHJlZ2lzdGVyIGFzIHdpdGggdHJhZGl0aW9uYWwg
Cj4+PiBETUFzIGJ1dAo+Pj4gd2l0aCB0aGVpciBQU0ktTCB0aHJlYWQgSUQuCj4+Pgo+Pj4gSW4g
QU02NXgvajcyMWUgd2UgaGF2ZSB0d28gbWFpbiB0eXBlIG9mIHBlcmlwaGVyYWxzOgo+Pj4gTGVn
YWN5OiBNY0FTUCwgTWNTUEksIFVBUlQsIGV0Yy4KPj4+IMKgIHRvIHByb3ZpZGUgY29ubmVjdGl2
aXR5IHRoZXkgYXJlIHNlcnZpY2VkIGJ5IFBETUEgKFBlcmlwaGVyYWwgRE1BKQo+Pj4gwqAgUERN
QSB0aHJlYWRzIGFyZSBsb2NrZWQgdG8gc2VydmljZSBhIGdpdmVuIHBlcmlwaGVyYWwsIGZvciBl
eGFtcGxlIAo+Pj4gUFNJLUwgdGhyZWFkCj4+PiDCoCAweDQ0MDAvMHhjNDAwIGlzIHRvIHNlcnZp
Y2UgTWNBU1AwIHJ4L3R4Lgo+Pj4gwqAgVGhlIFBETWEgY29uZmlndXJhdGlvbiBjYW4gYmUgZG9u
ZSB2aWEgdGhlIFVETUEgUmVhbCBUaW1lIFBlZXIgCj4+PiByZWdpc3RlcnMuCj4+PiBOYXRpdmU6
IE5ldHdvcmtpbmcsIHNlY3VyaXR5IGFjY2VsZXJhdG9yCj4+PiDCoCB0aGVzZSBwZXJpcGhlcmFs
cyBoYXZlIG5hdGl2ZSBzdXBwb3J0IGZvciBQU0ktTC4KPj4+Cj4+PiBUbyBiZSBhYmxlIHRvIHVz
ZSB0aGUgRE1BIHRoZSBmb2xsb3dpbmcgZ2VuZXJpYyBzdGVwcyBuZWVkIHRvIGJlIHRha2VuOgo+
Pj4gLSBjb25maWd1cmUgYSBETUEgY2hhbm5lbCAodGNoYW4gZm9yIFRYLCByY2hhbiBmb3IgUlgp
Cj4+PiDCoCAtIGNoYW5uZWwgbW9kZTogUGFja2V0IG9yIFRSIG1vZGUKPj4+IMKgIC0gZm9yIG1l
bWNweSBhIHRjaGFuIGFuZCByY2hhbiBwYWlyIGlzIHVzZWQuCj4+PiDCoCAtIGZvciBwYWNrZXQg
bW9kZSBSWCB3ZSBhbHNvIG5lZWQgdG8gY29uZmlndXJlIGEgcmVjZWl2ZSBmbG93IHRvIAo+Pj4g
Y29uZmlndXJlIHRoZQo+Pj4gwqDCoMKgIHBhY2tldCByZWNlaXB0aW9uCj4+PiAtIHRoZSBzb3Vy
Y2UgYW5kIGRlc3RpbmF0aW9uIHRocmVhZHMgbXVzdCBiZSBwYWlyZWQKPj4+IC0gYXQgbWluaW11
bSBvbmUgcGFpciBvZiByaW5ncyBuZWVkIHRvIGJlIGNvbmZpZ3VyZWQ6Cj4+PiDCoCAtIHR4OiB0
cmFuc2ZlciByaW5nIGFuZCB0cmFuc2ZlciBjb21wbGV0aW9uIHJpbmcKPj4+IMKgIC0gcng6IGZy
ZWUgZGVzY3JpcHRvciByaW5nIGFuZCByZWNlaXZlIHJpbmcKPj4+IC0gdHdvIGludGVycnVwdHM6
IFVETUEtUCBjaGFubmVsIGludGVycnVwdCBhbmQgcmluZyBpbnRlcnJ1cHQgZm9yIAo+Pj4gdGNf
cmluZy9yX3JpbmcKPj4+IMKgIC0gSWYgdGhlIGNoYW5uZWwgaXMgaW4gcGFja2V0IG1vZGUgb3Ig
Y29uZmlndXJlZCB0byBtZW1jcHkgdGhlbiB3ZSAKPj4+IG9ubHkgbmVlZAo+Pj4gwqDCoMKgIG9u
ZSBpbnRlcnJ1cHQgZnJvbSB0aGUgcmluZywgZXZlbnRzIGZyb20gVURNQVAgaXMgbm90IHVzZWQu
Cj4+Pgo+Pj4gV2hlbiB0aGUgY2hhbm5lbCBzZXR1cCBpcyBjb21wbGV0ZWQgd2Ugb25seSBpbnRl
cnJhY3Qgd2l0aCB0aGUgcmluZ3M6Cj4+PiAtIFRYOiBwdXNoIGEgZGVzY3JpcHRvciB0byB0X3Jp
bmcgYW5kIHdhaXQgZm9yIGl0IHRvIGJlIHB1c2hlZCB0byB0aGUgCj4+PiB0Y19yaW5nIGJ5Cj4+
PiDCoMKgIHRoZSBVRE1BLVAKPj4+IC0gUlg6IHB1c2ggYSBkZXNjcmlwdG9yIHRvIHRoZSBmZF9y
aW5nIGFuZCB3YWl0aCBmb3IgVURNQS1QIHRvIHB1c2ggCj4+PiBpdCBiYWNrIHRvCj4+PiDCoMKg
IHRoZSByX3JpbmcuCj4+Pgo+Pj4gU2luY2Ugd2UgaGF2ZSBGSUZPcyBpbiB0aGUgRE1BIGZhYnJp
YyAoVURNQS1QLCBQU0ktTCBhbmQgUERNQSkgd2hpY2ggCj4+PiB3YXMgbm90IHRoZQo+Pj4gY2Fz
ZSBpbiBwcmV2aW91cyBETUFzIHdlIG5lZWQgdG8gcmVwb3J0IHRoZSBhbW91bnQgb2YgZGF0YSBo
ZWxkIGluIAo+Pj4gdGhlc2UgRklGT3MKPj4+IHRvIGNsaWVudHMgKGRlbGF5IGNhbGN1bGF0aW9u
IGZvciBBTFNBLCBVQVJUIEZJRk8gZmx1c2ggc3VwcG9ydCkuCj4+Pgo+Pj4gTWV0YWRhdGEgc3Vw
cG9ydDoKPj4+IERNQWVuZ2luZSB1c2VyIGRyaXZlciB3YXMgcG9zdGVkIHVwc3RyZWFtIGJhc2Vk
L3Rlc3RlZCBvbiB0aGUgdjEgb2YgCj4+PiB0aGUgVURNQQo+Pj4gc2VyaWVzOiBodHRwczovL2xr
bWwub3JnL2xrbWwvMjAxOS82LzI4LzIwCj4+PiBTQTJVTCBpcyB1c2luZyB0aGUgbWV0YWRhdGEg
RE1BZW5naW5lIEFQSS4KPj4+Cj4+PiBOb3RlIG9uIHRoZSBsYXN0IHBhdGNoOgo+Pj4gSW4gS2V5
c3RvbmUyIHRoZSBuZXR3b3JraW5nIGhhZCBkZWRpY2F0ZWQgRE1BIChwYWNrZXQgRE1BKSB3aGlj
aCBpcyAKPj4+IG5vdCB0aGUgY2FzZQo+Pj4gYW55bW9yZSBhbmQgdGhlIERNQWVuZ2luZSBBUEkg
Y3VycmVudGx5IG1pc3Npbmcgc3VwcG9ydCBmb3IgdGhlIAo+Pj4gZmVhdHVyZXMgd2UKPj4+IHdv
dWxkIG5lZWQgdG8gc3VwcG9ydCBuZXR3b3JraW5nLCB0aGluZ3MgbGlrZQo+Pj4gLSBzdXBwb3J0
IGZvciByZWNlaXZlIGRlc2NyaXB0b3IgJ2NsYXNzaWZpY2F0aW9uJwo+Pj4gwqAgLSB3ZSBuZWVk
IHRvIHN1cHBvcnQgc2V2ZXJhbCByZWNlaXZlIHF1ZXVlcyBmb3IgYSBjaGFubmVsLgo+Pj4gwqAg
LSB0aGUgcXVldWVzIGFyZSB1c2VkIGZvciBwYWNrZXQgcHJpb3JpdHkgaGFuZGxpbmcgZm9yIGV4
YW1wbGUsIGJ1dCAKPj4+IHRoZXkgY2FuIGJlCj4+PiDCoMKgwqAgdXNlZCB0byBoYXZlIHBvb2xz
IG9mIGRlc2NyaXB0b3JzIGZvciBkaWZmZXJlbnQgc2l6ZXMuCj4+PiAtIG91dCBvZiBvcmRlciBj
b21wbGV0aW9uIG9mIGRlc2NyaXB0b3JzIG9uIGEgY2hhbm5lbAo+Pj4gwqAgLSB3aGVuIHdlIGhh
dmUgc2V2ZXJhbCBxdWV1ZXMgdG8gaGFuZGxlIGRpZmZlcmVudCBwcmlvcml0eSBwYWNrZXRzIHRo
ZQo+Pj4gwqDCoMKgIGRlc2NyaXB0b3JzIHdpbGwgYmUgY29tcGxldGVkICdvdXQtb2Ytb3JkZXIn
Cj4+PiAtIE5BUEkgdHlwZSBvZiBvcGVyYXRpb24gKHBvbGxpbmcgaW5zdGVhZCBvZiBpbnRlcnJ1
cHQgZHJpdmVuIHRyYW5zZmVyKQo+Pj4gwqAgLSB3aXRob3V0IHRoaXMgd2UgY2FuIG5vdCBzdXN0
YWluIGdpZ2FiaXQgc3BlZWRzIGFuZCB3ZSBuZWVkIHRvIAo+Pj4gc3VwcG9ydCBOQVBJCj4+PiDC
oCAtIG5vdCB0byBsaW1pdCB0aGlzIHRvIG5ldHdvcmtpbmcsIGJ1dCBvdGhlciBoaWdoIHBlcmZv
cm1hbmNlIAo+Pj4gb3BlcmF0aW9ucwo+Pj4KPj4+IEl0IGlzIG15IGludGVudGlvbiB0byB3b3Jr
IG9uIHRoZXNlIHRvIGJlIGFibGUgdG8gcmVtb3ZlIHRoZSAnZ2x1ZScgCj4+PiBsYXllciBhbmQK
Pj4+IHN3aXRjaCB0byBETUFlbmdpbmUgQVBJIC0gb3IgaGF2ZSBhbiBBUEkgYXNpZGUgb2YgRE1B
ZW5naW5lIHRvIGhhdmUgCj4+PiBnZW5lcmljIHdheQo+Pj4gdG8gc3VwcG9ydCBuZXR3b3JraW5n
LCBidXQgZ2l2ZW4gaG93IGNvbnRyb3ZlcnNpYWwgYW5kIG5vdCB0cml2aWFsIAo+Pj4gdGhlc2Ug
Y2hhbmdlcwo+Pj4gYXJlIHdlIG5lZWQgc29tZXRoaW5nIHRvIHN1cHBvcnQgbmV0d29ya2luZy4K
Pj4+Cj4+PiBUaGUgc2VyaWVzICgrRFQgcGF0Y2hlcyB0byBlbmFibGVkIERNQSBvbiBBTTY1eCBh
bmQgajcyMWUpIG9uIHRvcCBvZiAKPj4+IDUuNS1yYzEgaXMKPj4+IGF2YWlsYWJsZToKPj4+IGh0
dHBzOi8vZ2l0aHViLmNvbS9vbWFwLWF1ZGlvL2xpbnV4LWF1ZGlvLmdpdCAKPj4+IHBldGVyL3Vk
bWEvc2VyaWVzX3Y3LTUuNS1yYzEKPj4+Cj4+PiBSZWdhcmRzLAo+Pj4gUGV0ZXIKPj4+IC0tLQo+
Pj4gR3J5Z29yaWkgU3RyYXNoa28gKDMpOgo+Pj4gwqDCoCBiaW5kaW5nczogc29jOiB0aTogYWRk
IGRvY3VtZW50YXRpb24gZm9yIGszIHJpbmdhY2MKPj4+IMKgwqAgc29jOiB0aTogazM6IGFkZCBu
YXZzcyByaW5nYWNjIGRyaXZlcgo+Pj4gwqDCoCBkbWFlbmdpbmU6IHRpOiBrMy11ZG1hOiBBZGQg
Z2x1ZSBsYXllciBmb3Igbm9uIERNQWVuZ2luZSB1c2Vycwo+Pj4KPj4+IFBldGVyIFVqZmFsdXNp
ICg5KToKPj4+IMKgwqAgZG1hZW5naW5lOiBkb2M6IEFkZCBzZWN0aW9ucyBmb3IgcGVyIGRlc2Ny
aXB0b3IgbWV0YWRhdGEgc3VwcG9ydAo+Pj4gwqDCoCBkbWFlbmdpbmU6IEFkZCBtZXRhZGF0YV9v
cHMgZm9yIGRtYV9hc3luY190eF9kZXNjcmlwdG9yCj4+PiDCoMKgIGRtYWVuZ2luZTogQWRkIHN1
cHBvcnQgZm9yIHJlcG9ydGluZyBETUEgY2FjaGVkIGRhdGEgYW1vdW50Cj4+PiDCoMKgIGRtYWVu
Z2luZTogdGk6IEFkZCBjcHBpNSBoZWFkZXIgZm9yIEszIE5BVlNTL1VETUEKPj4+IMKgwqAgZG1h
ZW5naW5lOiB0aTogazMgUFNJLUwgcmVtb3RlIGVuZHBvaW50IGNvbmZpZ3VyYXRpb24KPj4+IMKg
wqAgZHQtYmluZGluZ3M6IGRtYTogdGk6IEFkZCBkb2N1bWVudCBmb3IgSzMgVURNQQo+Pj4gwqDC
oCBkbWFlbmdpbmU6IHRpOiBOZXcgZHJpdmVyIGZvciBLMyBVRE1BCj4+PiDCoMKgIGZpcm13YXJl
OiB0aV9zY2k6IHJtOiBBZGQgc3VwcG9ydCBmb3IgdHhfdGR0eXBlIHBhcmFtZXRlciBmb3IgdHgK
Pj4+IMKgwqDCoMKgIGNoYW5uZWwKPj4+IMKgwqAgZG1hZW5naW5lOiB0aTogazMtdWRtYTogV2Fp
dCBmb3IgcGVlciB0ZWFyZG93biBjb21wbGV0aW9uIGlmIAo+Pj4gc3VwcG9ydGVkCj4+Pgo+Pj4g
wqAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hL3RpL2szLXVkbWEueWFtbMKgwqAgfMKgIDE4
NSArCj4+PiDCoCAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvdGkvazMtcmluZ2FjYy50eHQg
fMKgwqAgNTkgKwo+Pj4gwqAgRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYWVuZ2luZS9jbGll
bnQucnN0IHzCoMKgIDc1ICsKPj4+IMKgIC4uLi9kcml2ZXItYXBpL2RtYWVuZ2luZS9wcm92aWRl
ci5yc3TCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDQ2ICsKPj4+IMKgIGRyaXZlcnMvZG1hL2RtYWVu
Z2luZS5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAg
NzMgKwo+Pj4gwqAgZHJpdmVycy9kbWEvZG1hZW5naW5lLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDggKwo+Pj4gwqAgZHJpdmVycy9kbWEvdGkv
S2NvbmZpZ8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKg
wqAgMjQgKwo+Pj4gwqAgZHJpdmVycy9kbWEvdGkvTWFrZWZpbGXCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDMgKwo+Pj4gwqAgZHJpdmVycy9kbWEv
dGkvazMtcHNpbC1hbTY1NC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxNzUg
Kwo+Pj4gwqAgZHJpdmVycy9kbWEvdGkvazMtcHNpbC1qNzIxZS5jwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHzCoCAyMjIgKysKPj4+IMKgIGRyaXZlcnMvZG1hL3RpL2szLXBzaWwtcHJp
di5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMzkgKwo+Pj4gwqAgZHJp
dmVycy9kbWEvdGkvazMtcHNpbC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHzCoMKgIDk3ICsKPj4+IMKgIGRyaXZlcnMvZG1hL3RpL2szLXVkbWEtZ2x1ZS5jwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMTk4ICsrKysrKwo+Pj4gwqAgZHJpdmVy
cy9kbWEvdGkvazMtdWRtYS1wcml2YXRlLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAg
MTMzICsKPj4+IMKgIGRyaXZlcnMvZG1hL3RpL2szLXVkbWEuY8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDM0NTIgKysrKysrKysrKysrKysrKysKPj4+IMKgIGRy
aXZlcnMvZG1hL3RpL2szLXVkbWEuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB8wqAgMTUxICsKPj4+IMKgIGRyaXZlcnMvZmlybXdhcmUvdGlfc2NpLmPCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSArCj4+PiDCoCBkcml2
ZXJzL2Zpcm13YXJlL3RpX3NjaS5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8wqDCoMKgIDcgKwo+Pj4gwqAgZHJpdmVycy9zb2MvdGkvS2NvbmZpZ8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMTEgKwo+Pj4gwqAgZHJp
dmVycy9zb2MvdGkvTWFrZWZpbGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB8wqDCoMKgIDEgKwo+Pj4gwqAgZHJpdmVycy9zb2MvdGkvazMtcmluZ2FjYy5jwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMTE4MCArKysrKysKPj4+IMKgIGlu
Y2x1ZGUvbGludXgvZG1hL2szLXBzaWwuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8wqDCoCA3MSArCj4+PiDCoCBpbmNsdWRlL2xpbnV4L2RtYS9rMy11ZG1hLWdsdWUuaMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxMzQgKwo+Pj4gwqAgaW5jbHVkZS9saW51eC9k
bWEvdGktY3BwaTUuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMDYxICsr
KysrCj4+PiDCoCBpbmNsdWRlL2xpbnV4L2RtYWVuZ2luZS5owqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMTEwICsKPj4+IMKgIGluY2x1ZGUvbGludXgvc29jL3Rp
L2szLXJpbmdhY2MuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMjQ0ICsrCj4+PiDCoCBp
bmNsdWRlL2xpbnV4L3NvYy90aS90aV9zY2lfcHJvdG9jb2wuaMKgwqDCoMKgwqDCoMKgIHzCoMKg
wqAgMiArCj4+PiDCoCAyNyBmaWxlcyBjaGFuZ2VkLCA4NzYyIGluc2VydGlvbnMoKykKPj4+IMKg
IGNyZWF0ZSBtb2RlIDEwMDY0NCAKPj4+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9kbWEvdGkvazMtdWRtYS55YW1sCj4+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgCj4+PiBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL3RpL2szLXJpbmdhY2MudHh0Cj4+PiDC
oCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9kbWEvdGkvazMtcHNpbC1hbTY1NC5jCj4+PiDC
oCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9kbWEvdGkvazMtcHNpbC1qNzIxZS5jCj4+PiDC
oCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9kbWEvdGkvazMtcHNpbC1wcml2LmgKPj4+IMKg
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2RtYS90aS9rMy1wc2lsLmMKPj4+IMKgIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2RtYS90aS9rMy11ZG1hLWdsdWUuYwo+Pj4gwqAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvZG1hL3RpL2szLXVkbWEtcHJpdmF0ZS5jCj4+PiDCoCBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9kbWEvdGkvazMtdWRtYS5jCj4+PiDCoCBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9kbWEvdGkvazMtdWRtYS5oCj4+PiDCoCBjcmVhdGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9zb2MvdGkvazMtcmluZ2FjYy5jCj4+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQg
aW5jbHVkZS9saW51eC9kbWEvazMtcHNpbC5oCj4+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgaW5j
bHVkZS9saW51eC9kbWEvazMtdWRtYS1nbHVlLmgKPj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBp
bmNsdWRlL2xpbnV4L2RtYS90aS1jcHBpNS5oCj4+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgaW5j
bHVkZS9saW51eC9zb2MvdGkvazMtcmluZ2FjYy5oCj4+Pgo+Pgo+PiAtIFDDqXRlcgo+Pgo+Pgo+
IAoKLS0KVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAx
ODAgSGVsc2lua2kuIFktdHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2Ev
RG9taWNpbGU6IEhlbHNpbmtpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
