Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F39C3780
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 16:34:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JpIoQ1zVRfBnRh+CX6C7/AVr/p7jnIUyjVmGJuqQADA=; b=QC7l0/AvLMccUA
	bZWP0qKBrbe7YiNWja7865Qp+v7bxZ4F8Q+Loirx28Z6+ENZb3V2qdFw0MHWv2c5mptkeRh0Yw9a9
	qEILRAJQaGIU+iEiPddem6XsHFi6A7xyPmuiEO6QhIGSmmhWLJoPVc+Bjsh9F8Z+agPOGjEHqeI0t
	HdnIRmUGEKZz0EAE3QXWjUFccfUODtyMPyMxiVXsGfBUCehsY6bOSjb5M6D/0wbWKGtD6t4OawdJx
	O135FTA8T7OLHmcZwYokytEl0ibnbJ/gQFjNwk6D4zLiIMqWcBUUGPdP17DuqzHkdfnFPmMbi2Fpz
	KLGYQBl626+Z+UMu58DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJEF-0005Fz-4V; Tue, 01 Oct 2019 14:34:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJE8-0005F0-Fl
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 14:34:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EFD9A1000;
 Tue,  1 Oct 2019 07:34:05 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 63D533F71A;
 Tue,  1 Oct 2019 07:34:04 -0700 (PDT)
Date: Tue, 1 Oct 2019 15:33:43 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [Xen-devel] [PATCH] ARM: xen: unexport HYPERVISOR_platform_op
 function
Message-ID: <20191001143334.GA46651@lakrids.cambridge.arm.com>
References: <20190906153948.2160342-1-arnd@arndb.de>
 <7abad95e-ea47-c068-d91c-ba503f2530b9@citrix.com>
 <CAK8P3a1qkMLW_Wnn-N0seUw4N5bPwTU7Dy7CwOWxzS6NTnTmiQ@mail.gmail.com>
 <bda2a05b-e2d0-feee-761b-88deeeac2449@citrix.com>
 <95dbd972-fe78-d0ca-f7b4-1a6bdd418eab@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <95dbd972-fe78-d0ca-f7b4-1a6bdd418eab@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_073408_612686_63D80DB6 
