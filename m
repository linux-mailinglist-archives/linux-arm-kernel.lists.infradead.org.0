Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA21E18A353
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 20:49:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M9Ql0BHUMfLdusLad+3Fzr5GNeB21pGd2nHUOwbCi3k=; b=hsmoarSTd6hlR9GkZ5Rf9usuT
	+2ONOwWr+wL6XVRq7YQrmvktW9LDfNDODlAYVTJdcAobP0bl676W+J84K+Po7B07b1p/HVfItmpSm
	as0zmkGRGIY79XFlGN0r9Tci0zSGomsuks1JdMch8QHc1pbS1+QZofrAfA6LFPBa0mCZm5tAbeYS6
	8CF7b4sotlcbEWENzHEu9AIffCVIcdaaVkDZETjFTNT41UAS5ybPSBfvRq8s3HXlUFvRnEwBFasJj
	YOJXGFfGEOCuOSK6ZmtxAygUHvUO5wE7tBWk5FNHsBTJkeSFFCd7T3wEgTBiz3NbOPpzLLyE2cvZl
	319HLolLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEego-0006Sx-1w; Wed, 18 Mar 2020 19:49:18 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEegd-0006SJ-Qr
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 19:49:09 +0000
Received: from roundcube.remlab.net (ip6-localhost [IPv6:::1])
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTP id 36FB45FB07;
 Wed, 18 Mar 2020 20:48:50 +0100 (CET)
MIME-Version: 1.0
Date: Wed, 18 Mar 2020 21:48:50 +0200
From: Remi Denis-Courmont <remi@remlab.net>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 1/3] arm64: clean up trampoline vector loads
Organization: Remlab Tmi
In-Reply-To: <8127163.Epc2VWTDuo@basile.remlab.net>
References: <20200316124046.103844-1-remi@remlab.net>
 <20200318175709.GD94111@arrakis.emea.arm.com>
 <20200318180630.GE94111@arrakis.emea.arm.com>
 <8127163.Epc2VWTDuo@basile.remlab.net>
