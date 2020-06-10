Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E091F56A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 16:12:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NP8haT+Cg2VSZLFG5Uvo5EqxoUR0KSiiPR0gcGTi1t8=; b=ISlosNXjxevzlV
	Ajl59QKPkiBvO086kF4OEO6AvgrPmxyukpMd1zkN8q4xNwPKf01oPYk6NUnHhwYs93smdcQKFNF+7
	WgfrYzcb4HYs3OtV4qe9K9spz7oZcOhFr5yijR6zhyCqLVP1hVX8xtJjeXCQZClsqBcDud4HlrbHY
	Z5ZbLa30RH9gxFvV+7ZpBxLnDjE2D2DGdC08o88xtF9gP2SjVTUEoK/KFFeCXcrkOuuCQ3YCRUCUJ
	YTUPLQkxNseRNOjBFJQkJ/TdZoTBw498ROBdN3Cmw+52pocQSIpvIHTwqTbg6ltoLvUIEMs76NLvy
	aqESnt2171ExuEkbloDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj1Sy-0005W5-ND; Wed, 10 Jun 2020 14:12:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj1Sq-0005VV-DC
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 14:12:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B0C4F1F1;
 Wed, 10 Jun 2020 07:12:21 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 50B713F6CF;
 Wed, 10 Jun 2020 07:12:20 -0700 (PDT)
Subject: Re: [PATCH 1/2] KVM: arm64: Make vcpu_cp1x() work on Big Endian hosts
To: Marc Zyngier <maz@kernel.org>, Robin Murphy <robin.murphy@arm.com>
References: <20200609084921.1448445-1-maz@kernel.org>
 <20200609084921.1448445-2-maz@kernel.org>
 <7c173265-3f8e-51df-d700-7e3658a0e4d8@arm.com>
 <7451e64c22d8432f998458e0343aee7f@kernel.org>
