Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D1459363
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 07:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jeoiAhQ4Fge7xxB7CLSePPZ1LWUWWpn7DdneE9xvPHQ=; b=Z3Xg3uKPTzqdnb
	zm2VhWO4E0ZsNlYSRf//pDM16Meiojf/dUFI1OHj5bkGJ5QFMEtch7DEMbG5APSXZIJc6hcEK5VE0
	RASzFyPnQImfNRSjP7K4QtAzPwZak3gviTQ2OckmlLYHTQIUcHmsYbvopVwWHCU2jU9RdF1LEfuIJ
	mFLgsDS7oCe8XqyoRFLkcc6Egiq850Umw9yi7IMQ4Xs92uGJVB5m8Wf7lTGkS1ifpGkTyDzM5IUiF
	ubw0rFTmFOHQ+PeR0LO5QdrB2PgTgCQfw/ClyqsS/ot/72IIzwK2b8QjnFkdrBHo1heKhlYrIT9rj
	4eFuS5/mS72/z0fq8frQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgjOb-0003aw-GV; Fri, 28 Jun 2019 05:26:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgjON-0003aa-2i
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 05:25:48 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D04F72133F;
 Fri, 28 Jun 2019 05:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561699546;
 bh=aMZfEfbPOVHaF3ps0biSxY9D0QevPh/SQ9F38VyxOOs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mHR7MZYSCuKftGCC0a4GEMifx1yqY1mqy6gelDQX21z2J9q+qOUS3XH3w7FJiOQox
 rFofg1nwy5fMVogvoBfoe5h6fCX6BNIhcOjt+ntd9o7GwXB9pdr3IKKYhDcBprFs8s
 XZ+4N1B18kQ5aVsT+q9V2tTe/fy2D9I93+AouszQ=
Date: Thu, 27 Jun 2019 22:25:44 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: keerthy <j-keerthy@ti.com>
Subject: Re: [RESEND PATCH 00/10] crypto: k3: Add sa2ul driver
Message-ID: <20190628052544.GH673@sol.localdomain>
References: <20190628042745.28455-1-j-keerthy@ti.com>
 <20190628045318.GC673@sol.localdomain>
 <7ca64e49-6e1f-c74e-4d8e-0e08607fe5c5@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7ca64e49-6e1f-c74e-4d8e-0e08607fe5c5@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_222547_160207_E46FA475 
