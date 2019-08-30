Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B42CA374F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 14:57:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/rXoDScKyrWWK3kjkJJbQwNBx5Bdu/uCtP6KV0gcao=; b=Q888uJiy3FATtd
	rGwGWoZWYE9dztuGEHeADUE1YDG6Vl4uWdoaG3W3ogHyMNNe7cAzqB7rmUaKZ6RQN/KqRFe5D9Wzx
	0Ih95N1jWhf1eTB68M3Iv9k2kT9VLpznXU6H8ntaGnoMlawjF+xJvUaoVzIVroOFBpM8OsborAvVV
	lePkImvXsNZ2YNqaTVkmaHdqM0xGttQwCGq8+FYfTApQ9MZfWBTI0eCJMv9Mjm5VX2f3674Pntrll
	ML8CjTtKblGpV6yfJhNzQLp3Dd2M8zHOI4Rq4kNXHP0hqYo2N3nZLoScASAt6SpvecA1ssvoOXWGS
	hXMua9XxCRmiMQj+paxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3gT6-0006wz-SN; Fri, 30 Aug 2019 12:57:33 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3gSc-0006um-Iu
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 12:57:06 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7UCuudL128298;
 Fri, 30 Aug 2019 07:56:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567169816;
 bh=UaNOBiFUxRDC03w4l9TpbqiM1zQ9drYlCsOBiGaSkK8=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=ZVo/sXkrLT2YKSlm9KphTh8pa8fpy8Yxtk31+HIMrpO0xXZhtFrDJBsv3TToTaRL8
 2oaPEYUs+8cgDmCHW1aJRlW2BeAN7+bkSKn9Pv/gXRQ63sLjriXlSCnkstgz11OztG
 MPa9lz4/NXbo/ABspA4TLVs3uTTGR6r3PbjE9uEA=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7UCuuXV051443
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 30 Aug 2019 07:56:56 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 30
 Aug 2019 07:56:55 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 30 Aug 2019 07:56:55 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7UCuql1036840;
 Fri, 30 Aug 2019 07:56:52 -0500
Subject: Re: [PATCH v2 02/14] soc: ti: k3: add navss ringacc driver
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
References: <20190730093450.12664-1-peter.ujfalusi@ti.com>
 <20190730093450.12664-3-peter.ujfalusi@ti.com>
