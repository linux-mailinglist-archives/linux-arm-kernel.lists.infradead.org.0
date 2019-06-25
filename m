Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B6E5509D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:41:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VCiJDpa1cqyArhjO9jkhHplINYv7IgQ/8sOG0gCGa3k=; b=EwIeRkgnBaL1/5
	QzKYZO3a3ID/JAKvNQ3LoCKwM0Xk7IapwAxdaA7d0AHDT5XWjVZekygpfRi7GFilRkd+Zc3rk5A7P
	hx1JqnQFV4E5aYYdHudYkiJX86pF4fl0IqConRUgInBmcC7i5YnFI6Ht3J9hxQuCQuZyOHZzn6NX3
	wgxMiVBML6X/SOvoUpCI2sIfrdonzFVaergYUZPJqYC840ohfhbm2gHlE6FFa+MPf76Ih3Ov3+QT7
	gHEhtXEP+N+IKPRhP3bkSEHb7xWeKFMyAgkkCiiFieskY4isPkeF3VqJzK5eDaFez+3jEE0aSyzNb
	TZwR2EMaIFzNL5SMU3eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflh9-0006j3-HS; Tue, 25 Jun 2019 13:41:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hflgh-0006bI-Sw
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:40:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C4A72B;
 Tue, 25 Jun 2019 06:40:40 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 87F233F718;
 Tue, 25 Jun 2019 06:40:39 -0700 (PDT)
Subject: Re: "arm64: vdso: Substitute gettimeofday() with C implementation"
 breaks clang build
To: Qian Cai <cai@lca.pw>
References: <1561464964.5154.63.camel@lca.pw>
 <e86774e4-7470-5cb2-fc3e-b7c1f529d253@arm.com>
 <1561467369.5154.67.camel@lca.pw>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <00a78980-6b9c-5d5b-ed01-b28bb34be022@arm.com>
Date: Tue, 25 Jun 2019 14:40:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1561467369.5154.67.camel@lca.pw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_064044_023740_6F5A8D49 
X-CRM114-Status: GOOD (  14.34  )
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

