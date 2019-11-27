Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A38310AB5A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 08:58:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pjJ1XKd2EBlLqM53QQUkNsVO91G7l8n+xbeJRMWs2Hc=; b=BqP8qERqC3aobG
	VSS5/xNnmVJNyP4F87u0uSrmyjvs0zBUUTdR1ZPqTDvEtFA0ph6vK21jPmlCl/X/TwlfFOp7FRHTd
	G4A0YV21+6RaQbrPQNxrGybm81G6OS1y6sJYaF7nBoR87DYcZIIUnjAFshqXCQSfitXW4BgZqZcT8
	I7D9HeBa080EK51x0li7uRtLXvlFYqHhvwp/j/3HjH2HJGXjR6fflkokFc4ejyrJd3/uOxRKN8OCW
	bOwkGJRUZS5mSwRmp03AGEYXgjZElqc5HgA2K5IzhY4SlJcRDAKMFwAMWWPZGMey64wf/YL6kGiXl
	3+h1+un3Hb6X8yyLZD8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZsDB-0003Jd-4w; Wed, 27 Nov 2019 07:58:09 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZsD0-0003JK-TR
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 07:58:00 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAR7vuVG091841;
 Wed, 27 Nov 2019 01:57:56 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1574841476;
 bh=3bIuU4EmToxCv+8P28NVRzUIR1OOwIaEEfjDpKuBizo=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=SGGt0JVzuQatdeI8MK56e5AdaBshv0+QC4HDzzziL1dqOgfK3sNzqLA5zlERb+CWx
 y6A8EnBHTlxU6QH2hUQvdyOd4cIagyXa/AlYax1+BPH19Td9GwZkDR5+HeS+YrSwr5
 vPik2m7D4HaphzDPoStmTVqsfYm3bSVRokH0ltZQ=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAR7vu50022033;
 Wed, 27 Nov 2019 01:57:56 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 27
 Nov 2019 01:57:56 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 27 Nov 2019 01:57:56 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAR7vsUp121642;
 Wed, 27 Nov 2019 01:57:54 -0600
Subject: Re: [PATCH] firmware: ti_sci: rm: Add support for tx_tdtype parameter
 for tx channel
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: Tero Kristo <t-kristo@ti.com>, <nm@ti.com>, <ssantosh@kernel.org>
References: <20191025084715.25098-1-peter.ujfalusi@ti.com>
 <b2231065-ae16-8870-03ac-a435f190ee9f@ti.com>
 <31bce7ea-1769-c299-03a6-60c5b699fd7f@ti.com>
