Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDC4C37F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 16:44:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=caoFjrUSZTbu5WudgzsxlAHjPs1gI0fwHrg2mxZA5lg=; b=DpswfTy1Mx1gpP
	wuVew4NjFuPHz4mntFu++r9tyPcQ1DAtfvKAm7Fj8C78S38nKqsWEkCyz2clU17QFSjvgx9UiqnHz
	6lecb/zhtYHWvSyAxAC79FTW3MSQR9YFrDY1+yS8u2Eold9Nw+IZ0byWXPPk5EEFNavZo5kwliBsk
	w0gtFlG+2rXh/JyfyLeXAfbrSqLlgjfewdqaY0gs8oNZqhSdrko7oHQndY95peVbJmV/59OEArQbz
	Gh1Wb6m7Dgq8cu19acngPyzpgexoAift9cwLF6XN10HD6T0A5JjXxRQx+11CKQP1Jn+A6U/8JXXFM
	9+fIOU91zvV/hkT6L09Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJNq-0004sy-Mv; Tue, 01 Oct 2019 14:44:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJNg-0004sA-2N
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 14:44:01 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 620D92133F;
 Tue,  1 Oct 2019 14:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569941038;
 bh=fcxeV8CpM36Bxco2rh7Di1eG6WEXW7AUV+4NnKjeDKw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=J+bLh+tl5qi4eZdqM7p5bUMEk6kXrr1wkXs4OBTZanjXi/QbuvRMRzpH5eo2iBWC5
 pz2nXO2bnZvigrggrKaNUxMq5aRRKuzs/zCBMcvv9/glq3U7H7Rs5/Wz+q8ZashllE
 sz66nyNWNIjpotcJmeqw+6boc4P9p+Hbl+I0jk5Q=
Date: Tue, 1 Oct 2019 15:43:54 +0100
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v3 1/5] arm64: vdso32: Introduce COMPAT_CC_IS_GCC
Message-ID: <20191001144353.5rn3bkcc6eyfclh7@willie-the-truck>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926214342.34608-1-vincenzo.frascino@arm.com>
 <20190926214342.34608-2-vincenzo.frascino@arm.com>
 <20191001131420.y3fsydlo7pg6ykfs@willie-the-truck>
 <20191001132731.GG41399@arrakis.emea.arm.com>
 <ed7d1465-2d7b-d57c-c1b1-215af1ba7a6f@arm.com>
 <20191001142038.ptwyfbesfrz3kkoz@willie-the-truck>
 <7558914c-fc2d-d05a-ccbe-76ef451670ae@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7558914c-fc2d-d05a-ccbe-76ef451670ae@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_074400_150462_11F56252 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: ard.biesheuvel@linaro.org, Catalin Marinas <catalin.marinas@arm.com>,
 ndesaulniers@google.com, linux-kernel@vger.kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBPY3QgMDEsIDIwMTkgYXQgMDM6Mzc6NDlQTSArMDEwMCwgVmluY2Vuem8gRnJhc2Np
