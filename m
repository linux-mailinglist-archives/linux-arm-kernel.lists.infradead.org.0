Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9379E515
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 12:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZoYQG5UH4GfKQNa8AdXcSTUYPpVWITlDSc9TIzhE8YI=; b=DVhmDa0b7FymJnQDUq+ZDXqfB
	ZDl4ySA754ilQX8LxAakzbmUMyFZ9/8RR/8hpiRN1b633sQJ8r9zJ7ETNKMiJVdU7dZZknRZUXFH5
	rrOZymiSFyiyPwFypo3mXpnG+/wpUcbFMqOfBdSuF7G3SoZaSSIz6D79JahdGzqtMHGPwQ6+q954Y
	+SuSGQWDHpC9RdqzvVT+FNpAf0Uc5F1Sxc3l8Lw7K4Cz51Xm/iE4z0u/6/9G3pJUfBO6ddAwUIFMk
	L4S2KiD6QCvHsfaRuWzevPoiBwDSk97pM/CkSHla+cvKVcPLGc05uSLbTG2Q6krLfvcGNhNzqAQXo
	x3SIXCxPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2YGs-0001sT-50; Tue, 27 Aug 2019 10:00:14 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2YGW-0001rt-BD; Tue, 27 Aug 2019 09:59:54 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.227])
 by regular1.263xmail.com (Postfix) with ESMTP id 658E1394;
 Tue, 27 Aug 2019 17:59:44 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P22011T139986332600064S1566899977823430_; 
 Tue, 27 Aug 2019 17:59:43 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <479e90231fda7d7f7efe8bfafc1c7fbb>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-arm-kernel@lists.infradead.org
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: CPUfreq fail on rk3399-firefly
To: Heiko Stuebner <heiko@sntech.de>
References: <5d3057c8.1c69fb81.c6489.8ad2@mx.google.com>
 <7h4l23zwej.fsf@baylibre.com>
 <852dd7d4-520b-7eb0-f307-c3fa9c0ebf2a@rock-chips.com>
 <8953975.ee0vQab4qn@phil>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <8612fed9-53a9-c6bf-0d39-bb70589c2a44@rock-chips.com>
Date: Tue, 27 Aug 2019 17:59:37 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <8953975.ee0vQab4qn@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_025952_704809_FBA5EBEE 
X-CRM114-Status: GOOD (  27.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.199 listed in list.dnswl.org]
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
Cc: kernel-build-reports@lists.linaro.org, Kevin Hilman <khilman@baylibre.com>,
 linux-rockchip@lists.infradead.org, linux-next@vger.kernel.org,
 =?UTF-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>,
 =?UTF-8?B?5byg5pm0?= <elaine.zhang@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpPbiAyMDE5LzgvMjcg5LiK5Y2IMTA6MTQsIEhlaWtvIFN0dWVibmVyIHdyb3Rl