Message-ID: <fb0e19c2c231a5f256303253b92e64f3@remlab.net>
X-Sender: remi@remlab.net
User-Agent: Roundcube Webmail/1.2.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_124908_013090_FE6FDAEA 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgMjAyMC0wMy0xOCAyMDoyOSwgUsOpbWkgRGVuaXMtQ291cm1vbnQgYSDDqWNyaXTCoDoKPiBM
ZSBrZXNraXZpaWtrb25hIDE4LiBtYWFsaXNrdXV0YSAyMDIwLCAyMC4wNi4zMCBFRVQgQ2F0YWxp
biBNYXJpbmFzIGEgCj4gw6ljcml0IDoKPj4gT24gV2VkLCBNYXIgMTgsIDIwMjAgYXQgMDU6NTc6
MDlQTSArMDAwMCwgQ2F0YWxpbiBNYXJpbmFzIHdyb3RlOgo+PiA+IE9uIE1vbiwgTWFyIDE2LCAy
MDIwIGF0IDAyOjQwOjQ0UE0gKzAyMDAsIFLDqW1pIERlbmlzLUNvdXJtb250IHdyb3RlOgo+PiA+
ID4gRnJvbTogUsOpbWkgRGVuaXMtQ291cm1vbnQgPHJlbWkuZGVuaXMuY291cm1vbnRAaHVhd2Vp
LmNvbT4KPj4gPiA+Cj4+ID4gPiBUaGlzIHN3aXRjaGVzIGZyb20gY3VzdG9tIGluc3RydWN0aW9u
IHBhdHRlcm5zIHRvIHRoZSByZWd1bGFyIGxhcmdlCj4+ID4gPiBtZW1vcnkgbW9kZWwgc2VxdWVu
Y2Ugd2l0aCBBRFJQIGFuZCBMRFIuIEluIGRvaW5nIHNvLCB0aGUgQURECj4+ID4gPiBpbnN0cnVj
dGlvbiBjYW4gYmUgZWxpbWluYXRlZCBpbiB0aGUgU0RFSSBoYW5kbGVyLCBhbmQgdGhlIGNvZGUg
bm8KPj4gPiA+IGxvbmdlciBhc3N1bWVzIHRoYXQgdGhlIHRyYW1wb2xpbmUgdmVjdG9ycyBhbmQg
dGhlIHZlY3RvcnMgYWRkcmVzcyBib3RoCj4+ID4gPiBzdGFydCBvbiBhIHBhZ2UgYm91bmRhcnku
Cj4+ID4gPgo+PiA+ID4gU2lnbmVkLW9mZi1ieTogUsOpbWkgRGVuaXMtQ291cm1vbnQgPHJlbWku
ZGVuaXMuY291cm1vbnRAaHVhd2VpLmNvbT4KPj4gPgo+PiA+IEkgcXVldWVkIHRoZSAzIHRyYW1w
b2xpbmUgcGF0Y2hlcyBmb3IgNS43LiBUaGFua3MuCj4+IAo+PiAuLi4gYW5kIHJlbW92ZWQuIEkg
YXBwbGllZCB0aGVtIG9uIHRvcCBvZiBhcm02NCAKPj4gZm9yLW5leHQvYXNtLWFubm90YXRpb25z
Cj4+IGFuZCB3aXRoIGRlZmNvbmZpZyBJIGdldDoKPj4gCj4+ICAgTEQgICAgICAudG1wX3ZtbGlu
dXgxCj4+IGFyY2gvYXJtNjQva2VybmVsL2VudHJ5Lm86IGluIGZ1bmN0aW9uIGB0cmFtcF92ZWN0
b3JzJzoKPj4gYXJjaC9hcm02NC9rZXJuZWwvZW50cnkuUzo4Mzg6KC5lbnRyeS50cmFtcC50ZXh0
KzB4NDNjKTogcmVsb2NhdGlvbgo+PiB0cnVuY2F0ZWQgdG8gZml0OiBSX0FBUkNINjRfTERTVDY0
X0FCU19MTzEyX05DIGFnYWluc3Qgc3ltYm9sCj4+IGBfX2VudHJ5X3RyYW1wX2RhdGFfc3RhcnQn
IGRlZmluZWQgaW4gLnJvZGF0YSBzZWN0aW9uIGluCj4+IAo+PiBJIGhhdmVuJ3QgYmlzZWN0ZWQg
dG8gc2VlIHdoaWNoIHBhdGNoIGNhdXNlZCB0aGlzIGlzc3VlLgoKSXQncyB0aGUgdGhpcmQgcGF0
Y2guCgo+IFVobywgcmlnaHQgOi0oIEl0IG9ubHkgYnVpbGRzIHdpdGggU0RFSSBlbmFibGVkIDot
JAo+IAo+IEknbGwgY2hlY2sgZnVydGhlci4KCkl0IHNlZW1zIHRoYXQgdGhlIFNZTV9EQVRBX1NU
QVJUIG1hY3JvIGRvZXMgbm90IGFsaWduIHRoZSBkYXRhIG9uIGl0cyAKbmF0dXJhbCBib3VuZGFy
eS4gSSBndWVzcyB0aGF0IGlzIGFsbCBmaW5lIG9uIHg4NiB3aGVyZSBkYXRhIG5lZWRzIG5vdCAK
YmUgYWxpZ25lZCwgYnV0IGl0IGxlYWRzIHRvIHRoaXMga2luZCBvZiBtaXNjaGllZiBvbiBhcm02
NC4gVGhvdWdoIGV2ZW4gCnRoZW4sIHRoZSBhZGRyZXNzIGlzIG9mIGNvdXJzZSBhY3R1YWxseSBh
bGlnbmVkIGNvcnJlY3RseSBvbiBhbiA4LWJ5dGVzIApib3VuZGFyeSwgc28gSSBzdXBwb3NlIGJp
bnV0aWxzIGlzIGp1c3QgYmVpbmcgcG9pbnRsZXNzbHkgcGVkYW50aWMgaGVyZT8KCi0tIApSw6lt
aSBEZW5pcy1Db3VybW9udAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