SGkgUWluLAoKT24gMjUvMDYvMjAxOSAxMzo1NiwgUWlhbiBDYWkgd3JvdGU6Cj4gT24gVHVlLCAy
MDE5LTA2LTI1IGF0IDEzOjQ3ICswMTAwLCBWaW5jZW56byBGcmFzY2lubyB3cm90ZToKPj4gSGkg
UWlhbiwKPj4KPj4gT24gMjUvMDYvMjAxOSAxMzoxNiwgUWlhbiBDYWkgd3JvdGU6Cj4+PiBUaGUg
bGludXgtbmV4dCBjb21taXQgImFybTY0OiB2ZHNvOiBTdWJzdGl0dXRlIGdldHRpbWVvZmRheSgp
IHdpdGggQwo+Pj4gaW1wbGVtZW50YXRpb24iIFsxXSBicmVha3MgY2xhbmcgYnVpbGQuCj4+Pgo+
Pj4gZXJyb3I6IGludmFsaWQgdmFsdWUgJ3RpbnknIGluICctbWNvZGUtbW9kZWwgdGlueScKPj4+
IG1ha2VbMV06ICoqKiBbc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyNzk6Cj4+PiBhcmNoL2FybTY0
L2tlcm5lbC92ZHNvL3ZnZXR0aW1lb2ZkYXkub10gRXJyb3IgMQo+Pj4gbWFrZVsxXTogKioqIFdh
aXRpbmcgZm9yIHVuZmluaXNoZWQgam9icy4uLi4KPj4+IG1ha2U6ICoqKiBbYXJjaC9hcm02NC9N
YWtlZmlsZToxODA6IHZkc29fcHJlcGFyZV0gRXJyb3IgMgo+Pj4KPj4+IFsxXSBodHRwczovL3Bh
dGNod29yay5rZXJuZWwub3JnL3BhdGNoLzExMDA5NjYzLwo+Pj4KPj4KPj4gSSBhbSBub3Qgc3Vy
ZSB3aGF0IGRvZXMgZXhhY3RseSBicmVhayBmcm9tIHlvdXIgcmVwb3J0LiBDb3VsZCB5b3UgcGxl
YXNlCj4+IHByb3ZpZGUKPj4gbW9yZSBkZXRhaWxzPwo+IAo+IEhlcmUgaXMgdGhlIGNvbmZpZyB0
byByZXByb2R1Y2UuCj4gCj4gaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2NhaWxj
YS9saW51eC1tbS9tYXN0ZXIvYXJtNjQuY29uZmlnCj4gCj4gIyBtYWtlIENDPWNsYW5nIC1qICQo
bnJfY3B1cykKPiAKPiBJIGNhbiBnZXQgaXQgd29ya2luZyBhZ2FpbiBieSByZW1vdmluZyAiLW1j
bW9kZWw9dGlueSIgaW4KPiBhcmNoL2FybTY0L2tlcm5lbC92ZHNvL01ha2VmaWxlCj4gCgpXaXRo
IHlvdXIgZGVmY29uZmlnIEkgY2FuJ3Qgc3RpbGwgcmVwcm9kdWNlIHRoZSBwcm9ibGVtLiBXaGlj
aCB2ZXJzaW9uIG9mIGNsYW5nCmFyZSB5b3UgdXNpbmc/Cgo+Pgo+PiBPbiBteSBlbnY6Cj4+Cj4+
ICQgbWFrZSBtcnByb3BlciAmJiBtYWtlIGRlZmNvbmZpZyAmJiBtYWtlIENDPWNsYW5nIEhPU1RD
Qz1jbGFuZyAtaiQobnByb2MpCj4+Cj4+IC4uLgo+Pgo+PiBhcmNoL2FybTY0L01ha2VmaWxlOjU2
OiBDUk9TU19DT01QSUxFX0NPTVBBVCBpcyBjbGFuZywgdGhlIGNvbXBhdCB2RFNPIHdpbGwKPj4g
bm90Cj4+IGJlIGJ1aWx0Cj4+Cj4+IC4uLgo+Pgo+PiDCoCBMRFPCoMKgwqDCoMKgYXJjaC9hcm02
NC9rZXJuZWwvdmRzby92ZHNvLmxkcwo+PiDCoCBBU8KgwqDCoMKgwqDCoGFyY2gvYXJtNjQva2Vy
bmVsL3Zkc28vbm90ZS5vCj4+IMKgIEFTwqDCoMKgwqDCoMKgYXJjaC9hcm02NC9rZXJuZWwvdmRz
by9zaWdyZXR1cm4ubwo+PiDCoCBDQ8KgwqDCoMKgwqDCoGFyY2gvYXJtNjQva2VybmVsL3Zkc28v
dmdldHRpbWVvZmRheS5vCj4+IMKgIExEwqDCoMKgwqDCoMKgYXJjaC9hcm02NC9rZXJuZWwvdmRz
by92ZHNvLnNvLmRiZwo+PiDCoCBWRFNPQ0hLIGFyY2gvYXJtNjQva2VybmVsL3Zkc28vdmRzby5z
by5kYmcKPj4gwqAgVkRTT1NZTSBpbmNsdWRlL2dlbmVyYXRlZC92ZHNvLW9mZnNldHMuaAo+Pgo+
PiAuLi4KPj4KPj4gwqAgTETCoMKgwqDCoMKgwqB2bWxpbnV4Lm8KPj4gwqAgTU9EUE9TVCB2bWxp
bnV4Lm8KPj4gwqAgTU9ESU5GTyBtb2R1bGVzLmJ1aWx0aW4ubW9kaW5mbwo+PiDCoCBLU1lNwqDC
oMKgwqAudG1wX2thbGxzeW1zMS5vCj4+IMKgIEtTWU3CoMKgwqDCoC50bXBfa2FsbHN5bXMyLm8K
Pj4gwqAgTETCoMKgwqDCoMKgwqB2bWxpbnV4Cj4+IMKgIFNPUlRFWMKgwqB2bWxpbnV4Cj4+IMKg
IFNZU01BUMKgwqBTeXN0ZW0ubWFwCj4+IMKgIEJ1aWxkaW5nIG1vZHVsZXMsIHN0YWdlIDIuCj4+
IMKgIE9CSkNPUFkgYXJjaC9hcm02NC9ib290L0ltYWdlCj4+IMKgIE1PRFBPU1QgNDgzIG1vZHVs
ZXMKPj4KCi0tIApSZWdhcmRzLApWaW5jZW56bwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
