Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E8418F42C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 13:15:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QpYL8QoCVw9Kp8yLBPt9MHDs5B26KjPTmVM/hqcf0yU=; b=o6fiE+7J6LvpFN
	HPPaa1rNk/f6COlVtl1Ho2j5IeiHTL1SSL6ysyYW58ArplcyMajBpjdr7cq/aHeMtviBDi1ZBu7Eq
	8r077h5AghSWDwW0zMBKBbMR+I3wkxP5EINCvIZfB5Ouc7Y5RzfrmVaMVGa8X+Vw6bULvkfieTPSo
	HDX4HBEXb/oScH2yF5BKlk0W9UeLYSHiWD929zsXgIzBDaVRCRSWhFfxcSMGULwL5TBsMwYi6ICXf
	QTVlobTB/ePC0O2ejoU2e0wnynPBQIAZrSqfZbysxdAc3K9qSJ6i/lyLBx1LPun9KFjHVm51LUdai
	uEsAd+T5s5ksSRrU8lzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGLyn-0005Lm-HQ; Mon, 23 Mar 2020 12:14:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGLyd-0005LA-JJ
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 12:14:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 463A51FB;
 Mon, 23 Mar 2020 05:14:42 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A19193F52E;
 Mon, 23 Mar 2020 05:14:40 -0700 (PDT)
Date: Mon, 23 Mar 2020 12:14:37 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: =?utf-8?B?UsOpbWk=?= Denis-Courmont <remi@remlab.net>
Subject: Re: [PATCH 1/3] arm64: clean up trampoline vector loads
Message-ID: <20200323121437.GC2597@C02TD0UTHF1T.local>
References: <1938400.7m7sAWtiY1@basile.remlab.net>
 <20200319091407.51449-1-remi@remlab.net>
 <20200323120700.GB2597@C02TD0UTHF1T.local>
 <2345780.q8flsOIESp@basile.remlab.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2345780.q8flsOIESp@basile.remlab.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_051443_681400_D0F44C9B 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: catalin.marinas@arm.com, will@kernel.org, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXIgMjMsIDIwMjAgYXQgMDI6MDg6NTNQTSArMDIwMCwgUsOpbWkgRGVuaXMtQ291
