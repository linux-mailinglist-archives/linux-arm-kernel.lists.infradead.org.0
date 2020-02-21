Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EB51678F2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 10:06:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Az1dtm6OvgX+qLyGJYdeuD1/r3qA1DOm5R6vuzF/8o4=; b=Cb5T/oA5uqvO+wsHcKPq21oGo
	Hg4ZB1Plm1Vygf1Sea6fBNV2WpC2pgQ3FtxrcZkUS0A3K0/4XcJ1K+Fy5Xrhbqjz53Mzg4ulaXKoA
	JSCVXi4MAJQ9g6nvSWEUdAY1+cqVOD7O12VQ33GDaGf7ZG9gHt3Uo2Ev67cGd1LtPQpDJlFGxm9Ax
	eQA65gZMuKhXxD4AidRKKJjutOFEfiR8SztqGOgI0j2EVd/gM5i28tiTEecgzVmV9f6IWOmxdd7pD
	TtZ50K3BUrnxIAUkrbyiqLDZPiOxHpoXEI3Fg2sYTwTyy3lVuEMPFmweoX/j1VRnsxaIaC3SVIw+h
	OsqhDE+hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j54GM-00066R-VY; Fri, 21 Feb 2020 09:06:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j54GD-00064L-9A; Fri, 21 Feb 2020 09:06:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2835A31B;
 Fri, 21 Feb 2020 01:06:09 -0800 (PST)
