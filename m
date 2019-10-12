Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AD1D4CA1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 06:09:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bfRHxQ/Z+i4ZkNt5xX3wB1XDfPsguS8Hp85olGnp5JI=; b=fEM2m/5Sx+1LzCZl7xhveota3
	a+VGI24OB3bqOWuisfxhd4otzBYDA6A3p2NfJuWP2pjmquWvMka1rE21BJ2GFzTwY+GvDDb4cq8rw
	PWgO89gfmH/8hNSY/7oJ8IeMvkAdvUP4KwpUclfLj5tE9W83T8cklT9L/Qx0KtVwMcG52PY6boK30
	uTEhYGxu/YUnbClTSMmP2xUBPqPyrJLtHoFf9tJ7k7AgbMfc8dtrmBVyw/lsywBv2hEgDtVfLwQ+K
	qf3DDT0QJI83zqkk2Pq40NSgQFyNauk4lvCcFFStH46pebjzPKHuAHurTt7ovZMVQrcVzRs1sca0P
	6snHCekpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ8j5-00064H-G1; Sat, 12 Oct 2019 04:09:55 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ8iy-00063T-Sw; Sat, 12 Oct 2019 04:09:51 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id CA5F16821B;
 Sat, 12 Oct 2019 12:09:39 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.37] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P21345T140678380103424S1570853375847707_; 
 Sat, 12 Oct 2019 12:09:38 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7211ccd818c8667b6c08baaec1624c00>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: linux-arm-kernel@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: fix RockPro64 sdmmc settings
To: Soeren Moch <smoch@web.de>, Robin Murphy <robin.murphy@arm.com>,
 Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>
References: <20191003215036.15023-1-smoch@web.de>
 <20191003215036.15023-3-smoch@web.de>
 <31181f3c-20ec-e717-1f7e-8b35cd54d96d@arm.com>
 <a8b20c45-0426-ee42-4efc-52e56ea6bb20@web.de>
 <120e2dbc-55eb-2205-b00f-7e50928ec706@rock-chips.com>
 <1c452b8b-853f-8f58-5f3a-0bbecbe20557@web.de>
 <fc7dce53-ad39-26e3-7c19-ab60ff4cc332@arm.com>
 <0c6fdb65-be2a-68e3-a686-14ce9b0a00a4@rock-chips.com>
 <e4aaddc2-441b-b835-380e-374a3d935474@web.de>
 <HE1PR06MB40115FDF385886FDDE122CD6AC970@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <13064e01-9472-fc4d-2c7f-c186fa2a9a91@web.de>
 <64a7d056-28d0-b6d8-6148-b98b58265c08@arm.com>
 <6c2e6523-dc0a-1ad6-ffd3-7ef63c6f7df9@web.de>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <971537f8-2fe5-9ebe-3f04-9e3d99c915a9@rock-chips.com>
