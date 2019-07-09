Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C646A638B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 17:35:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FvbCCNGZu18LreoRyYeniRAY7JH+X9lNo433NDo+HaA=; b=NKZuoo0GMS5j9o
	0Iw9KfEUio0/B5iyNvrEk/q1pmFqjJ2XdUEJgcGdh6gDZe3fb4SGq1JAYT3GKNXzbgfVDSrnu2VPR
	NujvyQBWYmVScGO4UF9v2yHgW0Q200guW4NwSgBl8huR0Jicdgk8SJeseTsbV3sppKbpgioiU1CGp
	YsocxwsJewCQ9O9AJEifHodPcJubDi61eezyxRBcPv55G9wDbx1qjh6phFaLsf5i0dTu9ZEfQLv4u
	3ePLnBhrcRH9VZNxM5R5jXlfEU02QBYfamG5+2Tv4liKVW8koYPTebgaDo3XBUsqO3cKeanxS65yR
	T+gMaGT0LnKp/Guf/0fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hks9B-0005Kf-Px; Tue, 09 Jul 2019 15:35:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hks8x-0005Cd-Li
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 15:35:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A1BCC2B;
 Tue,  9 Jul 2019 08:34:58 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2F09D3F246;
 Tue,  9 Jul 2019 08:34:58 -0700 (PDT)
Subject: Re: Could info leak in preserve_iwmmxt_context() ?
From: Julien Thierry <julien.thierry@arm.com>
To: Yang Yingliang <yangyingliang@huawei.com>
References: <5D24AD2E.8080102@huawei.com>
 <6e4deac8-9f9b-f5d1-977a-5a46de109418@arm.com>