Received: from [10.162.16.116] (a075563-lin.blr.arm.com [10.162.16.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 233B23F68F;
 Fri, 21 Feb 2020 01:06:04 -0800 (PST)
Subject: Re: [RESEND PATCH v5 2/5] arm64/crash_core: Export TCR_EL1.T1SZ in
 vmcoreinfo
To: Bhupesh Sharma <bhsharma@redhat.com>, Dave Anderson
 <anderson@redhat.com>, James Morse <james.morse@arm.com>
References: <1575057559-25496-1-git-send-email-bhsharma@redhat.com>
 <1575057559-25496-3-git-send-email-bhsharma@redhat.com>
 <63d6e63c-7218-d2dd-8767-4464be83603f@arm.com>
 <af0fd2b0-99db-9d58-bc8d-0dd9d640b1eb@redhat.com>
 <f791e777-781c-86ce-7619-1de3fe3e7b90@arm.com>
 <351975548.1986001.1578682810951.JavaMail.zimbra@redhat.com>
 <04287d60-e99e-631b-c134-d6dc39e6a193@redhat.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <974f3601-25f8-f4e6-43a8-ff4275e9c174@arm.com>
Date: Fri, 21 Feb 2020 14:36:05 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <04287d60-e99e-631b-c134-d6dc39e6a193@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_010613_410218_64E99157 
X-CRM114-Status: GOOD (  29.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 bhupesh linux <bhupesh.linux@gmail.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Steve Capper <steve.capper@arm.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQmh1cGVzaCwKCk9uIDEvMTMvMjAgNTo0NCBQTSwgQmh1cGVzaCBTaGFybWEgd3JvdGU6Cj4g
SGkgSmFtZXMsCj4gCj4gT24gMDEvMTEvMjAyMCAxMjozMCBBTSwgRGF2ZSBBbmRlcnNvbiB3cm90
ZToKPj4KPj4gLS0tLS0gT3JpZ2luYWwgTWVzc2FnZSAtLS0tLQo+Pj4gSGkgQmh1cGVzaCwKPj4+
Cj4+PiBPbiAyNS8xMi8yMDE5IDE5OjAxLCBCaHVwZXNoIFNoYXJtYSB3cm90ZToKPj4+PiBPbiAx
Mi8xMi8yMDE5IDA0OjAyIFBNLCBKYW1lcyBNb3JzZSB3cm90ZToKPj4+Pj4gT24gMjkvMTEvMjAx
OSAxOTo1OSwgQmh1cGVzaCBTaGFybWEgd3JvdGU6Cj4+Pj4+PiB2YWJpdHNfYWN0dWFsIHZhcmlh
YmxlIG9uIGFybTY0IGluZGljYXRlcyB0aGUgYWN0dWFsIFZBIHNwYWNlIHNpemUsCj4+Pj4+PiBh
bmQgYWxsb3dzIGEgc2luZ2xlIGJpbmFyeSB0byBzdXBwb3J0IGJvdGggNDgtYml0IGFuZCA1Mi1i
aXQgVkEKPj4+Pj4+IHNwYWNlcy4KPj4+Pj4+Cj4+Pj4+PiBJZiB0aGUgQVJNdjguMi1MVkEgb3B0
aW9uYWwgZmVhdHVyZSBpcyBwcmVzZW50LCBhbmQgd2UgYXJlIHJ1bm5pbmcKPj4+Pj4+IHdpdGgg
YSA2NEtCIHBhZ2Ugc2l6ZTsgdGhlbiBpdCBpcyBwb3NzaWJsZSB0byB1c2UgNTItYml0cyBvZiBh
ZGRyZXNzCj4+Pj4+PiBzcGFjZSBmb3IgYm90aCB1c2Vyc3BhY2UgYW5kIGtlcm5lbCBhZGRyZXNz
ZXMuIEhvd2V2ZXIsIGFueSBrZXJuZWwKPj4+Pj4+IGJpbmFyeSB0aGF0IHN1cHBvcnRzIDUyLWJp
dCBtdXN0IGFsc28gYmUgYWJsZSB0byBmYWxsIGJhY2sgdG8gNDgtYml0Cj4+Pj4+PiBhdCBlYXJs
eSBib290IHRpbWUgaWYgdGhlIGhhcmR3YXJlIGZlYXR1cmUgaXMgbm90IHByZXNlbnQuCj4+Pj4+
Pgo+Pj4+Pj4gU2luY2UgVENSX0VMMS5UMVNaIGluZGljYXRlcyB0aGUgc2l6ZSBvZmZzZXQgb2Yg
dGhlIG1lbW9yeSByZWdpb24KPj4+Pj4+IGFkZHJlc3NlZCBieSBUVEJSMV9FTDEgKGFuZCBoZW5j
ZSBjYW4gYmUgdXNlZCBmb3IgZGV0ZXJtaW5pbmcgdGhlCj4+Pj4+PiB2YWJpdHNfYWN0dWFsIHZh
bHVlKSBpdCBtYWtlcyBtb3JlIHNlbnNlIHRvIGV4cG9ydCB0aGUgc2FtZSBpbgo+Pj4+Pj4gdm1j
b3JlaW5mbyByYXRoZXIgdGhhbiB2YWJpdHNfYWN0dWFsIHZhcmlhYmxlLCBhcyB0aGUgbmFtZSBv
ZiB0aGUKPj4+Pj4+IHZhcmlhYmxlIGNhbiBjaGFuZ2UgaW4gZnV0dXJlIGtlcm5lbCB2ZXJzaW9u
cywgYnV0IHRoZSBhcmNoaXRlY3R1cmFsCj4+Pj4+PiBjb25zdHJ1Y3RzIGxpa2UgVENSX0VMMS5U
MVNaIGNhbiBiZSB1c2VkIGJldHRlciB0byBpbmRpY2F0ZSBpbnRlbmRlZAo+Pj4+Pj4gc3BlY2lm
aWMgZmllbGRzIHRvIHVzZXItc3BhY2UuCj4+Pj4+Pgo+Pj4+Pj4gVXNlci1zcGFjZSB1dGlsaXRp
ZXMgbGlrZSBtYWtlZHVtcGZpbGUgYW5kIGNyYXNoLXV0aWxpdHksIG5lZWQgdG8KPj4+Pj4+IHJl
YWQvd3JpdGUgdGhpcyB2YWx1ZSBmcm9tL3RvIHZtY29yZWluZm8KPj4+Pj4KPj4+Pj4gKHdyaXRl
PykKPj4+Pgo+Pj4+IFllcywgYWxzbyB3cml0ZSBzbyB0aGF0IHRoZSB2bWNvcmVpbmZvIGZyb20g
YW4gKGNyYXNoaW5nKSBhcm02NCAKPj4+PiBzeXN0ZW0gY2FuCj4+Pj4gYmUgdXNlZCBmb3IKPj4+
PiBhbmFseXNpcyBvZiB0aGUgcm9vdC1jYXVzZSBvZiBwYW5pYy9jcmFzaCBvbiBzYXkgYW4geDg2
XzY0IGhvc3QgdXNpbmcKPj4+PiB1dGlsaXRpZXMgbGlrZQo+Pj4+IGNyYXNoLXV0aWxpdHkvZ2Ri
Lgo+Pj4KPj4+IEkgcmVhZCB0aGlzIGFzIGFzICJVc2VyLXNwYWNlIFsuLi5dIG5lZWRzIHRvIHdy
aXRlIHRvIHZtY29yZWluZm8iLgo+IAo+IFRoYXQncyBjb3JyZWN0LiBCdXQgZm9yIHdyaXRpbmcg
dG8gdm1jb3JlIGR1bXAgaW4gdGhlIGtkdW1wIGtlcm5lbCwgd2UgCj4gbmVlZCB0byByZWFkIHRo
ZSBzeW1ib2xzIGZyb20gdGhlIHZtY29yZWluZm8gaW4gdGhlIHByaW1hcnkga2VybmVsLgo+IAo+
Pj4+Pj4gZm9yIGRldGVybWluaW5nIGlmIGEgdmlydHVhbCBhZGRyZXNzIGxpZXMgaW4gdGhlIGxp
bmVhciBtYXAgcmFuZ2UuCj4+Pj4+Cj4+Pj4+IEkgdGhpbmsgdGhpcyBpcyBhIGZyYWdpbGUgZXhh
bXBsZS4gVGhlIGRlYnVnZ2VyIHNob3VsZG4ndCBuZWVkIHRvIGtub3cKPj4+Pj4gdGhpcy4KPj4+
Pgo+Pj4+IFdlbGwgdGhhdCB0aGUgY3VycmVudCB1c2VyLXNwYWNlIHV0aWxpdHkgZGVzaWduLCBz
byBJIGFtIG5vdCBzdXJlIHdlIAo+Pj4+IGNhbgo+Pj4+IHR3ZWFrIHRoYXQgdG9vIG11Y2guCj4+
Pj4KPj4+Pj4+IFRoZSB1c2VyLXNwYWNlIGNvbXB1dGF0aW9uIGZvciBkZXRlcm1pbmluZyB3aGV0
aGVyIGFuIGFkZHJlc3MgbGllcyBpbgo+Pj4+Pj4gdGhlIGxpbmVhciBtYXAgcmFuZ2UgaXMgdGhl
IHNhbWUgYXMgd2UgaGF2ZSBpbiBrZXJuZWwtc3BhY2U6Cj4+Pj4+Pgo+Pj4+Pj4gwqDCoMKgICNk
ZWZpbmUgX19pc19sbV9hZGRyZXNzKGFkZHIpwqDCoMKgICghKCgodTY0KWFkZHIpICYgCj4+Pj4+
PiBCSVQodmFiaXRzX2FjdHVhbCAtCj4+Pj4+PiDCoMKgwqAgMSkpKQo+Pj4+Pgo+Pj4+PiBUaGlz
IHdhcyBjaGFuZ2VkIHdpdGggMTRjMTI3Yzk1N2MxICgiYXJtNjQ6IG1tOiBGbGlwIGtlcm5lbCBW
QSAKPj4+Pj4gc3BhY2UiKS4gSWYKPj4+Pj4gdXNlci1zcGFjZQo+Pj4+PiB0b29scyByZWx5IG9u
ICdrbm93aW5nJyB0aGUga2VybmVsIG1lbW9yeSBsYXlvdXQsIHRoZXkgbXVzdCBoYXZlIHRvCj4+
Pj4+IGNvbnN0YW50bHkgYmUgZml4ZWQKPj4+Pj4gYW5kIHVwZGF0ZWQuIFRoaXMgaXMgYSBwb29y
IGFyZ3VtZW50IGZvciBhZGRpbmcgdGhpcyB0byBzb21ldGhpbmcgdGhhdAo+Pj4+PiBlbmRzIHVw
IGFzIEFCSS4KPj4+Pgo+Pj4+IFNlZSBhYm92ZS4gVGhlIHVzZXItc3BhY2UgaGFzIHRvIHJlbHkg
b24gc29tZSBBQkkvZ3VhcmFudGVlZAo+Pj4+IGhhcmR3YXJlLXN5bWJvbHMgd2hpY2ggY2FuIGJl
Cj4+Pj4gdXNlZCBmb3IgJ2RldGVybWluaW5nJyB0aGUga2VybmVsIG1lbW9yeSBsYXlvdXQuCj4+
Pgo+Pj4gSSBkaXNhZ3JlZS4gRXZlcnl0aGluZyBhbmQgYW55dGhpbmcgaW4gdGhlIGtlcm5lbCB3
aWxsIGNoYW5nZS4gVGhlIAo+Pj4gQUJJIHJ1bGVzIGFwcGx5IHRvCj4+PiBzdHVmZiBleHBvc2Vk
IHZpYSBzeXNjYWxscyBhbmQga2VybmVsIGZpbGVzeXN0ZW1zLiBJdCBkb2VzIG5vdCBhcHBseSAK
Pj4+IHRvIGtlcm5lbCBpbnRlcm5hbHMsCj4+PiBsaWtlIHRoZSBtZW1vcnkgbGF5b3V0IHdlIHVz
ZWQgeWVzdGVyZGF5LiAxNGMxMjdjOTU3YzEgaXMgYSBjYXNlIGluIAo+Pj4gcG9pbnQuCj4+Pgo+
Pj4gQSBkZWJ1Z2dlciB0cnlpbmcgdG8gcmVseSBvbiB0aGlzIHNvcnQgb2YgdGhpbmcgd291bGQg
aGF2ZSB0byBwbGF5IAo+Pj4gY2F0Y2h1cCB3aGVuZXZlciBpdAo+Pj4gY2hhbmdlcy4KPj4KPj4g
RXhhY3RseS7CoCBUaGF0J3MgdGhlIHdob2xlIHBvaW50Lgo+Pgo+PiBUaGUgY3Jhc2ggdXRpbGl0
eSBhbmQgbWFrZWR1bXBmaWxlIGFyZSBub3QgaW4gdGhlIHNhbWUgbGVhZ3VlIGFzIG90aGVyIAo+
PiB1c2VyLXNwYWNlIHRvb2xzLgo+PiBUaGV5IGhhdmUgYWx3YXlzIGhhZCB0byAicGxheSBjYXRj
aHVwIiBwcmVjaXNlbHkgYmVjYXVzZSB0aGV5IGRlcGVuZCAKPj4gdXBvbiBrZXJuZWwgaW50ZXJu
YWxzLAo+PiB3aGljaCBjb25zdGFudGx5IGNoYW5nZS4KPiAKPiBJIGFncmVlIHdpdGggeW91IGFu
ZCBEYXZlQSBoZXJlLiBTb2Z0d2FyZSB1c2VyLXNwYWNlIGRlYnVnZ2VycyBhcmUgCj4gZGVwZW5k
ZW50IG9uIGtlcm5lbCBpbnRlcm5hbHMgKHdoaWNoIGNhbiBjaGFuZ2UgZnJvbSB0aW1lLXRvLXRp
bWUpIGFuZCAKPiB3aWxsIGhhdmUgdG8gcGxheSBjYXRjaC11cCAod2hpY2ggaGFzIGJlZW4gdGhl
IGNhc2Ugc2luY2UgdGhlIHZlcnkgc3RhcnQpLgo+IAo+IFVuZm9ydHVuYXRlbHkgd2UgZG9uJ3Qg
aGF2ZSBhbnkgY2xlYXIgQUJJIGZvciBzb2Z0d2FyZSBkZWJ1Z2dpbmcgdG9vbHMgLSAKPiBtYXkg
YmUgc29tZXRoaW5nIHRvIGxvb2sgZm9yIGluIGZ1dHVyZS4KPiAKPiBBIGNhc2UgaW4gcG9pbnQg
aXMgZ2RiL2tnZGIsIHdoaWNoIHN0aWxsIG5lZWRzIHRvIHJ1biB3aXRoIEtBU0xSIAo+IHR1cm5l
ZC1vZmYgKG5va2FzbHIpIGZvciBkZWJ1Z2dpbmcsIGFzIGl0IGNvbmZ1c2VzIGdkYiB3aGljaCBy
ZXNvbHZlIAo+IGtlcm5lbCBzeW1ib2wgYWRkcmVzcyBmcm9tIHN5bWJvbCB0YWJsZSBvZiB2bWxp
bnV4LiBCdXQgd2UgY2FuIAo+IHdvcmstYXJvdW5kIHRoZSBzYW1lIGluIG1ha2VkdW1wZmlsZS9j
cmFzaCBieSByZWFkaW5nIHRoZSAna2FzbHJfb2Zmc2V0JyAKPiB2YWx1ZS4gQW5kIEkgaGF2ZSBz
ZXZlcmFsIHVzZXJzIHRlbGxpbmcgbWUgbm93IHRoZXkgY2Fubm90IHVzZSBnZGIgb24gCj4gS0FT
TFIgZW5hYmxlZCBrZXJuZWwgdG8gZGVidWcgcGFuaWNzLCBidXQgY2FuIG1ha2VkdW1wZmlsZSAr
IGNyYXNoIAo+IGNvbWJpbmF0aW9uIHRvIGFjaGlldmUgdGhlIHNhbWUuCj4gCj4gU28sIHdlIHNo
b3VsZCBiZSBsb29raW5nIHRvIGZpeCB0aGVzZSB1dGlsaXRpZXMgd2hpY2ggYXJlIGJyb2tlbiBz
aW5jZSAKPiB0aGUgNTItYml0IGNoYW5nZXMgZm9yIGFybTY0LiBBY2NvcmRpbmdseSwgSSB3aWxs
IHRyeSB0byBzZW5kIHRoZSB2Ngo+IHNvb24gd2hpbGUgaW5jb3Jwb3JhdGluZyB0aGUgY29tbWVu
dHMgcG9zdGVkIG9uIHRoZSB2NS4KCkFueSB1cGRhdGUgb24gdGhlIG5leHQgdjYgdmVyc2lvbi4g
U2luY2UgdGhpcyBwYXRjaCBzZXJpZXMgaXMgZml4aW5nIHRoZSAKY3VycmVudCBicm9rZW4ga2R1
bXAgc28gbmVlZCB0aGlzIHNlcmllcyB0byBhZGQgc29tZSBtb3JlIGZpZWxkcyBpbiAKdm1jb3Jl
aW5mbyBmb3IgUG9pbnRlciBBdXRoZW50aWNhdGlvbiB3b3JrLgoKVGhhbmtzLApBbWl0IERhbmll
bAo+IAo+IFRoYW5rcywKPiBCaHVwZXNoCj4gCj4gCj4gCj4gCj4gCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