X-CRM114-Status: GOOD (  23.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: nm@ti.com, devicetree@vger.kernel.org, herbert@gondor.apana.org.au,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKdW4gMjgsIDIwMTkgYXQgMTA6NDQ6MjZBTSArMDUzMCwga2VlcnRoeSB3cm90ZToK
PiAKPiAKPiBPbiA2LzI4LzIwMTkgMTA6MjMgQU0sIEVyaWMgQmlnZ2VycyB3cm90ZToKPiA+IEhp
IEtlZXJ0aHksCj4gPiAKPiA+IE9uIEZyaSwgSnVuIDI4LCAyMDE5IGF0IDA5OjU3OjM1QU0gKzA1
MzAsIEtlZXJ0aHkgd3JvdGU6Cj4gPiA+IFRoZSBzZXJpZXMgYWRkcyBDcnlwdG8gaGFyZHdhcmUg
YWNjZWxlcmF0b3Igc3VwcG9ydCBmb3IgU0EyVUwuCj4gPiA+IFNBMlVMIHN0YW5kcyBmb3Igc2Vj
dXJpdHkgYWNjZWxlcmF0b3IgdWx0cmEgbGl0ZS4KPiA+ID4gCj4gPiA+IFRoZSBTZWN1cml0eSBB
Y2NlbGVyYXRvciAoU0EyX1VMKSBzdWJzeXN0ZW0gcHJvdmlkZXMgaGFyZHdhcmUKPiA+ID4gY3J5
cHRvZ3JhcGhpYyBhY2NlbGVyYXRpb24gZm9yIHRoZSBmb2xsb3dpbmcgdXNlIGNhc2VzOgo+ID4g
PiDigKIgRW5jcnlwdGlvbiBhbmQgYXV0aGVudGljYXRpb24gZm9yIHNlY3VyZSBib290Cj4gPiA+
IOKAoiBFbmNyeXB0aW9uIGFuZCBhdXRoZW50aWNhdGlvbiBvZiBjb250ZW50IGluIGFwcGxpY2F0
aW9ucwo+ID4gPiAgICByZXF1aXJpbmcgRFJNIChkaWdpdGFsIHJpZ2h0cyBtYW5hZ2VtZW50KSBh
bmQKPiA+ID4gICAgY29udGVudC9hc3NldCBwcm90ZWN0aW9uCj4gPiA+IFRoZSBkZXZpY2UgaW5j
bHVkZXMgb25lIGluc3RhbnRpYXRpb24gb2YgU0EyX1VMIG5hbWVkIFNBMl9VTDAKPiA+ID4gCj4g
PiA+IFNBMlVMIG5lZWRzIG9uIHR4IGNoYW5uZWwgYW5kIGEgcGFpciBvZiByeCBkbWEgY2hhbm5l
bHMuCj4gPiA+IAo+ID4gPiBUaGlzIHNlcmllcyBoYXMgZGVwZW5kZW5jeSBvbiBVRE1BIHNlcmll
cy4gSGVuY2UgaXMgYmFzZWQgb24gdG9wIG9mOgo+ID4gPiAKPiA+ID4gaHR0cHM6Ly9wYXRjaHdv
cmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LWRtYWVuZ2luZS9saXN0Lz9zZXJpZXM9MTE0MTA1
Cj4gPiA+IAo+ID4gPiBUaGUgYWJvdmUgc2VyaWVzIGFkZHMgY291cGxlIG9mIGRtYWVuZ2luZSBB
UElzIHRoYXQgYXJlIHVzZWQKPiA+ID4gYnkgdGhlIHNhMnVsIGRyaXZlci4gSGVuY2UgdGhlcmUg
aXMgYSBoYXJkIGRlcGVuZGVuY3kgb24gdGhlCj4gPiA+IGFib3ZlIHNlcmllcy4KPiA+ID4gCj4g
PiA+IFJlc2VuZGluZyB3aXRoIGxpbnV4LWNyeXB0byBsaXN0IGluIENjLgo+ID4gPiAKPiA+ID4g
S2VlcnRoeSAoMTApOgo+ID4gPiAgICBkdC1iaW5kaW5nczogY3J5cHRvOiBrMzogQWRkIHNhMnVs
IGJpbmRpbmdzIGRvY3VtZW50YXRpb24KPiA+ID4gICAgY3J5cHRvOiBzYTJ1bDogQWRkIGNyeXB0
byBkcml2ZXIKPiA+ID4gICAgY3J5cHRvOiBzYTJ1bDogQWRkIEFFUyBFQ0IgTW9kZSBzdXBwb3J0
Cj4gPiA+ICAgIGNyeXB0bzogc2EydWw6IEFkZCBhZWFkIHN1cHBvcnQgZm9yIGhtYWMoc2hhMSlj
YmMoYWVzKSBhbGdvcml0aG0KPiA+ID4gICAgY3J5cHRvOiBzaGEyNTZfZ2VuZXJpYzogRXhwb3J0
IHRoZSBUcmFuc2Zvcm0gZnVuY3Rpb24KPiA+ID4gICAgY3J5cHRvOiBzYTJ1bDogQWRkIGhtYWMo
c2hhMjU2KWNiYyhhZXMpIEFFQUQgQWxnbyBzdXBwb3J0Cj4gPiA+ICAgIGNyeXB0bzogc2EydWw6
IEFkZCBobWFjKHNoYTEpIEhNQUMgYWxnb3JpdGhtIHN1cHBvcnQKPiA+ID4gICAgY3J5cHRvOiBz
YTJ1bDogQWRkIGhtYWMoc2hhMjU2KSBITUFDIGFsZ29yaXRobSBzdXBwb3J0Cj4gPiA+ICAgIHNh
MnVsOiBBZGQgM0RFUyBFQ0IgJiBDQkMgTW9kZSBzdXBwb3J0Cj4gPiA+ICAgIGFybTY0OiBkdHM6
IGszLWFtNjogQWRkIGNyeXB0byBhY2NlbGFyYXRvciBub2RlCj4gPiA+IAo+ID4gPiAgIC4uLi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2NyeXB0by9zYTJ1bC50eHQgICAgICB8ICAgNDcgKwo+ID4gPiAg
IGFyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtYW02NS1tYWluLmR0c2kgICAgICB8ICAgMzMgKwo+
ID4gPiAgIGNyeXB0by9zaGEyNTZfZ2VuZXJpYy5jICAgICAgICAgICAgICAgICAgICAgICB8ICAg
IDMgKy0KPiA+ID4gICBkcml2ZXJzL2NyeXB0by9LY29uZmlnICAgICAgICAgICAgICAgICAgICAg
ICAgfCAgIDE3ICsKPiA+ID4gICBkcml2ZXJzL2NyeXB0by9NYWtlZmlsZSAgICAgICAgICAgICAg
ICAgICAgICAgfCAgICAxICsKPiA+ID4gICBkcml2ZXJzL2NyeXB0by9zYTJ1bC5jICAgICAgICAg
ICAgICAgICAgICAgICAgfCAyMjMyICsrKysrKysrKysrKysrKysrCj4gPiA+ICAgZHJpdmVycy9j
cnlwdG8vc2EydWwuaCAgICAgICAgICAgICAgICAgICAgICAgIHwgIDM4NCArKysKPiA+ID4gICBp
bmNsdWRlL2NyeXB0by9zaGEuaCAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAxICsKPiA+
ID4gICA4IGZpbGVzIGNoYW5nZWQsIDI3MTcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+
ID4gPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvY3J5cHRvL3NhMnVsLnR4dAo+ID4gPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2Ny
eXB0by9zYTJ1bC5jCj4gPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvY3J5cHRvL3Nh
MnVsLmgKPiA+IAo+ID4gRGlkIHlvdSBydW4gdGhlIGNyeXB0byBzZWxmLXRlc3RzIG9uIHRoaXMg
ZHJpdmVyPyAgaS5lLiBib290IGEga2VybmVsIHdpdGgKPiA+IAo+ID4gCSMgQ09ORklHX0NSWVBU
T19NQU5BR0VSX0RJU0FCTEVfVEVTVFMgaXMgbm90IHNldAo+ID4gCUNPTkZJR19ERUJVR19LRVJO
RUw9eQo+ID4gCUNPTkZJR19DUllQVE9fTUFOQUdFUl9FWFRSQV9URVNUUz15Cj4gPiAKPiA+IFdo
YXQgYXJlIHRoZSByZXN1bHRzPwo+IAo+IEVyaWMsCj4gCj4gVGhhbmtzIGZvciB5b3VyIHJlc3Bv
bnNlLiBJIGRpZCB0cnkgd2l0aCB0aGF0LiBBbGwgdGVzdCBjYXNlcwo+IHdlcmUgcGFzc2luZyBv
biA0LjE5IGtlcm5lbCBiZWZvcmUgdGhlIHRlc3RtZ3IgcmV2YW1wLgo+IAoKVGhhdCdzIHN1cnBy
aXNpbmcsIHNpbmNlIHlvdXIgZHJpdmVyIGRvZXNuJ3QgaW1wbGVtZW50IHVwZGF0ZSgpIGZvciBo
YXNoaW5nLCBzbwppdCBzaG91bGQgaGF2ZSBiZWVuIGZhaWxpbmcgYXQgbGVhc3QgdGhlIEhNQUMg
dGVzdHMuICBBcmUgeW91IHN1cmUgeW91IHJlYWxseQpyYW4gdGhlIHRlc3RzPwoKPiBDdXJyZW50
bHkgZmV3IG9mIHRoZSB0ZXN0IGNhc2VzIGRvIGZhaWwuIEZvciBleDogQXBwZW5kaW5nCj4gdGhl
IGxhc3QgaXZsZW4gYnl0ZXMgb2YgY2lwaGVyIHRleHQgYXMgdGhlIElWLgoKV2VsbCwgdGhlc2Ug
bmVlZCB0byBiZSBmaXhlZC4KCj4gCj4gPiAKPiA+IEFsc28sIHRoaXMgcGF0Y2hzZXQgZG9lcyBu
b3QgY29tcGlsZSBmb3IgbWUuCj4gCj4gVGhpcyBoYXMgZGVwZW5kZW5jeSBvbiBVRE1BIHNlcmll
czoKPiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzEwOTMwOTY5LwoKSSBoYWQg
dGhhdCBhcHBsaWVkLgoKLSBFcmljCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
