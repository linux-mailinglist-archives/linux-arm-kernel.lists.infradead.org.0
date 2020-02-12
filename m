Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EF215AB6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 15:54:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z6vsFSAsATOHM2p7umLhxGtR7feUeJpIV2oI12vdkEE=; b=RNzVScl0R56sY/
	5kioL69C5TagEe9nIU4hWci2906GDIaO1sQLsZ5IVXDpfIxabcA6P5DLVrSVKBHdZ5Gl+vyvp05QR
	kgePPzygdMaKxUKBM0ShHOZcmzq3EKr+x8s2TU6Hzyy8RcXaXdmO6mEpTKYAE57moFGxDQCQhu+Ol
	whQ0l5UNhBZfQnYzL7qe3ur0zl1l+zoxThAp0gZGy0ED5ZIzqRN14AO+5Xw0f+slQx+fBg36ZxBOq
	AGnWaVTIQ4mUWZdB0v8lUzbcJgVSOst2ZetOwKhKcFVuhpsfBW8ZK5bCSgk/oL2Gbqw9Ga1Itzqpa
	K5oMnkvBW3faJey4v+Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1tPk-0002ga-P4; Wed, 12 Feb 2020 14:54:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1tPd-0002fq-Pa
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 14:54:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8540B328;
 Wed, 12 Feb 2020 06:54:48 -0800 (PST)
Received: from [10.1.194.46] (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 63BE63F68F;
 Wed, 12 Feb 2020 06:54:46 -0800 (PST)
Subject: Re: [PATCH v3 1/7] arm64: add support for the AMU extension v1
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>,
 Ionela Voinescu <ionela.voinescu@arm.com>, catalin.marinas@arm.com,
 will@kernel.org, mark.rutland@arm.com, maz@kernel.org, sudeep.holla@arm.com,
 lukasz.luba@arm.com, rjw@rjwysocki.net
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-2-ionela.voinescu@arm.com>
 <93472f17-6465-641d-ea82-3230b5697ffd@arm.com>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <b2b640ac-0cc3-b09e-1f6c-f01234295b3b@arm.com>
Date: Wed, 12 Feb 2020 14:54:45 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <93472f17-6465-641d-ea82-3230b5697ffd@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_065449_871941_B23F0F51 
X-CRM114-Status: GOOD (  14.75  )
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org, viresh.kumar@linaro.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvMDIvMjAyMCAxMTozMCwgU3V6dWtpIEt1cnVwcGFzc2VyeSBQb3Vsb3NlIHdyb3RlOgo+
PiArc3RhdGljIGJvb2wgaGFzX2FtdShjb25zdCBzdHJ1Y3QgYXJtNjRfY3B1X2NhcGFiaWxpdGll
cyAqY2FwLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnQgX191bnVzZWQpCj4+
ICt7Cj4+ICvCoMKgwqAgLyoKPj4gK8KgwqDCoMKgICogVGhlIEFNVSBleHRlbnNpb24gaXMgYSBu
b24tY29uZmxpY3RpbmcgZmVhdHVyZTogdGhlIGtlcm5lbCBjYW4KPj4gK8KgwqDCoMKgICogc2Fm
ZWx5IHJ1biBhIG1peCBvZiBDUFVzIHdpdGggYW5kIHdpdGhvdXQgc3VwcG9ydCBmb3IgdGhlCj4+
ICvCoMKgwqDCoCAqIGFjdGl2aXR5IG1vbml0b3JzIGV4dGVuc2lvbi4gVGhlcmVmb3JlLCBpZiBu
b3QgZGlzYWJsZWQgdGhyb3VnaAo+PiArwqDCoMKgwqAgKiB0aGUga2VybmVsIGNvbW1hbmQgbGlu
ZSBlYXJseSBwYXJhbWV0ZXIsIGVuYWJsZSB0aGUgY2FwYWJpbGl0eQo+PiArwqDCoMKgwqAgKiB0
byBhbGxvdyBhbnkgbGF0ZSBDUFUgdG8gdXNlIHRoZSBmZWF0dXJlLgo+PiArwqDCoMKgwqAgKgo+
PiArwqDCoMKgwqAgKiBXaXRoIHRoaXMgZmVhdHVyZSBlbmFibGVkLCB0aGUgY3B1X2VuYWJsZSBm
dW5jdGlvbiB3aWxsIGJlIGNhbGxlZAo+PiArwqDCoMKgwqAgKiBmb3IgYWxsIENQVXMgdGhhdCBt
YXRjaCB0aGUgY3JpdGVyaWEsIGluY2x1ZGluZyBzZWNvbmRhcnkgYW5kCj4+ICvCoMKgwqDCoCAq
IGhvdHBsdWdnZWQsIG1hcmtpbmcgdGhpcyBmZWF0dXJlIGFzIHByZXNlbnQgb24gdGhhdCByZXNw
ZWN0aXZlIENQVS4KPj4gK8KgwqDCoMKgICogVGhlIGVuYWJsZSBmdW5jdGlvbiB3aWxsIGFsc28g
cHJpbnQgYSBkZXRlY3Rpb24gbWVzc2FnZS4KPj4gK8KgwqDCoMKgICovCj4+ICsKPj4gK8KgwqDC
oCBpZiAoIWRpc2FibGVfYW11ICYmICF6YWxsb2NfY3B1bWFza192YXIoJmFtdV9jcHVzLCBHRlBf
S0VSTkVMKSkgewo+IAo+IFRoaXMgbG9va3MgcHJvYmxlbWF0aWMuIERvbid0IHdlIGVuZCB1cCBp
biBhbGxvY2F0aW5nIHRoZSBtZW1vcnkgZHVyaW5nCj4gImVhY2ggQ1BVIiBjaGVjayBhbmQgdGh1
cyBsZWFraW5nIG1lbW9yeSA/IERvIHdlIHJlYWxseSBuZWVkIHRvIGFsbG9jYXRlCj4gdGhpcyBk
eW5hbWljYWxseSA/Cj4gCgpGb3IgdGhlIHN0YXRpYyB2cyBkeW5hbWljIHRoaW5nLCBJIHRoaW5r
IGl0J3Mgbm90ICp0b28qIGltcG9ydGFudCBoZXJlIHNpbmNlCndlIGRvbid0IHJpc2sgcHduaW5n
IHRoZSBzdGFjayBiZWNhdXNlIG9mIHRoZSBjcHVtYXNrLiBUaGF0IHNhaWQsIGlmIHdlIGFyZQpz
b21ld2hhdCBwZWRhbnRpYyBhYm91dCBtZW1vcnkgdXNhZ2UsIHRoZSBzdGF0aWMgYWxsb2NhdGlv
biBpcyBkb25lCmFnYWluc3QgTlJfQ1BVUyB3aGVyZWFzIHRoZSBkeW5hbWljIG9uZSBpcyBkb25l
IGFnYWluc3QgbnJfY3B1X2lkcy4KUHJldHR5IGluY29uc2VxdWVudGlhbCBmb3IgYSBzaW5nbGUg
Y3B1bWFzaywgYnV0IEkgZ3Vlc3MgaXQgYWxsIGFkZHMgdXAKZXZlbnR1YWxseS4uLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
