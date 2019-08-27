Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FDE9DB94
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 04:15:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cVKsbZNgN0TCzEm7Wb9XH/fIshG7gG6DE62AdQhWDhI=; b=KPgtU4pMMoGsfS
	iyU6mDdX0p8vYt6bDf8FRt3taa2tMNQbNp2pdnY9IMCke2XcoaE/vKrvMKGfybbguGlGjIOe+/cPS
	zXmrk+oqqksKgY4DA3nq1UHrlP6eajpOqmnJu/IBo1L2ba/GYrRN5trGl2HF2OQCRdqv/PqNgAgBQ
	3XTwdVpPmFrEJTKZbwcTdkrkJRqH4Y7hrWrl+Qu6Tozq3mwm+lJ1nIMm4XH+T1PX3M1sUl46cRM/s
	IX7hIwmwEMIOCkVYLFx/yhdcjDoLCCf/ajzhvwhRBUI0brAFAvsm6/0xiSR7Iqih5PdLmJ51auNb5
	Mc4ZN9dZrSTgl4ClMUdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2R0g-0006Zm-FN; Tue, 27 Aug 2019 02:15:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2R0Q-0006YU-Q2; Tue, 27 Aug 2019 02:14:49 +0000
Received: from c-73-71-116-68.hsd1.ca.comcast.net ([73.71.116.68]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1i2R0H-0007W0-Ns; Tue, 27 Aug 2019 04:14:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: CPUfreq fail on rk3399-firefly
Date: Tue, 27 Aug 2019 04:14:33 +0200
Message-ID: <8953975.ee0vQab4qn@phil>
In-Reply-To: <852dd7d4-520b-7eb0-f307-c3fa9c0ebf2a@rock-chips.com>
References: <5d3057c8.1c69fb81.c6489.8ad2@mx.google.com>
 <7h4l23zwej.fsf@baylibre.com>
 <852dd7d4-520b-7eb0-f307-c3fa9c0ebf2a@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_191447_002493_D4062D04 
X-CRM114-Status: GOOD (  33.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kernel-build-reports@lists.linaro.org, Kevin Hilman <khilman@baylibre.com>,
 linux-rockchip@lists.infradead.org, linux-next@vger.kernel.org,
 =?utf-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>,
 =?utf-8?B?5byg5pm0?= <elaine.zhang@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgS2V2ZXIsCgpBbSBEaWVuc3RhZywgMjcuIEF1Z3VzdCAyMDE5LCAwMzo1NDoyNiBDRVNUIHNj
aHJpZWIgS2V2ZXIgWWFuZzoKPiBPbiAyMDE5LzgvMjcg5LiK5Y2IMTowOSwgS2V2aW4gSGlsbWFu
IHdyb3RlOgo+ID4gS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4gd3JpdGVz
Ogo+ID4+ICAgICAgIEkgd2FudCB0byBoYXZlIGEgdGVzdCB3aXRoIG15IGJvYXJkLCBJIGNhbiBn
ZXQgdGhlIEltYWdlIGFuZCBkdGIKPiA+PiBmcm9tIHRoZSBsaW5rIGZvciB0aGUgam9iLAo+ID4+
Cj4gPj4gYnV0IGhvdyBjYW4gSSBnZXQgdGhlIHJhbmRpc2sgd2hpY2ggaXMgbmFtZWQgaW5pdHJk
LVNEYnl5Mi5jcGlvLmd6Pwo+ID4gVGhlIHJhbWRpc2sgaW1hZ2VzIGFyZSBoZXJlOgo+ID4KPiA+
ICAgIGh0dHBzOi8vc3RvcmFnZS5rZXJuZWxjaS5vcmcvaW1hZ2VzL3Jvb3Rmcy9idWlsZHJvb3Qv
a2NpLTIwMTkuMDIvYXJtNjQvYmFzZS8KPiA+Cj4gPiBpbiB0aGUga2VybmVsQ0kgbG9ncyB0aGUg
cmFtZGlzayBpcyBzbGlnaHRseSBtb2RpZmllZCBiZWNhdXNlIHRoZSBrZXJuZWwKPiA+IG1vZHVs
ZXMgaGF2ZSBiZWVuIGluc2VydGVkIGludG8gdGhlIGNwaW8gYXJjaGl2ZS4KPiA+Cj4gPiBIb3dl
dmVyLCBmb3IgdGhlIHB1cnBvc2VzIG9mIHRoaXMgdGVzdCwgeW91IGNhbiBqdXN0IHRlc3Qgd2l0
aCB0aGUKPiA+IHVubW9kaWZpZWQgcm9vdGZzLmNwaW8uZ3ogYWJvdmUuCj4gCj4gCj4gSSB0cnkg
d2l0aCB0aGlzIHJhbWRpc2ssIGFuZCBpdCBoYW5ncyBhdCBmYW41MzU1NSBpbml0LCBidXQgbm90
IGdldCBpbnRvIAo+IGNwdWZyZXEuCj4gCj4gQW55IHN1Z2dlc3Rpb24/CgpNeSBndWVzcyB3b3Vs
ZCBiZSB0aGUgZmNzLHN1c3BlbmQtdm9sdGFnZS1zZWxlY3RvciBtYXliZT8KCkkuZS4gb2xkIHVi
b290cyBzb21laG93IHNldCB0aGUgdm9sdGFnZSBncGlvIHN0cmFuZ2VseSwgc28geW91J2QgbmVl
ZAoJZmNzLHN1c3BlbmQtdm9sdGFnZS1zZWxlY3RvciA9IDwwPgp3aGlsZSBuZXdlciB1Ym9vdHMg
SSB0aGluayBkbyBjb25maWd1cmUgdGhlIGdwaW8sIG5lZWRpbmcgYSB2YWx1ZSBvZiA8MT47CgpT
byB0cnkgdG8gc3dhcCB0aGF0IG51bWJlciBpbiB0aGUgZHRzIHBlcmhhcHMgZm9yIGEgc3RhcnQ/
CgoKSGVpa28KCgo+ICAgTXkgYm9vdCBsb2c6Cj4gCj4gaHR0cHM6Ly9wYXN0ZS51YnVudHUuY29t
L3AvV1laS1BXcDdzay8KPiAKPiBUaGFua3MsCj4gCj4gLSBLZXZlcgo+IAo+ID4KPiA+IEtldmlu
Cj4gPgo+ID4KPiA+PiBUaGFua3MsCj4gPj4KPiA+PiAtIEtldmVyCj4gPj4KPiA+PiBPbiAyMDE5
LzgvMjQg5LiK5Y2IMTowMywgS2V2aW4gSGlsbWFuIHdyb3RlOgo+ID4+PiBLZXZpbiBIaWxtYW4g
PGtoaWxtYW5AYmF5bGlicmUuY29tPiB3cml0ZXM6Cj4gPj4+Cj4gPj4+PiBLZXZlciBZYW5nIDxr
ZXZlci55YW5nQHJvY2stY2hpcHMuY29tPiB3cml0ZXM6Cj4gPj4+Pgo+ID4+Pj4+IEhpIEtldmlu
LCBIZWlrbywKPiA+Pj4+Pgo+ID4+Pj4+IE9uIDIwMTkvOC8yMiDkuIrljYgyOjU5LCBLZXZpbiBI
aWxtYW4gd3JvdGU6Cj4gPj4+Pj4+IEhpIEhlaWtvLAo+ID4+Pj4+Pgo+ID4+Pj4+PiBIZWlrbyBT
dHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiB3cml0ZXM6Cj4gPj4+Pj4+Cj4gPj4+Pj4+PiBBbSBE
aWVuc3RhZywgMTMuIEF1Z3VzdCAyMDE5LCAxOTozNTozMSBDRVNUIHNjaHJpZWIgS2V2aW4gSGls
bWFuOgo+ID4+Pj4+Pj4+IFsgcmVzZW50IHdpdGggY29ycmVjdCBhZGRyIGZvciBsaW51eC1yb2Nr
Y2hpcCBsaXN0IF0KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IE1hcmsgQnJvd24gPGJyb29uaWVAa2Vy
bmVsLm9yZz4gd3JpdGVzOgo+ID4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+IE9uIFRodSwgSnVsIDE4LCAy
MDE5IGF0IDA0OjI4OjA4QU0gLTA3MDAsIGtlcm5lbGNpLm9yZyBib3Qgd3JvdGU6Cj4gPj4+Pj4+
Pj4+Cj4gPj4+Pj4+Pj4+IFRvZGF5J3MgLW5leHQgc3RhcnRlZCBmYWlsaW5nIHRvIGJvb3QgZGVm
Y29uZmlnIG9uIHJrMzM5OS1maXJlZmx5Ogo+ID4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+Pj4gYXJtNjQ6
Cj4gPj4+Pj4+Pj4+PiAgICAgICAgZGVmY29uZmlnOgo+ID4+Pj4+Pj4+Pj4gICAgICAgICAgICBn
Y2MtODoKPiA+Pj4+Pj4+Pj4+ICAgICAgICAgICAgICAgIHJrMzM5OS1maXJlZmx5OiAxIGZhaWxl
ZCBsYWIKPiA+Pj4+Pj4+Pj4gSXQgaGl0cyBhIEJVRygpIHRyeWluZyB0byBzZXQgdXAgY3B1ZnJl
cToKPiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4gWyAgIDg3LjM4MTYwNl0gY3B1ZnJlcTogY3B1ZnJl
cV9vbmxpbmU6IENQVTA6IFJ1bm5pbmcgYXQgdW5saXN0ZWQgZnJlcTogMjAwMDAwIEtIego+ID4+
Pj4+Pj4+PiBbICAgODcuMzkzMjQ0XSBjcHVmcmVxOiBjcHVmcmVxX29ubGluZTogQ1BVMDogVW5s
aXN0ZWQgaW5pdGlhbCBmcmVxdWVuY3kgY2hhbmdlZCB0bzogNDA4MDAwIEtIego+ID4+Pj4+Pj4+
PiBbICAgODcuNDY5Nzc3XSBjcHVmcmVxOiBjcHVmcmVxX29ubGluZTogQ1BVNDogUnVubmluZyBh
dCB1bmxpc3RlZCBmcmVxOiAxMjAwMCBLSHoKPiA+Pj4+Pj4+Pj4gWyAgIDg3LjQ4ODU5NV0gY3B1
IGNwdTQ6IF9nZW5lcmljX3NldF9vcHBfY2xrX29ubHk6IGZhaWxlZCB0byBzZXQgY2xvY2sgcmF0
ZTogLTIyCj4gPj4+Pj4+Pj4+IFsgICA4Ny40OTE4ODFdIGNwdWZyZXE6IF9fdGFyZ2V0X2luZGV4
OiBGYWlsZWQgdG8gY2hhbmdlIGNwdSBmcmVxdWVuY3k6IC0yMgo+ID4+Pj4+Pj4+PiBbICAgODcu
NDk1MzM1XSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0KPiA+Pj4+Pj4+Pj4g
WyAgIDg3LjQ5NjgyMV0ga2VybmVsIEJVRyBhdCBkcml2ZXJzL2NwdWZyZXEvY3B1ZnJlcS5jOjE0
MzghCj4gPj4+Pj4+Pj4+IFsgICA4Ny40OTg0NjJdIEludGVybmFsIGVycm9yOiBPb3BzIC0gQlVH
OiAwIFsjMV0gUFJFRU1QVCBTTVAKPiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4gSSdtIHN0cnVnZ2xp
bmcgdG8gc2VlIGFueXRoaW5nIHJlbGV2YW50IGluIHRoZSBkaWZmIGZyb20geWVzdGVyZGF5LCB0
aGUKPiA+Pj4+Pj4+Pj4gdW5saXN0ZWQgZnJlcXVlbmN5IHdhcm5pbmdzIHdlcmUgdGhlcmUgaW4g
dGhlIGxvZ3MgeWVzdGVyZGF5IGJ1dCBubyBvb3BzCj4gPj4+Pj4+Pj4+IGFuZCBJJ20gbm90IHNl
ZWluZyBhbnkgY2hhbmdlcyBpbiBjcHVmcmVxLCBjbGsgb3IgYW55dGhpbmcgcmVsZXZhbnQKPiA+
Pj4+Pj4+Pj4gbG9va2luZy4KPiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4gRnVsbCBib290bG9nIGFu
ZCBvdGhlciBpbmZvIGNhbiBiZSBmb3VuZCBoZXJlOgo+ID4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+PiAJ
aHR0cHM6Ly9rZXJuZWxjaS5vcmcvYm9vdC9pZC81ZDMwMmQ4MzU5YjUxNDk4ZDA0OWU5ODMvCj4g
Pj4+Pj4+Pj4gSSBjb25maXJtIHRoYXQgZGlzYWJsaW5nIENQVWZyZXEgaW4gdGhlIGRlZmNvbmZp
ZyAoQ09ORklHX0NQVV9GUkVRPW4pCj4gPj4+Pj4+Pj4gbWFrZXMgdGhlIGZpcmVmbHkgYm9hcmQg
c3RhcnQgd29ya2luZyBhZ2Fpbi4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IE5vdGUgdGhhdCB0aGUg
ZGVmYXVsdCBkZWZjb25maWcgZW5hYmxlcyB0aGUgInBlcmZvcm1hbmNlIiBDUFVmcmVxCj4gPj4+
Pj4+Pj4gZ292ZXJub3IgYXMgdGhlIGRlZmF1bHQgZ292ZXJub3IsIHNvIGR1cmluZyBrZXJuZWwg
Ym9vdCwgaXQgd2lsbCBhbHdheXMKPiA+Pj4+Pj4+PiBzd2l0Y2ggdG8gdGhlIG1heCBmcmVxdWVu
Y3kuCj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBGb3IgZnVuLCBJIHNldCB0aGUgZGVmYXVsdCBnb3Zl
cm5vciB0byAidXNlcnNwYWNlIiBzbyB0aGUga2VybmVsCj4gPj4+Pj4+Pj4gd291bGRuJ3QgbWFr
ZSBhbnkgT1BQIGNoYW5nZXMsIGFuZCB0aGF0IGxlYWRzIHRvIGEgc2xpZ2h0bHkgbW9yZQo+ID4+
Pj4+Pj4+IGluZm9ybWF0aXZlIHNwbGF0WzFdCj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBUaGVyZSBp
cyBzdGlsbCBhbiBPUFAgY2hhbmdlIGhhcHBlbmluZyBiZWNhdXNlIHRoZSBkZXRlY3RlZCBPUFAg
aXMgbm90Cj4gPj4+Pj4+Pj4gb25lIHRoYXQncyBsaXN0ZWQgaW4gdGhlIHRhYmxlLCBzbyBpdCB0
cmllcyB0byBjaGFuZ2UgdG8gYSBsaXN0ZWQgT1BQCj4gPj4+Pj4+Pj4gYW5kIGZhaWxzIGluIHRo
ZSBib3dlbHMgb2YgY2xrX3NldF9yYXRlKCkKPiA+Pj4+Pj4+IFRob3VnaCBJIHRoaW5rIHRoYXQg
bWlnaHQgb25seSBiZSBhIHN5bXB0b20gYXMgd2VsbC4KPiA+Pj4+Pj4+IEJvdGggdGhlIFBMTCBz
ZXR0aW5nIGNvZGUgYXMgd2VsbCBhcyB0aGUgYWN0dWFsIGNwdS1jbG9jayBpbXBsZW1lbnRhdGlv
bgo+ID4+Pj4+Pj4gaXMgdW5jaGFuZ2VkIHNpbmNlIDIwMTcgKGFuZCBydW5zIGp1c3QgZmluZSBv
biBhbGwgYm9hcmRzIGluIG15IGZhcm0pLgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IE9uZSBzb3VyY2Ug
Zm9yIHRoZXNlIGlzc3VlcyBpcyBvZnRlbiB0aGUgcmVndWxhdG9yIHN1cHBseWluZyB0aGUgY3B1
Cj4gPj4+Pj4+PiBnb2luZyBoYXl3aXJlIC0gYWthIHRoZSB2b2x0YWdlIG5vdCBtYXRjaGluZyB0
aGUgb3BwLgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IEFzIGluIHRoaXMgZXJyb3ItY2FzZSBpdCdzIENQ
VTQgYmVpbmcgc2V0LCB0aGlzIHdvdWxkIG1lYW4gaXQgbWlnaHQKPiA+Pj4+Pj4+IGJlIHRoZSBi
aWcgY2x1c3RlciBzdXBwbGllZCBieSB0aGUgZXh0ZXJuYWwgc3lyODI1IChmYW41MzU1IGNsb25l
KQo+ID4+Pj4+Pj4gdGhhdCBtaWdodCBhY3QgdXAuIEluIHRoZSBGaXJlZmx5LXJrMzM5OSBjYXNl
IHRoaXMgaXMgZXZlbiBzdHJhbmdlci4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBUaGVyZSBpcyBhIGRp
c2NyZXBhbmN5IGJldHdlZW4gdGhlICJmY3Msc3VzcGVuZC12b2x0YWdlLXNlbGVjdG9yIgo+ID4+
Pj4+Pj4gYmV0d2VlbiBkaWZmZXJlbnQgYm9vdGxvYWRlciB2ZXJzaW9ucyAoaG93IHRoZSBzZWxl
Y3Rpb24tcGluIGlzIHNldCB1cCksCj4gPj4+Pj4+PiBzbyB0aGUga2VybmVsIG1pZ2h0IGFjdHVh
bGx5IHdyaXRlIGhpcyByZXF1ZXN0ZWQgdm9sdGFnZSB0byB0aGUgd3JvbmcKPiA+Pj4+Pj4+IHJl
Z2lzdGVyIChub3QgdGhlIG9uZSBmb3IgYWN0dWFsIHZvbHRhZ2UsIGJ1dCB0aGUgc2Vjb25kIHNl
dCB1c2VkIGZvcgo+ID4+Pj4+Pj4gdGhlIHN1c3BlbmQgdm9sdGFnZSkuCj4gPj4+Pj4+Pgo+ID4+
Pj4+Pj4gRGlkIHlvdSBieSBjaGFuY2Ugc3dhcCBib290bG9hZGVycyBhdCBzb21lIHBvaW50IGlu
IHJlY2VudCBwYXN0Pwo+ID4+Pj4+PiBObywgaGF2ZW4ndCB0b3VjaGVkIGJvb3Rsb2FkZXIgc2lu
Y2UgSSBpbml0aWFsbHkgc2V0dXAgdGhlIGJvYXJkLgo+ID4+Pj4+IFRoZSBDUFUgdm9sdGFnZSBk
b2VzIG5vdCBhZmZlY3QgYnkgYm9vdGxvYWRlciBmb3Iga2VybmVsIHNob3VsZCBoYXZlIGl0cwo+
ID4+Pj4+IG93biBvcHAtdGFibGUsCj4gPj4+Pj4KPiA+Pj4+PiB0aGUgYm9vdGxvYWRlciBtYXkg
b25seSBhZmZlY3QgdGhlIGNlbnRlci9sb2dpYyBwb3dlciBzdXBwbHkuCj4gPj4+Pj4KPiA+Pj4+
Pj4+IEknZCBhc3N1bWUgWzJdIG1pZ2h0IGFjdHVhbGx5IGJlIHRoZSBzYW1lIGlzc3VlIGxhc3Qg
eWVhciwgdGhvdWdoCj4gPj4+Pj4+PiB0aGUgQ0ktbG9ncyBhcmUgbm90IGF2YWlsYWJsZSBhbnlt
b3JlIGl0IHNlZW1zLgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IENvdWxkIHlvdSB0cnkgdG8gc2V0IHRo
ZSB2ZGRfY3B1X2IgcmVndWxhdG9yIHRvIGRpc2FibGVkLCBzbyB0aGF0Cj4gPj4+Pj4+PiBjcHVm
cmVxIGZvciB0aGlzIGNsdXN0ZXIgZGVmZXJzIGFuZCBzZWUgd2hhdCBoYXBwZW5zPwo+ID4+Pj4+
PiBZZXMsIHRoaXMgY2hhbmdlWzFdIGRlZmluaXRlbHkgbWFrZXMgdGhpbmdzIGJvb3QgcmVsaWFi
bHkgYWdhaW4sIHNvCj4gPj4+Pj4+IHRoZXJlJ3MgZGVmaW50aWVseSBzb21ldGhpbmcgYSBiaXQg
dW5zdGFibGUgd2l0aCB0aGlzIHJlZ3VsYXRvciwgYXQKPiA+Pj4+Pj4gbGVhc3Qgb24gdGhpcyBm
aXJlZmx5Lgo+ID4+Pj4+IElzIGl0IHBvc3NpYmxlIHRvIHRhcmdldCB3aGljaCBwYXRjaCBpbnRy
b2R1Y2UgdGhpcyBidWc/IFRoaXMgYm9hcmQKPiA+Pj4+PiBzaG91bGQgaGF2ZSB3b3JrIGNvcnJl
Y3RseSBmb3IgYSBsb25nIHRpbWUgd2l0aCB1cHN0cmVhbSBzb3VyY2UgY29kZS4KPiA+Pj4+IFVu
Zm9ydHVuYXRlbHksIGl0IHNlZW1zIHRvIGJlIGEgcmVndWxhciwgYnV0IGludGVybWl0dGVudCBm
YWlsdXJlLCBzbwo+ID4+Pj4gYmlzZWN0aW9uIGlzIG5vdCBwcm9kdWNpbmcgYW55dGhpbmcgcmVs
aWFibGUuCj4gPj4+Pgo+ID4+Pj4gWW91IGNhbiBzZWUgdGhhdCBib3RoIGluIG1haW5saW5lWzFd
IGFuZCBpbiBsaW51eC1uZXh0WzJdIHRoZXJlIGFyZQo+ID4+Pj4gcGVyaW9kaWMgZmFpbHVyZXMs
IGJ1dCBpdCdzIGhhcmQgdG8gc2VlIGFueSBwYXR0ZXJucy4KPiA+Pj4gRXZlbiB3b3JzZSwgSSAo
cmUpdGVzdGVkIG1haW5saW5lIGZvciB2ZXJzaW9ucyB0aGF0IHdlcmUgcHJldmlvdXNseQo+ID4+
PiBwYXNzaW5nICh2NS4yLCB2NS4zLXJjNSkgYW5kIHRoZXkgYXJlIGFsc28gZmFpbGluZyBub3cu
Cj4gPj4+Cj4gPj4+IFRoZXkgd29yayBhZ2FpbiBpZiBJIGRpc2FibGUgdGhhdCByZWd1bGF0b3Ig
YXMgc3VnZ2VzdGVkIGJ5IEhlaWtvLgo+ID4+Pgo+ID4+PiBTbyB0aGlzIGlzIGluY3JlYXNpbmds
eSBwb2ludGluZyB0byBmYWlsaW5nIGhhcmR3YXJlLgo+ID4+Pgo+ID4+PiBLZXZpbgo+ID4+Pgo+
ID4+Pgo+ID4+Pgo+ID4KPiA+Cj4gCj4gCj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