X-CRM114-Status: GOOD (  23.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Stefano Stabellini <sstabellini@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Andrew Cooper <andrew.cooper3@citrix.com>,
 Emil Velikov <emil.l.velikov@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Denis Efremov <efremov@linux.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 xen-devel <xen-devel@lists.xenproject.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSnVsaWVuLAoKT24gU2F0LCBTZXAgMDcsIDIwMTkgYXQgMTE6MDU6NDVBTSArMDEwMCwgSnVs
aWVuIEdyYWxsIHdyb3RlOgo+IE9uIDkvNi8xOSA2OjIwIFBNLCBBbmRyZXcgQ29vcGVyIHdyb3Rl
Ogo+ID4gT24gMDYvMDkvMjAxOSAxNzowMCwgQXJuZCBCZXJnbWFubiB3cm90ZToKPiA+ID4gT24g
RnJpLCBTZXAgNiwgMjAxOSBhdCA1OjU1IFBNIEFuZHJldyBDb29wZXIgPGFuZHJldy5jb29wZXIz
QGNpdHJpeC5jb20+IHdyb3RlOgo+ID4gPiA+IE9uIDA2LzA5LzIwMTkgMTY6MzksIEFybmQgQmVy
Z21hbm4gd3JvdGU6Cj4gPiA+ID4gPiBIWVBFUlZJU09SX3BsYXRmb3JtX29wKCkgaXMgYW4gaW5s
aW5lIGZ1bmN0aW9uIGFuZCBzaG91bGQgbm90Cj4gPiA+ID4gPiBiZSBleHBvcnRlZC4gU2luY2Ug
Y29tbWl0IDE1YmZjMjM0OGQ1NCAoIm1vZHBvc3Q6IGNoZWNrIGZvcgo+ID4gPiA+ID4gc3RhdGlj
IEVYUE9SVF9TWU1CT0wqIGZ1bmN0aW9ucyIpLCB0aGlzIGNhdXNlcyBhIHdhcm5pbmc6Cj4gPiA+
ID4gPiAKPiA+ID4gPiA+IFdBUk5JTkc6ICJIWVBFUlZJU09SX3BsYXRmb3JtX29wIiBbdm1saW51
eF0gaXMgYSBzdGF0aWMgRVhQT1JUX1NZTUJPTF9HUEwKPiA+ID4gPiA+IAo+ID4gPiA+ID4gUmVt
b3ZlIHRoZSBleHRyYW5lb3VzIGV4cG9ydC4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gRml4ZXM6IDE1
YmZjMjM0OGQ1NCAoIm1vZHBvc3Q6IGNoZWNrIGZvciBzdGF0aWMgRVhQT1JUX1NZTUJPTCogZnVu
Y3Rpb25zIikKPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJu
ZGIuZGU+Cj4gPiA+ID4gU29tZXRoaW5nIGlzIHdvbmt5LiAgVGhhdCBzeW1ib2wgaXMgKC8gcmVh
bGx5IG91Z2h0IHRvIGJlKSBpbiB0aGUKPiA+ID4gPiBoeXBlcmNhbGwgcGFnZSBhbmQgbW9zdCBk
ZWZpbml0ZWx5IG5vdCBpbmxpbmUuCj4gPiA+ID4gCj4gPiA+ID4gV2hpY2ggdHJlZSBpcyB0aGF0
IGNoYW5nZXNldCBmcm9tPyAgSSBjYW4ndCBmaW5kIHRoZSBTSEEuCj4gPiA+IFRoaXMgaXMgZnJv
bSBsaW51eC1uZXh0LCBJIHRoaW5rIGZyb20gdGhlIGtidWlsZCB0cmVlLgo+ID4gCj4gPiBUaGFu
a3MuCj4gPiAKPiA+IEp1bGllbi9TdGVmYW5vOiBXaHkgYXJlIGFueSBvZiB0aGVzZSBoeXBlcmNh
bGxzIG91dC1vZi1saW5lP8KgIEFSTQo+ID4gZG9lc24ndCB1c2UgdGhlIGh5cGVyY2FsbCBwYWdl
LCBhbmQgdGhlcmUgaXMgbm8gYXJndW1lbnQgdHJhbnNsYXRpb24KPiA+IChub3QgZXZlbiBpbiBh
cm0zMiBhcyB0aGVyZSBhcmUgbm8gNS1hcmd1bWVudCBoeXBlcmNhbGxzIGRlY2xhcmVkKS4KPiAK
PiBJIGFtIG5vdCBzdXJlIGhvdyB0aGUgaHlwZXJjYWxsIHBhZ2UgbWFrZXMgdGhpbmdzIGRpZmZl
cmVudC4gWW91IHN0aWxsIGhhdmUKPiB0byBzdG9yZSB0aGUgYXJndW1lbnRzIGluIHRoZSBjb3Jy
ZWN0IHJlZ2lzdGVyIHNvLi4uCj4gCj4gPiAKPiA+IFRoZXknZCBzdXJlbHkgYmUgZWFzaWVyIHRv
IGltcGxlbWVudCB3aXRoIGEgZmV3IHN0YXRpYyBpbmxpbmVzIGFuZCBzb21lCj4gPiBjb21tb24g
Y29kZSwgdGhhbiB0byB0cnkgYW5kIHJlcGxpY2F0ZSB0aGUgeDg2IHNpZGUgaHlwZXJjYWxsX3Bh
Z2UKPiA+IGludGVyZmFjZSA/Cj4gCj4gLi4uIEkgZG9uJ3QgdGhpbmsgdGhleSB3aWxsIGJlIGVh
c2llciB0byBpbXBsZW1lbnQgd2l0aCBhIGZldyBzdGF0aWMKPiBpbmxpbmVzLiBUaGUgaW1wbGVt
ZW50YXRpb24gd2lsbCBsaWtlbHkgZW5kIHVwIHRvIGJlIHNpbWlsYXIgdG8KPiBhcmNoL3g4Ni9h
c20veGVuL2h5cGVyY2FsbC5oLgo+IAo+IEZ1cnRoZXJtb3JlLCBvbmUgb2YgdGhlIGRvd25zaWRl
IG9mIHBlci1hcmNoIHN0YXRpYyBpbmxpbmUgaXMgaXQgaXMgbW9yZQo+IGRpZmZpY3VsdCB0byBl
bnN1cmUgdGhlIHByb3RvdHlwZSBtYXRjaCBmb3IgYWxsIHRoZSBhcmNoaXRlY3R1cmVzLiBBbHRo
b3VnaCwKPiBpdCBtaWdodCBiZSBwb3NzaWJsZSB0byBtYWtlIHRoZW0gY29tbW9uIGJ5IG9ubHkg
cmVxdWVzdGluZyBwZXItYXJjaCB0bwo+IGltcGxlbWVudCBIWVBFUkNBTExfTiguLi4pLgo+IAo+
IFNvIEkgdGhpbmsgdGhlIGNvZGUgaXMgYmV0dGVyIGFzIGl0IGlzLgo+IAo+IFdoaWxlIGxvb2tp
bmcgYXQgdGhlIGNvZGUsIEkgYWxzbyByZWFsaXplZCB0aGF0IHRoZSBpbXBsZW1lbnRhdGlvbiBv
Zgo+IEhZUEVSQ0FMTF9kbV9vcCBtaWdodCBiZSBpbmNvcnJlY3QgZm9yIEFybTMyLiBTaW1pbGFy
bHkgZG8gcHJpdmNtZCBjYWxsLCBJCj4gdGhpbmsgZG1fb3AgY2FsbCBzaG91bGQgZW5hYmxlIHVz
ZXIgYWNjZXNzIGFzIHRoZXkgd2lsbCBiZSB1c2VkIGJ5Cj4gdXNlcnNwYWNlLgo+IAo+IFdlIGRv
bid0IHVzZSBkbV9vcCBvbiBBcm0gc28gZmFyLCBoZW5jZSB3aHkgSSB0aGluayB0aGlzIHdhcyB1
bm5vdGljZWQuIEkKPiB3aWxsIHNlZSBpZiBJIGNhbiByZXByb2R1Y2UgaXQgYW5kIHNlbmQgYSBw
YXRjaC4KCkknbSBzZWVpbmcgdGhpcyB3aGVuIGJ1aWxkaW5nIGFybTY0IGRlZmNvbmZpZyB2NS40
LXJjMToKCnwgW21hcmtAbGFrcmlkczp+L3NyYy9saW51eF0lIHVzZWtvcmcgOC4xLjAgIG1ha2Ug
QVJDSD1hcm02NCBDUk9TU19DT01QSUxFPWFhcmNoNjQtbGludXgtIC1qNTYgLXMKfCBhcmNoL2Fy
bTY0L01ha2VmaWxlOjYyOiBDUk9TU19DT01QSUxFX0NPTVBBVCBub3QgZGVmaW5lZCBvciBlbXB0
eSwgdGhlIGNvbXBhdCB2RFNPIHdpbGwgbm90IGJlIGJ1aWx0CnwgV0FSTklORzogIkhZUEVSVklT
T1JfcGxhdGZvcm1fb3AiIFt2bWxpbnV4XSBpcyBhIHN0YXRpYyBFWFBPUlRfU1lNQk9MX0dQTAp8
IFdBUk5JTkc6ICJIWVBFUlZJU09SX3BsYXRmb3JtX29wIiBbdm1saW51eF0gaXMgYSBzdGF0aWMg
RVhQT1JUX1NZTUJPTF9HUEwKCkkgY291bGRuJ3Qgc2VlIGEgZm9sbG93LXVwOyBkbyB5b3UgaGF2
ZSBhIHBhdGNoIGZvciB0aGlzPwoKVGhhbmtzLApNYXJrLgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
