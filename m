Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F78E9DB69
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 03:55:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qm9ETaXENh+IUmNC+kmIt2N4M/gxYGIwM9Vv3udseyQ=; b=cJD4sspNxCDPdKWGLgSvTExWt
	cJXVwWNZvYwK44eZI8jLDJUsGR59v1wxUS1W/VgCQFqWfYdn0sawilQDjtUOh8WM3jw5cIKo2WYai
	zKTtTbp6NwLt//+7WoTQpkp6V1HQO4KF0y5ub86pdhd+dzGb+MI7BJLY62ZdoKg3P2sMHX9KoSrU/
	bszX1P17BRI6MeI/6aC5pEwCBQOy+csiLXXd+xVyTH8SnbKiUuIrtHmbeYZe+pH+7IHoAU2kUxvTI
	VCRzDPJyfPtfkmAiqXFlIymyZt3gi8iJ8gjlDUXaRvcVDUEVcIA39aQhaAf5g1ZkCqqtE143kZJYJ
	By7t0CroQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2QhF-0007uE-RL; Tue, 27 Aug 2019 01:54:58 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Qgy-0007tj-Ha; Tue, 27 Aug 2019 01:54:42 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.156])
 by regular1.263xmail.com (Postfix) with ESMTP id D310532F;
 Tue, 27 Aug 2019 09:54:30 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P28225T139814766622464S1566870866860190_; 
 Tue, 27 Aug 2019 09:54:27 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <c6f7ffeeffe8903cd5c421165cfd4b49>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-arm-kernel@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: CPUfreq fail on rk3399-firefly
To: Kevin Hilman <khilman@baylibre.com>, Heiko Stuebner <heiko@sntech.de>
References: <5d3057c8.1c69fb81.c6489.8ad2@mx.google.com>
 <20190718162005.GF5761@sirena.org.uk> <7hmugdynmk.fsf@baylibre.com>
 <2314814.WbdfqDVNqK@phil> <7hv9uq9wfe.fsf@baylibre.com>
 <c973d3fa-5f0d-c277-7c83-6227942a671a@rock-chips.com>
 <7hd0gvzuvw.fsf@baylibre.com> <7h8srjzuen.fsf@baylibre.com>
 <db7af16f-d8cc-fbcb-726d-2aeba5563076@rock-chips.com>
 <7h4l23zwej.fsf@baylibre.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <852dd7d4-520b-7eb0-f307-c3fa9c0ebf2a@rock-chips.com>
