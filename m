Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A50D7FC26B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 10:16:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IjmxZO4zwa6Z4kZTiTfnm48GnzzBxLfd8ZxLk9hluck=; b=BmtDFuI5/KNNCZvHatIp92ms9
	JTCtQPhUsx+1ZaIEamwXQTAELdv5MnMNdMEcqdGt26vBzgz9EvC5FefwH90waPONzTCJ9u75Di3Bb
	Mjb/8djpNeVt5D+P0H4l86XFxK8XYW3J5mU/1Q5v2iiUjU0xMAwO8U4uilvA81ydbJIrLFA7S55z+
	Ys/daKnvbQaWFB01jmt8C9QiOs0ffbdYD0CeLWXrZW7je27muOkOIC1mh0Y6mRckf8fO1QpNPUUHS
	7PVSj8DwyHqaNpElfDh3fOQusQgEaQi9m0ZOln9Zto41yAl2MR/05RiFsP66jGLUZnvEF0+kz7Y0F
	Ttn23VN0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVBER-0000dT-KY; Thu, 14 Nov 2019 09:16:03 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVBEJ-0000QU-NN
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 09:15:57 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 01:15:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,302,1569308400"; d="scan'208";a="203010612"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.6]) ([10.239.13.6])
 by fmsmga008.fm.intel.com with ESMTP; 14 Nov 2019 01:15:52 -0800
Subject: Re: [kbuild-all] Re: [arm-platforms:kvm-arm64/vcpu-xarray 42/49]
 arch/powerpc/kvm/powerpc.c:792:29: error: 'kvmppc_decrementer_wakeup' defined
 but not used
To: Marc Zyngier <maz@kernel.org>
References: <201911140103.uQVAr0CN%lkp@intel.com>
 <c11fdfaa843e2d0131680c864d061950@www.loen.fr>
 <5f2c6f45-1607-c77a-ab08-9723701e9901@intel.com>
 <20191114081853.39e64fc5@why>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <108a7d74-ee28-7d38-a8db-5f8573312abd@intel.com>
Date: Thu, 14 Nov 2019 17:15:33 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191114081853.39e64fc5@why>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_011555_775180_171B8734 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, kbuild-all@lists.01.org,
 kbuild test robot <lkp@intel.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMS8xNC8xOSA0OjE4IFBNLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4gT24gVGh1LCAxNCBO