cm1vbnQgd3JvdGU6Cj4gTGUgbWFhbmFudGFpbmEgMjMuIG1hYWxpc2t1dXRhIDIwMjAsIDE0LjA3
LjAwIEVFVCBNYXJrIFJ1dGxhbmQgYSDDqWNyaXQgOgo+ID4gT24gVGh1LCBNYXIgMTksIDIwMjAg
YXQgMTE6MTQ6MDVBTSArMDIwMCwgUsOpbWkgRGVuaXMtQ291cm1vbnQgd3JvdGU6Cj4gPiA+IEZy
b206IFLDqW1pIERlbmlzLUNvdXJtb250IDxyZW1pLmRlbmlzLmNvdXJtb250QGh1YXdlaS5jb20+
Cj4gPiA+IAo+ID4gPiBUaGlzIHN3aXRjaGVzIGZyb20gY3VzdG9tIGluc3RydWN0aW9uIHBhdHRl
cm5zIHRvIHRoZSByZWd1bGFyIGxhcmdlCj4gPiA+IG1lbW9yeSBtb2RlbCBzZXF1ZW5jZSB3aXRo
IEFEUlAgYW5kIExEUi4gSW4gZG9pbmcgc28sIHRoZSBBREQKPiA+ID4gaW5zdHJ1Y3Rpb24gY2Fu
IGJlIGVsaW1pbmF0ZWQgaW4gdGhlIFNERUkgaGFuZGxlciwgYW5kIHRoZSBjb2RlIG5vCj4gPiA+
IGxvbmdlciBhc3N1bWVzIHRoYXQgdGhlIHRyYW1wb2xpbmUgdmVjdG9ycyBhbmQgdGhlIHZlY3Rv
cnMgYWRkcmVzcyBib3RoCj4gPiA+IHN0YXJ0IG9uIGEgcGFnZSBib3VuZGFyeS4KPiA+ID4gCj4g
PiA+IFNpZ25lZC1vZmYtYnk6IFLDqW1pIERlbmlzLUNvdXJtb250IDxyZW1pLmRlbmlzLmNvdXJt
b250QGh1YXdlaS5jb20+Cj4gPiA+IC0tLQo+ID4gPiAKPiA+ID4gIGFyY2gvYXJtNjQva2VybmVs
L2VudHJ5LlMgfCA5ICsrKystLS0tLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKSwgNSBkZWxldGlvbnMoLSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2tlcm5lbC9lbnRyeS5TIGIvYXJjaC9hcm02NC9rZXJuZWwvZW50cnkuUwo+ID4gPiBpbmRleCBl
NWQ0ZTMwZWUyNDIuLjI0ZjgyODczOTY5NiAxMDA2NDQKPiA+ID4gLS0tIGEvYXJjaC9hcm02NC9r
ZXJuZWwvZW50cnkuUwo+ID4gPiArKysgYi9hcmNoL2FybTY0L2tlcm5lbC9lbnRyeS5TCj4gPiA+
IEBAIC04MDUsOSArODA1LDkgQEAgYWx0ZXJuYXRpdmVfZWxzZV9ub3BfZW5kaWYKPiA+ID4gCj4g
PiA+ICAyOgo+ID4gPiAgCXRyYW1wX21hcF9rZXJuZWwJeDMwCj4gPiA+ICAKPiA+ID4gICNpZmRl
ZiBDT05GSUdfUkFORE9NSVpFX0JBU0UKPiA+ID4gCj4gPiA+IC0JYWRyCXgzMCwgdHJhbXBfdmVj
dG9ycyArIFBBR0VfU0laRQo+ID4gPiArCWFkcnAJeDMwLCB0cmFtcF92ZWN0b3JzICsgUEFHRV9T
SVpFCj4gPiA+IAo+ID4gPiAgYWx0ZXJuYXRpdmVfaW5zbiBpc2IsIG5vcCwgQVJNNjRfV09SS0FS
T1VORF9RQ09NX0ZBTEtPUl9FMTAwMwo+ID4gPiAKPiA+ID4gLQlsZHIJeDMwLCBbeDMwXQo+ID4g
PiArCWxkcgl4MzAsIFt4MzAsICM6bG8xMjpfX2VudHJ5X3RyYW1wX2RhdGFfc3RhcnRdCj4gPiAK
PiA+IEkgdGhpbmsgdGhpcyBpcyBidXN0ZWQgZm9yICE0SyBrZXJuZWxzIG9uY2Ugd2UgcmVkdWNl
IHRoZSBhbGlnbm1lbnQgb2YKPiA+IF9fZW50cnlfdHJhbXBfZGF0YV9zdGFydC4KPiA+IAo+ID4g
VGhlIEFEUlAgZ2l2ZXMgdXMgYSA2NEsgYWxpZ25lZCBhZGRyZXNzICh3aXRoIGJpdHMgMTU6MCBj
bGVhcikuIFRoZSBsbzEyCj4gPiByZWxvY2F0aW9uIGdpdmVzIHVzIGJpdHMgMTE6MCwgc28gd2Ug
aGF2ZW4ndCBhY2NvdW50ZWQgZm9yIGJpdHMgMTU6MTIuCj4gCj4gSU1VLCBBRFJQIGdpdmVzIGEg
NEsgYWxpZ25lZCB2YWx1ZSwgcmVnYXJkbGVzcyBvZiBNTVUgKFRDUikgc2V0dGluZ3MuCgpTb3Jy
eSwgSSBoYWQgZXJyb25lb3VzbHkgYXNzdW1lZCB0cmFtcF92ZWN0b3JzIHdhcyBwYWdlIGFsaWdu
ZWQuIFRoZQppc3N1ZSBzdGlsbCBzdGFuZHMgLS0gd2UgaGF2ZW4ndCBhY2NvdW50ZWQgZm9yIGJp
dHMgMTU6MTIsIGFzIHRob3NlIGNhbgpkaWZmZXIgYmV0d2VlbiB0cmFtcF92ZWN0b3JzIGFuZCBf
X2VudHJ5X3RyYW1wX2RhdGFfc3RhcnQuCgpUaGFua3MsCk1hcmsuCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
