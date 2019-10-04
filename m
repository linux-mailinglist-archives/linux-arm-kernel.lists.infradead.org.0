Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A84ACBCF6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OCTK/Cor9J5JIyC4vhyA0nYS8U/SzXPMIYPOp98PGnA=; b=FJV+YVMZc0+jyyJkyLDkr8ukR
	3EIlSivvCSqBySVBY0Wu8IXk3kVvJDAYhkAb+qvPQ2/lfRZP2ugd1S9FnvD7HEufhN14FRHK5YQXu
	XO1QuCbq79Budx6VIM+p9t2efNTkC7Id8BCYlJgIQg1EQmeyN3EvPkE9MNbga0yQyv5yQ1XhENiIX
	IuHvqzdWXFjmM8YAJdFnzcg0vYrv2o/TNHusR9EK/aRse2bgVmq8ODgLgGur9iX3K6hZ+qYMTUR5f
	aAdEtIXVxhCQNlZ59oNwJI/rLU8IC/emcpXyiTkN9J+5T5RyQNuCQszGXG2CyeX+ZrXJq2iUHedU7
	ossMHaKqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGORK-0001pw-Ay; Fri, 04 Oct 2019 14:20:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGORA-0001KA-TF; Fri, 04 Oct 2019 14:20:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0216B1597;
 Fri,  4 Oct 2019 07:20:04 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 303E33F68E;
 Fri,  4 Oct 2019 07:20:03 -0700 (PDT)
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_3/3=5d_arm64=3a_dts=3a_rockchip=3a_fix_Roc?=
 =?UTF-8?B?a1BybzY0IHNkbW1jIHNldHRpbmdz44CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGlu?=
 =?UTF-8?Q?ux-rockchip-bounces+shawn=2elin=3drock-chips=2ecom=40lists=2einfr?=
 =?UTF-8?B?YWRlYWQub3Jn5Luj5Y+R44CR?=
To: Soeren Moch <smoch@web.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>
References: <20191003215036.15023-1-smoch@web.de>
 <20191003215036.15023-3-smoch@web.de>
 <31181f3c-20ec-e717-1f7e-8b35cd54d96d@arm.com>
 <a8b20c45-0426-ee42-4efc-52e56ea6bb20@web.de>
 <120e2dbc-55eb-2205-b00f-7e50928ec706@rock-chips.com>
 <1c452b8b-853f-8f58-5f3a-0bbecbe20557@web.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <fc7dce53-ad39-26e3-7c19-ab60ff4cc332@arm.com>