Message-ID: <4da72d53-60cf-06ed-63c0-6cf8b4aeb690@ti.com>
Date: Fri, 30 Aug 2019 15:57:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190730093450.12664-3-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_055703_583813_207BD5B1 
X-CRM114-Status: GOOD (  30.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, lokeshvutla@ti.com,
 j-keerthy@ti.com, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 tony@atomide.com, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAzMC8wNy8yMDE5IDEyLjM0LCBQZXRlciBVamZhbHVzaSB3cm90ZToKPiBGcm9tOiBH
cnlnb3JpaSBTdHJhc2hrbyA8Z3J5Z29yaWkuc3RyYXNoa29AdGkuY29tPgo+IAo+IFRoZSBSaW5n
IEFjY2VsZXJhdG9yIChSSU5HQUNDIG9yIFJBKSBwcm92aWRlcyBoYXJkd2FyZSBhY2NlbGVyYXRp
b24gdG8KPiBlbmFibGUgc3RyYWlnaHRmb3J3YXJkIHBhc3Npbmcgb2Ygd29yayBiZXR3ZWVuIGEg
cHJvZHVjZXIgYW5kIGEgY29uc3VtZXIuCj4gVGhlcmUgaXMgb25lIFJJTkdBQ0MgbW9kdWxlIHBl
ciBOQVZTUyBvbiBUSSBBTTY1eCBTb0NzLgo+IAo+IFRoZSBSSU5HQUNDIGNvbnZlcnRzIGNvbnN0
YW50LWFkZHJlc3MgcmVhZCBhbmQgd3JpdGUgYWNjZXNzZXMgdG8gZXF1aXZhbGVudAo+IHJlYWQg
b3Igd3JpdGUgYWNjZXNzZXMgdG8gYSBjaXJjdWxhciBkYXRhIHN0cnVjdHVyZSBpbiBtZW1vcnku
IFRoZSBSSU5HQUNDCj4gZWxpbWluYXRlcyB0aGUgbmVlZCBmb3IgZWFjaCBETUEgY29udHJvbGxl
ciB3aGljaCBuZWVkcyB0byBhY2Nlc3MgcmluZwo+IGVsZW1lbnRzIGZyb20gaGF2aW5nIHRvIGtu
b3cgdGhlIGN1cnJlbnQgc3RhdGUgb2YgdGhlIHJpbmcgKGJhc2UgYWRkcmVzcywKPiBjdXJyZW50
IG9mZnNldCkuIFRoZSBETUEgY29udHJvbGxlciBwZXJmb3JtcyBhIHJlYWQgb3Igd3JpdGUgYWNj
ZXNzIHRvIGEKPiBzcGVjaWZpYyBhZGRyZXNzIHJhbmdlICh3aGljaCBtYXBzIHRvIHRoZSBzb3Vy
Y2UgaW50ZXJmYWNlIG9uIHRoZSBSSU5HQUNDKQo+IGFuZCB0aGUgUklOR0FDQyByZXBsYWNlcyB0
aGUgYWRkcmVzcyBmb3IgdGhlIHRyYW5zYWN0aW9uIHdpdGggYSBuZXcgYWRkcmVzcwo+IHdoaWNo
IGNvcnJlc3BvbmRzIHRvIHRoZSBoZWFkIG9yIHRhaWwgZWxlbWVudCBvZiB0aGUgcmluZyAoaGVh
ZCBmb3IgcmVhZHMsCj4gdGFpbCBmb3Igd3JpdGVzKS4gU2luY2UgdGhlIFJJTkdBQ0MgbWFpbnRh
aW5zIHRoZSBzdGF0ZSwgbXVsdGlwbGUgRE1BCj4gY29udHJvbGxlcnMgb3IgY2hhbm5lbHMgYXJl
IGFsbG93ZWQgdG8gY29oZXJlbnRseSBzaGFyZSB0aGUgc2FtZSByaW5ncyBhcwo+IGFwcGxpY2Fi
bGUuIFRoZSBSSU5HQUNDIGlzIGFibGUgdG8gcGxhY2UgZGF0YSB3aGljaCBpcyBkZXN0aW5lZCB0
b3dhcmRzCj4gc29mdHdhcmUgaW50byBjYWNoZWQgbWVtb3J5IGRpcmVjdGx5Lgo+IAo+IFN1cHBv
cnRlZCByaW5nIG1vZGVzOgo+IC0gUmluZyBNb2RlCj4gLSBNZXNzYWdpbmcgTW9kZQo+IC0gQ3Jl
ZGVudGlhbHMgTW9kZQo+IC0gUXVldWUgTWFuYWdlciBNb2RlCj4gCj4gVEktU0NJIGludGVncmF0
aW9uOgo+IAo+IFRleGFzIEluc3RydW1lbnQncyBTeXN0ZW0gQ29udHJvbCBJbnRlcmZhY2UgKFRJ
LVNDSSkgTWVzc2FnZSBQcm90b2NvbCBub3cKPiBoYXMgY29udHJvbCBvdmVyIFJpbmdhY2MgbW9k
dWxlIHJlc291cmNlcyBtYW5hZ2VtZW50IChSTSkgYW5kIFJpbmdzCj4gY29uZmlndXJhdGlvbi4K
PiAKPiBUaGUgY29ycmVzcG9uZGluZyBzdXBwb3J0IG9mIFRJLVNDSSBSaW5nYWNjIG1vZHVsZSBS
TSBwcm90b2NvbAo+IGludHJvZHVjZWQgYXMgb3B0aW9uIHRocm91Z2ggRFQgcGFyYW1ldGVyczoK
PiAtIHRpLHNjaTogcGhhbmRsZSBvbiBUSS1TQ0kgZmlybXdhcmUgY29udHJvbGxlciBEVCBub2Rl
Cj4gLSB0aSxzY2ktZGV2LWlkOiBUSS1TQ0kgZGV2aWNlIGlkZW50aWZpZXIgYXMgcGVyIFRJLVND
SSBmaXJtd2FyZSBzcGVjCj4gCj4gaWYgYm90aCBwYXJhbWV0ZXJzIHByZXNlbnQgLSBSaW5nYWNj
IGRyaXZlciB3aWxsIGNvbmZpZ3VyZS9mcmVlL3Jlc2V0IFJpbmdzCj4gdXNpbmcgVEktU0NJIE1l
c3NhZ2UgUmluZ2FjYyBSTSBQcm90b2NvbC4KPiAKPiBUaGUgUmluZ2FjYyBkcml2ZXIgbWFuYWdl
cyBSaW5ncyBhbGxvY2F0aW9uIGJ5IGl0c2VsZiBub3cgYW5kIHJlcXVlc3RzCj4gVEktU0NJIGZp
cm13YXJlIHRvIGFsbG9jYXRlIGFuZCBjb25maWd1cmUgc3BlY2lmaWMgUmluZ3Mgb25seS4gSXQn
cyBkb25lCj4gdGhpcyB3YXkgYmVjYXVzZSwgTGludXggZHJpdmVyIGltcGxlbWVudHMgdHdvIHN0
YWdlIFJpbmdzIGFsbG9jYXRpb24gYW5kCj4gY29uZmlndXJhdGlvbiAoYWxsb2NhdGUgcmluZyBh
bmQgY29uZmlndXJlIHJpbmcpIHdoaWxlIEktU0NJIE1lc3NhZ2UKPiBQcm90b2NvbCBzdXBwb3J0
cyBvbmx5IG9uZSBjb21iaW5lZCBvcGVyYXRpb24gKGFsbG9jYXRlK2NvbmZpZ3VyZSkuCj4gCj4g
R3J5Z29yaWkgU3RyYXNoa28gPGdyeWdvcmlpLnN0cmFzaGtvQHRpLmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBQZXRlciBVamZhbHVzaSA8cGV0ZXIudWpmYWx1c2lAdGkuY29tPgo+IC0tLQo+ICBkcml2
ZXJzL3NvYy90aS9LY29uZmlnICAgICAgICAgICAgfCAgIDE3ICsKPiAgZHJpdmVycy9zb2MvdGkv
TWFrZWZpbGUgICAgICAgICAgIHwgICAgMSArCj4gIGRyaXZlcnMvc29jL3RpL2szLXJpbmdhY2Mu
YyAgICAgICB8IDExOTEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgaW5jbHVkZS9s
aW51eC9zb2MvdGkvazMtcmluZ2FjYy5oIHwgIDI2MiArKysrKysrCj4gIDQgZmlsZXMgY2hhbmdl
ZCwgMTQ3MSBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3NvYy90
aS9rMy1yaW5nYWNjLmMKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvc29jL3Rp
L2szLXJpbmdhY2MuaAo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy90aS9LY29uZmlnIGIv
ZHJpdmVycy9zb2MvdGkvS2NvbmZpZwo+IGluZGV4IGNmNTQ1ZjQyOGQwMy4uMTBjNzZmYWE1MDNl
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc29jL3RpL0tjb25maWcKPiArKysgYi9kcml2ZXJzL3Nv
Yy90aS9LY29uZmlnCj4gQEAgLTgwLDYgKzgwLDIzIEBAIGNvbmZpZyBUSV9TQ0lfUE1fRE9NQUlO
Uwo+ICAJICBjYWxsZWQgdGlfc2NpX3BtX2RvbWFpbnMuIE5vdGUgdGhpcyBpcyBuZWVkZWQgZWFy
bHkgaW4gYm9vdCBiZWZvcmUKPiAgCSAgcm9vdGZzIG1heSBiZSBhdmFpbGFibGUuCj4gIAo+ICtj
b25maWcgVElfSzNfUklOR0FDQwo+ICsJdHJpc3RhdGUgIkszIFJpbmcgYWNjZWxlcmF0b3IgU3Vi
IFN5c3RlbSIKPiArCWRlcGVuZHMgb24gQVJDSF9LMyB8fCBDT01QSUxFX1RFU1QKPiArCWRlcGVu
ZHMgb24gVElfU0NJX0lOVEFfSVJRQ0hJUAo+ICsJZGVmYXVsdCB5Cj4gKwloZWxwCj4gKwkgIFNh
eSB5IGhlcmUgdG8gc3VwcG9ydCB0aGUgSzMgUmluZyBhY2NlbGVyYXRvciBtb2R1bGUuCj4gKwkg
IFRoZSBSaW5nIEFjY2VsZXJhdG9yIChSSU5HQUNDIG9yIFJBKSAgcHJvdmlkZXMgaGFyZHdhcmUg
YWNjZWxlcmF0aW9uCj4gKwkgIHRvIGVuYWJsZSBzdHJhaWdodGZvcndhcmQgcGFzc2luZyBvZiB3
b3JrIGJldHdlZW4gYSBwcm9kdWNlcgo+ICsJICBhbmQgYSBjb25zdW1lci4gVGhlcmUgaXMgb25l
IFJJTkdBQ0MgbW9kdWxlIHBlciBOQVZTUyBvbiBUSSBBTTY1eCBTb0NzCj4gKwkgIElmIHVuc3Vy
ZSwgc2F5IE4uCj4gKwo+ICtjb25maWcgVElfSzNfUklOR0FDQ19ERUJVRwo+ICsJdHJpc3RhdGUg
IkszIFJpbmcgYWNjZWxlcmF0b3IgU3ViIFN5c3RlbSB0ZXN0cyBhbmQgZGVidWciCj4gKwlkZXBl
bmRzIG9uIFRJX0szX1JJTkdBQ0MKPiArCWRlZmF1bHQgbgo+ICsKPiAgZW5kaWYgIyBTT0NfVEkK
PiAgCj4gIGNvbmZpZyBUSV9TQ0lfSU5UQV9NU0lfRE9NQUlOCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvc29jL3RpL01ha2VmaWxlIGIvZHJpdmVycy9zb2MvdGkvTWFrZWZpbGUKPiBpbmRleCBiMzg2
OGQzOTJkNGYuLmNjNGJjOGIwOGJmNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3NvYy90aS9NYWtl
ZmlsZQo+ICsrKyBiL2RyaXZlcnMvc29jL3RpL01ha2VmaWxlCj4gQEAgLTksMyArOSw0IEBAIG9i
ai0kKENPTkZJR19BTVgzX1BNKQkJCSs9IHBtMzN4eC5vCj4gIG9iai0kKENPTkZJR19XS1VQX00z
X0lQQykJCSs9IHdrdXBfbTNfaXBjLm8KPiAgb2JqLSQoQ09ORklHX1RJX1NDSV9QTV9ET01BSU5T
KQkJKz0gdGlfc2NpX3BtX2RvbWFpbnMubwo+ICBvYmotJChDT05GSUdfVElfU0NJX0lOVEFfTVNJ
X0RPTUFJTikJKz0gdGlfc2NpX2ludGFfbXNpLm8KPiArb2JqLSQoQ09ORklHX1RJX0szX1JJTkdB
Q0MpCQkrPSBrMy1yaW5nYWNjLm8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zb2MvdGkvazMtcmlu
Z2FjYy5jIGIvZHJpdmVycy9zb2MvdGkvazMtcmluZ2FjYy5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2
NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLjQwMWRmYzk2MzMxOQo+IC0tLSAvZGV2L251bGwKPiAr
KysgYi9kcml2ZXJzL3NvYy90aS9rMy1yaW5nYWNjLmMKPiBAQCAtMCwwICsxLDExOTEgQEAKCi4u
LgoKPiArdm9pZCBrM19yaW5nYWNjX3JpbmdfcmVzZXRfZG1hKHN0cnVjdCBrM19yaW5nICpyaW5n
LCB1MzIgb2NjKQo+ICt7Cj4gKwlpZiAoIXJpbmcgfHwgIShyaW5nLT5mbGFncyAmIEszX1JJTkdf
RkxBR19CVVNZKSkKPiArCQlyZXR1cm47Cj4gKwo+ICsJaWYgKCFyaW5nLT5wYXJlbnQtPmRtYV9y
aW5nX3Jlc2V0X3F1aXJrKQoKazNfcmluZ2FjY19yaW5nX3Jlc2V0KHJpbmcpOyBpcyBtaXNzaW5n
IGZyb20gaGVyZS4KCj4gKwkJcmV0dXJuOwo+ICsKPiArCWlmICghb2NjKQo+ICsJCW9jYyA9IGRi
Z19yZWFkbCgmcmluZy0+cnQtPm9jYyk7Cj4gKwo+ICsJaWYgKG9jYykgewo+ICsJCXUzMiBkYl9y
aW5nX2NudCwgZGJfcmluZ19jbnRfY3VyOwo+ICsKPiArCQlrM19uYXZfZGJnKHJpbmctPnBhcmVu
dC0+ZGV2LCAiJXMgJXUgb2NjOiAldVxuIiwgX19mdW5jX18sCj4gKwkJCSAgIHJpbmctPnJpbmdf
aWQsIG9jYyk7Cj4gKwkJLyogMi4gUmVzZXQgdGhlIHJpbmcgKi8KPiArCQlrM19yaW5nYWNjX3Jp
bmdfcmVzZXRfc2NpKHJpbmcpOwo+ICsKPiArCQkvKgo+ICsJCSAqIDMuIFNldHVwIHRoZSByaW5n
IGluIHJpbmcvZG9vcmJlbGwgbW9kZQo+ICsJCSAqIChpZiBub3QgYWxyZWFkeSBpbiB0aGlzIG1v
ZGUpCj4gKwkJICovCj4gKwkJaWYgKHJpbmctPm1vZGUgIT0gSzNfUklOR0FDQ19SSU5HX01PREVf
UklORykKPiArCQkJazNfcmluZ2FjY19yaW5nX3JlY29uZmlnX3Ftb2RlX3NjaSgKPiArCQkJCQly
aW5nLCBLM19SSU5HQUNDX1JJTkdfTU9ERV9SSU5HKTsKPiArCQkvKgo+ICsJCSAqIDQuIFJpbmcg
dGhlIGRvb3JiZWxsIDIqKjIyIOKAkyByaW5nT2NjIHRpbWVzLgo+ICsJCSAqIFRoaXMgd2lsbCB3
cmFwIHRoZSBpbnRlcm5hbCBVRE1BUCByaW5nIHN0YXRlIG9jY3VwYW5jeQo+ICsJCSAqIGNvdW50
ZXIgKHdoaWNoIGlzIDIxLWJpdHMgd2lkZSkgdG8gMC4KPiArCQkgKi8KPiArCQlkYl9yaW5nX2Nu
dCA9ICgxVSA8PCAyMikgLSBvY2M7Cj4gKwo+ICsJCXdoaWxlIChkYl9yaW5nX2NudCAhPSAwKSB7
Cj4gKwkJCS8qCj4gKwkJCSAqIFJpbmcgdGhlIGRvb3JiZWxsIHdpdGggdGhlIG1heGltdW0gY291
bnQgZWFjaAo+ICsJCQkgKiBpdGVyYXRpb24gaWYgcG9zc2libGUgdG8gbWluaW1pemUgdGhlIHRv
dGFsCj4gKwkJCSAqIG9mIHdyaXRlcwo+ICsJCQkgKi8KPiArCQkJaWYgKGRiX3JpbmdfY250ID4g
SzNfUklOR0FDQ19NQVhfREJfUklOR19DTlQpCj4gKwkJCQlkYl9yaW5nX2NudF9jdXIgPSBLM19S
SU5HQUNDX01BWF9EQl9SSU5HX0NOVDsKPiArCQkJZWxzZQo+ICsJCQkJZGJfcmluZ19jbnRfY3Vy
ID0gZGJfcmluZ19jbnQ7Cj4gKwo+ICsJCQl3cml0ZWwoZGJfcmluZ19jbnRfY3VyLCAmcmluZy0+
cnQtPmRiKTsKPiArCQkJZGJfcmluZ19jbnQgLT0gZGJfcmluZ19jbnRfY3VyOwo+ICsJCX0KPiAr
Cj4gKwkJLyogNS4gUmVzdG9yZSB0aGUgb3JpZ2luYWwgcmluZyBtb2RlIChpZiBub3QgcmluZyBt
b2RlKSAqLwo+ICsJCWlmIChyaW5nLT5tb2RlICE9IEszX1JJTkdBQ0NfUklOR19NT0RFX1JJTkcp
Cj4gKwkJCWszX3JpbmdhY2NfcmluZ19yZWNvbmZpZ19xbW9kZV9zY2kocmluZywgcmluZy0+bW9k
ZSk7Cj4gKwl9Cj4gKwo+ICsJLyogMi4gUmVzZXQgdGhlIHJpbmcgKi8KPiArCWszX3JpbmdhY2Nf
cmluZ19yZXNldChyaW5nKTsKPiArfQo+ICtFWFBPUlRfU1lNQk9MX0dQTChrM19yaW5nYWNjX3Jp
bmdfcmVzZXRfZG1hKTsKCi0gUMOpdGVyCgpUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQ
b3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2
MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
