Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C89C3C37AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 16:40:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5fhM+Qewv0y9YXd7W5pfR5OdtqwTabXhXRH8f2JVo5Y=; b=ZTnYdvwmt1lD6f7WiGwhvF5Df
	CEuaTgKstQPeAmcv8pKo/ThJFfayvqcAW8+KlVRx/KyYqpN9qvK6Ouy/lD7b2np2Z4/tbZybga6Lr
	IWeSA/EgmnBopOiqcTioACJpAA9SvefKWgV5z7PIjyC8pFzNtNWc09M8i3AharVVYTkyGn7IgDub5
	ZcIfm5V5yny++Ltr4FSerrLICr7PKcbL83K9N15HVT5iHzV31QOxAj0CQVfAVTFURy6u9Evb/2Suu
	2uX20Ode3xmbtP0t+WGCYBU6DwkqvbKmpdqHaLUHUZtQ1CCh2SOdBvI1H8tDGQ6PpUUND9db4EG78
	v3y78j3rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJK5-0000J4-Ko; Tue, 01 Oct 2019 14:40:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJJa-00008U-9f
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 14:39:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 65EB01570;
 Tue,  1 Oct 2019 07:39:44 -0700 (PDT)
Received: from [10.1.196.50] (e108454-lin.cambridge.arm.com [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EA9323F71A;
 Tue,  1 Oct 2019 07:39:42 -0700 (PDT)
Subject: Re: [Xen-devel] [PATCH] ARM: xen: unexport HYPERVISOR_platform_op
 function
To: Mark Rutland <mark.rutland@arm.com>
References: <20190906153948.2160342-1-arnd@arndb.de>
 <7abad95e-ea47-c068-d91c-ba503f2530b9@citrix.com>
 <CAK8P3a1qkMLW_Wnn-N0seUw4N5bPwTU7Dy7CwOWxzS6NTnTmiQ@mail.gmail.com>
 <bda2a05b-e2d0-feee-761b-88deeeac2449@citrix.com>
 <95dbd972-fe78-d0ca-f7b4-1a6bdd418eab@arm.com>
 <20191001143334.GA46651@lakrids.cambridge.arm.com>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <9e04485f-2d4a-81a2-c7e1-e50dd888930f@arm.com>
Date: Tue, 1 Oct 2019 15:39:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191001143334.GA46651@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_073946_428244_BFA67ABD 
X-CRM114-Status: GOOD (  22.37  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDAxLzEwLzIwMTkgMTU6MzMsIE1hcmsgUnV0bGFuZCB3cm90ZToKPiBIaSBKdWxpZW4sCgpI
aSBNYXJrLAoKPiAKPiBPbiBTYXQsIFNlcCAwNywgMjAxOSBhdCAxMTowNTo0NUFNICswMTAwLCBK
dWxpZW4gR3JhbGwgd3JvdGU6Cj4+IE9uIDkvNi8xOSA2OjIwIFBNLCBBbmRyZXcgQ29vcGVyIHdy
b3RlOgo+Pj4gT24gMDYvMDkvMjAxOSAxNzowMCwgQXJuZCBCZXJnbWFubiB3cm90ZToKPj4+PiBP
biBGcmksIFNlcCA2LCAyMDE5IGF0IDU6NTUgUE0gQW5kcmV3IENvb3BlciA8YW5kcmV3LmNvb3Bl
cjNAY2l0cml4LmNvbT4gd3JvdGU6Cj4+Pj4+IE9uIDA2LzA5LzIwMTkgMTY6MzksIEFybmQgQmVy
Z21hbm4gd3JvdGU6Cj4+Pj4+PiBIWVBFUlZJU09SX3BsYXRmb3JtX29wKCkgaXMgYW4gaW5saW5l
IGZ1bmN0aW9uIGFuZCBzaG91bGQgbm90Cj4+Pj4+PiBiZSBleHBvcnRlZC4gU2luY2UgY29tbWl0
IDE1YmZjMjM0OGQ1NCAoIm1vZHBvc3Q6IGNoZWNrIGZvcgo+Pj4+Pj4gc3RhdGljIEVYUE9SVF9T
WU1CT0wqIGZ1bmN0aW9ucyIpLCB0aGlzIGNhdXNlcyBhIHdhcm5pbmc6Cj4+Pj4+Pgo+Pj4+Pj4g
V0FSTklORzogIkhZUEVSVklTT1JfcGxhdGZvcm1fb3AiIFt2bWxpbnV4XSBpcyBhIHN0YXRpYyBF
WFBPUlRfU1lNQk9MX0dQTAo+Pj4+Pj4KPj4+Pj4+IFJlbW92ZSB0aGUgZXh0cmFuZW91cyBleHBv
cnQuCj4+Pj4+Pgo+Pj4+Pj4gRml4ZXM6IDE1YmZjMjM0OGQ1NCAoIm1vZHBvc3Q6IGNoZWNrIGZv
ciBzdGF0aWMgRVhQT1JUX1NZTUJPTCogZnVuY3Rpb25zIikKPj4+Pj4+IFNpZ25lZC1vZmYtYnk6
IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+Cj4+Pj4+IFNvbWV0aGluZyBpcyB3b25reS4g
IFRoYXQgc3ltYm9sIGlzICgvIHJlYWxseSBvdWdodCB0byBiZSkgaW4gdGhlCj4+Pj4+IGh5cGVy
Y2FsbCBwYWdlIGFuZCBtb3N0IGRlZmluaXRlbHkgbm90IGlubGluZS4KPj4+Pj4KPj4+Pj4gV2hp
Y2ggdHJlZSBpcyB0aGF0IGNoYW5nZXNldCBmcm9tPyAgSSBjYW4ndCBmaW5kIHRoZSBTSEEuCj4+
Pj4gVGhpcyBpcyBmcm9tIGxpbnV4LW5leHQsIEkgdGhpbmsgZnJvbSB0aGUga2J1aWxkIHRyZWUu
Cj4+Pgo+Pj4gVGhhbmtzLgo+Pj4KPj4+IEp1bGllbi9TdGVmYW5vOiBXaHkgYXJlIGFueSBvZiB0
aGVzZSBoeXBlcmNhbGxzIG91dC1vZi1saW5lP8KgIEFSTQo+Pj4gZG9lc24ndCB1c2UgdGhlIGh5
cGVyY2FsbCBwYWdlLCBhbmQgdGhlcmUgaXMgbm8gYXJndW1lbnQgdHJhbnNsYXRpb24KPj4+IChu
b3QgZXZlbiBpbiBhcm0zMiBhcyB0aGVyZSBhcmUgbm8gNS1hcmd1bWVudCBoeXBlcmNhbGxzIGRl
Y2xhcmVkKS4KPj4KPj4gSSBhbSBub3Qgc3VyZSBob3cgdGhlIGh5cGVyY2FsbCBwYWdlIG1ha2Vz
IHRoaW5ncyBkaWZmZXJlbnQuIFlvdSBzdGlsbCBoYXZlCj4+IHRvIHN0b3JlIHRoZSBhcmd1bWVu
dHMgaW4gdGhlIGNvcnJlY3QgcmVnaXN0ZXIgc28uLi4KPj4KPj4+Cj4+PiBUaGV5J2Qgc3VyZWx5
IGJlIGVhc2llciB0byBpbXBsZW1lbnQgd2l0aCBhIGZldyBzdGF0aWMgaW5saW5lcyBhbmQgc29t
ZQo+Pj4gY29tbW9uIGNvZGUsIHRoYW4gdG8gdHJ5IGFuZCByZXBsaWNhdGUgdGhlIHg4NiBzaWRl
IGh5cGVyY2FsbF9wYWdlCj4+PiBpbnRlcmZhY2UgPwo+Pgo+PiAuLi4gSSBkb24ndCB0aGluayB0
aGV5IHdpbGwgYmUgZWFzaWVyIHRvIGltcGxlbWVudCB3aXRoIGEgZmV3IHN0YXRpYwo+PiBpbmxp
bmVzLiBUaGUgaW1wbGVtZW50YXRpb24gd2lsbCBsaWtlbHkgZW5kIHVwIHRvIGJlIHNpbWlsYXIg
dG8KPj4gYXJjaC94ODYvYXNtL3hlbi9oeXBlcmNhbGwuaC4KPj4KPj4gRnVydGhlcm1vcmUsIG9u
ZSBvZiB0aGUgZG93bnNpZGUgb2YgcGVyLWFyY2ggc3RhdGljIGlubGluZSBpcyBpdCBpcyBtb3Jl
Cj4+IGRpZmZpY3VsdCB0byBlbnN1cmUgdGhlIHByb3RvdHlwZSBtYXRjaCBmb3IgYWxsIHRoZSBh
cmNoaXRlY3R1cmVzLiBBbHRob3VnaCwKPj4gaXQgbWlnaHQgYmUgcG9zc2libGUgdG8gbWFrZSB0
aGVtIGNvbW1vbiBieSBvbmx5IHJlcXVlc3RpbmcgcGVyLWFyY2ggdG8KPj4gaW1wbGVtZW50IEhZ
UEVSQ0FMTF9OKC4uLikuCj4+Cj4+IFNvIEkgdGhpbmsgdGhlIGNvZGUgaXMgYmV0dGVyIGFzIGl0
IGlzLgo+Pgo+PiBXaGlsZSBsb29raW5nIGF0IHRoZSBjb2RlLCBJIGFsc28gcmVhbGl6ZWQgdGhh
dCB0aGUgaW1wbGVtZW50YXRpb24gb2YKPj4gSFlQRVJDQUxMX2RtX29wIG1pZ2h0IGJlIGluY29y
cmVjdCBmb3IgQXJtMzIuIFNpbWlsYXJseSBkbyBwcml2Y21kIGNhbGwsIEkKPj4gdGhpbmsgZG1f
b3AgY2FsbCBzaG91bGQgZW5hYmxlIHVzZXIgYWNjZXNzIGFzIHRoZXkgd2lsbCBiZSB1c2VkIGJ5
Cj4+IHVzZXJzcGFjZS4KPj4KPj4gV2UgZG9uJ3QgdXNlIGRtX29wIG9uIEFybSBzbyBmYXIsIGhl
bmNlIHdoeSBJIHRoaW5rIHRoaXMgd2FzIHVubm90aWNlZC4gSQo+PiB3aWxsIHNlZSBpZiBJIGNh
biByZXByb2R1Y2UgaXQgYW5kIHNlbmQgYSBwYXRjaC4KPiAKPiBJJ20gc2VlaW5nIHRoaXMgd2hl
biBidWlsZGluZyBhcm02NCBkZWZjb25maWcgdjUuNC1yYzE6Cj4gCj4gfCBbbWFya0BsYWtyaWRz
On4vc3JjL2xpbnV4XSUgdXNla29yZyA4LjEuMCAgbWFrZSBBUkNIPWFybTY0IENST1NTX0NPTVBJ
TEU9YWFyY2g2NC1saW51eC0gLWo1NiAtcwo+IHwgYXJjaC9hcm02NC9NYWtlZmlsZTo2MjogQ1JP
U1NfQ09NUElMRV9DT01QQVQgbm90IGRlZmluZWQgb3IgZW1wdHksIHRoZSBjb21wYXQgdkRTTyB3
aWxsIG5vdCBiZSBidWlsdAo+IHwgV0FSTklORzogIkhZUEVSVklTT1JfcGxhdGZvcm1fb3AiIFt2
bWxpbnV4XSBpcyBhIHN0YXRpYyBFWFBPUlRfU1lNQk9MX0dQTAo+IHwgV0FSTklORzogIkhZUEVS
VklTT1JfcGxhdGZvcm1fb3AiIFt2bWxpbnV4XSBpcyBhIHN0YXRpYyBFWFBPUlRfU1lNQk9MX0dQ
TAo+IAo+IEkgY291bGRuJ3Qgc2VlIGEgZm9sbG93LXVwOyBkbyB5b3UgaGF2ZSBhIHBhdGNoIGZv
ciB0aGlzPwoKVGhlIGZpcnN0IGUtbWFpbCBvZiB0aGUgdGhyZWFkIHNob3VsZCBjb250YWluIGEg
cGF0Y2ggdG8gYWRkcmVzcyB0aGUgd2FybmluZyAKKHNlZSBbMV0pLiBCdXQgaXQgaXMgc3RpbGwg
d2FpdGluZyBvbiBhbiBBY2sgZnJvbSBTdGVmYW5vIHNvIGl0IGNhbiBnZXQgbWVyZ2VkLgoKQ2hl
ZXJzLAoKWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTExMzU2MDEvCgot
LSAKSnVsaWVuIEdyYWxsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
