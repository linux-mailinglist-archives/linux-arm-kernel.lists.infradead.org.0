Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8B1551BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 16:30:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z+Hx7BusyKeXRm7gHzGw3B0D0fM2onSJ1/hhRTLC+XY=; b=IQqh9+VVqaiEZQ
	DwOchiOmntiGnWUL5cAO7jiybZd90LQehY+jR9xWa+5G9Lxaa8B2HeIfyilO37ZTuetrz9uf9gaoW
	x280HlQKeNtKFXApbbwf5eE6zxIGrpJfESGLjEdGgucy+3qbuCTKR0R2F40jdqOmAjkwqcqhMmj80
	0CapacYKlf/88XFpl2taLplI0v0ivSILkXGkQnCsFL2eSsMQXFaDRL/c8+ww/NfFefeNaZh6C1T1V
	ktTK4QkgKEVNipX34nQRQdDDsS2/2to5NHPaz5eYFx64JlCTTVTZRiJdF8OfF7KoH0M+2FlSXeNFE
	WzLKNbuA1xgoFClTHvGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmTC-0005JO-M2; Tue, 25 Jun 2019 14:30:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmT2-0005If-0D
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 14:30:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8BA7C2B;
 Tue, 25 Jun 2019 07:30:38 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 847343F718;
 Tue, 25 Jun 2019 07:30:37 -0700 (PDT)
Subject: Re: "arm64: vdso: Substitute gettimeofday() with C implementation"
 breaks clang build
To: Qian Cai <cai@lca.pw>
References: <1561464964.5154.63.camel@lca.pw>
 <e86774e4-7470-5cb2-fc3e-b7c1f529d253@arm.com>
 <1561467369.5154.67.camel@lca.pw>
 <00a78980-6b9c-5d5b-ed01-b28bb34be022@arm.com>
 <1561470705.5154.68.camel@lca.pw>
 <5113362e-1256-6712-6ce8-9599b1806cf1@arm.com>
 <1561472887.5154.72.camel@lca.pw>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <bf7a6fa8-5cc3-0a7a-08ab-7607ca79d279@arm.com>