bm8gd3JvdGU6Cj4gT24gMTAvMS8xOSAzOjIwIFBNLCBXaWxsIERlYWNvbiB3cm90ZToKPiA+IE9u
IFR1ZSwgT2N0IDAxLCAyMDE5IGF0IDAzOjIwOjM1UE0gKzAxMDAsIFZpbmNlbnpvIEZyYXNjaW5v
IHdyb3RlOgo+ID4+IE9uIDEwLzEvMTkgMjoyNyBQTSwgQ2F0YWxpbiBNYXJpbmFzIHdyb3RlOgo+
ID4+PiBPbiBUdWUsIE9jdCAwMSwgMjAxOSBhdCAwMjoxNDoyM1BNICswMTAwLCBXaWxsIERlYWNv
biB3cm90ZToKPiA+Pj4+IE9uIFRodSwgU2VwIDI2LCAyMDE5IGF0IDEwOjQzOjM4UE0gKzAxMDAs
IFZpbmNlbnpvIEZyYXNjaW5vIHdyb3RlOgo+ID4+Pj4+ICtjb25maWcgQ09NUEFUQ0NfSVNfQVJN
X0dDQwo+ID4+Pj4+ICsJZGVmX2Jvb2wgJChzdWNjZXNzLCQoQ09NUEFUQ0MpIC0tdmVyc2lvbiB8
IGhlYWQgLW4gMSB8IGdyZXAgLXEgImFybS0uKi1nY2MiKQo+ID4+Pj4KPiA+Pj4+IEkndmUgc2Vl
biB0b29sY2hhaW5zIHdoZXJlIHRoZSBmaXJzdCBwYXJ0IG9mIHRoZSB0dXBsZSBpcyAiYXJtdjct
Iiwgc28gdGhleQo+ID4+Pj4gd29uJ3QgZ2V0IGRldGVjdGVkIGhlcmUuIEhvd2V2ZXIsIGRvIHdl
IHJlYWxseSBuZWVkIHRvIGRldGVjdCB0aGlzPyBJZgo+ID4+Pj4gc29tZWJvZHkgcGFzc2VzIGEg
ZHVmZiBjb21waWxlciwgdGhlbiB0aGUgYnVpbGQgd2lsbCBmYWlsIGluIHRoZSBzYW1lIHdheSBh
cwo+ID4+Pj4gaWYgdGhleSBwYXNzZWQgaXQgdG8gQ1JPU1NfQ09NUElMRT0uCj4gPj4+Cj4gPj4+
IE5vdCBzdXJlIHdoYXQgaGFwcGVucyBpZiB3ZSBwYXNzIGFuIGFhcmNoNjQgY29tcGlsZXIuIENh
biB3ZSBlbmQgdXAgd2l0aAo+ID4+PiBhIDY0LWJpdCBjb21wYXQgdkRTTz8KPiA+Pj4KPiA+Pgo+
ID4+IEkgYWdyZWUgd2l0aCBDYXRhbGluIGhlcmUuIFRoZSBwcm9ibGVtIGlzIG5vdCBvbmx5IHdo
ZW4geW91IHBhc3MgYW5kIGFhcmNoNjQKPiA+PiB0b29sY2hhaW4gYnV0IGV2ZW4gYW4geDg2IGFu
ZCBzbyBvbi4KPiA+IAo+ID4gSSBkaXNhZ3JlZS4gV2hhdCBoYXBwZW5zIGlmIHlvdSBkbzoKPiA+
IAo+ID4gJCBtYWtlIEFSQ0g9YXJtNjQgQ1JPU1NfQ09NUElMRT14ODZfNjQtbGludXgtZ251LQo+
ID4gCj4gPiBvbiB5b3VyIHg4NiBib3g/Cj4gPgo+IAo+IFRoZSBrZXJuZWwgY29tcGlsYXRpb24g
YnJlYWtzIGFzIGZvbGxvd3M6Cj4gCj4geDg2XzY0LWxpbnV4LWdudS1nY2M6IGVycm9yOiB1bnJl
Y29nbml6ZWQgY29tbWFuZCBsaW5lIG9wdGlvbiDigJgtbWxpdHRsZS1lbmRpYW7igJk7Cj4gZGlk
IHlvdSBtZWFuIOKAmC1mY29udmVydD1saXR0bGUtZW5kaWFu4oCZPwo+IC9kYXRhMS9Qcm9qZWN0
cy9MaW51eEtlcm5lbC9saW51eC9zY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI2NTogcmVjaXBlIGZv
ciB0YXJnZXQKPiAnc2NyaXB0cy9tb2QvZW1wdHkubycgZmFpbGVkCj4gbWFrZVsyXTogKioqIFtz
Y3JpcHRzL21vZC9lbXB0eS5vXSBFcnJvciAxCj4gL2RhdGExL1Byb2plY3RzL0xpbnV4S2VybmVs
L2xpbnV4L01ha2VmaWxlOjExMjg6IHJlY2lwZSBmb3IgdGFyZ2V0ICdwcmVwYXJlMCcgZmFpbGVk
Cj4gbWFrZVsxXTogKioqIFtwcmVwYXJlMF0gRXJyb3IgMgo+IG1ha2VbMV06IExlYXZpbmcgZGly
ZWN0b3J5ICcvZGF0YTEvUHJvamVjdHMvTGludXhLZXJuZWwvbGludXgtb3V0Jwo+IE1ha2VmaWxl
OjE3OTogcmVjaXBlIGZvciB0YXJnZXQgJ3N1Yi1tYWtlJyBmYWlsZWQKPiBtYWtlOiAqKiogW3N1
Yi1tYWtlXSBFcnJvciAyCj4gCj4gU2ltaWxhciBpc3N1ZSBpbiB0aGUgY29tcGF0IHZkc28gbGli
cmFyeSBjb21waWxhdGlvbiBpZiBJIGRvICh3aXRob3V0IHRoZSBjaGVjayk6Cj4gCj4gJCBtYWtl
IEFSQ0g9YXJtNjQgQ1JPU1NfQ09NUElMRT1hYXJjaDY0LWxpbnV4LWdudS0KPiBDUk9TU19DT01Q
SUxFX0NPTVBBVD14ODZfNjQtbGludXgtZ251LQo+IAo+IFdpdGggdGhpcyBjaGVjayB0aGUgY29t
cGlsYXRpb24gY29tcGxldGVzIGNvcnJlY3RseSBidXQgdGhlIGNvbXBhdCB2ZHNvIGRvZXMgbm90
Cj4gZ2V0IGJ1aWx0ICh1bmxlc3MgbXkgZW52aXJvbm1lbnQgaXMgcGxheWluZyBtZSB0cmlja3Mg
OykgKS4KCk15IHBvaW50IHdhcyB0aGF0IHdlIGRvbid0IGF0dGVtcHQgdG8gc2FuaXRpc2UgdGhl
IGNvbXBpbGVyIHBhc3NlZCB2aWEKQ1JPU1NfQ09NUElMRSwgc28gSSBkb24ndCB0aGluayB3ZSBz
aG91bGQgZG8gYW55dGhpbmcgc3BlY2lhbCBmb3IgQ09NUEFUQ0MKZWl0aGVyLgoKV2lsbAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
