Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC3E8312E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 14:07:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HCjvz7vTkkDGZ34vsGuPeHdMWEkH6IIpDqPVICQWvvA=; b=av2epydq2zlZx0
	FvxoNeDRPJHBqGBnPgjpLFnhVYPg1bcgl6mIM5pHmgUDlnExHTM+OjwJpv2VgYiBCeADDJk55rJts
	glCoMTKKlwGw7qm4Ga8A97IMkpd/D5RNJsbkdcGMqD45m2A9mZQfJgGdb0F5C1IE75LGN8AfOdUFV
	PlEKv9iiBckSiRRxrCF5y2+PWOyXq8lN1v/9CmDy9dIpNG/ffQuGcrAbKChL30BB6OcTo0j23C3jO
	spVB7lINAl0dT/PQgoyIBAY068CIg/hYwxc9VH5m281CG7yVMTRTWkM2FWt6g08WHe/uWTmNq4Z8y
	zh02d3IJhI7P0OLap0qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huyFU-0002xO-W0; Tue, 06 Aug 2019 12:07:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1huyFI-0002wY-Bj
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 12:07:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1DE6228;
 Tue,  6 Aug 2019 05:07:10 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4EFBC3F694;
 Tue,  6 Aug 2019 05:07:09 -0700 (PDT)
Date: Tue, 6 Aug 2019 13:07:07 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH] arm64/cache: fix -Woverride-init compiler warnings
Message-ID: <20190806120706.GC475@lakrids.cambridge.arm.com>
References: <1564759944-2197-1-git-send-email-cai@lca.pw>
 <20190805095256.ocgdb2yfhnbdz6kw@willie-the-truck>
 <771C4B4C-6D79-419D-9778-5DE1BFC67FBE@lca.pw>
 <20190805140118.fys437oor2b2rnq5@willie-the-truck>
 <06613F4A-3DA7-4FF9-8616-52CB4BB58C48@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <06613F4A-3DA7-4FF9-8616-52CB4BB58C48@lca.pw>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_050716_492395_9C7B480A 
