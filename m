Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E3CD4056
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 15:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iqE5BrKxiA8qV5S0kuGtGEfyzlfFjAGzidIkD29nWN0=; b=bBXEjI7rHqOAB0GU/+mWLuvbm
	veW1ULr4mW1E4X+Wp9pKYt1oHsPo0QH87RhhMjFU1SSvGJ4WeF/IiqbuMyIDcXptJV909LcG7Yrn9
	CmGE3lJmSEwHwBimfbV1HIHlxuAT0AfBGQTkYR4YlpDRUa2rz/8jYde1aDbCk3Kgy9/EqjuHp4s5U
	RSqO0LQwNiJ7rvOi7NL15iN/MdXlIlYy5RL03ErWTbLGNMxWyYl0K4j1urH73XRFgETvlRNV6p0GQ
	QR7iyl5l/9PQTQmt1thRBWIzwbWrfkW0Vz8Oe4TEC4cTMEwksINyMn6P0tLGHSPQXlKHXg8XYNGME
	GZdotWj1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIuZ9-0006RT-7d; Fri, 11 Oct 2019 13:02:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuX1-0004Iz-9d; Fri, 11 Oct 2019 13:00:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CB86128;
 Fri, 11 Oct 2019 06:00:30 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B9CD53F6C4;
 Fri, 11 Oct 2019 06:00:29 -0700 (PDT)
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: fix RockPro64 sdmmc settings
To: Soeren Moch <smoch@web.de>, Jonas Karlman <jonas@kwiboo.se>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
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
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <64a7d056-28d0-b6d8-6148-b98b58265c08@arm.com>
Date: Fri, 11 Oct 2019 14:00:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <13064e01-9472-fc4d-2c7f-c186fa2a9a91@web.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_060031_462824_3AC3CA5B 
X-CRM114-Status: GOOD (  39.24  )
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
Cc: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTEvMTAvMjAxOSAxMjo0MCwgU29lcmVuIE1vY2ggd3JvdGU6Cj4gCj4gCj4gT24gMTEuMTAu
MTkgMTA6MjIsIEpvbmFzIEthcmxtYW4gd3JvdGU6Cj4+IE9uIDIwMTktMTAtMDQgMTk6MjQsIFPD
tnJlbiBNb2NoIHdyb3RlOgo+Pj4gT24gMDQuMTAuMTkgMTc6MzMsIFNoYXduIExpbiB3cm90ZToK
Pj4+PiBPbiAyMDE5LzEwLzQgMjI6MjAsIFJvYmluIE11cnBoeSB3cm90ZToKPj4+Pj4gT24gMDQv
MTAvMjAxOSAwNDozOSwgU29lcmVuIE1vY2ggd3JvdGU6Cj4+Pj4+PiBPbiAwNC4xMC4xOSAwNDox
MywgU2hhd24gTGluIHdyb3RlOgo+Pj4+Pj4+IE9uIDIwMTkvMTAvNCA4OjUzLCBTb2VyZW4gTW9j
aCB3cm90ZToKPj4+Pj4+Pj4gT24gMDQuMTAuMTkgMDI6MDEsIFJvYmluIE11cnBoeSB3cm90ZToK
Pj4+Pj4+Pj4+IE9uIDIwMTktMTAtMDMgMTA6NTAgcG0sIFNvZXJlbiBNb2NoIHdyb3RlOgo+Pj4+
Pj4+Pj4+IEFjY29yZGluZyB0byB0aGUgUm9ja1BybzY0IHNjaGVtYXRpYyBbMV0gdGhlIHJrMzM5
OSBzZG1tYwo+Pj4+Pj4+Pj4+IGNvbnRyb2xsZXIgaXMKPj4+Pj4+Pj4+PiBjb25uZWN0ZWQgdG8g
YSBtaWNyb1NEIChURiBjYXJkKSBzbG90LCB3aGljaCBjYW5ub3QgYmUgc3dpdGNoZWQgdG8KPj4+
Pj4+Pj4+PiAxLjhWLgo+Pj4+Pj4+Pj4gUmVhbGx5PyBBRkFJQ1MgdGhlIFNETU1DMCB3aXJpbmcg
bG9va3MgcHJldHR5IG11Y2ggaWRlbnRpY2FsIHRvIHRoZQo+Pj4+Pj4+Pj4gTmFub1BDLVQ0IHNj
aGVtYXRpYyAoaXQncyB0aGUgc2FtZSByZWZlcmVuY2UgZGVzaWduLCBhZnRlciBhbGwpLAo+Pj4+
Pj4+Pj4gYW5kIEkKPj4+Pj4+Pj4+IGtub3cgdGhhdCBib2FyZCBjYW4gaGFwcGlseSBkcml2ZSBh
IFVIUy1JIG1pY3JvU0QgY2FyZCB3aXRoIDEuOHYKPj4+Pj4+Pj4+IEkvT3MsCj4+Pj4+Pj4+PiBi
ZWNhdXNlIG1pbmUncyBkb2luZyBzbyByaWdodCBub3cuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gUm9i
aW4uCj4+Pj4+Pj4+IE9LLCB0aGUgUm9ja1BybzY0IGRvZXMgbm90IGFsbG93IGEgY2FyZCByZXNl
dCAocG93ZXIgY3ljbGUpIHNpbmNlCj4+Pj4+Pj4+IFZDQzNWMF9TRCBpcyBkaXJlY3RseSBjb25u
ZWN0ZWQgdG8gVkNDM1YzX1NZUyAodmlhIFI4OTU1NSksIHRoZQo+Pj4+Pj4+PiBTRE1NQzBfUFdI
X0ggc2lnbmFsIGlzIG5vdCBjb25uZWN0ZWQuIFNvIHRoZSBjYXJkIGZhaWxzIHRvIGlkZW50aWZ5
Cj4+Pj4+Pj4+IGl0c2VsZiBhZnRlciBzdXNwZW5kIG9yIHJlYm9vdCB3aGVuIHN3aXRjaGVkIHRv
IDEuOFYgb3BlcmF0aW9uLgo+Pj4+PiBBaCwgdGhhbmtzIGZvciBjbGFyaWZ5aW5nIC0gSSBkaWQg
b3Zlcmxvb2sgdGhlIHN1YnRsZXR5IHRoYXQgVTEyIGFuZAo+Pj4+PiBmcmllbmRzIGhhdmUgIk5D
IiBhcyBhbHRlcm5hdGl2ZSBwYXJ0IG51bWJlcnMsIGV2ZW4gdGhvdWdoIHRoZXkKPj4+Pj4gYXJl
bid0IGFjdHVhbGx5IG1hcmtlZCBhcyBETlAuIFNvIGl0J3Mgc3RpbGwgbm90IHNvIG11Y2ggImNh
bm5vdCBiZQo+Pj4+PiBzd2l0Y2hlZCIgYXMgInN3aXRjaGluZyBjYW4gbGVhZCB0byBvdGhlciBw
cm9ibGVtcyIuCj4+Pj4+Cj4+Pj4+Pj4gSSBiZWxpZXZlIHdlIGFkZHJlc3NlZCB0aGlzIGlzc3Vl
IGxvbmcgdGltZSBhZ28sIHBsZWFzZSBjaGVjazoKPj4+Pj4+Pgo+Pj4+Pj4+IGh0dHBzOi8vZ2l0
Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9j
b21taXQvP2lkPTZhMTFmYzQ3ZjE3NWM4ZDg3MDE4ZTg5Y2I1OGUyZDM2YzY2NTM0Y2IKPj4+Pj4+
Pgo+Pj4+Pj4+Cj4+Pj4+PiBUaGFua3MgZm9yIHRoZSBwb2ludGVyLgo+Pj4+Pj4gSW4gdGhpcyBj
YXNlIEkgZ3Vlc3MgSSBzaG91bGQgdXNlIGZvbGxvd2luZyBwYXRjaCBpbnN0ZWFkOgo+Pj4+Pj4K
Pj4+Pj4+IC0tLSByazMzOTktcm9ja3BybzY0LmR0cy5iYWsgwqDCoCAyMDE5LTEwLTAzIDIyOjE0
OjAwLjA2Nzc0NTc5OSArMDIwMAo+Pj4+Pj4gKysrIHJrMzM5OS1yb2NrcHJvNjQuZHRzwqDCoMKg
IDIwMTktMTAtMDQgMDA6MDI6NTAuMDQ3ODkyMzY2ICswMjAwCj4+Pj4+PiBAQCAtNjE5LDYgKzYx
OSw4IEBACj4+Pj4+PiAgwqDCoMKgwqDCoCBtYXgtZnJlcXVlbmN5ID0gPDE1MDAwMDAwMD47Cj4+
Pj4+PiAgwqDCoMKgwqDCoCBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+Pj4+Pj4gIMKgwqDC
oMKgwqAgcGluY3RybC0wID0gPCZzZG1tY19jbGsgJnNkbW1jX2NtZCAmc2RtbWNfYnVzND47Cj4+
Pj4+PiArwqDCoMKgIHNkLXVocy1zZHIxMDQ7Cj4+Pj4+PiArwqDCoMKgIHZxbW1jLXN1cHBseSA9
IDwmdmNjX3NkaW8+Owo+Pj4+Pj4gIMKgwqDCoMKgwqAgc3RhdHVzID0gIm9rYXkiOwo+Pj4+Pj4g
IMKgwqB9Owo+Pj4+Pj4gV2hlbiBJIGRvIHNvLCB0aGUgc2QgY2FyZCBpcyBkZXRlY3RlZCBhcyBT
RFIxMDQsIGJ1dCBhIHJlYm9vdCBoYW5nczoKPj4+Pj4+Cj4+Pj4+PiBCb290MTogMjAxOC0wNi0y
NiwgdmVyc2lvbjogMS4xNAo+Pj4+Pj4gQ1BVSWQgPSAweDAKPj4+Pj4+IENoaXBUeXBlID0gMHgx
MCwgMjg2Cj4+Pj4+PiBTcGlfQ2hpcElkID0gYzg0MDE4Cj4+Pj4+PiBubyBmaW5kIHJrcGFydGl0
aW9uCj4+Pj4+PiBTcGlCb290SW5pdDpmZmZmZmZmZgo+Pj4+Pj4gbW1jOiBFUlJPUjogU0RIQ0kg
RVJSOmNtZDoweDEwMixzdGF0OjB4MTgwMDAKPj4+Pj4+IG1tYzogRVJST1I6IENhcmQgZGlkIG5v
dCByZXNwb25kIHRvIHZvbHRhZ2Ugc2VsZWN0IQo+Pj4+Pj4gZW1tYyByZWluaXQKPj4+Pj4+IG1t
YzogRVJST1I6IFNESENJIEVSUjpjbWQ6MHgxMDIsc3RhdDoweDE4MDAwCj4+Pj4+PiBtbWM6IEVS
Uk9SOiBDYXJkIGRpZCBub3QgcmVzcG9uZCB0byB2b2x0YWdlIHNlbGVjdCEKPj4+Pj4+IGVtbWMg
cmVpbml0Cj4+Pj4+PiBtbWM6IEVSUk9SOiBTREhDSSBFUlI6Y21kOjB4MTAyLHN0YXQ6MHgxODAw
MAo+Pj4+Pj4gbW1jOiBFUlJPUjogQ2FyZCBkaWQgbm90IHJlc3BvbmQgdG8gdm9sdGFnZSBzZWxl
Y3QhCj4+Pj4+PiBTZG1tY0luaXQ9MiAxCj4+Pj4+PiBtbWMwOmNtZDUsMzIKPj4+Pj4+IG1tYzA6
Y21kNywzMgo+Pj4+Pj4gbW1jMDpjbWQ1LDMyCj4+Pj4+PiBtbWMwOmNtZDcsMzIKPj4+Pj4+IG1t
YzA6Y21kNSwzMgo+Pj4+Pj4gbW1jMDpjbWQ3LDMyCj4+Pj4+PiBTZG1tY0luaXQ9MCAxCj4+Pj4+
Pgo+Pj4+Pj4gU28gSSBndWVzcyBJIHNob3VsZCB1c2UgYSBkaWZmZXJlbnQgbWluaWxvYWRlciBm
b3IgdGhpcyByZWJvb3QgdG8KPj4+Pj4+IHdvcmshPwo+Pj4+Pj4gT3Igd2hhdCBlbHNlIGNvdWxk
IGJlIHdyb25nIGhlcmU/Cj4+Pj4+IEhtbSwgSSBndWVzcyB0aGlzIGlzICJ0aGUgVGlua2VyYm9h
cmQgcHJvYmxlbSIgYWdhaW4gLSB0aGUgcGF0Y2gKPj4+Pj4gYWJvdmUgd291bGQgYmUgT0sgaWYg
d2UgY291bGQgZ2V0IGFzIGZhciBhcyB0aGUga2VybmVsLCBidXQgY2FuJ3QKPj4+Pj4gaGVscCBp
ZiB0aGUKPj4+PiBJIGRpZG4ndCByZWFsaXplIHRoYXQgU0Qgd2FzIHVzZWQgYXMgYm9vdCBtZWRp
dW0gZm9yIFJvY2tQcm82NCwgYnV0IEkKPj4+PiBkaWQgcGF0Y2ggdGhlIHZlbmRvciB0cmVlIHRv
IHNvbHZlIHRoZSBpc3N1ZSBmb3IgVGlua2VyYm9hcmQsIHNlZQo+Pj4+IGh0dHBzOi8vZ2l0aHVi
LmNvbS9yb2NrY2hpcC1saW51eC9rZXJuZWwvY29tbWl0L2E0Y2NkZTIxZjVhOWYwNGY5OTZmYjAy
NDc5Y2I5ZjE2ZDNkYzhkYzAKPj4+Pgo+Pj4+Cj4+Pj4gTXkgaW5pdGlhbCBwbGFuIHdhcyB0byBw
YXRjaGluZyB1cHN0cmVhbSBrZXJuZWwgYnkgYWRkaW5nIC0+c2h1dGRvd24sYnV0Cj4+Pj4gbmV2
ZXIgZmluaXNoIGl0Lgo+Pj4+Cj4+Pj4+IG9mZmVuZGluZyBjYXJkIGlzIGl0c2VsZiB0aGUgYm9v
dCBtZWRpdW0uIFRoZXJlIHdhcyBhIHByb3Bvc2FsIGhlcmU6Cj4+Pj4+Cj4+Pj4+IGh0dHBzOi8v
cGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA4MTcyMTcvCj4+Pj4gVGhpcyBSRkMgYWxzbyBs
b29rcyBnb29kIHRvIG1lLCBidXQgc2VlbXMgaXQgbmVlZHMgdm9sdW50ZWVycwo+Pj4+IHRvIHB1
c2ggaXQgYWdhaW4uCj4+PiBPaCwgSSB0aGluayB0aGlzIGlzIGEgdG90YWxseSB3cm9uZyB3YXku
Cj4+Pgo+Pj4gV2hpbGUgdGhpcyBtaWdodCB3b3JrIGZvciBzb21lIGNhcmRzLCBzZXR0aW5nIHRo
ZSBjb250cm9sbGVyJ3MgaS9vCj4+PiB2b2x0YWdlIHRvIDMuM1Ygd2hpbGUgbGVhdmluZyB0aGUg
Y2FyZCBhdCAxLjhWIGNvbmZpZ3VyYXRpb24gaXMgdG90YWxseQo+Pj4gYWdhaW5zdCB0aGUgc3Bl
Y2lmaWNhdGlvbiwgY2FuIGxlYWQgdG8gYWxsIGtpbmRzIG9mIHN0cmFuZ2UgYmVoYXZpb3VyCj4+
PiBhbmQgZXZlbiBjYXVzZSBoYXJkd2FyZSBkYW1hZ2UuIEl0IGFsc28gd291bGQgYWN0aXZlbHkg
ZGVmZW5kIHRoZQo+Pj4gcHVycG9zZSBvZiB0aGUgYWJvdmUgbWVudGlvbmVkIHBhdGNoICg2YTEx
ZmM0KSB3aGVyZSB0aGUga2VybmVsIGd1ZXNzZXMKPj4+IHRoZSBpL28gdm9sdGFnZSBmcm9tIHRo
ZSBjYXJkIGNvbmZpZ3VyYXRpb24gYW5kIHN3aXRjaGVzIHRoZSBjb250cm9sbGVyCj4+PiBhY2Nv
cmRpbmdseS4gV2Ugd291bGQgZW5kIHVwIHdpdGggYSAxLjhWIGNhcmQgYW5kIGNvbnRyb2xsZXIK
Pj4+IGNvbmZpZ3VyYXRpb24gYW5kIGEgcmVndWxhdG9yIHZvbHRhZ2Ugb2YgMy4zVi4gVGhpcyB3
b3VsZCBvbmx5IHdvcmsgd2l0aAo+Pj4gZ29vZCBsdWNrLiBFdmVuIGlmIHRoZSBrZXJuZWwgZHJp
dmVyIHdvdWxkIHN3aXRjaCB0aGUgcmVndWxhdG9yIGJhY2sgdG8KPj4+IDEuOFYgaW4gdGhpcyBj
YXNlLCB0aGUgdm9sdGFnZSBtaXNtYXRjaCByZW1haW5zIGluIHRoZSBib290bG9hZGVyIHdoZW4K
Pj4+IHRoaXMgY2FyZCBjb250YWlucyB0aGUgYm9vdCBpbWFnZS4KPj4+Cj4+PiBUaGUgb25seSBz
YW5lIHdheSBJIHNlZSB0byBoYW5kbGUgdGhpcyBpcyBpbXBsZW1lbnRpbmcgdGhlIHNhbWUKPj4+
IHdvcmthcm91bmQgKG1vZGUgZ3Vlc3NpbmcpIGFsc28gaW4gdGhlIGJvb3Rsb2FkZXIgKHJvY2tj
aGlwIG1pbmlsb2FkZXIKPj4+IGFuZCB1LWJvb3QgU1BMIHNpbmNlIGJvdGggYm9vdGxvYWRlciBj
aGFpbnMgYXJlIHN1cHBvcnRlZCBmb3IgdGhpcyBib2FyZCkuCj4+Pgo+Pj4gT3IgbWF5YmUgSSBt
aXNzIHNvbWV0aGluZz8KPj4gVGhhbmtzIGZvciB5b3VyIGlucHV0LCBJIGhhdmUgbWFkZSBhIG5l
dyBzZXJpZXMgWzFdIHdpdGggYSBzaW1pbGFyIGFwcHJvYWNoIGJ1dCBpcyBsaW1pdGVkIHRvIGR3
X21tYy1yb2NrY2hpcAo+PiBhbmQgb25seSBjaGFuZ2VzIHRoZSByZWd1bGF0b3IgYXQgcG93ZXJf
b2ZmIGFmdGVyIHRoZSByZWd1bGF0b3IgaGFzIGJlZW4gZGlzYWJsZWQgKHRoZSB2cW1tYyByZWd1
bGF0b3IgaW4gYWZmZWN0ZWQgZGV2aWNlcyBpcyBhbHdheXMtb24pLgo+IFRoYW5rcyBmb3IgeW91
ciB3b3JrIG9uIHRoaXMuIFVuZm9ydHVuYXRlbHkgSSBzdGlsbCB0aGluayB0aGF0IHRoaXMgaXMK
PiB0aGUgd3JvbmcgYXBwcm9hY2guCj4gSSBzZWUgc2V2ZXJhbCBwcm9ibGVtcyBpbiB5b3VyIHBh
dGNoIHNlcmllczoKPiAtIFlvdSBpbnRyb2R1Y2VkIEdQSU8wX1BBMSBhcyByZWd1bGF0b3IgZW5h
YmxlIGZvciBSb2NrUHJvNjQuCj4gVW5mb3J0dW5hdGVseSBQaW5lNjQgZGVjaWRlZCB0byBkaXNh
YmxlIHRoaXMgcmVndWxhdG9yIG9uIEJvYXJkIFZlcnNpb24KPiAyLjEgKHJlYWwgcHJvZHVjdCB2
ZXJzaW9uKSwgc2VlIGFib3ZlLiBJIGhhdmUgbm8gaWRlYSB3aHkgdGhleSBkaWQgdGhpcy4KPiAt
IFlvdSBjaGFuZ2VkIHRoZSBpL28gdm9sdGFnZSBmcm9tIDMuMFYgdG8gMy4zVi4gVGhpcyBpcyBu
b3QgYWxsb3dlZCBvbgo+IFJLMzM5OSBJL08gYmFuayBGLgo+IAo+IENoYW5naW5nIHRoZSBpL28g
dm9sdGFnZSB0byAzLjBWLzMuM1Ygd2hpbGUgdGhlIHNkIGNhcmQgaXMgY29uZmlndXJlZAo+IGZv
ciAxLjhWIGlzIGFnYWluc3QgdGhlIHNwZWNpZmljYXRpb24gYW5kIGRhbmdlcm91cy4gV2hpbGUg
ZXhwZXJpbWVudGluZwo+IHdpdGggZGlmZmVyZW50IGltYWdlcyAoYXl1ZmFuLCBhcm1iaWFuKSBm
b3IgbXkgbmV3bHkgYm91Z2h0IFJvY2tQcm82NCBJCj4ga2lsbGVkIGEgU0QgY2FyZCAoMzJHQiBT
YW1zdW5nIFVIUy1JKS4gSSBjYW5ub3QgcmVjb25zdHJ1Y3QgdGhlIGV4YWN0Cj4gY2lyY3Vtc3Rh
bmNlcywgYnV0IEknbSBwcmV0dHkgc3VyZSB0aGlzIGhhcHBlbmVkIGR1ZSB0byB0aGUgdm9sdGFn
ZQo+IG1pc21hdGNoLiBPZiBjb3Vyc2UgSSdtIG5vdCBrZWVuIHRvIGV4cGVyaW1lbnQgZnVydGhl
ciB3aXRoIHRoaXMgYW5kCj4ga2lsbCBtb3JlIHNkIGNhcmRzLiBUaGlzIGlzIG5vdCBqdXN0IGFu
IHRoZW9yZXRpY2FsIGlzc3VlLgo+PiBUbyBteSBrbm93bGVkZ2UgdGhlIHByb2JsZW0gaXMgbm90
IHdpdGggdGhlIHJvY2tjaGlwIG1pbmlsb2FkZXIgb3IgdS1ib290IFNQTCwgaXQgaXMgdGhlIGlu
aXRpYWwgYm9vdCByb20gdGhhdCB0cmllcyB0byBsb2FkCj4+IHRoZSBtaW5pbG9hZGVyL1NQTCBm
cm9tIGEgU0QtY2FyZCwgc28gbm90aGluZyB0aGF0IGNhbiBiZSB1cGRhdGVkLgo+IFdoYXQgSSBv
YnNlcnZlZCBvbiBteSBSb2NrUHJvNjQ6Cj4gVGhlIFJPTSBib290bG9hZGVyIGFsd2F5cyB3YXMg
YWJsZSB0byBsb2FkIHRoZSBuZXh0IHN0YWdlLCBtYXliZSBkdWUgdG8KPiB0aGUgbG93IGluaXRp
YWwgY2xvY2sgb2YgNDAwa0h6PyBBbHNvIHRoZSBST00gYm9vdGxvYWRlciBjYW5ub3QgY2hhbmdl
Cj4gdm9sdGFnZSByZWd1bGF0b3Igc2V0dGluZ3MuIFNvIGlmIHRoZSBpL28gdm9sdGFnZSBzdGls
bCBpcyBhdCAxLjhWIGFuZAo+IG1hdGNoaW5nIHRoZSBzZCBjYXJkIHNldHRpbmcsIHRoZXJlIGlz
IG5vIHByb2JsZW0gZm9yIHRoZSBST00gYm9vdGxvYWRlci4KCkhtbSwgdGhhdCBtYWtlcyBtZSB3
b25kZXIgaWYgdGhlIHByb2JsZW0gbWlnaHQgYmUgbm90IHNvIG11Y2ggdGhhdCB0aGUgCmxldmVs
IG9mIFNETU1DMF9WREQgaXRzZWxmIHN0YXlzIGF0IDEuOFYsIGJ1dCB0aGF0IGF0IHNvbWUgcG9p
bnQgYWZ0ZXIgCnRoZSBib290cm9tIHRoZSBHUkZfSU9fVlNFTCBiaXQgZ2V0cyByZXNldCBzbyB0
aGUgY29udHJvbGxlciBqdXN0IHN0b3BzIApiZWluZyBhYmxlIHRvIHJlYWQgYW55dGhpbmcgYXMg
bG9naWMtaGlnaC4KClJvYmluLgoKPiBTbyBJIHRoaW5rIHRoZSBub3JtYWwgcmVib290IGhhbmRs
aW5nIHNob3VsZCBiZToKPiBJZiB0aGUgc2QgY2FyZCBjYW4gYmUgc3dpdGNoZWQgb2ZmIChwcmVm
ZXJyZWQgc29sdXRpb24pLCBkbyBzbyBhbmQgcmVzZXQKPiB0aGUgY29udHJvbGxlciBpL28gdm9s
dGFnZSB0byAzLjBWLzMuM1YuCj4gSWYgdGhlIHNkIGNhcmQgY2FuIG5vdCBiZSBzd2l0Y2hlZCBv
ZmYsIG1ha2Ugc3VyZSB0byBsZWF2ZSB0aGUKPiBjb250cm9sbGVyIGkvbyB2b2x0YWdlIGF0IHRo
ZSBjdXJyZW50IHNldHRpbmcuIE1ha2Ugc3VyZSBpbiBsYXRlciBib290Cj4gc3RhZ2VzIHRvIG5v
dCBjaGFuZ2UgdGhlIGNvbnRyb2xsZXIgaS9vIHZvbHRhZ2UgdG8gMy4wVi8zLjNWIHdoZW4gdGhl
Cj4gY2FyZCBpcyBjb25maWd1cmVkIGZvciAxLjhWLiBBY2NvcmRpbmcgdG8gdGhlIHBhdGNoIG1l
bnRpb25lZCBhYm92ZSB0aGlzCj4gYmVoYXZpb3VyIGFscmVhZHkgaXMgaW1wbGVtZW50ZWQgaW4g
bGludXgsIHdlIGFsc28gbmVlZCB0aGlzIGZvciB0aGUKPiBib290bG9hZGVycy4KPiAKPiBSZWdh
cmRzLAo+IFNvZXJlbgo+Pgo+PiBJIGhhdmUgb2JzZXJ2ZWQgdGhpcyBpc3N1ZSBvbiB0aGUgZm9s
bG93aW5nIGRldmljZXMsIGFuZCB0aGUgcGF0Y2hlcyBhdCBbMV0gbWFrZXMgaXQgcG9zc2libGUg
dG8gcmVib290IGZyb20gU0QtY2FyZCBhZnRlciBVSFMgaGFzIGJlZW4gZW5hYmxlZC4KPj4gLSBB
c3VzIFRpbmtlciBCb2FyZCAoUkszMjg4KQo+PiAtIFJvY2tjaGlwIFNhcHBoaXJlIEJvYXJkIChS
SzMzOTkpCj4+IC0gUmFkeGEgUm9jayBQaSA0IChSSzMzOTkpCj4+IC0gUGluZTY0IFJvY2tQcm82
NCAoUkszMzk5KQo+PiBBbGwgb2YgdGhlIGFib3ZlIHNlZW0gdG8gdXNlIHRoZSBSSzgwOCByZWd1
bGF0b3IgZm9yIHNkIGlvIHZvbHRhZ2UuCj4+Cj4+IFRoZSBST0MtUkszMzI4LUNDIGRpZCBub3Qg
aGF2ZSB0aGlzIGlzc3VlIGFuZCBzZWVtIHRvIGF1dG9tYXRpY2FsbHkgcmVzZXQgdG8gMy4zdi4K
Pj4KPj4gWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9Ld2lib28vbGludXgtcm9ja2NoaXAvY29tcGFy
ZS9uZXh0LTIwMTkxMDExLi4ubmV4dC0yMDE5MTAxMS1tbWMKPj4KPj4gUmVnYXJkcywKPj4gSm9u
YXMKPj4KPj4+IFNvZXJlbgo+Pj4KPj4+Cj4+Pj4+IGFsdGhvdWdoIEknbSBub3Qgc3VyZSB3aGF0
IGlmIGFueSBwcm9ncmVzcyBoYXMgYmVlbiBtYWRlIHNpbmNlIHRoZW4uCj4+Pj4+Cj4+Pj4+IFJv
YmluLgo+Pj4+Pgo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