Date: Tue, 27 Aug 2019 09:54:26 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7h4l23zwej.fsf@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_185440_957212_59E1D957 
X-CRM114-Status: GOOD (  25.56  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.200 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: kernel-build-reports@lists.linaro.org, linux-rockchip@lists.infradead.org,
 linux-next@vger.kernel.org, =?UTF-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>,
 =?UTF-8?B?5byg5pm0?= <elaine.zhang@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvOC8yNyDkuIrljYgxOjA5LCBLZXZpbiBIaWxtYW4gd3JvdGU6Cj4gSGkgS2V2ZXIs
Cj4KPiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPiB3cml0ZXM6Cj4KPj4g
SGkgS2V2aW4sCj4+Cj4+ICAgwqDCoMKgIEkgd2FudCB0byBoYXZlIGEgdGVzdCB3aXRoIG15IGJv
YXJkLCBJIGNhbiBnZXQgdGhlIEltYWdlIGFuZCBkdGIKPj4gZnJvbSB0aGUgbGluayBmb3IgdGhl
IGpvYiwKPj4KPj4gYnV0IGhvdyBjYW4gSSBnZXQgdGhlIHJhbmRpc2sgd2hpY2ggaXMgbmFtZWQg
aW5pdHJkLVNEYnl5Mi5jcGlvLmd6Pwo+IFRoZSByYW1kaXNrIGltYWdlcyBhcmUgaGVyZToKPgo+
ICAgIGh0dHBzOi8vc3RvcmFnZS5rZXJuZWxjaS5vcmcvaW1hZ2VzL3Jvb3Rmcy9idWlsZHJvb3Qv
a2NpLTIwMTkuMDIvYXJtNjQvYmFzZS8KPgo+IGluIHRoZSBrZXJuZWxDSSBsb2dzIHRoZSByYW1k
aXNrIGlzIHNsaWdodGx5IG1vZGlmaWVkIGJlY2F1c2UgdGhlIGtlcm5lbAo+IG1vZHVsZXMgaGF2
ZSBiZWVuIGluc2VydGVkIGludG8gdGhlIGNwaW8gYXJjaGl2ZS4KPgo+IEhvd2V2ZXIsIGZvciB0
aGUgcHVycG9zZXMgb2YgdGhpcyB0ZXN0LCB5b3UgY2FuIGp1c3QgdGVzdCB3aXRoIHRoZQo+IHVu
bW9kaWZpZWQgcm9vdGZzLmNwaW8uZ3ogYWJvdmUuCgoKSSB0cnkgd2l0aCB0aGlzIHJhbWRpc2ss
IGFuZCBpdCBoYW5ncyBhdCBmYW41MzU1NSBpbml0LCBidXQgbm90IGdldCBpbnRvIApjcHVmcmVx
LgoKQW55IHN1Z2dlc3Rpb24/CgogwqBNeSBib290IGxvZzoKCmh0dHBzOi8vcGFzdGUudWJ1bnR1
LmNvbS9wL1dZWktQV3A3c2svCgpUaGFua3MsCgotIEtldmVyCgo+Cj4gS2V2aW4KPgo+Cj4+IFRo
YW5rcywKPj4KPj4gLSBLZXZlcgo+Pgo+PiBPbiAyMDE5LzgvMjQg5LiK5Y2IMTowMywgS2V2aW4g
SGlsbWFuIHdyb3RlOgo+Pj4gS2V2aW4gSGlsbWFuIDxraGlsbWFuQGJheWxpYnJlLmNvbT4gd3Jp
dGVzOgo+Pj4KPj4+PiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPiB3cml0
ZXM6Cj4+Pj4KPj4+Pj4gSGkgS2V2aW4sIEhlaWtvLAo+Pj4+Pgo+Pj4+PiBPbiAyMDE5LzgvMjIg
5LiK5Y2IMjo1OSwgS2V2aW4gSGlsbWFuIHdyb3RlOgo+Pj4+Pj4gSGkgSGVpa28sCj4+Pj4+Pgo+
Pj4+Pj4gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JpdGVzOgo+Pj4+Pj4KPj4+
Pj4+PiBBbSBEaWVuc3RhZywgMTMuIEF1Z3VzdCAyMDE5LCAxOTozNTozMSBDRVNUIHNjaHJpZWIg
S2V2aW4gSGlsbWFuOgo+Pj4+Pj4+PiBbIHJlc2VudCB3aXRoIGNvcnJlY3QgYWRkciBmb3IgbGlu
dXgtcm9ja2NoaXAgbGlzdCBdCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IE1hcmsgQnJvd24gPGJyb29uaWVA
a2VybmVsLm9yZz4gd3JpdGVzOgo+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gT24gVGh1LCBKdWwgMTgsIDIw
MTkgYXQgMDQ6Mjg6MDhBTSAtMDcwMCwga2VybmVsY2kub3JnIGJvdCB3cm90ZToKPj4+Pj4+Pj4+
Cj4+Pj4+Pj4+PiBUb2RheSdzIC1uZXh0IHN0YXJ0ZWQgZmFpbGluZyB0byBib290IGRlZmNvbmZp
ZyBvbiByazMzOTktZmlyZWZseToKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gYXJtNjQ6Cj4+Pj4+Pj4+
Pj4gICAgICAgIGRlZmNvbmZpZzoKPj4+Pj4+Pj4+PiAgICAgICAgICAgIGdjYy04Ogo+Pj4+Pj4+
Pj4+ICAgICAgICAgICAgICAgIHJrMzM5OS1maXJlZmx5OiAxIGZhaWxlZCBsYWIKPj4+Pj4+Pj4+
IEl0IGhpdHMgYSBCVUcoKSB0cnlpbmcgdG8gc2V0IHVwIGNwdWZyZXE6Cj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4gWyAgIDg3LjM4MTYwNl0gY3B1ZnJlcTogY3B1ZnJlcV9vbmxpbmU6IENQVTA6IFJ1bm5p
bmcgYXQgdW5saXN0ZWQgZnJlcTogMjAwMDAwIEtIego+Pj4+Pj4+Pj4gWyAgIDg3LjM5MzI0NF0g
Y3B1ZnJlcTogY3B1ZnJlcV9vbmxpbmU6IENQVTA6IFVubGlzdGVkIGluaXRpYWwgZnJlcXVlbmN5
IGNoYW5nZWQgdG86IDQwODAwMCBLSHoKPj4+Pj4+Pj4+IFsgICA4Ny40Njk3NzddIGNwdWZyZXE6
IGNwdWZyZXFfb25saW5lOiBDUFU0OiBSdW5uaW5nIGF0IHVubGlzdGVkIGZyZXE6IDEyMDAwIEtI
ego+Pj4+Pj4+Pj4gWyAgIDg3LjQ4ODU5NV0gY3B1IGNwdTQ6IF9nZW5lcmljX3NldF9vcHBfY2xr
X29ubHk6IGZhaWxlZCB0byBzZXQgY2xvY2sgcmF0ZTogLTIyCj4+Pj4+Pj4+PiBbICAgODcuNDkx
ODgxXSBjcHVmcmVxOiBfX3RhcmdldF9pbmRleDogRmFpbGVkIHRvIGNoYW5nZSBjcHUgZnJlcXVl
bmN5OiAtMjIKPj4+Pj4+Pj4+IFsgICA4Ny40OTUzMzVdIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUg
XS0tLS0tLS0tLS0tLQo+Pj4+Pj4+Pj4gWyAgIDg3LjQ5NjgyMV0ga2VybmVsIEJVRyBhdCBkcml2
ZXJzL2NwdWZyZXEvY3B1ZnJlcS5jOjE0MzghCj4+Pj4+Pj4+PiBbICAgODcuNDk4NDYyXSBJbnRl
cm5hbCBlcnJvcjogT29wcyAtIEJVRzogMCBbIzFdIFBSRUVNUFQgU01QCj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4gSSdtIHN0cnVnZ2xpbmcgdG8gc2VlIGFueXRoaW5nIHJlbGV2YW50IGluIHRoZSBkaWZm
IGZyb20geWVzdGVyZGF5LCB0aGUKPj4+Pj4+Pj4+IHVubGlzdGVkIGZyZXF1ZW5jeSB3YXJuaW5n
cyB3ZXJlIHRoZXJlIGluIHRoZSBsb2dzIHllc3RlcmRheSBidXQgbm8gb29wcwo+Pj4+Pj4+Pj4g
YW5kIEknbSBub3Qgc2VlaW5nIGFueSBjaGFuZ2VzIGluIGNwdWZyZXEsIGNsayBvciBhbnl0aGlu
ZyByZWxldmFudAo+Pj4+Pj4+Pj4gbG9va2luZy4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBGdWxsIGJv
b3Rsb2cgYW5kIG90aGVyIGluZm8gY2FuIGJlIGZvdW5kIGhlcmU6Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+
Pj4gCWh0dHBzOi8va2VybmVsY2kub3JnL2Jvb3QvaWQvNWQzMDJkODM1OWI1MTQ5OGQwNDllOTgz
Lwo+Pj4+Pj4+PiBJIGNvbmZpcm0gdGhhdCBkaXNhYmxpbmcgQ1BVZnJlcSBpbiB0aGUgZGVmY29u
ZmlnIChDT05GSUdfQ1BVX0ZSRVE9bikKPj4+Pj4+Pj4gbWFrZXMgdGhlIGZpcmVmbHkgYm9hcmQg
c3RhcnQgd29ya2luZyBhZ2Fpbi4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gTm90ZSB0aGF0IHRoZSBkZWZh
dWx0IGRlZmNvbmZpZyBlbmFibGVzIHRoZSAicGVyZm9ybWFuY2UiIENQVWZyZXEKPj4+Pj4+Pj4g
Z292ZXJub3IgYXMgdGhlIGRlZmF1bHQgZ292ZXJub3IsIHNvIGR1cmluZyBrZXJuZWwgYm9vdCwg
aXQgd2lsbCBhbHdheXMKPj4+Pj4+Pj4gc3dpdGNoIHRvIHRoZSBtYXggZnJlcXVlbmN5Lgo+Pj4+
Pj4+Pgo+Pj4+Pj4+PiBGb3IgZnVuLCBJIHNldCB0aGUgZGVmYXVsdCBnb3Zlcm5vciB0byAidXNl
cnNwYWNlIiBzbyB0aGUga2VybmVsCj4+Pj4+Pj4+IHdvdWxkbid0IG1ha2UgYW55IE9QUCBjaGFu
Z2VzLCBhbmQgdGhhdCBsZWFkcyB0byBhIHNsaWdodGx5IG1vcmUKPj4+Pj4+Pj4gaW5mb3JtYXRp
dmUgc3BsYXRbMV0KPj4+Pj4+Pj4KPj4+Pj4+Pj4gVGhlcmUgaXMgc3RpbGwgYW4gT1BQIGNoYW5n
ZSBoYXBwZW5pbmcgYmVjYXVzZSB0aGUgZGV0ZWN0ZWQgT1BQIGlzIG5vdAo+Pj4+Pj4+PiBvbmUg
dGhhdCdzIGxpc3RlZCBpbiB0aGUgdGFibGUsIHNvIGl0IHRyaWVzIHRvIGNoYW5nZSB0byBhIGxp
c3RlZCBPUFAKPj4+Pj4+Pj4gYW5kIGZhaWxzIGluIHRoZSBib3dlbHMgb2YgY2xrX3NldF9yYXRl
KCkKPj4+Pj4+PiBUaG91Z2ggSSB0aGluayB0aGF0IG1pZ2h0IG9ubHkgYmUgYSBzeW1wdG9tIGFz
IHdlbGwuCj4+Pj4+Pj4gQm90aCB0aGUgUExMIHNldHRpbmcgY29kZSBhcyB3ZWxsIGFzIHRoZSBh
Y3R1YWwgY3B1LWNsb2NrIGltcGxlbWVudGF0aW9uCj4+Pj4+Pj4gaXMgdW5jaGFuZ2VkIHNpbmNl
IDIwMTcgKGFuZCBydW5zIGp1c3QgZmluZSBvbiBhbGwgYm9hcmRzIGluIG15IGZhcm0pLgo+Pj4+
Pj4+Cj4+Pj4+Pj4gT25lIHNvdXJjZSBmb3IgdGhlc2UgaXNzdWVzIGlzIG9mdGVuIHRoZSByZWd1
bGF0b3Igc3VwcGx5aW5nIHRoZSBjcHUKPj4+Pj4+PiBnb2luZyBoYXl3aXJlIC0gYWthIHRoZSB2
b2x0YWdlIG5vdCBtYXRjaGluZyB0aGUgb3BwLgo+Pj4+Pj4+Cj4+Pj4+Pj4gQXMgaW4gdGhpcyBl
cnJvci1jYXNlIGl0J3MgQ1BVNCBiZWluZyBzZXQsIHRoaXMgd291bGQgbWVhbiBpdCBtaWdodAo+
Pj4+Pj4+IGJlIHRoZSBiaWcgY2x1c3RlciBzdXBwbGllZCBieSB0aGUgZXh0ZXJuYWwgc3lyODI1
IChmYW41MzU1IGNsb25lKQo+Pj4+Pj4+IHRoYXQgbWlnaHQgYWN0IHVwLiBJbiB0aGUgRmlyZWZs
eS1yazMzOTkgY2FzZSB0aGlzIGlzIGV2ZW4gc3RyYW5nZXIuCj4+Pj4+Pj4KPj4+Pj4+PiBUaGVy
ZSBpcyBhIGRpc2NyZXBhbmN5IGJldHdlZW4gdGhlICJmY3Msc3VzcGVuZC12b2x0YWdlLXNlbGVj
dG9yIgo+Pj4+Pj4+IGJldHdlZW4gZGlmZmVyZW50IGJvb3Rsb2FkZXIgdmVyc2lvbnMgKGhvdyB0
aGUgc2VsZWN0aW9uLXBpbiBpcyBzZXQgdXApLAo+Pj4+Pj4+IHNvIHRoZSBrZXJuZWwgbWlnaHQg
YWN0dWFsbHkgd3JpdGUgaGlzIHJlcXVlc3RlZCB2b2x0YWdlIHRvIHRoZSB3cm9uZwo+Pj4+Pj4+
IHJlZ2lzdGVyIChub3QgdGhlIG9uZSBmb3IgYWN0dWFsIHZvbHRhZ2UsIGJ1dCB0aGUgc2Vjb25k
IHNldCB1c2VkIGZvcgo+Pj4+Pj4+IHRoZSBzdXNwZW5kIHZvbHRhZ2UpLgo+Pj4+Pj4+Cj4+Pj4+
Pj4gRGlkIHlvdSBieSBjaGFuY2Ugc3dhcCBib290bG9hZGVycyBhdCBzb21lIHBvaW50IGluIHJl
Y2VudCBwYXN0Pwo+Pj4+Pj4gTm8sIGhhdmVuJ3QgdG91Y2hlZCBib290bG9hZGVyIHNpbmNlIEkg
aW5pdGlhbGx5IHNldHVwIHRoZSBib2FyZC4KPj4+Pj4gVGhlIENQVSB2b2x0YWdlIGRvZXMgbm90
IGFmZmVjdCBieSBib290bG9hZGVyIGZvciBrZXJuZWwgc2hvdWxkIGhhdmUgaXRzCj4+Pj4+IG93
biBvcHAtdGFibGUsCj4+Pj4+Cj4+Pj4+IHRoZSBib290bG9hZGVyIG1heSBvbmx5IGFmZmVjdCB0
aGUgY2VudGVyL2xvZ2ljIHBvd2VyIHN1cHBseS4KPj4+Pj4KPj4+Pj4+PiBJJ2QgYXNzdW1lIFsy
XSBtaWdodCBhY3R1YWxseSBiZSB0aGUgc2FtZSBpc3N1ZSBsYXN0IHllYXIsIHRob3VnaAo+Pj4+
Pj4+IHRoZSBDSS1sb2dzIGFyZSBub3QgYXZhaWxhYmxlIGFueW1vcmUgaXQgc2VlbXMuCj4+Pj4+
Pj4KPj4+Pj4+PiBDb3VsZCB5b3UgdHJ5IHRvIHNldCB0aGUgdmRkX2NwdV9iIHJlZ3VsYXRvciB0
byBkaXNhYmxlZCwgc28gdGhhdAo+Pj4+Pj4+IGNwdWZyZXEgZm9yIHRoaXMgY2x1c3RlciBkZWZl
cnMgYW5kIHNlZSB3aGF0IGhhcHBlbnM/Cj4+Pj4+PiBZZXMsIHRoaXMgY2hhbmdlWzFdIGRlZmlu
aXRlbHkgbWFrZXMgdGhpbmdzIGJvb3QgcmVsaWFibHkgYWdhaW4sIHNvCj4+Pj4+PiB0aGVyZSdz
IGRlZmludGllbHkgc29tZXRoaW5nIGEgYml0IHVuc3RhYmxlIHdpdGggdGhpcyByZWd1bGF0b3Is
IGF0Cj4+Pj4+PiBsZWFzdCBvbiB0aGlzIGZpcmVmbHkuCj4+Pj4+IElzIGl0IHBvc3NpYmxlIHRv
IHRhcmdldCB3aGljaCBwYXRjaCBpbnRyb2R1Y2UgdGhpcyBidWc/IFRoaXMgYm9hcmQKPj4+Pj4g
c2hvdWxkIGhhdmUgd29yayBjb3JyZWN0bHkgZm9yIGEgbG9uZyB0aW1lIHdpdGggdXBzdHJlYW0g
c291cmNlIGNvZGUuCj4+Pj4gVW5mb3J0dW5hdGVseSwgaXQgc2VlbXMgdG8gYmUgYSByZWd1bGFy
LCBidXQgaW50ZXJtaXR0ZW50IGZhaWx1cmUsIHNvCj4+Pj4gYmlzZWN0aW9uIGlzIG5vdCBwcm9k
dWNpbmcgYW55dGhpbmcgcmVsaWFibGUuCj4+Pj4KPj4+PiBZb3UgY2FuIHNlZSB0aGF0IGJvdGgg
aW4gbWFpbmxpbmVbMV0gYW5kIGluIGxpbnV4LW5leHRbMl0gdGhlcmUgYXJlCj4+Pj4gcGVyaW9k
aWMgZmFpbHVyZXMsIGJ1dCBpdCdzIGhhcmQgdG8gc2VlIGFueSBwYXR0ZXJucy4KPj4+IEV2ZW4g
d29yc2UsIEkgKHJlKXRlc3RlZCBtYWlubGluZSBmb3IgdmVyc2lvbnMgdGhhdCB3ZXJlIHByZXZp
b3VzbHkKPj4+IHBhc3NpbmcgKHY1LjIsIHY1LjMtcmM1KSBhbmQgdGhleSBhcmUgYWxzbyBmYWls
aW5nIG5vdy4KPj4+Cj4+PiBUaGV5IHdvcmsgYWdhaW4gaWYgSSBkaXNhYmxlIHRoYXQgcmVndWxh
dG9yIGFzIHN1Z2dlc3RlZCBieSBIZWlrby4KPj4+Cj4+PiBTbyB0aGlzIGlzIGluY3JlYXNpbmds
eSBwb2ludGluZyB0byBmYWlsaW5nIGhhcmR3YXJlLgo+Pj4KPj4+IEtldmluCj4+Pgo+Pj4KPj4+
Cj4KPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