Date: Fri, 4 Oct 2019 15:20:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1c452b8b-853f-8f58-5f3a-0bbecbe20557@web.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_072005_040834_8606ECC3 
X-CRM114-Status: GOOD (  22.93  )
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDQvMTAvMjAxOSAwNDozOSwgU29lcmVuIE1vY2ggd3JvdGU6Cj4gCj4gCj4gT24gMDQuMTAu
MTkgMDQ6MTMsIFNoYXduIExpbiB3cm90ZToKPj4gT24gMjAxOS8xMC80IDg6NTMsIFNvZXJlbiBN
b2NoIHdyb3RlOgo+Pj4KPj4+Cj4+PiBPbiAwNC4xMC4xOSAwMjowMSwgUm9iaW4gTXVycGh5IHdy
b3RlOgo+Pj4+IE9uIDIwMTktMTAtMDMgMTA6NTAgcG0sIFNvZXJlbiBNb2NoIHdyb3RlOgo+Pj4+
PiBBY2NvcmRpbmcgdG8gdGhlIFJvY2tQcm82NCBzY2hlbWF0aWMgWzFdIHRoZSByazMzOTkgc2Rt
bWMKPj4+Pj4gY29udHJvbGxlciBpcwo+Pj4+PiBjb25uZWN0ZWQgdG8gYSBtaWNyb1NEIChURiBj
YXJkKSBzbG90LCB3aGljaCBjYW5ub3QgYmUgc3dpdGNoZWQgdG8KPj4+Pj4gMS44Vi4KPj4+Pgo+
Pj4+IFJlYWxseT8gQUZBSUNTIHRoZSBTRE1NQzAgd2lyaW5nIGxvb2tzIHByZXR0eSBtdWNoIGlk
ZW50aWNhbCB0byB0aGUKPj4+PiBOYW5vUEMtVDQgc2NoZW1hdGljIChpdCdzIHRoZSBzYW1lIHJl
ZmVyZW5jZSBkZXNpZ24sIGFmdGVyIGFsbCksIGFuZCBJCj4+Pj4ga25vdyB0aGF0IGJvYXJkIGNh
biBoYXBwaWx5IGRyaXZlIGEgVUhTLUkgbWljcm9TRCBjYXJkIHdpdGggMS44diBJL09zLAo+Pj4+
IGJlY2F1c2UgbWluZSdzIGRvaW5nIHNvIHJpZ2h0IG5vdy4KPj4+Pgo+Pj4+IFJvYmluLgo+Pj4g
T0ssIHRoZSBSb2NrUHJvNjQgZG9lcyBub3QgYWxsb3cgYSBjYXJkIHJlc2V0IChwb3dlciBjeWNs
ZSkgc2luY2UKPj4+IFZDQzNWMF9TRCBpcyBkaXJlY3RseSBjb25uZWN0ZWQgdG8gVkNDM1YzX1NZ
UyAodmlhIFI4OTU1NSksIHRoZQo+Pj4gU0RNTUMwX1BXSF9IIHNpZ25hbCBpcyBub3QgY29ubmVj
dGVkLiBTbyB0aGUgY2FyZCBmYWlscyB0byBpZGVudGlmeQo+Pj4gaXRzZWxmIGFmdGVyIHN1c3Bl
bmQgb3IgcmVib290IHdoZW4gc3dpdGNoZWQgdG8gMS44ViBvcGVyYXRpb24uCgpBaCwgdGhhbmtz
IGZvciBjbGFyaWZ5aW5nIC0gSSBkaWQgb3Zlcmxvb2sgdGhlIHN1YnRsZXR5IHRoYXQgVTEyIGFu
ZCAKZnJpZW5kcyBoYXZlICJOQyIgYXMgYWx0ZXJuYXRpdmUgcGFydCBudW1iZXJzLCBldmVuIHRo
b3VnaCB0aGV5IGFyZW4ndCAKYWN0dWFsbHkgbWFya2VkIGFzIEROUC4gU28gaXQncyBzdGlsbCBu
b3Qgc28gbXVjaCAiY2Fubm90IGJlIHN3aXRjaGVkIiAKYXMgInN3aXRjaGluZyBjYW4gbGVhZCB0
byBvdGhlciBwcm9ibGVtcyIuCgo+Pgo+PiBJIGJlbGlldmUgd2UgYWRkcmVzc2VkIHRoaXMgaXNz
dWUgbG9uZyB0aW1lIGFnbywgcGxlYXNlIGNoZWNrOgo+Pgo+PiBodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvY29tbWl0Lz9p
ZD02YTExZmM0N2YxNzVjOGQ4NzAxOGU4OWNiNThlMmQzNmM2NjUzNGNiCj4+Cj4gVGhhbmtzIGZv
ciB0aGUgcG9pbnRlci4KPiBJbiB0aGlzIGNhc2UgSSBndWVzcyBJIHNob3VsZCB1c2UgZm9sbG93
aW5nIHBhdGNoIGluc3RlYWQ6Cj4gCj4gLS0tIHJrMzM5OS1yb2NrcHJvNjQuZHRzLmJhayDCoMKg
IDIwMTktMTAtMDMgMjI6MTQ6MDAuMDY3NzQ1Nzk5ICswMjAwCj4gKysrIHJrMzM5OS1yb2NrcHJv
NjQuZHRzwqDCoMKgIDIwMTktMTAtMDQgMDA6MDI6NTAuMDQ3ODkyMzY2ICswMjAwCj4gQEAgLTYx
OSw2ICs2MTksOCBAQAo+ICDCoMKgwqDCoCBtYXgtZnJlcXVlbmN5ID0gPDE1MDAwMDAwMD47Cj4g
IMKgwqDCoMKgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gIMKgwqDCoMKgIHBpbmN0cmwt
MCA9IDwmc2RtbWNfY2xrICZzZG1tY19jbWQgJnNkbW1jX2J1czQ+Owo+ICvCoMKgwqAgc2QtdWhz
LXNkcjEwNDsKPiArwqDCoMKgIHZxbW1jLXN1cHBseSA9IDwmdmNjX3NkaW8+Owo+ICDCoMKgwqDC
oCBzdGF0dXMgPSAib2theSI7Cj4gIMKgfTsKPiAgIAo+IFdoZW4gSSBkbyBzbywgdGhlIHNkIGNh
cmQgaXMgZGV0ZWN0ZWQgYXMgU0RSMTA0LCBidXQgYSByZWJvb3QgaGFuZ3M6Cj4gCj4gQm9vdDE6
IDIwMTgtMDYtMjYsIHZlcnNpb246IDEuMTQKPiBDUFVJZCA9IDB4MAo+IENoaXBUeXBlID0gMHgx
MCwgMjg2Cj4gU3BpX0NoaXBJZCA9IGM4NDAxOAo+IG5vIGZpbmQgcmtwYXJ0aXRpb24KPiBTcGlC
b290SW5pdDpmZmZmZmZmZgo+IG1tYzogRVJST1I6IFNESENJIEVSUjpjbWQ6MHgxMDIsc3RhdDow
eDE4MDAwCj4gbW1jOiBFUlJPUjogQ2FyZCBkaWQgbm90IHJlc3BvbmQgdG8gdm9sdGFnZSBzZWxl
Y3QhCj4gZW1tYyByZWluaXQKPiBtbWM6IEVSUk9SOiBTREhDSSBFUlI6Y21kOjB4MTAyLHN0YXQ6
MHgxODAwMAo+IG1tYzogRVJST1I6IENhcmQgZGlkIG5vdCByZXNwb25kIHRvIHZvbHRhZ2Ugc2Vs
ZWN0IQo+IGVtbWMgcmVpbml0Cj4gbW1jOiBFUlJPUjogU0RIQ0kgRVJSOmNtZDoweDEwMixzdGF0
OjB4MTgwMDAKPiBtbWM6IEVSUk9SOiBDYXJkIGRpZCBub3QgcmVzcG9uZCB0byB2b2x0YWdlIHNl
bGVjdCEKPiBTZG1tY0luaXQ9MiAxCj4gbW1jMDpjbWQ1LDMyCj4gbW1jMDpjbWQ3LDMyCj4gbW1j
MDpjbWQ1LDMyCj4gbW1jMDpjbWQ3LDMyCj4gbW1jMDpjbWQ1LDMyCj4gbW1jMDpjbWQ3LDMyCj4g
U2RtbWNJbml0PTAgMQo+IAo+IFNvIEkgZ3Vlc3MgSSBzaG91bGQgdXNlIGEgZGlmZmVyZW50IG1p
bmlsb2FkZXIgZm9yIHRoaXMgcmVib290IHRvIHdvcmshPwo+IE9yIHdoYXQgZWxzZSBjb3VsZCBi
ZSB3cm9uZyBoZXJlPwoKSG1tLCBJIGd1ZXNzIHRoaXMgaXMgInRoZSBUaW5rZXJib2FyZCBwcm9i
bGVtIiBhZ2FpbiAtIHRoZSBwYXRjaCBhYm92ZSAKd291bGQgYmUgT0sgaWYgd2UgY291bGQgZ2V0
IGFzIGZhciBhcyB0aGUga2VybmVsLCBidXQgY2FuJ3QgaGVscCBpZiB0aGUgCm9mZmVuZGluZyBj
YXJkIGlzIGl0c2VsZiB0aGUgYm9vdCBtZWRpdW0uIFRoZXJlIHdhcyBhIHByb3Bvc2FsIGhlcmU6
CgpodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEwODE3MjE3LwoKYWx0aG91Z2gg
SSdtIG5vdCBzdXJlIHdoYXQgaWYgYW55IHByb2dyZXNzIGhhcyBiZWVuIG1hZGUgc2luY2UgdGhl
bi4KClJvYmluLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
