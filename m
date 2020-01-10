Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 385E7137630
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 19:39:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NNmS7YQDx5c+HkTwfdOv2d4esaOa6+e+hdrNNn14TBM=; b=jly6NVFwUbTu/z
	mLCHMs7DT9u0rDXoCqRrIpJyqcv1/Cd5XZBIV990wLRAXFGsiciOUugKdf3ye+0RS2gGSdBpS64l9
	c2irmjBo4uEf1vz0esj755gXe83aRTTUzOyOVTghAv6PN4Rm1ACeMfE0Lq/qsy2pDhowKgDp4YABt
	W/mFchjAGNhlP8bUDQ+qlXi5aEOYhN34qko3oBKkwxXVRSM5RPGM879kyJjUQQZ3tIJTd7SxrEsH2
	/p4EBz8F8e+DQ3dmouoY5yu5k6CtSwF2/pKPWZtztuIeSnGiNGBNajb3CUaYwjyHjUiZM46XRvgAm
	PHckZqD4bdbyZ7FZXUuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipzC4-0003ih-7m; Fri, 10 Jan 2020 18:39:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipzBe-0003Wl-D8; Fri, 10 Jan 2020 18:39:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ED92330E;
 Fri, 10 Jan 2020 10:39:09 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E2C323F6C4;
 Fri, 10 Jan 2020 10:39:06 -0800 (PST)
Subject: Re: [RESEND PATCH v5 2/5] arm64/crash_core: Export TCR_EL1.T1SZ in
 vmcoreinfo
To: Bhupesh Sharma <bhsharma@redhat.com>
References: <1575057559-25496-1-git-send-email-bhsharma@redhat.com>
 <1575057559-25496-3-git-send-email-bhsharma@redhat.com>
 <63d6e63c-7218-d2dd-8767-4464be83603f@arm.com>
 <af0fd2b0-99db-9d58-bc8d-0dd9d640b1eb@redhat.com>
