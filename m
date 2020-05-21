Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C09D61DCAFB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 12:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9vS8vNEtc9c40G3GmTnU5bzQ7X3Ka/bupNJlrcmR9to=; b=dQEqP7G0B09hib
	wq48kjlMK1iVCKH4cgif8LRvoomuNHv3ztEOTLVHjEN+/8fo1+zvRYZM+PXVPTCk409XNjmkynwT7
	zZYysDbF7Wcg8BS1cNNvL9NoG2VWqkivbwl8jyrxPNeyxQ9KxrWjc0lQfGuPFo2ayWGgdm/dMd9zH
	BYT5rajViTrdgfH69ach0jLDQm5bBzpxhRHMtSixF64xX7TYdzsYNfZha8rT/R0k7yepSir46PbsK
	mFIYce8udVVnkE4C2SHd2zKG5aHSV5QT9WCEVBR7jCi9QvF6Go3byKBMXaEly1bGM8robkXTBvJq4
	fsISaKlvzWiKeTZ8GcUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbiNY-0007Er-99; Thu, 21 May 2020 10:24:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbiNN-0007Dh-3X
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 10:24:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6518230E;
 Thu, 21 May 2020 03:24:26 -0700 (PDT)
Received: from bogus (unknown [10.37.12.114])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5EBEE3F68F;
 Thu, 21 May 2020 03:24:23 -0700 (PDT)
Date: Thu, 21 May 2020 11:24:20 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v4 0/7] firmware: smccc: Add basic SMCCC v1.2 +
 ARCH_SOC_ID support
Message-ID: <20200521102420.GC6425@bogus>
References: <158999823818.135150.13263761266508812198.b4-ty@kernel.org>
 <CAK8P3a0bx2eOFSqM7ihNkJBWU_KKSh0vGJZZdvpkH=1nppingw@mail.gmail.com>
 <20200521070629.GB1131@bogus>
 <CAK8P3a1h1MR4Mq2sSV_FDUodrfaKRFtyOuOOGPWAbPYbzjc4YQ@mail.gmail.com>
 <20200521075755.GA4668@willie-the-truck>
 <20200521081055.GD1131@bogus>
 <CAK8P3a3dV0B26XE3oFQGTFf8EWV0AHoLudNtpSSB_t+pCfkOkQ@mail.gmail.com>
 <20200521091736.GA5091@willie-the-truck>
 <20200521092627.GB6425@bogus>
 <20200521101437.GB5360@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521101437.GB5360@willie-the-truck>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_032433_190349_E943F1D2 