Message-ID: <14c34353-7427-ccae-ad80-cf5b8e264437@arm.com>
Date: Tue, 9 Jul 2019 16:34:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <6e4deac8-9f9b-f5d1-977a-5a46de109418@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_083459_758428_CC766BEC 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwOS8wNy8yMDE5IDE2OjMwLCBKdWxpZW4gVGhpZXJyeSB3cm90ZToKPiBIaSBZYW5nLAo+
IAo+IE9uIDA5LzA3LzIwMTkgMTY6MDUsIFlhbmcgWWluZ2xpYW5nIHdyb3RlOgo+PiBIaSwgSnVs
aWVuCj4+Cj4+IEluIHRoaXMgY29tbWl0IDczODM5Nzk4YWY3ZSAoIkFSTTogODc5MC8xOiBzaWdu
YWw6IGFsd2F5cyB1c2UKPj4gX19jb3B5X3RvX3VzZXIgdG8gc2F2ZSBpd21teHQgY29udGV4dCIp
Ogo+Pgo+PiAtLS0gYS9hcmNoL2FybS9rZXJuZWwvc2lnbmFsLmMKPj4gKysrIGIvYXJjaC9hcm0v
a2VybmVsL3NpZ25hbC5jCj4+IEBAIC03Nyw4ICs3Nyw2IEBAIHN0YXRpYyBpbnQgcHJlc2VydmVf
aXdtbXh0X2NvbnRleHQoc3RydWN0Cj4+IGl3bW14dF9zaWdmcmFtZSBfX3VzZXIgKmZyYW1lKQo+
PiDCoMKgwqDCoMKgwqDCoMKgIGtmcmFtZS0+bWFnaWMgPSBJV01NWFRfTUFHSUM7Cj4+IMKgwqDC
oMKgwqDCoMKgwqAga2ZyYW1lLT5zaXplID0gSVdNTVhUX1NUT1JBR0VfU0laRTsKPj4gwqDCoMKg
wqDCoMKgwqDCoCBpd21teHRfdGFza19jb3B5KGN1cnJlbnRfdGhyZWFkX2luZm8oKSwgJmtmcmFt
ZS0+c3RvcmFnZSk7Cj4+IC0KPj4gLcKgwqDCoMKgwqDCoMKgIGVyciA9IF9fY29weV90b191c2Vy
KGZyYW1lLCBrZnJhbWUsIHNpemVvZigqZnJhbWUpKTsKPj4gwqDCoMKgwqAgfSBlbHNlIHsKPj4g
wqDCoMKgwqDCoMKgwqDCoCAvKgo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgKiBGb3IgYnVnLWNvbXBh
dGliaWxpdHkgd2l0aCBvbGRlciBrZXJuZWxzLCBzb21lIHNwYWNlCj4+IEBAIC04NiwxMCArODQs
MTQgQEAgc3RhdGljIGludCBwcmVzZXJ2ZV9pd21teHRfY29udGV4dChzdHJ1Y3QKPj4gaXdtbXh0
X3NpZ2ZyYW1lIF9fdXNlciAqZnJhbWUpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAqIFNldCB0aGUg
bWFnaWMgYW5kIHNpemUgYXBwcm9wcmlhdGVseSBzbyB0aGF0IHByb3Blcmx5Cj4+IMKgwqDCoMKg
wqDCoMKgwqDCoCAqIHdyaXR0ZW4gdXNlcnNwYWNlIGNhbiBza2lwIGl0IHJlbGlhYmx5Ogo+PiDC
oMKgwqDCoMKgwqDCoMKgwqAgKi8KPj4gLcKgwqDCoMKgwqDCoMKgIF9fcHV0X3VzZXJfZXJyb3Io
RFVNTVlfTUFHSUMsICZmcmFtZS0+bWFnaWMsIGVycik7Cj4+IC3CoMKgwqDCoMKgwqDCoCBfX3B1
dF91c2VyX2Vycm9yKElXTU1YVF9TVE9SQUdFX1NJWkUsICZmcmFtZS0+c2l6ZSwgZXJyKTsKPj4g
K8KgwqDCoMKgwqDCoMKgICprZnJhbWUgPSAoc3RydWN0IGl3bW14dF9zaWdmcmFtZSkgewo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAubWFnaWMgPSBEVU1NWV9NQUdJQywKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgLnNpemXCoCA9IElXTU1YVF9TVE9SQUdFX1NJWkUsCj4+ICvCoMKgwqDC
oMKgwqDCoCB9Owo+Pgo+PiBUaGUgc3RvcmFnZSBtZW1iZXIgb2Yga2ZyYW1lIGlzIHVuaW5pdGlh
bGl6ZWQsIGl0IHNlZW1zIHdpbGwgbGVhZCBhIGluZm8KPj4gbGVhayB0byB1c2Vyc3BhY2UgPwo+
Pgo+PiBJbiBzZWN0aW9uIDIuNC4yLjMgSW5pdGlhbGl6aW5nIFN0cnVjdHVyZSBNZW1iZXJzIG9m
IGdudS1jLW1hbnVhbCwgaXQKPj4gaGFzIG5vIHNwZWNpZmljIGJlaGF2aW9yCj4+IHRvIGRlZmlu
ZSB0aGUgdW5pbml0aWFsaXplZCBtZW1iZXIuCj4+Cj4+IFBsZWFzZSBjb3JyZWN0IG1lIGlmIEkg
YW0gd3JvbmcuCj4+Cj4gCj4gTXkgdW5kZXJzdGFuZGluZyBpcyB0aGF0IHdoZW4gdXNpbmcgYSBj
b21wb3VuZCBpbml0aWFsaXplciAoZWl0aGVyIGF0Cj4gdmFyaWFibGUgZGVjbGFyYXRpb24gb3Ig
YnkgYXNzaWduaW5nIGEgY29tcG91bmQgbGl0ZXJhbCBsaWtlIGluIHRoaXMKPiBjYXNlKSwgdGhl
IHVuc3BlY2lmaWVkIG1lbWJlcnMgZ2V0IGluaXRpYWxpemVkIHRvIDAuCj4gCgpBbHNvLCB0byBi
YWNrIHRoYXQgY2xhaW0gYSBiaXQgbW9yZSwgd2hlbiB1c2luZyBkZXNpZ25hdGVkIGluaXRpYWxp
emVyc1sxXToKCiJPbWl0dGVkIGZpZWxkcyBhcmUgaW1wbGljaXRseSBpbml0aWFsaXplZCB0aGUg
c2FtZSBhcyBmb3Igb2JqZWN0cyB0aGF0CmhhdmUgc3RhdGljIHN0b3JhZ2UgZHVyYXRpb24uIgoK
WzFdCmh0dHBzOi8vZ2NjLmdudS5vcmcvb25saW5lZG9jcy9nY2MvRGVzaWduYXRlZC1Jbml0cy5o
dG1sI0Rlc2lnbmF0ZWQtSW5pdHMKCi0tIApKdWxpZW4gVGhpZXJyeQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