Date: Tue, 25 Jun 2019 15:30:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1561472887.5154.72.camel@lca.pw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_073040_156515_CD7B9D96 
X-CRM114-Status: GOOD (  16.66  )
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
Cc: ndesaulniers@google.com, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 natechancellor@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUWlhbiwKCk9uIDI1LzA2LzIwMTkgMTU6MjgsIFFpYW4gQ2FpIHdyb3RlOgo+IE9uIFR1ZSwg
MjAxOS0wNi0yNSBhdCAxNToxMSArMDEwMCwgVmluY2Vuem8gRnJhc2Npbm8gd3JvdGU6Cj4+IEhp
IFFpYW4sCj4+Cj4+IE9uIDI1LzA2LzIwMTkgMTQ6NTEsIFFpYW4gQ2FpIHdyb3RlOgo+Pj4gT24g
VHVlLCAyMDE5LTA2LTI1IGF0IDE0OjQwICswMTAwLCBWaW5jZW56byBGcmFzY2lubyB3cm90ZToK
Pj4+PiBPbiAyNS8wNi8yMDE5IDEzOjU2LCBRaWFuIENhaSB3cm90ZToKPj4+Pj4gT24gVHVlLCAy
MDE5LTA2LTI1IGF0IDEzOjQ3ICswMTAwLCBWaW5jZW56byBGcmFzY2lubyB3cm90ZToKPj4+Pj4+
IEhpIFFpYW4sCj4+Pj4+Pgo+Pj4+Pj4gT24gMjUvMDYvMjAxOSAxMzoxNiwgUWlhbiBDYWkgd3Jv
dGU6Cj4+Pj4+Pj4gVGhlIGxpbnV4LW5leHQgY29tbWl0ICJhcm02NDogdmRzbzogU3Vic3RpdHV0
ZSBnZXR0aW1lb2ZkYXkoKSB3aXRoIEMKPj4+Pj4+PiBpbXBsZW1lbnRhdGlvbiIgWzFdIGJyZWFr
cyBjbGFuZyBidWlsZC4KPj4+Pj4+Pgo+Pj4+Pj4+IGVycm9yOiBpbnZhbGlkIHZhbHVlICd0aW55
JyBpbiAnLW1jb2RlLW1vZGVsIHRpbnknCj4+Pj4+Pj4gbWFrZVsxXTogKioqIFtzY3JpcHRzL01h
a2VmaWxlLmJ1aWxkOjI3OToKPj4+Pj4+PiBhcmNoL2FybTY0L2tlcm5lbC92ZHNvL3ZnZXR0aW1l
b2ZkYXkub10gRXJyb3IgMQo+Pj4+Pj4+IG1ha2VbMV06ICoqKiBXYWl0aW5nIGZvciB1bmZpbmlz
aGVkIGpvYnMuLi4uCj4+Pj4+Pj4gbWFrZTogKioqIFthcmNoL2FybTY0L01ha2VmaWxlOjE4MDog
dmRzb19wcmVwYXJlXSBFcnJvciAyCj4+Pj4+Pj4KPj4+Pj4+PiBbMV0gaHR0cHM6Ly9wYXRjaHdv
cmsua2VybmVsLm9yZy9wYXRjaC8xMTAwOTY2My8KPj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IEkgYW0g
bm90IHN1cmUgd2hhdCBkb2VzIGV4YWN0bHkgYnJlYWsgZnJvbSB5b3VyIHJlcG9ydC4gQ291bGQg
eW91Cj4+Pj4+PiBwbGVhc2UKPj4+Pj4+IHByb3ZpZGUKPj4+Pj4+IG1vcmUgZGV0YWlscz8KPj4+
Pj4KPj4+Pj4gSGVyZSBpcyB0aGUgY29uZmlnIHRvIHJlcHJvZHVjZS4KPj4+Pj4KPj4+Pj4gaHR0
cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2NhaWxjYS9saW51eC1tbS9tYXN0ZXIvYXJt
NjQuY29uZmlnCj4+Pj4+Cj4+Pj4+ICMgbWFrZSBDQz1jbGFuZyAtaiAkKG5yX2NwdXMpCj4+Pj4+
Cj4+Pj4+IEkgY2FuIGdldCBpdCB3b3JraW5nIGFnYWluIGJ5IHJlbW92aW5nICItbWNtb2RlbD10
aW55IiBpbgo+Pj4+PiBhcmNoL2FybTY0L2tlcm5lbC92ZHNvL01ha2VmaWxlCj4+Pj4+Cj4+Pj4K
Pj4+PiBXaXRoIHlvdXIgZGVmY29uZmlnIEkgY2FuJ3Qgc3RpbGwgcmVwcm9kdWNlIHRoZSBwcm9i
bGVtLiBXaGljaCB2ZXJzaW9uIG9mCj4+Pj4gY2xhbmcKPj4+PiBhcmUgeW91IHVzaW5nPwo+Pj4K
Pj4+IENvbXBpbGVyOiBjbGFuZyB2ZXJzaW9uIDcuMC4xICh0YWdzL1JFTEVBU0VfNzAxL2ZpbmFs
KQo+Pj4KPj4KPj4gSSBhbSB1c2luZyBjbGFuZyA4LjAuMC4gQ291bGQgeW91IHBsZWFzZSB0cnkg
d2l0aCBpdCBhbmQgc2VlIGlmIHRoZSBpc3N1ZSBnb2VzCj4+IGF3YXk/Cj4gCj4gTG9va3MgbGlr
ZSB0aGUgInRpbnkiIHdhcyBhZGRlZCBzaW5jZSBjbGFuZyA4LjAuCj4gCj4gaHR0cHM6Ly9yZXZp
ZXdzLmxsdm0ub3JnL0Q0OTY3NAo+IAo+IGJ1dCBjbGFuZyA3LjAgaXMgc3RpbGwgdXNlIGluIG1h
bnkgZGlzdHJvcyBieSBkZWZhdWx0LCBzbyBtYXliZSB0aGlzIGNvbW1pdCBjYW4KPiBiZSBmaXhl
ZCBieSBhZGRpbmcgYSBjb25kaXRpb25hbCBjaGVjayB0byB1c2UgInNtYWxsIiBpZiBjbGFuZyB2
ZXJzaW9uIDwgOC4wLgo+IAoKSXQgaXMgd2hhdCBJIHRob3VnaHQgdGhhdCdzIHdoeSBJIGFza2Vk
IHRvIGNyb3NzLWNoZWNrLiBJIGRpZCBub3Qgd2FudCB0byByZW1vdmUKdGlueS4KClRoYW5rcyBm
b3IgeW91ciBzdXBwb3J0LCBJIHdpbGwgcG9zdCBhIHBhdGNoIGFkZGluZyB5b3VyIHRhZyBhcyBy
ZXBvcnRlZC1ieSBpZgp5b3UgYXJlIG9rIHdpdGggdGhhdC4KCj4+Cj4+IFRoYW5rcywKPj4gVmlu
Y2Vuem8KPj4KPj4+Pgo+Pj4+Pj4KPj4+Pj4+IE9uIG15IGVudjoKPj4+Pj4+Cj4+Pj4+PiAkIG1h
a2UgbXJwcm9wZXIgJiYgbWFrZSBkZWZjb25maWcgJiYgbWFrZSBDQz1jbGFuZyBIT1NUQ0M9Y2xh
bmcKPj4+Pj4+IC1qJChucHJvYykKPj4+Pj4+Cj4+Pj4+PiAuLi4KPj4+Pj4+Cj4+Pj4+PiBhcmNo
L2FybTY0L01ha2VmaWxlOjU2OiBDUk9TU19DT01QSUxFX0NPTVBBVCBpcyBjbGFuZywgdGhlIGNv
bXBhdCB2RFNPCj4+Pj4+PiB3aWxsCj4+Pj4+PiBub3QKPj4+Pj4+IGJlIGJ1aWx0Cj4+Pj4+Pgo+
Pj4+Pj4gLi4uCj4+Pj4+Pgo+Pj4+Pj4gwqAgTERTwqDCoMKgwqDCoGFyY2gvYXJtNjQva2VybmVs
L3Zkc28vdmRzby5sZHMKPj4+Pj4+IMKgIEFTwqDCoMKgwqDCoMKgYXJjaC9hcm02NC9rZXJuZWwv
dmRzby9ub3RlLm8KPj4+Pj4+IMKgIEFTwqDCoMKgwqDCoMKgYXJjaC9hcm02NC9rZXJuZWwvdmRz
by9zaWdyZXR1cm4ubwo+Pj4+Pj4gwqAgQ0PCoMKgwqDCoMKgwqBhcmNoL2FybTY0L2tlcm5lbC92
ZHNvL3ZnZXR0aW1lb2ZkYXkubwo+Pj4+Pj4gwqAgTETCoMKgwqDCoMKgwqBhcmNoL2FybTY0L2tl
cm5lbC92ZHNvL3Zkc28uc28uZGJnCj4+Pj4+PiDCoCBWRFNPQ0hLIGFyY2gvYXJtNjQva2VybmVs
L3Zkc28vdmRzby5zby5kYmcKPj4+Pj4+IMKgIFZEU09TWU0gaW5jbHVkZS9nZW5lcmF0ZWQvdmRz
by1vZmZzZXRzLmgKPj4+Pj4+Cj4+Pj4+PiAuLi4KPj4+Pj4+Cj4+Pj4+PiDCoCBMRMKgwqDCoMKg
wqDCoHZtbGludXgubwo+Pj4+Pj4gwqAgTU9EUE9TVCB2bWxpbnV4Lm8KPj4+Pj4+IMKgIE1PRElO
Rk8gbW9kdWxlcy5idWlsdGluLm1vZGluZm8KPj4+Pj4+IMKgIEtTWU3CoMKgwqDCoC50bXBfa2Fs
bHN5bXMxLm8KPj4+Pj4+IMKgIEtTWU3CoMKgwqDCoC50bXBfa2FsbHN5bXMyLm8KPj4+Pj4+IMKg
IExEwqDCoMKgwqDCoMKgdm1saW51eAo+Pj4+Pj4gwqAgU09SVEVYwqDCoHZtbGludXgKPj4+Pj4+
IMKgIFNZU01BUMKgwqBTeXN0ZW0ubWFwCj4+Pj4+PiDCoCBCdWlsZGluZyBtb2R1bGVzLCBzdGFn
ZSAyLgo+Pj4+Pj4gwqAgT0JKQ09QWSBhcmNoL2FybTY0L2Jvb3QvSW1hZ2UKPj4+Pj4+IMKgIE1P
RFBPU1QgNDgzIG1vZHVsZXMKPj4+Pj4+Cj4+Pj4KPj4+Pgo+Pgo+PgoKLS0gClJlZ2FyZHMsClZp
bmNlbnpvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