X-CRM114-Status: GOOD (  23.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven Price <steven.price@arm.com>, harb@amperecomputing.com,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMjEsIDIwMjAgYXQgMTE6MTQ6MzhBTSArMDEwMCwgV2lsbCBEZWFjb24gd3Jv
dGU6Cj4gT24gVGh1LCBNYXkgMjEsIDIwMjAgYXQgMTA6MjY6MjdBTSArMDEwMCwgU3VkZWVwIEhv
bGxhIHdyb3RlOgo+ID4gT24gVGh1LCBNYXkgMjEsIDIwMjAgYXQgMTA6MTc6MzlBTSArMDEwMCwg
V2lsbCBEZWFjb24gd3JvdGU6Cj4gPiA+IE9uIFRodSwgTWF5IDIxLCAyMDIwIGF0IDExOjA2OjIz
QU0gKzAyMDAsIEFybmQgQmVyZ21hbm4gd3JvdGU6Cj4gPiA+ID4gT24gVGh1LCBNYXkgMjEsIDIw
MjAgYXQgMTA6MTEgQU0gU3VkZWVwIEhvbGxhIDxzdWRlZXAuaG9sbGFAYXJtLmNvbT4gd3JvdGU6
Cj4gPiA+ID4gPiAvbWUgY29uZnVzZWQuIERvIHlvdSBuZWVkIHRoZSBmaXggZm9yIHRoaXMgd2Fy
bmluZyBvciB5b3UgYXJlIGhhcHB5IHRvIGlnbm9yZT8KPiA+ID4gPiAKPiA+ID4gPiBJIHdhbnQg
YSBmaXggZm9yIHRoYXQsIGFzIEkgaG9wZSB3ZSBjYW4gZXZlbnR1YWxseSB0dXJuIHRoaXMgd2Fy
bmluZyBvbiBieQo+ID4gPiA+IGRlZmF1bHQgYW5kIHN0b3AgcGxheWluZyB3aGFjay1hLW1vbGUg
d2hlbiB0aGV5IGNvbWUgdXAuIE1vc3Qgb2YgdGhlc2UKPiA+ID4gPiB3YXJuaW5ncyBhcmUgaGFy
bWxlc3MsIGJ1dCBvY2Nhc2lvbmFsbHkgdGhlIHByb3RvdHlwZXMgZG9uJ3QgbWF0Y2ggZXhhY3Rs
eQo+ID4gPiA+IGFuZCBjYXVzZSByZWFsIGJ1Z3MgZGVwZW5kaW5nIG9uIHRoZSBjb25maWd1cmF0
aW9uLCBhbmQgZW5zdXJpbmcgYm90aAo+ID4gPiA+IHNpZGVzIGluY2x1ZGUgYSBjb21tb24gaGVh
ZGVyIGZpbGUgaXMgYW4gZWFzeSB3YXkgdG8gbWFrZSBpdCB3b3JrCj4gPiA+ID4gbW9yZSByZWxp
YWJseS4KPiA+ID4gPiAKPiA+ID4gPiBOb3RlIHRoYXQgdGhlIHdhcm5pbmcgc2hvdWxkIGNvbWUg
dXAgZm9yIGVpdGhlciBXPTEgb3IgQz0xLCBhbmQgSSBhbHNvCj4gPiA+ID4gdGhpbmsgdGhhdAo+
ID4gPiA+IG5ldyBjb2RlIHNob3VsZCBnZW5lcmFsbHkgYmUgd3JpdHRlbiBzcGFyc2UtY2xlYW4g
YW5kIGhhdmUgbm8gd2FybmluZ3Mgd2l0aAo+ID4gPiA+ICdtYWtlIEM9MScgYXMgYSBydWxlLgo+
ID4gPiAKPiA+ID4gRmFpciBlbm91Z2guIElzIGFueWJvZHkgd29ya2luZyBvbiBhIHRyZWUtd2lk
ZSBzd2VlcCBmb3IgdGhpcywgbGlrZSB3ZSd2ZQo+ID4gPiBkb25lIGZvciBvdGhlciB0aGluZ3Mg
c3VjaCBhcyB6ZXJvLWxlbmd0aCBhcnJheXM/IElmIHNvLCBJIGNhbiBzdGFydAo+ID4gPiBlbmZv
cmNpbmcgdGhpcyBpbiB0aGUgYXJjaCBjb2RlIGFzIHdlbGwgKEkgaGF2ZW4ndCBiZWVuIHNvIGZh
ciwgZXZlbiB0aG91Z2gKPiA+ID4gSSBkbyBydW4gc3BhcnNlIG9uIGV2ZXJ5IGNvbW1pdCkuCj4g
PiA+IAo+ID4gPiBBbnl3YXksIEkndmUgZHJvcHBlZCB0aGUgbGFzdCBwYXRjaCBmcm9tIHRoZSBi
cmFuY2gsIGFuZCB3ZSBjYW4gcHV0IGEgZml4Cj4gPiA+IGZvciB0aGUgbWlzc2luZyBwcm90b3R5
cGUgb24gdG9wLgo+ID4gPiAKPiA+IAo+ID4gVGhhbmtzIFdpbGwsIHNvcnJ5IGZvciB0aGUgdHJv
dWJsZS4gVGhvdWdoIEkgY2FuIHNlbmQgdGhlIGZpeCBmb3IgdGhlCj4gPiBtaXNzaW5nIHByb3Rv
dHlwZSByaWdodCBhd2F5LCBJIHdvdWxkIGxpa2UgdG8gZ2V0IG15IGNsYW5nIHNldHVwIHdvcmtp
bmcKPiA+IGFzIGFuIG9wcG9ydHVuaXR5LiBjbGFuZy04IHRoYXQgSSBoYXZlIGlzIGZhaWxpbmcg
dmFuaWxsYSB2NS43LXJjNgo+ID4gd2hlbiBleHBhbmRpbmcgYXJtX3NtY2NjXzFfMV8qCj4gCj4g
Tm8gdHJvdWJsZSBhdCBhbGwsIHJlYWxseS4gSSBhbHNvIHNhdyB0aGlzIGZyb20gTmF0aGFuIHRo
ZSBvdGhlciBkYXksIHdoaWNoCj4gbWF5IGhlbHAgeW91IGdldCB1cCBhbmQgcnVubmluZyB3aXRo
IGNsYW5nOgo+IAo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyMDA1MjAwMjQ3MzYuR0E4
NTQ3ODZAdWJ1bnR1LXMzLXhsYXJnZS14ODYKPiAKClRoYW5rcyBmb3IgdGhlIGxpbmssIEkgd2ls
bCB0cnkgc29tZSBvdGhlciB0aW1lKG1heSBiZSBuZXh0IHRpbWUgSSBydW4KaW50byBjbGFuZyBp
c3N1ZSDwn5iEKS4gQW55d2F5IHVwZ3JhZGluZyB0byBjbGFuZy0xMSBmaXhlZCB0aGUgYnVpbGQg
aXNzdWUuCkkgd2lsbCBzb29uIHBvc3QgdGhlIHBhdGNoIGZvciBtaXNzaW5nIHByb3RvdHlwZS4K
Ci0tIApSZWdhcmRzLApTdWRlZXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