X-CRM114-Status: GOOD (  28.15  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgMDUsIDIwMTkgYXQgMTE6NTA6MDNQTSAtMDQwMCwgUWlhbiBDYWkgd3JvdGU6
Cj4gCj4gCj4gPiBPbiBBdWcgNSwgMjAxOSwgYXQgMTA6MDEgQU0sIFdpbGwgRGVhY29uIDx3aWxs
QGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gCj4gPiBPbiBNb24sIEF1ZyAwNSwgMjAxOSBhdCAwNzo0
NzozN0FNIC0wNDAwLCBRaWFuIENhaSB3cm90ZToKPiA+PiAKPiA+PiAKPiA+Pj4gT24gQXVnIDUs
IDIwMTksIGF0IDU6NTIgQU0sIFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+IHdyb3RlOgo+
ID4+PiAKPiA+Pj4gT24gRnJpLCBBdWcgMDIsIDIwMTkgYXQgMTE6MzI6MjRBTSAtMDQwMCwgUWlh
biBDYWkgd3JvdGU6Cj4gPj4+PiBUaGUgY29tbWl0IDE1NTQzM2NiMzY1ZSAoImFybTY0OiBjYWNo
ZTogUmVtb3ZlIHN1cHBvcnQgZm9yIEFTSUQtdGFnZ2VkCj4gPj4+PiBWSVZUIEktY2FjaGVzIikg
aW50cm9kdWNlZCBzb21lIGNvbXBpYXRpb24gd2FybmluZ3MgZnJvbSBHQ0MsCj4gPj4+PiAKPiA+
Pj4+IGFyY2gvYXJtNjQva2VybmVsL2NwdWluZm8uYzozODoyNjogd2FybmluZzogaW5pdGlhbGl6
ZWQgZmllbGQKPiA+Pj4+IG92ZXJ3cml0dGVuIFstV292ZXJyaWRlLWluaXRdCj4gPj4+PiBbSUNB
Q0hFX1BPTElDWV9WSVBUXSAgPSAiVklQVCIsCj4gPj4+PiAgICAgICAgICAgICAgICAgICAgICAg
ICBefn5+fn4KPiA+Pj4+IGFyY2gvYXJtNjQva2VybmVsL2NwdWluZm8uYzozODoyNjogbm90ZTog
KG5lYXIgaW5pdGlhbGl6YXRpb24gZm9yCj4gPj4+PiAnaWNhY2hlX3BvbGljeV9zdHJbMl0nKQo+
ID4+Pj4gYXJjaC9hcm02NC9rZXJuZWwvY3B1aW5mby5jOjM5OjI2OiB3YXJuaW5nOiBpbml0aWFs
aXplZCBmaWVsZAo+ID4+Pj4gb3ZlcndyaXR0ZW4gWy1Xb3ZlcnJpZGUtaW5pdF0KPiA+Pj4+IFtJ
Q0FDSEVfUE9MSUNZX1BJUFRdICA9ICJQSVBUIiwKPiA+Pj4+ICAgICAgICAgICAgICAgICAgICAg
ICAgIF5+fn5+fgo+ID4+Pj4gYXJjaC9hcm02NC9rZXJuZWwvY3B1aW5mby5jOjM5OjI2OiBub3Rl
OiAobmVhciBpbml0aWFsaXphdGlvbiBmb3IKPiA+Pj4+ICdpY2FjaGVfcG9saWN5X3N0clszXScp
Cj4gPj4+PiBhcmNoL2FybTY0L2tlcm5lbC9jcHVpbmZvLmM6NDA6Mjc6IHdhcm5pbmc6IGluaXRp
YWxpemVkIGZpZWxkCj4gPj4+PiBvdmVyd3JpdHRlbiBbLVdvdmVycmlkZS1pbml0XQo+ID4+Pj4g
W0lDQUNIRV9QT0xJQ1lfVlBJUFRdICA9ICJWUElQVCIsCj4gPj4+PiAgICAgICAgICAgICAgICAg
ICAgICAgICAgXn5+fn5+fgo+ID4+Pj4gYXJjaC9hcm02NC9rZXJuZWwvY3B1aW5mby5jOjQwOjI3
OiBub3RlOiAobmVhciBpbml0aWFsaXphdGlvbiBmb3IKPiA+Pj4+ICdpY2FjaGVfcG9saWN5X3N0
clswXScpCj4gPj4+PiAKPiA+Pj4+IGJlY2F1c2UgaXQgaW5pdGlhbGl6ZXMgaWNhY2hlX3BvbGlj
eV9zdHJbMCAuLi4gM10gdHdpY2UuCj4gPj4+PiAKPiA+Pj4+IEZpeGVzOiAxNTU0MzNjYjM2NWUg
KCJhcm02NDogY2FjaGU6IFJlbW92ZSBzdXBwb3J0IGZvciBBU0lELXRhZ2dlZCBWSVZUIEktY2Fj
aGVzIikKPiA+Pj4+IFNpZ25lZC1vZmYtYnk6IFFpYW4gQ2FpIDxjYWlAbGNhLnB3Pgo+ID4+Pj4g
LS0tCj4gPj4+PiBhcmNoL2FybTY0L2tlcm5lbC9jcHVpbmZvLmMgfCA0ICsrLS0KPiA+Pj4+IDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPj4+PiAKPiA+
Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC9jcHVpbmZvLmMgYi9hcmNoL2FybTY0
L2tlcm5lbC9jcHVpbmZvLmMKPiA+Pj4+IGluZGV4IDg3NjA1NWUzNzM1Mi4uMTkzYjM4ZGE4ZDk2
IDEwMDY0NAo+ID4+Pj4gLS0tIGEvYXJjaC9hcm02NC9rZXJuZWwvY3B1aW5mby5jCj4gPj4+PiAr
KysgYi9hcmNoL2FybTY0L2tlcm5lbC9jcHVpbmZvLmMKPiA+Pj4+IEBAIC0zNCwxMCArMzQsMTAg
QEAKPiA+Pj4+IHN0YXRpYyBzdHJ1Y3QgY3B1aW5mb19hcm02NCBib290X2NwdV9kYXRhOwo+ID4+
Pj4gCj4gPj4+PiBzdGF0aWMgY2hhciAqaWNhY2hlX3BvbGljeV9zdHJbXSA9IHsKPiA+Pj4+IC0J
WzAgLi4uIElDQUNIRV9QT0xJQ1lfUElQVF0JPSAiUkVTRVJWRUQvVU5LTk9XTiIsCj4gPj4+PiAr
CVtJQ0FDSEVfUE9MSUNZX1ZQSVBUXQkJPSAiVlBJUFQiLAo+ID4+Pj4gKwlbSUNBQ0hFX1BPTElD
WV9WUElQVCArIDFdCT0gIlJFU0VSVkVEL1VOS05PV04iLAo+ID4+Pj4gCVtJQ0FDSEVfUE9MSUNZ
X1ZJUFRdCQk9ICJWSVBUIiwKPiA+Pj4+IAlbSUNBQ0hFX1BPTElDWV9QSVBUXQkJPSAiUElQVCIs
Cj4gPj4+PiAtCVtJQ0FDSEVfUE9MSUNZX1ZQSVBUXQkJPSAiVlBJUFQiLAo+ID4+PiAKPiA+Pj4g
SSByZWFsbHkgZG9uJ3QgbGlrZSB0aGlzIHBhdGNoLiBVc2luZyAiWzAgLi4uIE1BWElEWF0gPSA8
ZGVmYXVsdD4iIGlzIGEKPiA+Pj4gdXNlZnVsIGlkaW9tIGFuZCBJIHRoaW5rIHRoZSBjb2RlIGlz
IG1vcmUgZXJyb3ItcHJvbmUgdGhlIHdheSB5b3UgaGF2ZQo+ID4+PiByZXN0cnVjdHVyZWQgaXQu
Cj4gPj4+IAo+ID4+PiBXaHkgYXJlIHlvdSBwYXNzaW5nIC1Xb3ZlcnJpZGUtaW5pdCB0byB0aGUg
Y29tcGlsZXIgYW55d2F5PyBUaGVyZSdzIG9ubHkKPiA+Pj4gb25lIE1ha2VmaWxlIHRoYXQgcmVm
ZXJlbmNlcyB0aGF0IG9wdGlvbiwgYW5kIGl0J3Mgc3BlY2lmaWMgdG8gYSBwaW5jdHJsCj4gPj4+
IGRyaXZlci4KPiA+PiAKPiA+PiBUaG9zZSBleHRyYSB3YXJuaW5ncyBjYW4gYmUgZW5hYmxlZCBi
eSDigJxtYWtlIFc9MeKAnS4g4oCcLVdvdmVycmlkZS1pbml0IOKAnCBzZWVtcyB0byBiZSB1c2Vm
dWwKPiA+PiB0byBjYXRjaCBwb3RlbnRpYWwgZGV2ZWxvcGVyIG1pc3Rha2VzIHdpdGggdW5pbnRl
bnRlZCBkb3VibGUtaW5pdGlhbGl6YXRpb25zLiBJdCBpcyBub3JtYWwgdG8KPiA+PiBzdGFydCB0
byBmaXggdGhlIG1vc3Qgb2YgZmFsc2UtcG9zaXRpdmVzIGZpcnN0IGJlZm9yZSBnbG9iYWxseSBl
bmFibGluZyB0aGUgZmxhZyBieSBkZWZhdWx0IGp1c3QgbGlrZQo+ID4+IOKAnC1XaW1wbGljaXQt
ZmFsbHRocm91Z2jigJ0gbWVudGlvbmVkIGluLAo+ID4+IAo+ID4+IGh0dHBzOi8vbHduLm5ldC9B
cnRpY2xlcy83OTQ5NDQvCj4gPiAKPiA+IEkgdGhpbmsgdGhpcyBjYXNlIGlzIGNvbXBsZXRlbHkg
ZGlmZmVyZW50IHRvIHRoZSBpbXBsaWNpdCBmYWxsdGhyb3VnaCBzdHVmZi4KPiA+IFRoZSBzb2x1
dGlvbiB0aGVyZSB3YXMgc2ltcGx5IHRvIGFkZCBhIGNvbW1lbnQgd2l0aG91dCByZXN0cnVjdHVy
aW5nIHRoZQo+ID4gc3Vycm91bmRpbmcgY29kZS4gV2hhdCB5b3VyIHBhdGNoIGRvZXMgaGVyZSBp
cyBhY3RpdmVseSBtYWtlIHRoZSBjb2RlIGhhcmRlcgo+ID4gdG8gdW5kZXJzdGFuZC4KPiA+IAo+
ID4gSW5pdGlhbGlzaW5nIGEgc3RhdGljIGFycmF5IHdpdGggYSBub24temVybyBwYXR0ZXJuIGlz
IGEgdXNlZnVsIGlkaW9tIGFuZCBJCj4gPiBkb24ndCB0aGluayB3ZSBzaG91bGQgdGhyb3cgdGhh
dCBhd2F5IGp1c3QgdG8gYXBwZWFzZSBhIHNpbGx5IGNvbXBpbGVyCj4gPiB3YXJuaW5nIHRoYXQg
YXBwZWFycyBvbmx5IHdpdGggbm9uLWRlZmF1bHQgYnVpbGQgb3B0aW9ucy4gSGF2ZSBhIGxvb2sg
YXQKPiA+IHRoZSB3YXkgd2UgdXNlIFBFUkZfTUFQX0FMTF9VTlNVUFBPUlRFRCBpbiB0aGUgQXJt
IFBNVSBjb2RlLCBmb3IgZXhhbXBsZS4KPiAKPiBXZWxsLCBib3RoIEdDQyBhbmQgQ2xhbmcgd291
bGQgZ2VuZXJhdGUgd2FybmluZ3MgZm9yIHRob3NlLiBDbGFuZyBldmVuIGVuYWJsZSB0aGlzIGJ5
Cj4gZGVmYXVsdCwKPiAKPiBodHRwczovL3JlbGVhc2VzLmxsdm0ub3JnLzguMC4wL3Rvb2xzL2Ns
YW5nL2RvY3MvRGlhZ25vc3RpY3NSZWZlcmVuY2UuaHRtbCN3aW5pdGlhbGl6ZXItb3ZlcnJpZGVz
Cj4gCj4gQXNzdW1lIGNvbXBpbGVyIHBlb3BsZSBhcmUgc2FuZSwgSSBwcm9iYWJseSBub3QgY2Fs
bCB0aG9zZSBhcmUg4oCcc2lsbHnigJ0uCgpXZSdyZSBub3QgZGlzcHV0aW5nIHRoZSBzYW5pdHkg
b2YgY29tcGlsZXIgZm9sazsgV2lsbCBkaWQgbm90IHNheQphbnl0aGluZyBhYm91dCB0aGF0LgoK
VGhlIHdhcm5pbmcgaXMgdW5oZWxwZnVsIGluIHRoZSBjYXNlIG9mIHRoZSBbMCAuLi4gTUFYSURY
XSA9IDxkZWZhdWx0PgppZGlvbSwgYW5kIHRoZSBtb2RpZmljYXRpb24geW91IHN1Z2dlc3Q6Cgoq
IE1ha2VzIHRoZSBjb2RlIGhhcmRlciB0byByZWFkLgoKKiBJbmNyZWFzZXMgdGhlIG5lY2Vzc2Fy
eSBjb250ZXh0LiBlLmcuIEkgbXVzdCBrbm93IHRoZSBzcGVjaWZpYyB2YWx1ZXMKICBvZiB0aGUg
ZW51bSB0byBrbm93IHRoYXQgSUNBQ0hFX1BPTElDWV9WUElQVCArIDEgaXMgdGhlIHVuYWxsb2Nh
dGVkCiAgc2xvdC4KCiogTGVzcyByb2J1c3QuIElmIHRoZSBlbnVtIGdldHMgcmUtb3JkZXJlZCwg
d2UgbXVzdCB1cGRhdGUgdGhlIGFycmF5LgogIElmIHRoZSBlbnVtIGlzIGV4cGFuZGVkLCBuZXcg
ZWxlbWVudHMgbXVzdCBiZSBhZGRlZCB0byB0aGUgYXJyYXkgdG8KICBpbml0aWFsaXplIGVudHJp
ZXMgdG8gdGhlIGRlZmF1bHQgdmFsdWUsIHdoaWNoIGFsc28gbWFrZXMgdGhlIGNvZGUKICBtb3Jl
IHZlcmJvc2UgYW5kIHBhaW5mdWwgdG8gcmVhZC4gSUlVQyBpZiB3ZSBkb24ndCBleHBsaWNpdGx5
CiAgaW5pdGlhbGl6ZSBhbiBlbGVtZW50LCB3ZSB3b24ndCBnZXQgYSB3YXJuaW5nLCB3aGljaCB3
b3VsZCBiZSBoYXJtZnVsLgoKSWYgdGhlcmUncyBzb21lIHdheSB0byBtYXJrIHRoZSBkZWZhdWx0
IGluaXRpYWxpemF0aW9uIGFzIG92ZXJyaWRhYmxlLApJIHRoaW5rIHRoYXQgd291bGQgYmUgZmlu
ZSwgZS5nLgoKc3RydWN0IGZvbyAqYXJyYXlbXSA9IHsKCVswIC4uLiBNQVhJRFhdIF9fZGVmYXVs
dCA9IDxkZWZhdWx0PiwKCVtTT01FSURYXSA9IDxzb21ldmFsPiwKCVtPVEhFUklEWF0gPSA8b3Ro
ZXJ2YWw+LAp9CgpXZSBoYXZlIGEgbnVtYmVyIG9mIGNhc2VzIHdoZXJlIHRoZSBbMCAuLi4gTUFY
SURYXSA9IDxkZWZhdWx0PiBpZGlvbSBhcmUKdXNlZCwgYW5kIEkgZG9uJ3QgdGhpbmsgdGhhdCBh
bnkgb2YgdGhlbSBzaG91bGQgYmUgY2hhbmdlZCBpbiB0aGUgbWFubmVyCnN1Z2dlc3RlZCBieSB0
aGlzIHBhdGNoLgoKClRoYW5rcywKTWFyay4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