Message-ID: <f957a696-e0ca-3cbc-63f3-09cda8986978@ti.com>
Date: Wed, 27 Nov 2019 09:57:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <31bce7ea-1769-c299-03a6-60c5b699fd7f@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_235759_053257_29003552 
X-CRM114-Status: GOOD (  20.22  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vinod <vkoul@kernel.org>, grygorii.strashko@ti.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxMy8xMS8yMDE5IDguNDgsIFBldGVyIFVqZmFsdXNpIHdyb3RlOgo+IFRoYW5rcyBU
ZXJvLAo+IAo+IE9uIDAxLzExLzIwMTkgMTAuMjMsIFRlcm8gS3Jpc3RvIHdyb3RlOgo+PiBPbiAy
NS8xMC8yMDE5IDExOjQ3LCBQZXRlciBVamZhbHVzaSB3cm90ZToKPj4+IFRoZSBzeXN0ZW0gY29u
dHJvbGxlcidzIHJlc291cmNlIG1hbmFnZXIgaGF2ZSBzdXBwb3J0IGZvciBjb25maWd1cmluZyB0
aGUKPj4+IFREVFlQRSBvZiBUQ0hBTl9DRkcgcmVnaXN0ZXIgb24gajcyMWUuCj4+PiBXaXRoIHRo
aXMgcGFyYW1ldGVyIHRoZSB0ZWFyZG93biBjb21wbGV0aW9uIGNhbiBiZSBjb250cm9sbGVkOgo+
Pj4gVERUWVBFID09IDA6IFJldHVybiB3aXRob3V0IHdhaXRpbmcgZm9yIHBlZXIgdG8gY29tcGxl
dGUgdGhlIHRlYXJkb3duCj4+PiBURFRZUEUgPT0gMTogV2FpdCBmb3IgcGVlciB0byBjb21wbGV0
ZSB0aGUgdGVhcmRvd24KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBVamZhbHVzaSA8cGV0
ZXIudWpmYWx1c2lAdGkuY29tPgo+Pgo+PiBSZXZpZXdlZC1ieTogVGVybyBLcmlzdG8gPHQta3Jp
c3RvQHRpLmNvbT4KPiAKPiBJJ2xsIHRha2UgdGhpcyBwYXRjaCBhcyBwYXJ0IG9mIHRoZSB1cGNv
bWluZyB2NiBvZiB0aGUgazMgRE1BIHN1cHBvcnQKPiBzZXJpZXMgdG8gbWFrZSBzdXJlIGl0IGlz
IGJ1aWxkYWJsZSB1bmxlc3Mgc29tZW9uZSB3aWxsIHBpY2sgdGhpcyBmb3IKPiA1LjUtcmMxLgoK
V2lsbCB0aGlzIHBhdGNoIGdvaW5nIHRvIGJlIHBpY2tlZCB1cCBmb3IgNS41PwoKSWYgbm90LCB0
aGVuIEknbGwganVzdCBzcGxpdCBvdXQgdGhlIHN1cHBvcnQgZm9yIHRoaXMgaW4gdGhlIHVwY29t
aW5nCkRNQSBkcml2ZXIgYW5kIGxldCBWaW5vZCBkZWNpZGUgaWYgaGUgd2FudHMgdG8gYXBwbHkg
ZmlybXdhcmUgcGF0Y2gKYWxvbmcgd2l0aCB0aGUgRE1BIGRyaXZlci4KT3IganVzdCBwbGFuIHRv
IGdldCB0aGUgc3VwcG9ydCBmb3IgdGhpcyBpbiA1LjcuCgotIFDDqXRlcgoKPiAKPiAtIFDDqXRl
cgo+IAo+Pgo+Pj4gLS0tCj4+PiBIaSwKPj4+Cj4+PiBJIGtub3cgaXQgaXMga2luZCBvZiBnZXR0
aW5nIGxhdGUgZm9yIDUuNSwgYnV0IGNhbiB5b3UgY29uc2lkZXIgdGhpcwo+Pj4gc21hbGwKPj4+
IGFkZGl0aW9uIHNvIEkgY2FuIGFkZCB0aGUgc3VwcG9ydCBmb3IgaXQgaW4gdGhlIGluaXRpYWwg
RE1BIGRyaXZlcj8KPj4+Cj4+PiBUaGFua3MgYW5kIHJlZ2FyZHMsCj4+PiBQZXRlcgo+Pj4KPj4+
IMKgIGRyaXZlcnMvZmlybXdhcmUvdGlfc2NpLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
IDEgKwo+Pj4gwqAgZHJpdmVycy9maXJtd2FyZS90aV9zY2kuaMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHwgNyArKysrKysrCj4+PiDCoCBpbmNsdWRlL2xpbnV4L3NvYy90aS90aV9zY2lfcHJv
dG9jb2wuaCB8IDIgKysKPj4+IMKgIDMgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQo+
Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Zpcm13YXJlL3RpX3NjaS5jIGIvZHJpdmVycy9m
aXJtd2FyZS90aV9zY2kuYwo+Pj4gaW5kZXggNDEyNmJlOWUzMjE2Li5mMTNlNGE5NmYzYjcgMTAw
NjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2Zpcm13YXJlL3RpX3NjaS5jCj4+PiArKysgYi9kcml2ZXJz
L2Zpcm13YXJlL3RpX3NjaS5jCj4+PiBAQCAtMjQxMiw2ICsyNDEyLDcgQEAgc3RhdGljIGludCB0
aV9zY2lfY21kX3JtX3VkbWFwX3R4X2NoX2NmZyhjb25zdAo+Pj4gc3RydWN0IHRpX3NjaV9oYW5k
bGUgKmhhbmRsZSwKPj4+IMKgwqDCoMKgwqAgcmVxLT5mZGVwdGggPSBwYXJhbXMtPmZkZXB0aDsK
Pj4+IMKgwqDCoMKgwqAgcmVxLT50eF9zY2hlZF9wcmlvcml0eSA9IHBhcmFtcy0+dHhfc2NoZWRf
cHJpb3JpdHk7Cj4+PiDCoMKgwqDCoMKgIHJlcS0+dHhfYnVyc3Rfc2l6ZSA9IHBhcmFtcy0+dHhf
YnVyc3Rfc2l6ZTsKPj4+ICvCoMKgwqAgcmVxLT50eF90ZHR5cGUgPSBwYXJhbXMtPnR4X3RkdHlw
ZTsKPj4+IMKgIMKgwqDCoMKgwqAgcmV0ID0gdGlfc2NpX2RvX3hmZXIoaW5mbywgeGZlcik7Cj4+
PiDCoMKgwqDCoMKgIGlmIChyZXQpIHsKPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Zpcm13YXJl
L3RpX3NjaS5oIGIvZHJpdmVycy9maXJtd2FyZS90aV9zY2kuaAo+Pj4gaW5kZXggZjBkMDY4YzAz
OTQ0Li4yNTUzMjcxNzFkYWUgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2Zpcm13YXJlL3RpX3Nj
aS5oCj4+PiArKysgYi9kcml2ZXJzL2Zpcm13YXJlL3RpX3NjaS5oCj4+PiBAQCAtOTEwLDYgKzkx
MCw3IEBAIHN0cnVjdCBybV90aV9zY2lfbXNnX3VkbWFwX3J4X2Zsb3dfb3B0X2NmZyB7Cj4+PiDC
oMKgICrCoMKgIDEyIC0gVmFsaWQgYml0IGZvciBAcmVmCj4+PiB0aV9zY2lfbXNnX3JtX3VkbWFw
X3R4X2NoX2NmZzo6dHhfY3JlZGl0X2NvdW50Cj4+PiDCoMKgICrCoMKgIDEzIC0gVmFsaWQgYml0
IGZvciBAcmVmIHRpX3NjaV9tc2dfcm1fdWRtYXBfdHhfY2hfY2ZnOjpmZGVwdGgKPj4+IMKgwqAg
KsKgwqAgMTQgLSBWYWxpZCBiaXQgZm9yIEByZWYKPj4+IHRpX3NjaV9tc2dfcm1fdWRtYXBfdHhf
Y2hfY2ZnOjp0eF9idXJzdF9zaXplCj4+PiArICrCoMKgIDE1IC0gVmFsaWQgYml0IGZvciBAcmVm
IHRpX3NjaV9tc2dfcm1fdWRtYXBfdHhfY2hfY2ZnOjp0eF90ZHR5cGUKPj4+IMKgwqAgKgo+Pj4g
wqDCoCAqIEBuYXZfaWQ6IFNvQyBkZXZpY2UgSUQgb2YgTmF2aWdhdG9yIFN1YnN5c3RlbSB3aGVy
ZSB0eCBjaGFubmVsIGlzCj4+PiBsb2NhdGVkCj4+PiDCoMKgICoKPj4+IEBAIC05NzMsNiArOTc0
LDExIEBAIHN0cnVjdCBybV90aV9zY2lfbXNnX3VkbWFwX3J4X2Zsb3dfb3B0X2NmZyB7Cj4+PiDC
oMKgICoKPj4+IMKgwqAgKiBAdHhfYnVyc3Rfc2l6ZTogVURNQVAgdHJhbnNtaXQgY2hhbm5lbCBi
dXJzdCBzaXplIGNvbmZpZ3VyYXRpb24KPj4+IHRvIGJlCj4+PiDCoMKgICogcHJvZ3JhbW1lZCBp
bnRvIHRoZSB0eF9idXJzdF9zaXplIGZpZWxkIG9mIHRoZSBUQ0hBTl9UQ0ZHIHJlZ2lzdGVyLgo+
Pj4gKyAqCj4+PiArICogQHR4X3RkdHlwZTogVURNQVAgdHJhbnNtaXQgY2hhbm5lbCB0ZWFyZG93
biB0eXBlIGNvbmZpZ3VyYXRpb24gdG8gYmUKPj4+ICsgKiBwcm9ncmFtbWVkIGludG8gdGhlIHRk
dHlwZSBmaWVsZCBvZiB0aGUgVENIQU5fVENGRyByZWdpc3RlcjoKPj4+ICsgKiAwIC0gUmV0dXJu
IGltbWVkaWF0ZWx5Cj4+PiArICogMSAtIFdhaXQgZm9yIGNvbXBsZXRpb24gbWVzc2FnZSBmcm9t
IHJlbW90ZSBwZWVyCj4+PiDCoMKgICovCj4+PiDCoCBzdHJ1Y3QgdGlfc2NpX21zZ19ybV91ZG1h
cF90eF9jaF9jZmdfcmVxIHsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IHRpX3NjaV9tc2dfaGRyIGhk
cjsKPj4+IEBAIC05OTQsNiArMTAwMCw3IEBAIHN0cnVjdCB0aV9zY2lfbXNnX3JtX3VkbWFwX3R4
X2NoX2NmZ19yZXEgewo+Pj4gwqDCoMKgwqDCoCB1MTYgZmRlcHRoOwo+Pj4gwqDCoMKgwqDCoCB1
OCB0eF9zY2hlZF9wcmlvcml0eTsKPj4+IMKgwqDCoMKgwqAgdTggdHhfYnVyc3Rfc2l6ZTsKPj4+
ICvCoMKgwqAgdTggdHhfdGR0eXBlOwo+Pj4gwqAgfSBfX3BhY2tlZDsKPj4+IMKgIMKgIC8qKgo+
Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvc29jL3RpL3RpX3NjaV9wcm90b2NvbC5oCj4+
PiBiL2luY2x1ZGUvbGludXgvc29jL3RpL3RpX3NjaV9wcm90b2NvbC5oCj4+PiBpbmRleCA5NTMx
ZWM4MjMyOTguLmYzYWVkMGI5MTU2NCAxMDA2NDQKPj4+IC0tLSBhL2luY2x1ZGUvbGludXgvc29j
L3RpL3RpX3NjaV9wcm90b2NvbC5oCj4+PiArKysgYi9pbmNsdWRlL2xpbnV4L3NvYy90aS90aV9z
Y2lfcHJvdG9jb2wuaAo+Pj4gQEAgLTM0Miw2ICszNDIsNyBAQCBzdHJ1Y3QgdGlfc2NpX21zZ19y
bV91ZG1hcF90eF9jaF9jZmcgewo+Pj4gwqAgI2RlZmluZSBUSV9TQ0lfTVNHX1ZBTFVFX1JNX1VE
TUFQX0NIX1RYX1NVUFJfVERQS1RfVkFMSUTCoMKgwqDCoMKgwqDCoCBCSVQoMTEpCj4+PiDCoCAj
ZGVmaW5lIFRJX1NDSV9NU0dfVkFMVUVfUk1fVURNQVBfQ0hfVFhfQ1JFRElUX0NPVU5UX1ZBTElE
wqDCoMKgwqDCoCBCSVQoMTIpCj4+PiDCoCAjZGVmaW5lIFRJX1NDSV9NU0dfVkFMVUVfUk1fVURN
QVBfQ0hfVFhfRkRFUFRIX1ZBTElEwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBCSVQoMTMpCj4+PiAr
I2RlZmluZSBUSV9TQ0lfTVNHX1ZBTFVFX1JNX1VETUFQX0NIX1RYX1REVFlQRV9WQUxJRMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgQklUKDE1KQo+Pj4gwqDCoMKgwqDCoCB1MTYgbmF2X2lkOwo+Pj4g
wqDCoMKgwqDCoCB1MTYgaW5kZXg7Cj4+PiDCoMKgwqDCoMKgIHU4IHR4X3BhdXNlX29uX2VycjsK
Pj4+IEBAIC0zNTksNiArMzYwLDcgQEAgc3RydWN0IHRpX3NjaV9tc2dfcm1fdWRtYXBfdHhfY2hf
Y2ZnIHsKPj4+IMKgwqDCoMKgwqAgdTE2IGZkZXB0aDsKPj4+IMKgwqDCoMKgwqAgdTggdHhfc2No
ZWRfcHJpb3JpdHk7Cj4+PiDCoMKgwqDCoMKgIHU4IHR4X2J1cnN0X3NpemU7Cj4+PiArwqDCoMKg
IHU4IHR4X3RkdHlwZTsKPj4+IMKgIH07Cj4+PiDCoCDCoCAvKioKPj4+Cj4+Cj4+IC0tIAo+PiBU
ZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxz
aW5raS4KPj4gWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21p
Y2lsZTogSGVsc2lua2kKPiAKPiBUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2Fs
YW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KPiBZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUy
MS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQo+IAo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKPiAKClRl
eGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNp
bmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxl
OiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