From: James Morse <james.morse@arm.com>
Message-ID: <f791e777-781c-86ce-7619-1de3fe3e7b90@arm.com>
Date: Fri, 10 Jan 2020 18:39:05 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <af0fd2b0-99db-9d58-bc8d-0dd9d640b1eb@redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_103910_552413_1AC5B89A 
X-CRM114-Status: GOOD (  23.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-doc@vger.kernel.org,
 Will Deacon <will@kernel.org>, x86@kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Dave Anderson <anderson@redhat.com>, Catalin Marinas <catalin.marinas@arm.com>,
 bhupesh.linux@gmail.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQmh1cGVzaCwKCk9uIDI1LzEyLzIwMTkgMTk6MDEsIEJodXBlc2ggU2hhcm1hIHdyb3RlOgo+
IE9uIDEyLzEyLzIwMTkgMDQ6MDIgUE0sIEphbWVzIE1vcnNlIHdyb3RlOgo+PiBPbiAyOS8xMS8y
MDE5IDE5OjU5LCBCaHVwZXNoIFNoYXJtYSB3cm90ZToKPj4+IHZhYml0c19hY3R1YWwgdmFyaWFi
bGUgb24gYXJtNjQgaW5kaWNhdGVzIHRoZSBhY3R1YWwgVkEgc3BhY2Ugc2l6ZSwKPj4+IGFuZCBh
bGxvd3MgYSBzaW5nbGUgYmluYXJ5IHRvIHN1cHBvcnQgYm90aCA0OC1iaXQgYW5kIDUyLWJpdCBW
QQo+Pj4gc3BhY2VzLgo+Pj4KPj4+IElmIHRoZSBBUk12OC4yLUxWQSBvcHRpb25hbCBmZWF0dXJl
IGlzIHByZXNlbnQsIGFuZCB3ZSBhcmUgcnVubmluZwo+Pj4gd2l0aCBhIDY0S0IgcGFnZSBzaXpl
OyB0aGVuIGl0IGlzIHBvc3NpYmxlIHRvIHVzZSA1Mi1iaXRzIG9mIGFkZHJlc3MKPj4+IHNwYWNl
IGZvciBib3RoIHVzZXJzcGFjZSBhbmQga2VybmVsIGFkZHJlc3Nlcy4gSG93ZXZlciwgYW55IGtl
cm5lbAo+Pj4gYmluYXJ5IHRoYXQgc3VwcG9ydHMgNTItYml0IG11c3QgYWxzbyBiZSBhYmxlIHRv
IGZhbGwgYmFjayB0byA0OC1iaXQKPj4+IGF0IGVhcmx5IGJvb3QgdGltZSBpZiB0aGUgaGFyZHdh
cmUgZmVhdHVyZSBpcyBub3QgcHJlc2VudC4KPj4+Cj4+PiBTaW5jZSBUQ1JfRUwxLlQxU1ogaW5k
aWNhdGVzIHRoZSBzaXplIG9mZnNldCBvZiB0aGUgbWVtb3J5IHJlZ2lvbgo+Pj4gYWRkcmVzc2Vk
IGJ5IFRUQlIxX0VMMSAoYW5kIGhlbmNlIGNhbiBiZSB1c2VkIGZvciBkZXRlcm1pbmluZyB0aGUK
Pj4+IHZhYml0c19hY3R1YWwgdmFsdWUpIGl0IG1ha2VzIG1vcmUgc2Vuc2UgdG8gZXhwb3J0IHRo
ZSBzYW1lIGluCj4+PiB2bWNvcmVpbmZvIHJhdGhlciB0aGFuIHZhYml0c19hY3R1YWwgdmFyaWFi
bGUsIGFzIHRoZSBuYW1lIG9mIHRoZQo+Pj4gdmFyaWFibGUgY2FuIGNoYW5nZSBpbiBmdXR1cmUg
a2VybmVsIHZlcnNpb25zLCBidXQgdGhlIGFyY2hpdGVjdHVyYWwKPj4+IGNvbnN0cnVjdHMgbGlr
ZSBUQ1JfRUwxLlQxU1ogY2FuIGJlIHVzZWQgYmV0dGVyIHRvIGluZGljYXRlIGludGVuZGVkCj4+
PiBzcGVjaWZpYyBmaWVsZHMgdG8gdXNlci1zcGFjZS4KPj4+Cj4+PiBVc2VyLXNwYWNlIHV0aWxp
dGllcyBsaWtlIG1ha2VkdW1wZmlsZSBhbmQgY3Jhc2gtdXRpbGl0eSwgbmVlZCB0bwo+Pj4gcmVh
ZC93cml0ZSB0aGlzIHZhbHVlIGZyb20vdG8gdm1jb3JlaW5mbwo+Pgo+PiAod3JpdGU/KQo+IAo+
IFllcywgYWxzbyB3cml0ZSBzbyB0aGF0IHRoZSB2bWNvcmVpbmZvIGZyb20gYW4gKGNyYXNoaW5n
KSBhcm02NCBzeXN0ZW0gY2FuIGJlIHVzZWQgZm9yCj4gYW5hbHlzaXMgb2YgdGhlIHJvb3QtY2F1
c2Ugb2YgcGFuaWMvY3Jhc2ggb24gc2F5IGFuIHg4Nl82NCBob3N0IHVzaW5nIHV0aWxpdGllcyBs
aWtlCj4gY3Jhc2gtdXRpbGl0eS9nZGIuCgpJIHJlYWQgdGhpcyBhcyBhcyAiVXNlci1zcGFjZSBb
Li4uXSBuZWVkcyB0byB3cml0ZSB0byB2bWNvcmVpbmZvIi4KCgo+Pj4gZm9yIGRldGVybWluaW5n
IGlmIGEgdmlydHVhbCBhZGRyZXNzIGxpZXMgaW4gdGhlIGxpbmVhciBtYXAgcmFuZ2UuCj4+Cj4+
IEkgdGhpbmsgdGhpcyBpcyBhIGZyYWdpbGUgZXhhbXBsZS4gVGhlIGRlYnVnZ2VyIHNob3VsZG4n
dCBuZWVkIHRvIGtub3cgdGhpcy4KPiAKPiBXZWxsIHRoYXQgdGhlIGN1cnJlbnQgdXNlci1zcGFj
ZSB1dGlsaXR5IGRlc2lnbiwgc28gSSBhbSBub3Qgc3VyZSB3ZSBjYW4gdHdlYWsgdGhhdCB0b28g
bXVjaC4KPiAKPj4+IFRoZSB1c2VyLXNwYWNlIGNvbXB1dGF0aW9uIGZvciBkZXRlcm1pbmluZyB3
aGV0aGVyIGFuIGFkZHJlc3MgbGllcyBpbgo+Pj4gdGhlIGxpbmVhciBtYXAgcmFuZ2UgaXMgdGhl
IHNhbWUgYXMgd2UgaGF2ZSBpbiBrZXJuZWwtc3BhY2U6Cj4+Pgo+Pj4gwqDCoCAjZGVmaW5lIF9f
aXNfbG1fYWRkcmVzcyhhZGRyKcKgwqDCoCAoISgoKHU2NClhZGRyKSAmIEJJVCh2YWJpdHNfYWN0
dWFsIC0gMSkpKQo+Pgo+PiBUaGlzIHdhcyBjaGFuZ2VkIHdpdGggMTRjMTI3Yzk1N2MxICgiYXJt
NjQ6IG1tOiBGbGlwIGtlcm5lbCBWQSBzcGFjZSIpLiBJZiB1c2VyLXNwYWNlCj4+IHRvb2xzIHJl
bHkgb24gJ2tub3dpbmcnIHRoZSBrZXJuZWwgbWVtb3J5IGxheW91dCwgdGhleSBtdXN0IGhhdmUg
dG8gY29uc3RhbnRseSBiZSBmaXhlZAo+PiBhbmQgdXBkYXRlZC4gVGhpcyBpcyBhIHBvb3IgYXJn
dW1lbnQgZm9yIGFkZGluZyB0aGlzIHRvIHNvbWV0aGluZyB0aGF0IGVuZHMgdXAgYXMgQUJJLgo+
IAo+IFNlZSBhYm92ZS4gVGhlIHVzZXItc3BhY2UgaGFzIHRvIHJlbHkgb24gc29tZSBBQkkvZ3Vh
cmFudGVlZCBoYXJkd2FyZS1zeW1ib2xzIHdoaWNoIGNhbiBiZQo+IHVzZWQgZm9yICdkZXRlcm1p
bmluZycgdGhlIGtlcm5lbCBtZW1vcnkgbGF5b3V0LgoKSSBkaXNhZ3JlZS4gRXZlcnl0aGluZyBh
bmQgYW55dGhpbmcgaW4gdGhlIGtlcm5lbCB3aWxsIGNoYW5nZS4gVGhlIEFCSSBydWxlcyBhcHBs
eSB0bwpzdHVmZiBleHBvc2VkIHZpYSBzeXNjYWxscyBhbmQga2VybmVsIGZpbGVzeXN0ZW1zLiBJ
dCBkb2VzIG5vdCBhcHBseSB0byBrZXJuZWwgaW50ZXJuYWxzLApsaWtlIHRoZSBtZW1vcnkgbGF5
b3V0IHdlIHVzZWQgeWVzdGVyZGF5LiAxNGMxMjdjOTU3YzEgaXMgYSBjYXNlIGluIHBvaW50LgoK
QSBkZWJ1Z2dlciB0cnlpbmcgdG8gcmVseSBvbiB0aGlzIHNvcnQgb2YgdGhpbmcgd291bGQgaGF2
ZSB0byBwbGF5IGNhdGNodXAgd2hlbmV2ZXIgaXQKY2hhbmdlcy4KCkknbSBsb29raW5nIGZvciBh
IGp1c3RpZmljYXRpb24gdGhhdCBpc24ndCBwYXBlci10aGluLiBQdXR0aW5nICdmb3IgZ3Vlc3Np
bmcgdGhlIG1lbW9yeQptYXAnIGluIHRoZSBjb21taXQgbWVzc2FnZSBnaXZlcyB0aGUgaW1wcmVz
c2lvbiB3ZSBjYW4gc3VwcG9ydCB0aGF0LgoKCj4+IEkgdGhpbmsgYSBiZXR0ZXIgYXJndW1lbnQg
aXMgd2Fsa2luZyB0aGUga2VybmVsIHBhZ2UgdGFibGVzIGZyb20gdGhlIGNvcmUgZHVtcC4KPj4g
Q29yZSBjb2RlJ3Mgdm1jb3JlaW5mbyBleHBvcnRzIHRoZSBsb2NhdGlvbiBvZiB0aGUga2VybmVs
IHBhZ2UgdGFibGVzLCBidXQgaW4gdGhlIGV4YW1wbGUKPj4gYWJvdmUgeW91IGNhbid0IHdhbGsg
dGhlbSB3aXRob3V0IGtub3dpbmcgaG93IFQxU1ogd2FzIGNvbmZpZ3VyZWQuCj4gCj4gU3VyZSwg
Ym90aCBtYWtlZHVtcGZpbGUgYW5kIGNyYXNoLXV0aWxpdHkgKHdoaWNoIHdhbGtzIHRoZSBrZXJu
ZWwgcGFnZSB0YWJsZXMgZnJvbSB0aGUKPiBjb3JlIGR1bXApIHVzZSB0aGlzIChhbmQgc2ltaWxh
cikgaW5mb3JtYXRpb24gY3VycmVudGx5IGluIHRoZSB1c2VyLXNwYWNlLgoKWy4uLl0KCj4+IChG
cm9tLW1lbW9yeTogb25lIG9mIHZtY29yZS9rY29yZSBpcyB2aXJ0dWFsbHkgYWRkcmVzc2VkLCB0
aGUgb3RoZXIgcGh5c2ljYWxseS4gRG9lcyB0aGlzCj4+IGZpeCB5b3VyIHBvYmxlbSBpbiBib3Ro
IGNhc2VzPykKPj4KPj4KPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC9jcmFzaF9j
b3JlLmMgYi9hcmNoL2FybTY0L2tlcm5lbC9jcmFzaF9jb3JlLmMKPj4+IGluZGV4IGNhNGMzZTEy
ZDhjNS4uZjc4MzEwYmE2NWVhIDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9rZXJuZWwvY3Jh
c2hfY29yZS5jCj4+PiArKysgYi9hcmNoL2FybTY0L2tlcm5lbC9jcmFzaF9jb3JlLmMKPj4+IEBA
IC03LDYgKzcsMTMgQEAKPj4+IMKgICNpbmNsdWRlIDxsaW51eC9jcmFzaF9jb3JlLmg+Cj4+PiDC
oCAjaW5jbHVkZSA8YXNtL21lbW9yeS5oPgo+Pgo+PiBZb3UgbmVlZCB0byBpbmNsdWRlIGFzbS9z
eXNyZWcuaCBmb3IgcmVhZF9zeXNyZWcoKSwgYW5kIGFzbS9wZ3RhYmxlLWh3ZGVmLmggZm9yIHRo
ZSBtYWNyb3MKPj4geW91IGFkZGVkLgo+IAo+IE9rLiBXaWxsIGNoZWNrIGFzIEkgZGlkIG5vdCBn
ZXQgYW55IGNvbXBpbGF0aW9uIGVycm9ycyB3aXRob3V0IHRoZSBzYW1lIGFuZCBidWlsZC1ib3Qg
YWxzbwo+IGRpZCBub3QgcmFpc2UgYSBmbGFnIGZvciB0aGUgbWlzc2luZyBpbmNsdWRlIGZpbGVz
LgoKRG9uJ3QgdHJ1c3QgdGhlIGhlYWRlciBqdW5nbGUhCgoKPj4+ICtzdGF0aWMgaW5saW5lIHU2
NCBnZXRfdGNyX2VsMV90MXN6KHZvaWQpOwo+IAo+PiBXaHkgZG8geW91IG5lZWQgdG8gZG8gdGhp
cz8KPiAKPiBXaXRob3V0IHRoaXMgSSB3YXMgZ2V0dGluZyBhIG1pc3NpbmcgZGVjbGFyYXRpb24g
ZXJyb3IsIHdoaWxlIGNvbXBpbGluZyB0aGUgY29kZS4KCk1pc3NpbmcgZGVjbGFyYXRpb24/Cgo+
Pj4gK3N0YXRpYyBpbmxpbmUgdTY0IGdldF90Y3JfZWwxX3Qxc3oodm9pZCkKPj4+ICt7Cj4+PiAr
wqDCoMKgIHJldHVybiAocmVhZF9zeXNyZWcodGNyX2VsMSkgJiBUQ1JfVDFTWl9NQVNLKSA+PiBU
Q1JfVDFTWl9PRkZTRVQ7Cj4+PiArfQoKSGVyZSBpdCBpcyEgKEkgbXVzdCBiZSBnb2luZyBtYWQu
Li4pCgoKVGhhbmtzLAoKSmFtZXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