From: James Morse <james.morse@arm.com>
Message-ID: <5ab013a2-7213-4bf6-b616-ff39bda72ffb@arm.com>
Date: Wed, 10 Jun 2020 15:12:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <7451e64c22d8432f998458e0343aee7f@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_071224_537840_97B5D0B2 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 stable@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel-team@android.com, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywgUm9iaW4sCgpPbiAwOS8wNi8yMDIwIDEyOjQ4LCBNYXJjIFp5bmdpZXIgd3JvdGU6
Cj4gT24gMjAyMC0wNi0wOSAxMjo0MSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+PiBPbiAyMDIwLTA2
LTA5IDA5OjQ5LCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+PiBBQXJjaDMyIENQMXggcmVnaXN0ZXJz
IGFyZSBvdmVybGF5ZWQgb24gdGhlaXIgQUFyY2g2NCBjb3VudGVycGFydHMKPj4+IGluIHRoZSB2
Y3B1IHN0cnVjdC4gVGhpcyBsZWFkcyB0byBhbiBpbnRlcmVzdGluZyBwcm9ibGVtIGFzIHRoZXkK
Pj4+IGFyZSBzdG9yZWQgaW4gdGhlaXIgQ1BVLWxvY2FsIGZvcm1hdCwgYW5kIHRodXMgYSBDUDF4
IHJlZ2lzdGVyCj4+PiBkb2Vzbid0ICJoaXQiIHRoZSBsb3dlciAzMmJpdCBwb3J0aW9uIG9mIHRo
ZSBBQXJjaDY0IHJlZ2lzdGVyIG9uCj4+PiBhIEJFIGhvc3QuCj4+Pgo+Pj4gVG8gd29ya2Fyb3Vu
ZCB0aGlzIHVuZm9ydHVuYXRlIHNpdHVhdGlvbiwgaW50cm9kdWNlIGEgYmlhcyB0cmljawo+Pj4g
aW4gdGhlIHZjcHVfY3AxeCgpIGFjY2Vzc29ycyB3aGljaCBwaWNrcyB0aGUgY29ycmVjdCBoYWxm
IG9mIHRoZQo+Pj4gNjRiaXQgcmVnaXN0ZXIuCgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
aW5jbHVkZS9hc20va3ZtX2hvc3QuaCBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20va3ZtX2hvc3Qu
aAo+Pj4gaW5kZXggNTkwMjllOTBiNTU3Li5lODBjMGUwNmYyMzUgMTAwNjQ0Cj4+PiAtLS0gYS9h
cmNoL2FybTY0L2luY2x1ZGUvYXNtL2t2bV9ob3N0LmgKPj4+ICsrKyBiL2FyY2gvYXJtNjQvaW5j
bHVkZS9hc20va3ZtX2hvc3QuaAo+Pj4gQEAgLTQwNCw4ICs0MDQsMTQgQEAgdm9pZCB2Y3B1X3dy
aXRlX3N5c19yZWcoc3RydWN0IGt2bV92Y3B1ICp2Y3B1LCB1NjQgdmFsLCBpbnQgcmVnKTsKPj4+
IMKgwqAgKiBDUDE0IGFuZCBDUDE1IGxpdmUgaW4gdGhlIHNhbWUgYXJyYXksIGFzIHRoZXkgYXJl
IGJhY2tlZCBieSB0aGUKPj4+IMKgwqAgKiBzYW1lIHN5c3RlbSByZWdpc3RlcnMuCj4+PiDCoMKg
ICovCj4+PiAtI2RlZmluZSB2Y3B1X2NwMTQodixyKcKgwqDCoMKgwqDCoMKgICgodiktPmFyY2gu
Y3R4dC5jb3Byb1socildKQo+Pj4gLSNkZWZpbmUgdmNwdV9jcDE1KHYscinCoMKgwqDCoMKgwqDC
oCAoKHYpLT5hcmNoLmN0eHQuY29wcm9bKHIpXSkKPj4+ICsjaWZkZWYgQ1BVX0JJR19FTkRJQU4K
Pj4KPj4gQWhlbS4uLiBJIHRoaW5rIHlvdSdyZSBtaXNzaW5nIGEgIkNPTkZJR18iIHRoZXJlIDsp
Cj4gCj4gRHVoISBBcyBJIHNhaWQsIEkgZGlkbid0IHRlc3QgdGhlIHRoaW5nIGF0IGFsbCEgOy0p
Cj4gCj4+IEJvbnVzIHRyaWNrZXJ5IC0gZm9yIGEgMCBvciAxIHZhbHVlIHlvdSBjYW4gc2ltcGx5
IHVzZSBJU19FTkFCTEVEKCkuCj4gCj4gQmVhdXRpZnVsISBEZWZpbml0ZWx5IGEgbXVzdCEgOkQK
CldpdGggUm9iaW4ncyBzdWdnZXN0aW9uIG9mOgotLS0tLS0tLS0tLS0tLS0lPC0tLS0tLS0tLS0t
LS0tLQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9rdm1faG9zdC5oIGIvYXJj
aC9hcm02NC9pbmNsdWRlL2FzbS9rdm1faG9zdC5oCmluZGV4IDJhOTM1NDU3NzEyYi4uNTRlOWM3
ZWIzNTk2IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2t2bV9ob3N0LmgKKysr
IGIvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9rdm1faG9zdC5oCkBAIC00MDUsMTEgKzQwNSw3IEBA
IHZvaWQgdmNwdV93cml0ZV9zeXNfcmVnKHN0cnVjdCBrdm1fdmNwdSAqdmNwdSwgdTY0IHZhbCwg
aW50IHJlZyk7CiAgKiBDUDE0IGFuZCBDUDE1IGxpdmUgaW4gdGhlIHNhbWUgYXJyYXksIGFzIHRo
ZXkgYXJlIGJhY2tlZCBieSB0aGUKICAqIHNhbWUgc3lzdGVtIHJlZ2lzdGVycy4KICAqLwotI2lm
ZGVmIENQVV9CSUdfRU5ESUFOCi0jZGVmaW5lIENQeF9PRkZTRVQgICAgIDEKLSNlbHNlCi0jZGVm
aW5lIENQeF9PRkZTRVQgICAgIDAKLSNlbmRpZgorI2RlZmluZSBDUHhfT0ZGU0VUICAgICBJU19F
TkFCTEVEKENPTkZJR19DUFVfQklHX0VORElBTikKCiAjZGVmaW5lIHZjcHVfY3AxNCh2LHIpICAg
ICAgICAgKCh2KS0+YXJjaC5jdHh0LmNvcHJvWyhyKSBeIENQeF9PRkZTRVRdKQogI2RlZmluZSB2
Y3B1X2NwMTUodixyKSAgICAgICAgICgodiktPmFyY2guY3R4dC5jb3Byb1socikgXiBDUHhfT0ZG
U0VUXSkKLS0tLS0tLS0tLS0tLS0tJTwtLS0tLS0tLS0tLS0tLS0KClRlc3RlZC1ieTogSmFtZXMg
TW9yc2UgPGphbWVzLm1vcnNlQGFybS5jb20+CkFja2VkLWJ5OiBKYW1lcyBNb3JzZSA8amFtZXMu
bW9yc2VAYXJtLmNvbT4KCgpUaGFua3MsCgpKYW1lcwoKLS0tLS0KQmVmb3JlIHRoaXMgcGF0Y2gs
IGFuIGFhcmNoMzIgZ3Vlc3Qgb2YgYSBCRSBob3N0IHJlYWRpbmcgc3lzcmVncyBLVk0gaXMgdHJh
cC1hbmQtdW5kZWZmaW5nCmdldHM6CnwgQmFkIG1vZGUgaW4gcHJlZmV0Y2ggYWJvcnQgaGFuZGxl
ciBkZXRlY3RlZAp8IEludGVybmFsIGVycm9yOiBPb3BzIC0gYmFkIG1vZGU6IDAgWyMxXSBTTVAg
VEhVTUIyCnwgTW9kdWxlcyBsaW5rZWQgaW46CnwgQ1BVOiAwIFBJRDogMSBDb21tOiBzd2FwcGVy
LzAgTm90IHRhaW50ZWQgNS43LjArICMyNjAKfCBIYXJkd2FyZSBuYW1lOiBHZW5lcmljIERUIGJh
c2VkIHN5c3RlbQp8IFBDIGlzIGF0IDB4NAp8IExSIGlzIGF0IHNtcF9jcHVzX2RvbmUrMHg4NS8w
eDk4CnwgcGMgOiBbPDAwMDAwMDA0Pl0gICAgbHIgOiBbPDgwODAzNWNiPl0gICAgcHNyOiA2MDAw
MDA5Ygp8IHNwIDogOWY0YTFmMDggIGlwIDogMDAwMDAwMDMgIGZwIDogMDAwMDAwMDAKfCByMTA6
IDAwMDAwMDAwICByOSA6IDAwMDAwMDAwICByOCA6IDAwMDAwMDAwCnwgcjcgOiA4MDkwNGVhOCAg
cjYgOiA4MDkwNGY2YyAgcjUgOiAwMDAwMDAwMiAgcjQgOiAwMDBmNDI0MAp8IHIzIDogYmM2MDVj
MTIgIHIyIDogYmM2MDVjMTIgIHIxIDogMWYzOGMwMDAgIHIwIDogMDAwMGMzNDgKfCBGbGFnczog
blpDdiAgSVJRcyBvZmYgIEZJUXMgb24gIE1vZGUgVU5EXzMyICBJU0EgQVJNICBTZWdtZW50IG5v
bmUKfCBDb250cm9sOiA1MGM1MzgzZCAgVGFibGU6IDgwMDA0MDZhICBEQUM6IGJjNjA1YzEyCnwg
UHJvY2VzcyBzd2FwcGVyLzAgKHBpZDogMSwgc3RhY2sgbGltaXQgPSAweChwdHJ2YWwpKQpbLi4u
XQp8IFs8ODA4MDM1Y2I+XSAoc21wX2NwdXNfZG9uZSkgZnJvbSBbPDAwMDAwMDAyPl0gKDB4MikK
fCBDb2RlOiBiYWQgUEMgdmFsdWUKfCAtLS1bIGVuZCB0cmFjZSBiMzcyNzViZjQ4OWNhMjI1IF0t
LS0KCgppbnN0ZWFkIG9mIHRoZSB1bmRlZiBpdCBzbyByaWNobHkgZGVzZXJ2ZWQ6CnwgSW50ZXJu
YWwgZXJyb3I6IE9vcHMgLSB1bmRlZmluZWQgaW5zdHJ1Y3Rpb246IDAgWyMxXSBTTVAgVEhVTUIy
CnwgTW9kdWxlcyBsaW5rZWQgaW46CnwgQ1BVOiAwIFBJRDogMSBDb21tOiBzd2FwcGVyLzAgTm90
IHRhaW50ZWQgNS43LjArICMyNjAKfCBIYXJkd2FyZSBuYW1lOiBHZW5lcmljIERUIGJhc2VkIHN5
c3RlbQp8IFBDIGlzIGF0IHNtcF9jcHVzX2RvbmUrMHg4OC8weDk4CnwgTFIgaXMgYXQgc21wX2Nw
dXNfZG9uZSsweDg1LzB4OTgKfCBwYyA6IFs8ODA4MDM1Y2U+XSAgICBsciA6IFs8ODA4MDM1Y2I+
XSAgICBwc3I6IDYwMDAwMDczCnwgc3AgOiA5ZjQ5NWY1MCAgaXAgOiAwMDAwMDAwMSAgZnAgOiAw
MDAwMDAwMAp8IHIxMDogMDAwMDAwMDAgIHI5IDogMDAwMDAwMDAgIHI4IDogMDAwMDAwMDAKfCBy
NyA6IDgwOTA0ZWE4ICByNiA6IDgwOTA0ZjZjICByNSA6IDAwMDAwMDAxICByNCA6IDAwMDdhMTIw
CnwgcjMgOiA3ZjM4MjhkMiAgcjIgOiA3ZjM4MjhkMiAgcjEgOiAxZjM5ZjAwMCAgcjAgOiAwMDAw
YzM0OAp8IEZsYWdzOiBuWkN2ICBJUlFzIG9uICBGSVFzIG9mZiAgTW9kZSBTVkNfMzIgIElTQSBU
aHVtYiAgU2VnbWVudCBub25lCnwgQ29udHJvbDogNTBjNTM4M2QgIFRhYmxlOiA4MDAwNDA2YSAg
REFDOiAwMDAwMDA1MQp8IFByb2Nlc3Mgc3dhcHBlci8wIChwaWQ6IDEsIHN0YWNrIGxpbWl0ID0g
MHgocHRydmFsKSkKWy4uLl0KfCBbPDgwODAzNWNlPl0gKHNtcF9jcHVzX2RvbmUpIGZyb20gWzw4
MDgwMGY3Mz5dIChrZXJuZWxfaW5pdF9mcmVlYWJsZSsweGRmLzB4MjA0KQp8IFs8ODA4MDBmNzM+
XSAoa2VybmVsX2luaXRfZnJlZWFibGUpIGZyb20gWzw4MDVhYTJhNz5dIChrZXJuZWxfaW5pdCsw
eDcvMHhjOCkKfCBbPDgwNWFhMmE3Pl0gKGtlcm5lbF9pbml0KSBmcm9tIFs8ODAxMDAxNTk+XSAo
cmV0X2Zyb21fZm9yaysweDExLzB4MzgpCnwgQ29kZTogZjdmZiBmOGI5IGYyNGMgMzA0OCAoZWUx
MSkgMWYzMAp8IC0tLVsgZW5kIHRyYWNlIDRjNzhkY2Q4NDYwZTYwNDEgXS0tLQoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