Date: Sat, 12 Oct 2019 12:09:34 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <6c2e6523-dc0a-1ad6-ffd3-7ef63c6f7df9@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_210949_259255_C2ADD771 
X-CRM114-Status: GOOD (  33.28  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.133 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 shawn.lin@rock-chips.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTAvMTEgMjI6MTYsIFNvZXJlbiBNb2NoIHdyb3RlOgo+IE9uIDExLjEwLjE5IDE1
OjAwLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+IE9uIDExLzEwLzIwMTkgMTI6NDAsIFNvZXJlbiBN
b2NoIHdyb3RlOgo+Pj4gT24gMTEuMTAuMTkgMTA6MjIsIEpvbmFzIEthcmxtYW4gd3JvdGU6Cj4+
Pj4gT24gMjAxOS0xMC0wNCAxOToyNCwgU8O2cmVuIE1vY2ggd3JvdGU6Cj4+Pj4+IE9uIDA0LjEw
LjE5IDE3OjMzLCBTaGF3biBMaW4gd3JvdGU6Cj4+Pj4+PiBPbiAyMDE5LzEwLzQgMjI6MjAsIFJv
YmluIE11cnBoeSB3cm90ZToKPj4+Pj4+PiBPbiAwNC8xMC8yMDE5IDA0OjM5LCBTb2VyZW4gTW9j
aCB3cm90ZToKPj4+Pj4+Pj4gT24gMDQuMTAuMTkgMDQ6MTMsIFNoYXduIExpbiB3cm90ZToKPj4+
Pj4+Pj4+IE9uIDIwMTkvMTAvNCA4OjUzLCBTb2VyZW4gTW9jaCB3cm90ZToKPj4+Pj4+Pj4+PiBP
biAwNC4xMC4xOSAwMjowMSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+Pj4+Pj4+Pj4+PiBPbiAyMDE5
LTEwLTAzIDEwOjUwIHBtLCBTb2VyZW4gTW9jaCB3cm90ZToKPj4+Pj4+Pj4+Pj4+IEFjY29yZGlu
ZyB0byB0aGUgUm9ja1BybzY0IHNjaGVtYXRpYyBbMV0gdGhlIHJrMzM5OSBzZG1tYwo+Pj4+Pj4+
Pj4+Pj4gY29udHJvbGxlciBpcwo+Pj4+Pj4+Pj4+Pj4gY29ubmVjdGVkIHRvIGEgbWljcm9TRCAo
VEYgY2FyZCkgc2xvdCwgd2hpY2ggY2Fubm90IGJlCj4+Pj4+Pj4+Pj4+PiBzd2l0Y2hlZCB0bwo+
Pj4+Pj4+Pj4+Pj4gMS44Vi4KPj4+Pj4+Pj4+Pj4gUmVhbGx5PyBBRkFJQ1MgdGhlIFNETU1DMCB3
aXJpbmcgbG9va3MgcHJldHR5IG11Y2ggaWRlbnRpY2FsCj4+Pj4+Pj4+Pj4+IHRvIHRoZQo+Pj4+
Pj4+Pj4+PiBOYW5vUEMtVDQgc2NoZW1hdGljIChpdCdzIHRoZSBzYW1lIHJlZmVyZW5jZSBkZXNp
Z24sIGFmdGVyIGFsbCksCj4+Pj4+Pj4+Pj4+IGFuZCBJCj4+Pj4+Pj4+Pj4+IGtub3cgdGhhdCBi
b2FyZCBjYW4gaGFwcGlseSBkcml2ZSBhIFVIUy1JIG1pY3JvU0QgY2FyZCB3aXRoIDEuOHYKPj4+
Pj4+Pj4+Pj4gSS9PcywKPj4+Pj4+Pj4+Pj4gYmVjYXVzZSBtaW5lJ3MgZG9pbmcgc28gcmlnaHQg
bm93Lgo+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+PiBSb2Jpbi4KPj4+Pj4+Pj4+PiBPSywgdGhlIFJv
Y2tQcm82NCBkb2VzIG5vdCBhbGxvdyBhIGNhcmQgcmVzZXQgKHBvd2VyIGN5Y2xlKSBzaW5jZQo+
Pj4+Pj4+Pj4+IFZDQzNWMF9TRCBpcyBkaXJlY3RseSBjb25uZWN0ZWQgdG8gVkNDM1YzX1NZUyAo
dmlhIFI4OTU1NSksIHRoZQo+Pj4+Pj4+Pj4+IFNETU1DMF9QV0hfSCBzaWduYWwgaXMgbm90IGNv
bm5lY3RlZC4gU28gdGhlIGNhcmQgZmFpbHMgdG8KPj4+Pj4+Pj4+PiBpZGVudGlmeQo+Pj4+Pj4+
Pj4+IGl0c2VsZiBhZnRlciBzdXNwZW5kIG9yIHJlYm9vdCB3aGVuIHN3aXRjaGVkIHRvIDEuOFYg
b3BlcmF0aW9uLgo+Pj4+Pj4+IEFoLCB0aGFua3MgZm9yIGNsYXJpZnlpbmcgLSBJIGRpZCBvdmVy
bG9vayB0aGUgc3VidGxldHkgdGhhdCBVMTIgYW5kCj4+Pj4+Pj4gZnJpZW5kcyBoYXZlICJOQyIg
YXMgYWx0ZXJuYXRpdmUgcGFydCBudW1iZXJzLCBldmVuIHRob3VnaCB0aGV5Cj4+Pj4+Pj4gYXJl
bid0IGFjdHVhbGx5IG1hcmtlZCBhcyBETlAuIFNvIGl0J3Mgc3RpbGwgbm90IHNvIG11Y2ggImNh
bm5vdCBiZQo+Pj4+Pj4+IHN3aXRjaGVkIiBhcyAic3dpdGNoaW5nIGNhbiBsZWFkIHRvIG90aGVy
IHByb2JsZW1zIi4KPj4+Pj4+Pgo+Pj4+Pj4+Pj4gSSBiZWxpZXZlIHdlIGFkZHJlc3NlZCB0aGlz
IGlzc3VlIGxvbmcgdGltZSBhZ28sIHBsZWFzZSBjaGVjazoKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBo
dHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9s
aW51eC5naXQvY29tbWl0Lz9pZD02YTExZmM0N2YxNzVjOGQ4NzAxOGU4OWNiNThlMmQzNmM2NjUz
NGNiCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFRoYW5rcyBmb3IgdGhl
IHBvaW50ZXIuCj4+Pj4+Pj4+IEluIHRoaXMgY2FzZSBJIGd1ZXNzIEkgc2hvdWxkIHVzZSBmb2xs
b3dpbmcgcGF0Y2ggaW5zdGVhZDoKPj4+Pj4+Pj4KPj4+Pj4+Pj4gLS0tIHJrMzM5OS1yb2NrcHJv
NjQuZHRzLmJhayDCoMKgIDIwMTktMTAtMDMgMjI6MTQ6MDAuMDY3NzQ1Nzk5ICswMjAwCj4+Pj4+
Pj4+ICsrKyByazMzOTktcm9ja3BybzY0LmR0c8KgwqDCoCAyMDE5LTEwLTA0IDAwOjAyOjUwLjA0
Nzg5MjM2NiArMDIwMAo+Pj4+Pj4+PiBAQCAtNjE5LDYgKzYxOSw4IEBACj4+Pj4+Pj4+ICDCoMKg
wqDCoMKgwqAgbWF4LWZyZXF1ZW5jeSA9IDwxNTAwMDAwMDA+Owo+Pj4+Pj4+PiAgwqDCoMKgwqDC
oMKgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+Pj4+Pj4+ICDCoMKgwqDCoMKgwqAgcGlu
Y3RybC0wID0gPCZzZG1tY19jbGsgJnNkbW1jX2NtZCAmc2RtbWNfYnVzND47Cj4+Pj4+Pj4+ICvC
oMKgwqAgc2QtdWhzLXNkcjEwNDsKPj4+Pj4+Pj4gK8KgwqDCoCB2cW1tYy1zdXBwbHkgPSA8JnZj
Y19zZGlvPjsKPj4+Pj4+Pj4gIMKgwqDCoMKgwqDCoCBzdGF0dXMgPSAib2theSI7Cj4+Pj4+Pj4+
ICDCoMKgwqB9Owo+Pj4+Pj4+PiBXaGVuIEkgZG8gc28sIHRoZSBzZCBjYXJkIGlzIGRldGVjdGVk
IGFzIFNEUjEwNCwgYnV0IGEgcmVib290Cj4+Pj4+Pj4+IGhhbmdzOgo+Pj4+Pj4+Pgo+Pj4+Pj4+
PiBCb290MTogMjAxOC0wNi0yNiwgdmVyc2lvbjogMS4xNAo+Pj4+Pj4+PiBDUFVJZCA9IDB4MAo+
Pj4+Pj4+PiBDaGlwVHlwZSA9IDB4MTAsIDI4Ngo+Pj4+Pj4+PiBTcGlfQ2hpcElkID0gYzg0MDE4
Cj4+Pj4+Pj4+IG5vIGZpbmQgcmtwYXJ0aXRpb24KPj4+Pj4+Pj4gU3BpQm9vdEluaXQ6ZmZmZmZm
ZmYKPj4+Pj4+Pj4gbW1jOiBFUlJPUjogU0RIQ0kgRVJSOmNtZDoweDEwMixzdGF0OjB4MTgwMDAK
Pj4+Pj4+Pj4gbW1jOiBFUlJPUjogQ2FyZCBkaWQgbm90IHJlc3BvbmQgdG8gdm9sdGFnZSBzZWxl
Y3QhCj4+Pj4+Pj4+IGVtbWMgcmVpbml0Cj4+Pj4+Pj4+IG1tYzogRVJST1I6IFNESENJIEVSUjpj
bWQ6MHgxMDIsc3RhdDoweDE4MDAwCj4+Pj4+Pj4+IG1tYzogRVJST1I6IENhcmQgZGlkIG5vdCBy
ZXNwb25kIHRvIHZvbHRhZ2Ugc2VsZWN0IQo+Pj4+Pj4+PiBlbW1jIHJlaW5pdAo+Pj4+Pj4+PiBt
bWM6IEVSUk9SOiBTREhDSSBFUlI6Y21kOjB4MTAyLHN0YXQ6MHgxODAwMAo+Pj4+Pj4+PiBtbWM6
IEVSUk9SOiBDYXJkIGRpZCBub3QgcmVzcG9uZCB0byB2b2x0YWdlIHNlbGVjdCEKPj4+Pj4+Pj4g
U2RtbWNJbml0PTIgMQo+Pj4+Pj4+PiBtbWMwOmNtZDUsMzIKPj4+Pj4+Pj4gbW1jMDpjbWQ3LDMy
Cj4+Pj4+Pj4+IG1tYzA6Y21kNSwzMgo+Pj4+Pj4+PiBtbWMwOmNtZDcsMzIKPj4+Pj4+Pj4gbW1j
MDpjbWQ1LDMyCj4+Pj4+Pj4+IG1tYzA6Y21kNywzMgo+Pj4+Pj4+PiBTZG1tY0luaXQ9MCAxCj4+
Pj4+Pj4+Cj4+Pj4+Pj4+IFNvIEkgZ3Vlc3MgSSBzaG91bGQgdXNlIGEgZGlmZmVyZW50IG1pbmls
b2FkZXIgZm9yIHRoaXMgcmVib290IHRvCj4+Pj4+Pj4+IHdvcmshPwo+Pj4+Pj4+PiBPciB3aGF0
IGVsc2UgY291bGQgYmUgd3JvbmcgaGVyZT8KPj4+Pj4+PiBIbW0sIEkgZ3Vlc3MgdGhpcyBpcyAi
dGhlIFRpbmtlcmJvYXJkIHByb2JsZW0iIGFnYWluIC0gdGhlIHBhdGNoCj4+Pj4+Pj4gYWJvdmUg
d291bGQgYmUgT0sgaWYgd2UgY291bGQgZ2V0IGFzIGZhciBhcyB0aGUga2VybmVsLCBidXQgY2Fu
J3QKPj4+Pj4+PiBoZWxwIGlmIHRoZQo+Pj4+Pj4gSSBkaWRuJ3QgcmVhbGl6ZSB0aGF0IFNEIHdh
cyB1c2VkIGFzIGJvb3QgbWVkaXVtIGZvciBSb2NrUHJvNjQsIGJ1dCBJCj4+Pj4+PiBkaWQgcGF0
Y2ggdGhlIHZlbmRvciB0cmVlIHRvIHNvbHZlIHRoZSBpc3N1ZSBmb3IgVGlua2VyYm9hcmQsIHNl
ZQo+Pj4+Pj4gaHR0cHM6Ly9naXRodWIuY29tL3JvY2tjaGlwLWxpbnV4L2tlcm5lbC9jb21taXQv
YTRjY2RlMjFmNWE5ZjA0Zjk5NmZiMDI0NzljYjlmMTZkM2RjOGRjMAo+Pj4+Pj4KPj4+Pj4+Cj4+
Pj4+Pgo+Pj4+Pj4gTXkgaW5pdGlhbCBwbGFuIHdhcyB0byBwYXRjaGluZyB1cHN0cmVhbSBrZXJu
ZWwgYnkgYWRkaW5nCj4+Pj4+PiAtPnNodXRkb3duLGJ1dAo+Pj4+Pj4gbmV2ZXIgZmluaXNoIGl0
Lgo+Pj4+Pj4KPj4+Pj4+PiBvZmZlbmRpbmcgY2FyZCBpcyBpdHNlbGYgdGhlIGJvb3QgbWVkaXVt
LiBUaGVyZSB3YXMgYSBwcm9wb3NhbCBoZXJlOgo+Pj4+Pj4+Cj4+Pj4+Pj4gaHR0cHM6Ly9wYXRj
aHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMDgxNzIxNy8KPj4+Pj4+IFRoaXMgUkZDIGFsc28gbG9v
a3MgZ29vZCB0byBtZSwgYnV0IHNlZW1zIGl0IG5lZWRzIHZvbHVudGVlcnMKPj4+Pj4+IHRvIHB1
c2ggaXQgYWdhaW4uCj4+Pj4+IE9oLCBJIHRoaW5rIHRoaXMgaXMgYSB0b3RhbGx5IHdyb25nIHdh
eS4KPj4+Pj4KPj4+Pj4gV2hpbGUgdGhpcyBtaWdodCB3b3JrIGZvciBzb21lIGNhcmRzLCBzZXR0
aW5nIHRoZSBjb250cm9sbGVyJ3MgaS9vCj4+Pj4+IHZvbHRhZ2UgdG8gMy4zViB3aGlsZSBsZWF2
aW5nIHRoZSBjYXJkIGF0IDEuOFYgY29uZmlndXJhdGlvbiBpcwo+Pj4+PiB0b3RhbGx5Cj4+Pj4+
IGFnYWluc3QgdGhlIHNwZWNpZmljYXRpb24sIGNhbiBsZWFkIHRvIGFsbCBraW5kcyBvZiBzdHJh
bmdlIGJlaGF2aW91cgo+Pj4+PiBhbmQgZXZlbiBjYXVzZSBoYXJkd2FyZSBkYW1hZ2UuIEl0IGFs
c28gd291bGQgYWN0aXZlbHkgZGVmZW5kIHRoZQo+Pj4+PiBwdXJwb3NlIG9mIHRoZSBhYm92ZSBt
ZW50aW9uZWQgcGF0Y2ggKDZhMTFmYzQpIHdoZXJlIHRoZSBrZXJuZWwKPj4+Pj4gZ3Vlc3Nlcwo+
Pj4+PiB0aGUgaS9vIHZvbHRhZ2UgZnJvbSB0aGUgY2FyZCBjb25maWd1cmF0aW9uIGFuZCBzd2l0
Y2hlcyB0aGUKPj4+Pj4gY29udHJvbGxlcgo+Pj4+PiBhY2NvcmRpbmdseS4gV2Ugd291bGQgZW5k
IHVwIHdpdGggYSAxLjhWIGNhcmQgYW5kIGNvbnRyb2xsZXIKPj4+Pj4gY29uZmlndXJhdGlvbiBh
bmQgYSByZWd1bGF0b3Igdm9sdGFnZSBvZiAzLjNWLiBUaGlzIHdvdWxkIG9ubHkgd29yawo+Pj4+
PiB3aXRoCj4+Pj4+IGdvb2QgbHVjay4gRXZlbiBpZiB0aGUga2VybmVsIGRyaXZlciB3b3VsZCBz
d2l0Y2ggdGhlIHJlZ3VsYXRvcgo+Pj4+PiBiYWNrIHRvCj4+Pj4+IDEuOFYgaW4gdGhpcyBjYXNl
LCB0aGUgdm9sdGFnZSBtaXNtYXRjaCByZW1haW5zIGluIHRoZSBib290bG9hZGVyIHdoZW4KPj4+
Pj4gdGhpcyBjYXJkIGNvbnRhaW5zIHRoZSBib290IGltYWdlLgo+Pj4+Pgo+Pj4+PiBUaGUgb25s
eSBzYW5lIHdheSBJIHNlZSB0byBoYW5kbGUgdGhpcyBpcyBpbXBsZW1lbnRpbmcgdGhlIHNhbWUK
Pj4+Pj4gd29ya2Fyb3VuZCAobW9kZSBndWVzc2luZykgYWxzbyBpbiB0aGUgYm9vdGxvYWRlciAo
cm9ja2NoaXAgbWluaWxvYWRlcgo+Pj4+PiBhbmQgdS1ib290IFNQTCBzaW5jZSBib3RoIGJvb3Rs
b2FkZXIgY2hhaW5zIGFyZSBzdXBwb3J0ZWQgZm9yIHRoaXMKPj4+Pj4gYm9hcmQpLgo+Pj4+Pgo+
Pj4+PiBPciBtYXliZSBJIG1pc3Mgc29tZXRoaW5nPwo+Pj4+IFRoYW5rcyBmb3IgeW91ciBpbnB1
dCwgSSBoYXZlIG1hZGUgYSBuZXcgc2VyaWVzIFsxXSB3aXRoIGEgc2ltaWxhcgo+Pj4+IGFwcHJv
YWNoIGJ1dCBpcyBsaW1pdGVkIHRvIGR3X21tYy1yb2NrY2hpcAo+Pj4+IGFuZCBvbmx5IGNoYW5n
ZXMgdGhlIHJlZ3VsYXRvciBhdCBwb3dlcl9vZmYgYWZ0ZXIgdGhlIHJlZ3VsYXRvciBoYXMKPj4+
PiBiZWVuIGRpc2FibGVkICh0aGUgdnFtbWMgcmVndWxhdG9yIGluIGFmZmVjdGVkIGRldmljZXMg
aXMgYWx3YXlzLW9uKS4KPj4+IFRoYW5rcyBmb3IgeW91ciB3b3JrIG9uIHRoaXMuIFVuZm9ydHVu
YXRlbHkgSSBzdGlsbCB0aGluayB0aGF0IHRoaXMgaXMKPj4+IHRoZSB3cm9uZyBhcHByb2FjaC4K
Pj4+IEkgc2VlIHNldmVyYWwgcHJvYmxlbXMgaW4geW91ciBwYXRjaCBzZXJpZXM6Cj4+PiAtIFlv
dSBpbnRyb2R1Y2VkIEdQSU8wX1BBMSBhcyByZWd1bGF0b3IgZW5hYmxlIGZvciBSb2NrUHJvNjQu
Cj4+PiBVbmZvcnR1bmF0ZWx5IFBpbmU2NCBkZWNpZGVkIHRvIGRpc2FibGUgdGhpcyByZWd1bGF0
b3Igb24gQm9hcmQgVmVyc2lvbgo+Pj4gMi4xIChyZWFsIHByb2R1Y3QgdmVyc2lvbiksIHNlZSBh
Ym92ZS4gSSBoYXZlIG5vIGlkZWEgd2h5IHRoZXkgZGlkIHRoaXMuCj4+PiAtIFlvdSBjaGFuZ2Vk
IHRoZSBpL28gdm9sdGFnZSBmcm9tIDMuMFYgdG8gMy4zVi4gVGhpcyBpcyBub3QgYWxsb3dlZCBv
bgo+Pj4gUkszMzk5IEkvTyBiYW5rIEYuCj4+Pgo+Pj4gQ2hhbmdpbmcgdGhlIGkvbyB2b2x0YWdl
IHRvIDMuMFYvMy4zViB3aGlsZSB0aGUgc2QgY2FyZCBpcyBjb25maWd1cmVkCj4+PiBmb3IgMS44
ViBpcyBhZ2FpbnN0IHRoZSBzcGVjaWZpY2F0aW9uIGFuZCBkYW5nZXJvdXMuIFdoaWxlIGV4cGVy
aW1lbnRpbmcKPj4+IHdpdGggZGlmZmVyZW50IGltYWdlcyAoYXl1ZmFuLCBhcm1iaWFuKSBmb3Ig
bXkgbmV3bHkgYm91Z2h0IFJvY2tQcm82NCBJCj4+PiBraWxsZWQgYSBTRCBjYXJkICgzMkdCIFNh
bXN1bmcgVUhTLUkpLiBJIGNhbm5vdCByZWNvbnN0cnVjdCB0aGUgZXhhY3QKPj4+IGNpcmN1bXN0
YW5jZXMsIGJ1dCBJJ20gcHJldHR5IHN1cmUgdGhpcyBoYXBwZW5lZCBkdWUgdG8gdGhlIHZvbHRh
Z2UKPj4+IG1pc21hdGNoLiBPZiBjb3Vyc2UgSSdtIG5vdCBrZWVuIHRvIGV4cGVyaW1lbnQgZnVy
dGhlciB3aXRoIHRoaXMgYW5kCj4+PiBraWxsIG1vcmUgc2QgY2FyZHMuIFRoaXMgaXMgbm90IGp1
c3QgYW4gdGhlb3JldGljYWwgaXNzdWUuCj4+Pj4gVG8gbXkga25vd2xlZGdlIHRoZSBwcm9ibGVt
IGlzIG5vdCB3aXRoIHRoZSByb2NrY2hpcCBtaW5pbG9hZGVyIG9yCj4+Pj4gdS1ib290IFNQTCwg
aXQgaXMgdGhlIGluaXRpYWwgYm9vdCByb20gdGhhdCB0cmllcyB0byBsb2FkCj4+Pj4gdGhlIG1p
bmlsb2FkZXIvU1BMIGZyb20gYSBTRC1jYXJkLCBzbyBub3RoaW5nIHRoYXQgY2FuIGJlIHVwZGF0
ZWQuCj4+PiBXaGF0IEkgb2JzZXJ2ZWQgb24gbXkgUm9ja1BybzY0Ogo+Pj4gVGhlIFJPTSBib290
bG9hZGVyIGFsd2F5cyB3YXMgYWJsZSB0byBsb2FkIHRoZSBuZXh0IHN0YWdlLCBtYXliZSBkdWUg
dG8KPj4+IHRoZSBsb3cgaW5pdGlhbCBjbG9jayBvZiA0MDBrSHo/IEFsc28gdGhlIFJPTSBib290
bG9hZGVyIGNhbm5vdCBjaGFuZ2UKPj4+IHZvbHRhZ2UgcmVndWxhdG9yIHNldHRpbmdzLiBTbyBp
ZiB0aGUgaS9vIHZvbHRhZ2Ugc3RpbGwgaXMgYXQgMS44ViBhbmQKPj4+IG1hdGNoaW5nIHRoZSBz
ZCBjYXJkIHNldHRpbmcsIHRoZXJlIGlzIG5vIHByb2JsZW0gZm9yIHRoZSBST00KPj4+IGJvb3Rs
b2FkZXIuCj4+Cj4+IEhtbSwgdGhhdCBtYWtlcyBtZSB3b25kZXIgaWYgdGhlIHByb2JsZW0gbWln
aHQgYmUgbm90IHNvIG11Y2ggdGhhdCB0aGUKPj4gbGV2ZWwgb2YgU0RNTUMwX1ZERCBpdHNlbGYg
c3RheXMgYXQgMS44ViwgYnV0IHRoYXQgYXQgc29tZSBwb2ludCBhZnRlcgo+PiB0aGUgYm9vdHJv
bSB0aGUgR1JGX0lPX1ZTRUwgYml0IGdldHMgcmVzZXQgc28gdGhlIGNvbnRyb2xsZXIganVzdAo+
PiBzdG9wcyBiZWluZyBhYmxlIHRvIHJlYWQgYW55dGhpbmcgYXMgbG9naWMtaGlnaC4KPiBXb3Vs
ZCBiZSBncmVhdCBpZiBzb21lb25lIGZyb20gUm9ja2NoaXAgY291bGQgZ2l2ZSBzb21lIGluc2ln
aHRzIHdoZXRoZXIKPiBhbmQgd2hlbiBkdXJpbmcgcmVib290IEdSRl9JT19WU0VMIGlzIHJlc2V0
IChBVEYgYmVmb3JlIHJlYm9vdCwgc29tZSBTb0MKPiBzb2Z0LXJlc2V0LCBST00gYm9vdGxvYWRl
ciwgcmttaW5pbG9hZGVyLCBzb21ldGhpbmcgZGlmZmVyZW50KSwgU2hhd24/CgpST00gY29kZSBh
bmQgbWluaWxvYWRlciBuZXZlciB0b3VjaCB0aGlzIEdSRl9JT19WU0VMIGZvciBzZG1tYywgYW5k
IG9ubHkKa2VybmVsIGRpZCBzaW5jZSBub3cgaXQgc3VwcG9ydCBVSFMgbW9kZS4gQWZ0ZXIgcmVi
b290LCB0aGUgdmFsdWUgc2hvdWxkCmRlcGVuZHMgb24gdGhlICh2YWx1ZS1pbi1rZXJuZWwgJiYg
ZG9lcy1yZWJvb3QtbGV2ZWwtaG9sZC10aGlzLXJlZz8pCgpEaWZmZXJlbnQgU29DcytQTUlDcyBl
eGN1dGUgZGlmZmVyZW50cyByZWJvb3QgbGV2ZWwgcG9saWN5LgoKCj4gT3IgZ2V0cyB0aGlzIFZT
RUwgY2hhbmdlZCBvbmx5IHdoZW4gc3dpdGNoaW5nIHRoZSB2b2x0YWdlIHJlZ3VsYXRvciAodmlh
Cj4gaW9fZG9tYWlucyxzZG1tYy1zdXBwbHkpPwo+IAo+IFNvZXJlbgo+Pgo+PiBSb2Jpbi4KPj4K
Pj4+IFNvIEkgdGhpbmsgdGhlIG5vcm1hbCByZWJvb3QgaGFuZGxpbmcgc2hvdWxkIGJlOgo+Pj4g
SWYgdGhlIHNkIGNhcmQgY2FuIGJlIHN3aXRjaGVkIG9mZiAocHJlZmVycmVkIHNvbHV0aW9uKSwg
ZG8gc28gYW5kIHJlc2V0Cj4+PiB0aGUgY29udHJvbGxlciBpL28gdm9sdGFnZSB0byAzLjBWLzMu
M1YuCj4+PiBJZiB0aGUgc2QgY2FyZCBjYW4gbm90IGJlIHN3aXRjaGVkIG9mZiwgbWFrZSBzdXJl
IHRvIGxlYXZlIHRoZQo+Pj4gY29udHJvbGxlciBpL28gdm9sdGFnZSBhdCB0aGUgY3VycmVudCBz
ZXR0aW5nLiBNYWtlIHN1cmUgaW4gbGF0ZXIgYm9vdAo+Pj4gc3RhZ2VzIHRvIG5vdCBjaGFuZ2Ug
dGhlIGNvbnRyb2xsZXIgaS9vIHZvbHRhZ2UgdG8gMy4wVi8zLjNWIHdoZW4gdGhlCj4+PiBjYXJk
IGlzIGNvbmZpZ3VyZWQgZm9yIDEuOFYuIEFjY29yZGluZyB0byB0aGUgcGF0Y2ggbWVudGlvbmVk
IGFib3ZlIHRoaXMKPj4+IGJlaGF2aW91ciBhbHJlYWR5IGlzIGltcGxlbWVudGVkIGluIGxpbnV4
LCB3ZSBhbHNvIG5lZWQgdGhpcyBmb3IgdGhlCj4+PiBib290bG9hZGVycy4KPj4+Cj4+PiBSZWdh
cmRzLAo+Pj4gU29lcmVuCj4+Pj4KPj4+PiBJIGhhdmUgb2JzZXJ2ZWQgdGhpcyBpc3N1ZSBvbiB0
aGUgZm9sbG93aW5nIGRldmljZXMsIGFuZCB0aGUgcGF0Y2hlcwo+Pj4+IGF0IFsxXSBtYWtlcyBp
dCBwb3NzaWJsZSB0byByZWJvb3QgZnJvbSBTRC1jYXJkIGFmdGVyIFVIUyBoYXMgYmVlbgo+Pj4+
IGVuYWJsZWQuCj4+Pj4gLSBBc3VzIFRpbmtlciBCb2FyZCAoUkszMjg4KQo+Pj4+IC0gUm9ja2No
aXAgU2FwcGhpcmUgQm9hcmQgKFJLMzM5OSkKPj4+PiAtIFJhZHhhIFJvY2sgUGkgNCAoUkszMzk5
KQo+Pj4+IC0gUGluZTY0IFJvY2tQcm82NCAoUkszMzk5KQo+Pj4+IEFsbCBvZiB0aGUgYWJvdmUg
c2VlbSB0byB1c2UgdGhlIFJLODA4IHJlZ3VsYXRvciBmb3Igc2QgaW8gdm9sdGFnZS4KPj4+Pgo+
Pj4+IFRoZSBST0MtUkszMzI4LUNDIGRpZCBub3QgaGF2ZSB0aGlzIGlzc3VlIGFuZCBzZWVtIHRv
IGF1dG9tYXRpY2FsbHkKPj4+PiByZXNldCB0byAzLjN2Lgo+Pj4+Cj4+Pj4gWzFdCj4+Pj4gaHR0
cHM6Ly9naXRodWIuY29tL0t3aWJvby9saW51eC1yb2NrY2hpcC9jb21wYXJlL25leHQtMjAxOTEw
MTEuLi5uZXh0LTIwMTkxMDExLW1tYwo+Pj4+Cj4+Pj4gUmVnYXJkcywKPj4+PiBKb25hcwo+Pj4+
Cj4+Pj4+IFNvZXJlbgo+Pj4+Pgo+Pj4+Pgo+Pj4+Pj4+IGFsdGhvdWdoIEknbSBub3Qgc3VyZSB3
aGF0IGlmIGFueSBwcm9ncmVzcyBoYXMgYmVlbiBtYWRlIHNpbmNlIHRoZW4uCj4+Pj4+Pj4KPj4+
Pj4+PiBSb2Jpbi4KPj4+Pj4+Pgo+Pj4KPj4+Cj4gCj4gCj4gCj4gCj4gCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