b3YgMjAxOSAwODo1ODoxMCArMDgwMAo+IFJvbmcgQ2hlbiA8cm9uZy5hLmNoZW5AaW50ZWwuY29t
PiB3cm90ZToKPgo+PiBPbiAxMS8xNC8xOSAyOjAyIEFNLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+
PiBPbiAyMDE5LTExLTEzIDE3OjUxLCBrYnVpbGQgdGVzdCByb2JvdCB3cm90ZToKPj4+PiB0cmVl
Ogo+Pj4+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L21h
ei9hcm0tcGxhdGZvcm1zLmdpdAo+Pj4+IGt2bS1hcm02NC92Y3B1LXhhcnJheQo+Pj4+IGhlYWQ6
wqDCoCAxNDg3NDgwOTkzNjMzMjdkOGNiNTZhYWZkMzg2YjcwYWM4YzY4ODM3Cj4+Pj4gY29tbWl0
OiA2NGU2OTkxYzIyMzRjM2JhMWUzNmY5OTEzMDJiMWJiZTFiYjc5MWYxIFs0Mi80OV0gS1ZNOiBQ
UEM6Cj4+Pj4gTW92ZSBhbGwgdmNwdSBpbml0IGNvZGUgaW50byBrdm1fYXJjaF92Y3B1X2NyZWF0
ZSgpCj4+Pj4gY29uZmlnOiBwb3dlcnBjLWRlZmNvbmZpZyAoYXR0YWNoZWQgYXMgLmNvbmZpZykK
Pj4+PiBjb21waWxlcjogcG93ZXJwYzY0LWxpbnV4LWdjYyAoR0NDKSA3LjQuMAo+Pj4+IHJlcHJv
ZHVjZToKPj4+PiAgwqDCoMKgwqDCoMKgwqAgd2dldAo+Pj4+Cj4+Pj4gaHR0cHM6Ly9yYXcuZ2l0
aHVidXNlcmNvbnRlbnQuY29tL2ludGVsL2xrcC10ZXN0cy9tYXN0ZXIvc2Jpbi9tYWtlLmNyb3Nz
Cj4+Pj4gLU8gfi9iaW4vbWFrZS5jcm9zcwo+Pj4+ICDCoMKgwqDCoMKgwqDCoCBjaG1vZCAreCB+
L2Jpbi9tYWtlLmNyb3NzCj4+Pj4gIMKgwqDCoMKgwqDCoMKgIGdpdCBjaGVja291dCA2NGU2OTkx
YzIyMzRjM2JhMWUzNmY5OTEzMDJiMWJiZTFiYjc5MWYxCj4+Pj4gIMKgwqDCoMKgwqDCoMKgICMg
c2F2ZSB0aGUgYXR0YWNoZWQgLmNvbmZpZyB0byBsaW51eCBidWlsZCB0cmVlCj4+Pj4gIMKgwqDC
oMKgwqDCoMKgIEdDQ19WRVJTSU9OPTcuNC4wIG1ha2UuY3Jvc3MgQVJDSD1wb3dlcnBjCj4+Pj4K
Pj4+PiBJZiB5b3UgZml4IHRoZSBpc3N1ZSwga2luZGx5IGFkZCBmb2xsb3dpbmcgdGFnCj4+Pj4g
UmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+Pj4gV2VsbCwg
dGhpcyBicmFuY2ggd2FzIG5vdCBzdXBwb3NlZCB0byBiZSB0ZXN0ZWQgYXQgYWxsLi4uCj4+PiBJ
IGd1ZXNzIGl0IGlzIHRvbyBsYXRlIHRvIHRha2UgaXQgZG93biA6LSgKPj4+Cj4+PiAgwqDCoMKg
wqDCoMKgwqAgTS4KPj4gSGkgTWFyYywKPj4KPj4gVGhhbmtzIGZvciB0aGUgZXhwbGFuYXRpb24s
IHdlJ2xsIGJsYWNrbGlzdCB0aGlzIGJyYW5jaCB0byBhdm9pZGluZyB0ZXN0IGl0IGFnYWluLgo+
IFRoYW5rcyBSb25nLgo+Cj4gRm9yIG15IG93biBlZHVjYXRpb24sIGlzIHRoZXJlIGFuIG9mZmlj
aWFsIHdheSB0byBwcmV2ZW50IHRoZSBrYnVpbGQKPiByb2JvdCBmcm9tIHRlc3RpbmcgY2VydGFp
biBicmFuY2hlcz8gT3IgZmFpbGluZyB0aGF0LCBhIHdheSB0byB0ZWxsIGl0Cj4gdG8gb25seSBz
ZW5kIHJlcG9ydHMgdG8gYSBjZXJ0YWluIGVtYWlsIGFkZHJlc3MgaW5zdGVhZCBvZiBzcGFtbWlu
Zwo+IG1haWxpbmcgbGlzdHMgZm9yIGNvZGUgdGhhdCBpcyBleHBlY3RlZCB0byBiZSBwcm9ibGVt
YXRpYz8KPgo+IENoZWVycywKPgo+IAlNLgoKSGkgTWFyYywKCkNvdWxkIHlvdSB0ZWxsIHVzIHRo
ZSBicmFuY2ggcGF0dGVybiB0aGF0IHlvdSBkb24ndCB3YW50IGJvdCB0byB0ZXN0IG9yIAp0ZXN0
IHRoZW0gYnV0IG9ubHkgcmVwb3J0IHRvIHlvdT8KV2UgaGF2ZSBhIHdpa2kgZm9yIHRoZSByZXBv
IHNwZWMgCmh0dHBzOi8vZ2l0aHViLmNvbS9pbnRlbC9sa3AtdGVzdHMvd2lraS9SZXBvLVNwZWMs
IGFuZCB0aGUgcHJvZmlsZQppcyBhdCAKaHR0cHM6Ly9naXRodWIuY29tL2ludGVsL2xrcC10ZXN0
cy9ibG9iL21hc3Rlci9yZXBvL2xpbnV4L2FybS1wbGF0Zm9ybXMuCgpCZXN0IFJlZ2FyZHMsClJv
bmcgQ2hlbgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