Ogo+IEhpIEtldmVyLAo+Cj4gQW0gRGllbnN0YWcsIDI3LiBBdWd1c3QgMjAxOSwgMDM6NTQ6MjYg
Q0VTVCBzY2hyaWViIEtldmVyIFlhbmc6Cj4+IE9uIDIwMTkvOC8yNyDkuIrljYgxOjA5LCBLZXZp
biBIaWxtYW4gd3JvdGU6Cj4+PiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29t
PiB3cml0ZXM6Cj4+Pj4gICAgICAgIEkgd2FudCB0byBoYXZlIGEgdGVzdCB3aXRoIG15IGJvYXJk
LCBJIGNhbiBnZXQgdGhlIEltYWdlIGFuZCBkdGIKPj4+PiBmcm9tIHRoZSBsaW5rIGZvciB0aGUg
am9iLAo+Pj4+Cj4+Pj4gYnV0IGhvdyBjYW4gSSBnZXQgdGhlIHJhbmRpc2sgd2hpY2ggaXMgbmFt
ZWQgaW5pdHJkLVNEYnl5Mi5jcGlvLmd6Pwo+Pj4gVGhlIHJhbWRpc2sgaW1hZ2VzIGFyZSBoZXJl
Ogo+Pj4KPj4+ICAgICBodHRwczovL3N0b3JhZ2Uua2VybmVsY2kub3JnL2ltYWdlcy9yb290ZnMv
YnVpbGRyb290L2tjaS0yMDE5LjAyL2FybTY0L2Jhc2UvCj4+Pgo+Pj4gaW4gdGhlIGtlcm5lbENJ
IGxvZ3MgdGhlIHJhbWRpc2sgaXMgc2xpZ2h0bHkgbW9kaWZpZWQgYmVjYXVzZSB0aGUga2VybmVs
Cj4+PiBtb2R1bGVzIGhhdmUgYmVlbiBpbnNlcnRlZCBpbnRvIHRoZSBjcGlvIGFyY2hpdmUuCj4+
Pgo+Pj4gSG93ZXZlciwgZm9yIHRoZSBwdXJwb3NlcyBvZiB0aGlzIHRlc3QsIHlvdSBjYW4ganVz
dCB0ZXN0IHdpdGggdGhlCj4+PiB1bm1vZGlmaWVkIHJvb3Rmcy5jcGlvLmd6IGFib3ZlLgo+Pgo+
PiBJIHRyeSB3aXRoIHRoaXMgcmFtZGlzaywgYW5kIGl0IGhhbmdzIGF0IGZhbjUzNTU1IGluaXQs
IGJ1dCBub3QgZ2V0IGludG8KPj4gY3B1ZnJlcS4KPj4KPj4gQW55IHN1Z2dlc3Rpb24/Cj4gTXkg
Z3Vlc3Mgd291bGQgYmUgdGhlIGZjcyxzdXNwZW5kLXZvbHRhZ2Utc2VsZWN0b3IgbWF5YmU/Cj4K
PiBJLmUuIG9sZCB1Ym9vdHMgc29tZWhvdyBzZXQgdGhlIHZvbHRhZ2UgZ3BpbyBzdHJhbmdlbHks
IHNvIHlvdSdkIG5lZWQKPiAJZmNzLHN1c3BlbmQtdm9sdGFnZS1zZWxlY3RvciA9IDwwPgoKCkJv
dGggVS1Cb290IGFuZCBLZXJuZWwgZHRzIGFyZSBzdGlsbCAnPDA+JyBmb3IgdGhpcyBwcm9wZXJ0
eSwgYW5kIHRoaXMgCmlzIGNvcnJlY3Qgc2V0dGluZyBmb3IgY3B1X2I7Cgo+IHdoaWxlIG5ld2Vy
IHVib290cyBJIHRoaW5rIGRvIGNvbmZpZ3VyZSB0aGUgZ3BpbywgbmVlZGluZyBhIHZhbHVlIG9m
IDwxPjsKCgpUaGVyZSBpcyBubyAndnNlbC1ncGlvJyBpbiBib3RoIHVwc3RyZWFtIFUtQm9vdCBh
bmQga2VybmVsIGR0cywgd2hpbGUgCnRoZXJlIGlzIGEgInZzZWwtZ3Bpb3MgPSA8JmdwaW8xIDE4
IEdQSU9fQUNUSVZFX0hJR0g+OyIKCmluIHJvY2tjaGlwIGtlcm5lbCA0LjQgZHRzLiBzbyBJIHRo
aW5rIHRoZXJlIGlzIG5vIGdwaW8gc2V0dGluZyBvbiAKdXBzdHJlYW0gY29kZT8KCkFuZCBrZXJu
ZWxjaSdzIHRlc3QgY2FzZSwgZG9lcyBub3QgdXBkYXRlIHRoZSBib290bG9hZGVyLCBvbmx5IHVw
ZGF0ZSAKa2VybmVsLgoKClRoYW5rcywKCi0gS2V2ZXIKCj4KPiBTbyB0cnkgdG8gc3dhcCB0aGF0
IG51bWJlciBpbiB0aGUgZHRzIHBlcmhhcHMgZm9yIGEgc3RhcnQ/Cj4KPgo+IEhlaWtvCj4KPgo+
PiAgICBNeSBib290IGxvZzoKPj4KPj4gaHR0cHM6Ly9wYXN0ZS51YnVudHUuY29tL3AvV1laS1BX
cDdzay8KPj4KPj4gVGhhbmtzLAo+Pgo+PiAtIEtldmVyCj4+Cj4+PiBLZXZpbgo+Pj4KPj4+Cj4+
Pj4gVGhhbmtzLAo+Pj4+Cj4+Pj4gLSBLZXZlcgo+Pj4+Cj4+Pj4gT24gMjAxOS84LzI0IOS4iuWN
iDE6MDMsIEtldmluIEhpbG1hbiB3cm90ZToKPj4+Pj4gS2V2aW4gSGlsbWFuIDxraGlsbWFuQGJh
eWxpYnJlLmNvbT4gd3JpdGVzOgo+Pj4+Pgo+Pj4+Pj4gS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0By
b2NrLWNoaXBzLmNvbT4gd3JpdGVzOgo+Pj4+Pj4KPj4+Pj4+PiBIaSBLZXZpbiwgSGVpa28sCj4+
Pj4+Pj4KPj4+Pj4+PiBPbiAyMDE5LzgvMjIg5LiK5Y2IMjo1OSwgS2V2aW4gSGlsbWFuIHdyb3Rl
Ogo+Pj4+Pj4+PiBIaSBIZWlrbywKPj4+Pj4+Pj4KPj4+Pj4+Pj4gSGVpa28gU3R1ZWJuZXIgPGhl
aWtvQHNudGVjaC5kZT4gd3JpdGVzOgo+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gQW0gRGllbnN0YWcsIDEz
LiBBdWd1c3QgMjAxOSwgMTk6MzU6MzEgQ0VTVCBzY2hyaWViIEtldmluIEhpbG1hbjoKPj4+Pj4+
Pj4+PiBbIHJlc2VudCB3aXRoIGNvcnJlY3QgYWRkciBmb3IgbGludXgtcm9ja2NoaXAgbGlzdCBd
Cj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBNYXJrIEJyb3duIDxicm9vbmllQGtlcm5lbC5vcmc+IHdy
aXRlczoKPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+PiBPbiBUaHUsIEp1bCAxOCwgMjAxOSBhdCAwNDoy
ODowOEFNIC0wNzAwLCBrZXJuZWxjaS5vcmcgYm90IHdyb3RlOgo+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+
Pj4+PiBUb2RheSdzIC1uZXh0IHN0YXJ0ZWQgZmFpbGluZyB0byBib290IGRlZmNvbmZpZyBvbiBy
azMzOTktZmlyZWZseToKPj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+IGFybTY0Ogo+Pj4+Pj4+Pj4+
Pj4gICAgICAgICBkZWZjb25maWc6Cj4+Pj4+Pj4+Pj4+PiAgICAgICAgICAgICBnY2MtODoKPj4+
Pj4+Pj4+Pj4+ICAgICAgICAgICAgICAgICByazMzOTktZmlyZWZseTogMSBmYWlsZWQgbGFiCj4+
Pj4+Pj4+Pj4+IEl0IGhpdHMgYSBCVUcoKSB0cnlpbmcgdG8gc2V0IHVwIGNwdWZyZXE6Cj4+Pj4+
Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+IFsgICA4Ny4zODE2MDZdIGNwdWZyZXE6IGNwdWZyZXFfb25saW5l
OiBDUFUwOiBSdW5uaW5nIGF0IHVubGlzdGVkIGZyZXE6IDIwMDAwMCBLSHoKPj4+Pj4+Pj4+Pj4g
WyAgIDg3LjM5MzI0NF0gY3B1ZnJlcTogY3B1ZnJlcV9vbmxpbmU6IENQVTA6IFVubGlzdGVkIGlu
aXRpYWwgZnJlcXVlbmN5IGNoYW5nZWQgdG86IDQwODAwMCBLSHoKPj4+Pj4+Pj4+Pj4gWyAgIDg3
LjQ2OTc3N10gY3B1ZnJlcTogY3B1ZnJlcV9vbmxpbmU6IENQVTQ6IFJ1bm5pbmcgYXQgdW5saXN0
ZWQgZnJlcTogMTIwMDAgS0h6Cj4+Pj4+Pj4+Pj4+IFsgICA4Ny40ODg1OTVdIGNwdSBjcHU0OiBf
Z2VuZXJpY19zZXRfb3BwX2Nsa19vbmx5OiBmYWlsZWQgdG8gc2V0IGNsb2NrIHJhdGU6IC0yMgo+
Pj4+Pj4+Pj4+PiBbICAgODcuNDkxODgxXSBjcHVmcmVxOiBfX3RhcmdldF9pbmRleDogRmFpbGVk
IHRvIGNoYW5nZSBjcHUgZnJlcXVlbmN5OiAtMjIKPj4+Pj4+Pj4+Pj4gWyAgIDg3LjQ5NTMzNV0g
LS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tCj4+Pj4+Pj4+Pj4+IFsgICA4Ny40
OTY4MjFdIGtlcm5lbCBCVUcgYXQgZHJpdmVycy9jcHVmcmVxL2NwdWZyZXEuYzoxNDM4IQo+Pj4+
Pj4+Pj4+PiBbICAgODcuNDk4NDYyXSBJbnRlcm5hbCBlcnJvcjogT29wcyAtIEJVRzogMCBbIzFd
IFBSRUVNUFQgU01QCj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+IEknbSBzdHJ1Z2dsaW5nIHRvIHNl
ZSBhbnl0aGluZyByZWxldmFudCBpbiB0aGUgZGlmZiBmcm9tIHllc3RlcmRheSwgdGhlCj4+Pj4+
Pj4+Pj4+IHVubGlzdGVkIGZyZXF1ZW5jeSB3YXJuaW5ncyB3ZXJlIHRoZXJlIGluIHRoZSBsb2dz
IHllc3RlcmRheSBidXQgbm8gb29wcwo+Pj4+Pj4+Pj4+PiBhbmQgSSdtIG5vdCBzZWVpbmcgYW55
IGNoYW5nZXMgaW4gY3B1ZnJlcSwgY2xrIG9yIGFueXRoaW5nIHJlbGV2YW50Cj4+Pj4+Pj4+Pj4+
IGxvb2tpbmcuCj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+IEZ1bGwgYm9vdGxvZyBhbmQgb3RoZXIg
aW5mbyBjYW4gYmUgZm91bmQgaGVyZToKPj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4gCWh0dHBzOi8v
a2VybmVsY2kub3JnL2Jvb3QvaWQvNWQzMDJkODM1OWI1MTQ5OGQwNDllOTgzLwo+Pj4+Pj4+Pj4+
IEkgY29uZmlybSB0aGF0IGRpc2FibGluZyBDUFVmcmVxIGluIHRoZSBkZWZjb25maWcgKENPTkZJ
R19DUFVfRlJFUT1uKQo+Pj4+Pj4+Pj4+IG1ha2VzIHRoZSBmaXJlZmx5IGJvYXJkIHN0YXJ0IHdv
cmtpbmcgYWdhaW4uCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBOb3RlIHRoYXQgdGhlIGRlZmF1bHQg
ZGVmY29uZmlnIGVuYWJsZXMgdGhlICJwZXJmb3JtYW5jZSIgQ1BVZnJlcQo+Pj4+Pj4+Pj4+IGdv
dmVybm9yIGFzIHRoZSBkZWZhdWx0IGdvdmVybm9yLCBzbyBkdXJpbmcga2VybmVsIGJvb3QsIGl0
IHdpbGwgYWx3YXlzCj4+Pj4+Pj4+Pj4gc3dpdGNoIHRvIHRoZSBtYXggZnJlcXVlbmN5Lgo+Pj4+
Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gRm9yIGZ1biwgSSBzZXQgdGhlIGRlZmF1bHQgZ292ZXJub3IgdG8g
InVzZXJzcGFjZSIgc28gdGhlIGtlcm5lbAo+Pj4+Pj4+Pj4+IHdvdWxkbid0IG1ha2UgYW55IE9Q
UCBjaGFuZ2VzLCBhbmQgdGhhdCBsZWFkcyB0byBhIHNsaWdodGx5IG1vcmUKPj4+Pj4+Pj4+PiBp
bmZvcm1hdGl2ZSBzcGxhdFsxXQo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gVGhlcmUgaXMgc3RpbGwg
YW4gT1BQIGNoYW5nZSBoYXBwZW5pbmcgYmVjYXVzZSB0aGUgZGV0ZWN0ZWQgT1BQIGlzIG5vdAo+
Pj4+Pj4+Pj4+IG9uZSB0aGF0J3MgbGlzdGVkIGluIHRoZSB0YWJsZSwgc28gaXQgdHJpZXMgdG8g
Y2hhbmdlIHRvIGEgbGlzdGVkIE9QUAo+Pj4+Pj4+Pj4+IGFuZCBmYWlscyBpbiB0aGUgYm93ZWxz
IG9mIGNsa19zZXRfcmF0ZSgpCj4+Pj4+Pj4+PiBUaG91Z2ggSSB0aGluayB0aGF0IG1pZ2h0IG9u
bHkgYmUgYSBzeW1wdG9tIGFzIHdlbGwuCj4+Pj4+Pj4+PiBCb3RoIHRoZSBQTEwgc2V0dGluZyBj
b2RlIGFzIHdlbGwgYXMgdGhlIGFjdHVhbCBjcHUtY2xvY2sgaW1wbGVtZW50YXRpb24KPj4+Pj4+
Pj4+IGlzIHVuY2hhbmdlZCBzaW5jZSAyMDE3IChhbmQgcnVucyBqdXN0IGZpbmUgb24gYWxsIGJv
YXJkcyBpbiBteSBmYXJtKS4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBPbmUgc291cmNlIGZvciB0aGVz
ZSBpc3N1ZXMgaXMgb2Z0ZW4gdGhlIHJlZ3VsYXRvciBzdXBwbHlpbmcgdGhlIGNwdQo+Pj4+Pj4+
Pj4gZ29pbmcgaGF5d2lyZSAtIGFrYSB0aGUgdm9sdGFnZSBub3QgbWF0Y2hpbmcgdGhlIG9wcC4K
Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBBcyBpbiB0aGlzIGVycm9yLWNhc2UgaXQncyBDUFU0IGJlaW5n
IHNldCwgdGhpcyB3b3VsZCBtZWFuIGl0IG1pZ2h0Cj4+Pj4+Pj4+PiBiZSB0aGUgYmlnIGNsdXN0
ZXIgc3VwcGxpZWQgYnkgdGhlIGV4dGVybmFsIHN5cjgyNSAoZmFuNTM1NSBjbG9uZSkKPj4+Pj4+
Pj4+IHRoYXQgbWlnaHQgYWN0IHVwLiBJbiB0aGUgRmlyZWZseS1yazMzOTkgY2FzZSB0aGlzIGlz
IGV2ZW4gc3RyYW5nZXIuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gVGhlcmUgaXMgYSBkaXNjcmVwYW5j
eSBiZXR3ZWVuIHRoZSAiZmNzLHN1c3BlbmQtdm9sdGFnZS1zZWxlY3RvciIKPj4+Pj4+Pj4+IGJl
dHdlZW4gZGlmZmVyZW50IGJvb3Rsb2FkZXIgdmVyc2lvbnMgKGhvdyB0aGUgc2VsZWN0aW9uLXBp
biBpcyBzZXQgdXApLAo+Pj4+Pj4+Pj4gc28gdGhlIGtlcm5lbCBtaWdodCBhY3R1YWxseSB3cml0
ZSBoaXMgcmVxdWVzdGVkIHZvbHRhZ2UgdG8gdGhlIHdyb25nCj4+Pj4+Pj4+PiByZWdpc3RlciAo
bm90IHRoZSBvbmUgZm9yIGFjdHVhbCB2b2x0YWdlLCBidXQgdGhlIHNlY29uZCBzZXQgdXNlZCBm
b3IKPj4+Pj4+Pj4+IHRoZSBzdXNwZW5kIHZvbHRhZ2UpLgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IERp
ZCB5b3UgYnkgY2hhbmNlIHN3YXAgYm9vdGxvYWRlcnMgYXQgc29tZSBwb2ludCBpbiByZWNlbnQg
cGFzdD8KPj4+Pj4+Pj4gTm8sIGhhdmVuJ3QgdG91Y2hlZCBib290bG9hZGVyIHNpbmNlIEkgaW5p
dGlhbGx5IHNldHVwIHRoZSBib2FyZC4KPj4+Pj4+PiBUaGUgQ1BVIHZvbHRhZ2UgZG9lcyBub3Qg
YWZmZWN0IGJ5IGJvb3Rsb2FkZXIgZm9yIGtlcm5lbCBzaG91bGQgaGF2ZSBpdHMKPj4+Pj4+PiBv
d24gb3BwLXRhYmxlLAo+Pj4+Pj4+Cj4+Pj4+Pj4gdGhlIGJvb3Rsb2FkZXIgbWF5IG9ubHkgYWZm
ZWN0IHRoZSBjZW50ZXIvbG9naWMgcG93ZXIgc3VwcGx5Lgo+Pj4+Pj4+Cj4+Pj4+Pj4+PiBJJ2Qg
YXNzdW1lIFsyXSBtaWdodCBhY3R1YWxseSBiZSB0aGUgc2FtZSBpc3N1ZSBsYXN0IHllYXIsIHRo
b3VnaAo+Pj4+Pj4+Pj4gdGhlIENJLWxvZ3MgYXJlIG5vdCBhdmFpbGFibGUgYW55bW9yZSBpdCBz
ZWVtcy4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBDb3VsZCB5b3UgdHJ5IHRvIHNldCB0aGUgdmRkX2Nw
dV9iIHJlZ3VsYXRvciB0byBkaXNhYmxlZCwgc28gdGhhdAo+Pj4+Pj4+Pj4gY3B1ZnJlcSBmb3Ig
dGhpcyBjbHVzdGVyIGRlZmVycyBhbmQgc2VlIHdoYXQgaGFwcGVucz8KPj4+Pj4+Pj4gWWVzLCB0
aGlzIGNoYW5nZVsxXSBkZWZpbml0ZWx5IG1ha2VzIHRoaW5ncyBib290IHJlbGlhYmx5IGFnYWlu
LCBzbwo+Pj4+Pj4+PiB0aGVyZSdzIGRlZmludGllbHkgc29tZXRoaW5nIGEgYml0IHVuc3RhYmxl
IHdpdGggdGhpcyByZWd1bGF0b3IsIGF0Cj4+Pj4+Pj4+IGxlYXN0IG9uIHRoaXMgZmlyZWZseS4K
Pj4+Pj4+PiBJcyBpdCBwb3NzaWJsZSB0byB0YXJnZXQgd2hpY2ggcGF0Y2ggaW50cm9kdWNlIHRo
aXMgYnVnPyBUaGlzIGJvYXJkCj4+Pj4+Pj4gc2hvdWxkIGhhdmUgd29yayBjb3JyZWN0bHkgZm9y
IGEgbG9uZyB0aW1lIHdpdGggdXBzdHJlYW0gc291cmNlIGNvZGUuCj4+Pj4+PiBVbmZvcnR1bmF0
ZWx5LCBpdCBzZWVtcyB0byBiZSBhIHJlZ3VsYXIsIGJ1dCBpbnRlcm1pdHRlbnQgZmFpbHVyZSwg
c28KPj4+Pj4+IGJpc2VjdGlvbiBpcyBub3QgcHJvZHVjaW5nIGFueXRoaW5nIHJlbGlhYmxlLgo+
Pj4+Pj4KPj4+Pj4+IFlvdSBjYW4gc2VlIHRoYXQgYm90aCBpbiBtYWlubGluZVsxXSBhbmQgaW4g
bGludXgtbmV4dFsyXSB0aGVyZSBhcmUKPj4+Pj4+IHBlcmlvZGljIGZhaWx1cmVzLCBidXQgaXQn
cyBoYXJkIHRvIHNlZSBhbnkgcGF0dGVybnMuCj4+Pj4+IEV2ZW4gd29yc2UsIEkgKHJlKXRlc3Rl
ZCBtYWlubGluZSBmb3IgdmVyc2lvbnMgdGhhdCB3ZXJlIHByZXZpb3VzbHkKPj4+Pj4gcGFzc2lu
ZyAodjUuMiwgdjUuMy1yYzUpIGFuZCB0aGV5IGFyZSBhbHNvIGZhaWxpbmcgbm93Lgo+Pj4+Pgo+
Pj4+PiBUaGV5IHdvcmsgYWdhaW4gaWYgSSBkaXNhYmxlIHRoYXQgcmVndWxhdG9yIGFzIHN1Z2dl
c3RlZCBieSBIZWlrby4KPj4+Pj4KPj4+Pj4gU28gdGhpcyBpcyBpbmNyZWFzaW5nbHkgcG9pbnRp
bmcgdG8gZmFpbGluZyBoYXJkd2FyZS4KPj4+Pj4KPj4+Pj4gS2V2aW4KPj4+Pj4KPj4+Pj4KPj4+
Pj4KPj4+Cj4+Cj4+Cj4KPgo+Cj4KPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
