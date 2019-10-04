Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83393CC1AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 19:25:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mDq7SlxLmX+VncoKWn3hszVJ8tQzpxFHURnE7kY1Veo=; b=C/JBrzXo/ZpYre
	C4jvG5Dn0ZigpVQgQ+htBUSt1qNw/xwryEn2Xk3NYQSJRfqpEW8P+ayNUZkzJk/RTKDaZe8lXulb8
	MJZUH37qjPVcxi4R7OkZ47d6EaGE8lk93XydY5ua/YbLoE9MaBJXls1fb+X9n6FaQ+O0VWJjTyYxD
	afKPrt5PqvOv82YeXWwK1A6xsNDGJDTW8NtmoEJlVEdwEDQi5h87hp5aqtfJ5X2gaOu1mcWmTvxPZ
	IP7H27Se5Yac6slwfwEirNRH3FnLDk/6uNDeNmhjFQQsOz42itQ8qpfmZRUvEmCjx8fKyeGOVmIbq
	ZS4RaEoUEwhqIvMvptdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGRKL-0002bN-Bt; Fri, 04 Oct 2019 17:25:13 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGRK2-0002aQ-Ep; Fri, 04 Oct 2019 17:24:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1570209874;
 bh=q5dyvL9jNiiGjfoUjjUV7o2v7WYPluh/HSKwURmfO2o=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=VFalHLvGo2Z2FYpx2jtSym1AVAzmz67y8bmUVpEug71QEyq/ocbtotwoIo2IfaJmr
 60YjTFelDAxe6IFF8xC89aLlo09fkRWCcKMYE/TB2YHPZvYoB1oZ2yhlo0eKNGtofx
 rLd/Sp2HlbB5LTqedyTn/b6QUZXD23ep/wRumwA8=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.27] ([77.191.3.29]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LshWf-1i9Xad15vF-012I8F; Fri, 04
 Oct 2019 19:24:34 +0200
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_3/3=5d_arm64=3a_dts=3a_rockchip=3a_fix_Roc?=
 =?UTF-8?B?a1BybzY0IHNkbW1jIHNldHRpbmdz44CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGlu?=
 =?UTF-8?Q?ux-rockchip-bounces+shawn=2elin=3drock-chips=2ecom=40lists=2einfr?=
 =?UTF-8?B?YWRlYWQub3Jn5Luj5Y+R44CR?=
To: Shawn Lin <shawn.lin@rock-chips.com>, Robin Murphy
 <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>
References: <20191003215036.15023-1-smoch@web.de>
 <20191003215036.15023-3-smoch@web.de>
 <31181f3c-20ec-e717-1f7e-8b35cd54d96d@arm.com>
 <a8b20c45-0426-ee42-4efc-52e56ea6bb20@web.de>
 <120e2dbc-55eb-2205-b00f-7e50928ec706@rock-chips.com>
 <1c452b8b-853f-8f58-5f3a-0bbecbe20557@web.de>
 <fc7dce53-ad39-26e3-7c19-ab60ff4cc332@arm.com>
 <0c6fdb65-be2a-68e3-a686-14ce9b0a00a4@rock-chips.com>
From: =?UTF-8?Q?S=c3=b6ren_Moch?= <smoch@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=smoch@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <e4aaddc2-441b-b835-380e-374a3d935474@web.de>
Date: Fri, 4 Oct 2019 19:24:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <0c6fdb65-be2a-68e3-a686-14ce9b0a00a4@rock-chips.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:52EcFbHLajU/AYHuTIZWOWQ22JgShGnHnvRwO0xGY7QR4HtEdb5
 459n9NdBU4ZeLYEoOewA/o69ov2RapmYRQE6197U7Cs1UUVMC3bHW9Wl73MVlcqSgV3Strl
 FB994EmQsfd75nMhErupz7kI8xGArUAjNEGBBPbMVvLNsu9ADIWqWgly75IQmti87qOLbim
 8bwMALTyRERRH+EyFwOgA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:g/vZ21JmO18=:T/qwPM6Lb4c921osB+mW2c
 rPCS/lUYg6tVfbYPXNjck+p4xtm8L5TAUwkzItJzdyJRW/bJAUTC6lKNPLvURrKKJ8FeO3Et0
 8XgB4z2ABriBGCIEUoijaup8OIavL+LwwFs+YHddj5/CmQ+2quFX+qt60Uv87uwEFv3V3sIuh
 9IdGEgUfyItPWuzAYlUeFAHtXElSJP6OPg7dMcD8xI0ttPH13kr/k1G9o33x3CgzI91TsDaBr
 apRkS6ncloygXNl4shlzpxhQ9h/+ns3+aIbmON47UAmIEvtu7pjoZTflpaN4ZyEjb7aSOUjfK
 PI+iVT3eAug99NpY6mbb2rBN+Bwv1Upv7ItnlZHX2szW1vCmRLnliUdtXRQfrLHpytO4rw12W
 P1snOybHI3dYQdDMCrVPY7GLukG8wbdDmefXbJTp16Qe8ubQErSeDR0+foZYk1CiCwN1DpK0L
 /fzxlyHux9wxQ6jwgbQUuVIVbjiZLM+yB5YRvfcmrgfL1njE2IIXOJSdbrqW/aY0mJUc5NgTS
 8cab7iw3aR9yQxIgVc9GfsjslNis18w/NdEe9yQ5/xCW6D8ACeOchn//4xKdzOMAkmn+ZfGX/
 CzC6IYbCfZ7prtrqRgfZF4vo1qiNz0eUA3zB5QSQubJOmgzjq1qDhSweFnV0yBXvWhxpUhT6S
 ZonFvY5hkvBkCOrO8M7Cm1wzITqrNNn1wSVz7VRAmjZVFJTcYEdFtzplZQt35OVpKbHBY01h1
 YZZ1mUecpAki/VjX3wL6iLHrneRjwwb67yaNA49O9YE4NkFX5uJFBSRIHjxRu6QGQSacQY1i3
 /rCYU3Aq0YtzlQAmJQV6sJyPXWbmmjBIReKWpQiQl0hUonUJcmJzCFwOAgm1uX1LC5vRzSfq9
 LPzb28hn37zuVp1hQ4F4xJUa20z4OuG+ZPwhUoJnjmQb+79G+ZAydPslT9bg9kw5IzPyN7Vlr
 wsps9RFHQdjJYuY1VzeZRSro19s65OGFMUuI2n071r9Q+LYQIzofuU/fpDxs7+r7ohT65+yfA
 FC0PJMVshQcb/P7QlCkmSPJUv36lEvxzjYoRzzwvQxFWu3lMiHfsdfIFYXaUZbgKvnjpRjD5L
 YF4i6MxvbNZoK+MhKtRJMtZLB0hW0dDUyOMonUsEZzNukBg+gxBusJ6p7UEKvhmgQJrDHRhF0
 3kkmBvzXyqYljCZvcI4BmJA1wTN1xV+3AzJTVZMxgSv677VUVgB1IC6qLYLSlQHXjMNerUxwj
 uHoyNBv18mA76U5/myIe4N/ebyxcWKYu7PxxGcg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_102454_796159_5E455029 
X-CRM114-Status: GOOD (  18.83  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNC4xMC4xOSAxNzozMywgU2hhd24gTGluIHdyb3RlOgo+IE9uIDIwMTkvMTAvNCAyMjoy
MCwgUm9iaW4gTXVycGh5IHdyb3RlOgo+PiBPbiAwNC8xMC8yMDE5IDA0OjM5LCBTb2VyZW4gTW9j
aCB3cm90ZToKPj4+Cj4+Pgo+Pj4gT24gMDQuMTAuMTkgMDQ6MTMsIFNoYXduIExpbiB3cm90ZToK
Pj4+PiBPbiAyMDE5LzEwLzQgODo1MywgU29lcmVuIE1vY2ggd3JvdGU6Cj4+Pj4+Cj4+Pj4+Cj4+
Pj4+IE9uIDA0LjEwLjE5IDAyOjAxLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+Pj4+PiBPbiAyMDE5
LTEwLTAzIDEwOjUwIHBtLCBTb2VyZW4gTW9jaCB3cm90ZToKPj4+Pj4+PiBBY2NvcmRpbmcgdG8g
dGhlIFJvY2tQcm82NCBzY2hlbWF0aWMgWzFdIHRoZSByazMzOTkgc2RtbWMKPj4+Pj4+PiBjb250
cm9sbGVyIGlzCj4+Pj4+Pj4gY29ubmVjdGVkIHRvIGEgbWljcm9TRCAoVEYgY2FyZCkgc2xvdCwg
d2hpY2ggY2Fubm90IGJlIHN3aXRjaGVkIHRvCj4+Pj4+Pj4gMS44Vi4KPj4+Pj4+Cj4+Pj4+PiBS
ZWFsbHk/IEFGQUlDUyB0aGUgU0RNTUMwIHdpcmluZyBsb29rcyBwcmV0dHkgbXVjaCBpZGVudGlj
YWwgdG8gdGhlCj4+Pj4+PiBOYW5vUEMtVDQgc2NoZW1hdGljIChpdCdzIHRoZSBzYW1lIHJlZmVy
ZW5jZSBkZXNpZ24sIGFmdGVyIGFsbCksCj4+Pj4+PiBhbmQgSQo+Pj4+Pj4ga25vdyB0aGF0IGJv
YXJkIGNhbiBoYXBwaWx5IGRyaXZlIGEgVUhTLUkgbWljcm9TRCBjYXJkIHdpdGggMS44dgo+Pj4+
Pj4gSS9PcywKPj4+Pj4+IGJlY2F1c2UgbWluZSdzIGRvaW5nIHNvIHJpZ2h0IG5vdy4KPj4+Pj4+
Cj4+Pj4+PiBSb2Jpbi4KPj4+Pj4gT0ssIHRoZSBSb2NrUHJvNjQgZG9lcyBub3QgYWxsb3cgYSBj
YXJkIHJlc2V0IChwb3dlciBjeWNsZSkgc2luY2UKPj4+Pj4gVkNDM1YwX1NEIGlzIGRpcmVjdGx5
IGNvbm5lY3RlZCB0byBWQ0MzVjNfU1lTICh2aWEgUjg5NTU1KSwgdGhlCj4+Pj4+IFNETU1DMF9Q
V0hfSCBzaWduYWwgaXMgbm90IGNvbm5lY3RlZC4gU28gdGhlIGNhcmQgZmFpbHMgdG8gaWRlbnRp
ZnkKPj4+Pj4gaXRzZWxmIGFmdGVyIHN1c3BlbmQgb3IgcmVib290IHdoZW4gc3dpdGNoZWQgdG8g
MS44ViBvcGVyYXRpb24uCj4+Cj4+IEFoLCB0aGFua3MgZm9yIGNsYXJpZnlpbmcgLSBJIGRpZCBv
dmVybG9vayB0aGUgc3VidGxldHkgdGhhdCBVMTIgYW5kCj4+IGZyaWVuZHMgaGF2ZSAiTkMiIGFz
IGFsdGVybmF0aXZlIHBhcnQgbnVtYmVycywgZXZlbiB0aG91Z2ggdGhleQo+PiBhcmVuJ3QgYWN0
dWFsbHkgbWFya2VkIGFzIEROUC4gU28gaXQncyBzdGlsbCBub3Qgc28gbXVjaCAiY2Fubm90IGJl
Cj4+IHN3aXRjaGVkIiBhcyAic3dpdGNoaW5nIGNhbiBsZWFkIHRvIG90aGVyIHByb2JsZW1zIi4K
Pj4KPj4+Pgo+Pj4+IEkgYmVsaWV2ZSB3ZSBhZGRyZXNzZWQgdGhpcyBpc3N1ZSBsb25nIHRpbWUg
YWdvLCBwbGVhc2UgY2hlY2s6Cj4+Pj4KPj4+PiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9z
Y20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvY29tbWl0Lz9pZD02YTExZmM0
N2YxNzVjOGQ4NzAxOGU4OWNiNThlMmQzNmM2NjUzNGNiCj4+Pj4KPj4+Pgo+Pj4gVGhhbmtzIGZv
ciB0aGUgcG9pbnRlci4KPj4+IEluIHRoaXMgY2FzZSBJIGd1ZXNzIEkgc2hvdWxkIHVzZSBmb2xs
b3dpbmcgcGF0Y2ggaW5zdGVhZDoKPj4+Cj4+PiAtLS0gcmszMzk5LXJvY2twcm82NC5kdHMuYmFr
IMKgwqAgMjAxOS0xMC0wMyAyMjoxNDowMC4wNjc3NDU3OTkgKzAyMDAKPj4+ICsrKyByazMzOTkt
cm9ja3BybzY0LmR0c8KgwqDCoCAyMDE5LTEwLTA0IDAwOjAyOjUwLjA0Nzg5MjM2NiArMDIwMAo+
Pj4gQEAgLTYxOSw2ICs2MTksOCBAQAo+Pj4gwqDCoMKgwqDCoCBtYXgtZnJlcXVlbmN5ID0gPDE1
MDAwMDAwMD47Cj4+PiDCoMKgwqDCoMKgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+PiDC
oMKgwqDCoMKgIHBpbmN0cmwtMCA9IDwmc2RtbWNfY2xrICZzZG1tY19jbWQgJnNkbW1jX2J1czQ+
Owo+Pj4gK8KgwqDCoCBzZC11aHMtc2RyMTA0Owo+Pj4gK8KgwqDCoCB2cW1tYy1zdXBwbHkgPSA8
JnZjY19zZGlvPjsKPj4+IMKgwqDCoMKgwqAgc3RhdHVzID0gIm9rYXkiOwo+Pj4gwqDCoH07Cj4+
PiBXaGVuIEkgZG8gc28sIHRoZSBzZCBjYXJkIGlzIGRldGVjdGVkIGFzIFNEUjEwNCwgYnV0IGEg
cmVib290IGhhbmdzOgo+Pj4KPj4+IEJvb3QxOiAyMDE4LTA2LTI2LCB2ZXJzaW9uOiAxLjE0Cj4+
PiBDUFVJZCA9IDB4MAo+Pj4gQ2hpcFR5cGUgPSAweDEwLCAyODYKPj4+IFNwaV9DaGlwSWQgPSBj
ODQwMTgKPj4+IG5vIGZpbmQgcmtwYXJ0aXRpb24KPj4+IFNwaUJvb3RJbml0OmZmZmZmZmZmCj4+
PiBtbWM6IEVSUk9SOiBTREhDSSBFUlI6Y21kOjB4MTAyLHN0YXQ6MHgxODAwMAo+Pj4gbW1jOiBF
UlJPUjogQ2FyZCBkaWQgbm90IHJlc3BvbmQgdG8gdm9sdGFnZSBzZWxlY3QhCj4+PiBlbW1jIHJl
aW5pdAo+Pj4gbW1jOiBFUlJPUjogU0RIQ0kgRVJSOmNtZDoweDEwMixzdGF0OjB4MTgwMDAKPj4+
IG1tYzogRVJST1I6IENhcmQgZGlkIG5vdCByZXNwb25kIHRvIHZvbHRhZ2Ugc2VsZWN0IQo+Pj4g
ZW1tYyByZWluaXQKPj4+IG1tYzogRVJST1I6IFNESENJIEVSUjpjbWQ6MHgxMDIsc3RhdDoweDE4
MDAwCj4+PiBtbWM6IEVSUk9SOiBDYXJkIGRpZCBub3QgcmVzcG9uZCB0byB2b2x0YWdlIHNlbGVj
dCEKPj4+IFNkbW1jSW5pdD0yIDEKPj4+IG1tYzA6Y21kNSwzMgo+Pj4gbW1jMDpjbWQ3LDMyCj4+
PiBtbWMwOmNtZDUsMzIKPj4+IG1tYzA6Y21kNywzMgo+Pj4gbW1jMDpjbWQ1LDMyCj4+PiBtbWMw
OmNtZDcsMzIKPj4+IFNkbW1jSW5pdD0wIDEKPj4+Cj4+PiBTbyBJIGd1ZXNzIEkgc2hvdWxkIHVz
ZSBhIGRpZmZlcmVudCBtaW5pbG9hZGVyIGZvciB0aGlzIHJlYm9vdCB0bwo+Pj4gd29yayE/Cj4+
PiBPciB3aGF0IGVsc2UgY291bGQgYmUgd3JvbmcgaGVyZT8KPj4KPj4gSG1tLCBJIGd1ZXNzIHRo
aXMgaXMgInRoZSBUaW5rZXJib2FyZCBwcm9ibGVtIiBhZ2FpbiAtIHRoZSBwYXRjaAo+PiBhYm92
ZSB3b3VsZCBiZSBPSyBpZiB3ZSBjb3VsZCBnZXQgYXMgZmFyIGFzIHRoZSBrZXJuZWwsIGJ1dCBj
YW4ndAo+PiBoZWxwIGlmIHRoZSAKPgo+IEkgZGlkbid0IHJlYWxpemUgdGhhdCBTRCB3YXMgdXNl
ZCBhcyBib290IG1lZGl1bSBmb3IgUm9ja1BybzY0LCBidXQgSQo+IGRpZCBwYXRjaCB0aGUgdmVu
ZG9yIHRyZWUgdG8gc29sdmUgdGhlIGlzc3VlIGZvciBUaW5rZXJib2FyZCwgc2VlCj4gaHR0cHM6
Ly9naXRodWIuY29tL3JvY2tjaGlwLWxpbnV4L2tlcm5lbC9jb21taXQvYTRjY2RlMjFmNWE5ZjA0
Zjk5NmZiMDI0NzljYjlmMTZkM2RjOGRjMAo+Cj4KPiBNeSBpbml0aWFsIHBsYW4gd2FzIHRvIHBh
dGNoaW5nIHVwc3RyZWFtIGtlcm5lbCBieSBhZGRpbmcgLT5zaHV0ZG93bixidXQKPiBuZXZlciBm
aW5pc2ggaXQuCj4KPj4gb2ZmZW5kaW5nIGNhcmQgaXMgaXRzZWxmIHRoZSBib290IG1lZGl1bS4g
VGhlcmUgd2FzIGEgcHJvcG9zYWwgaGVyZToKPj4KPj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVs
Lm9yZy9wYXRjaC8xMDgxNzIxNy8KPgo+IFRoaXMgUkZDIGFsc28gbG9va3MgZ29vZCB0byBtZSwg
YnV0IHNlZW1zIGl0IG5lZWRzIHZvbHVudGVlcnMKPiB0byBwdXNoIGl0IGFnYWluLgpPaCwgSSB0
aGluayB0aGlzIGlzIGEgdG90YWxseSB3cm9uZyB3YXkuCgpXaGlsZSB0aGlzIG1pZ2h0IHdvcmsg
Zm9yIHNvbWUgY2FyZHMsIHNldHRpbmcgdGhlIGNvbnRyb2xsZXIncyBpL28Kdm9sdGFnZSB0byAz
LjNWIHdoaWxlIGxlYXZpbmcgdGhlIGNhcmQgYXQgMS44ViBjb25maWd1cmF0aW9uIGlzIHRvdGFs
bHkKYWdhaW5zdCB0aGUgc3BlY2lmaWNhdGlvbiwgY2FuIGxlYWQgdG8gYWxsIGtpbmRzIG9mIHN0
cmFuZ2UgYmVoYXZpb3VyCmFuZCBldmVuIGNhdXNlIGhhcmR3YXJlIGRhbWFnZS4gSXQgYWxzbyB3
b3VsZCBhY3RpdmVseSBkZWZlbmQgdGhlCnB1cnBvc2Ugb2YgdGhlIGFib3ZlIG1lbnRpb25lZCBw
YXRjaCAoNmExMWZjNCkgd2hlcmUgdGhlIGtlcm5lbCBndWVzc2VzCnRoZSBpL28gdm9sdGFnZSBm
cm9tIHRoZSBjYXJkIGNvbmZpZ3VyYXRpb24gYW5kIHN3aXRjaGVzIHRoZSBjb250cm9sbGVyCmFj
Y29yZGluZ2x5LiBXZSB3b3VsZCBlbmQgdXAgd2l0aCBhIDEuOFYgY2FyZCBhbmQgY29udHJvbGxl
cgpjb25maWd1cmF0aW9uIGFuZCBhIHJlZ3VsYXRvciB2b2x0YWdlIG9mIDMuM1YuIFRoaXMgd291
bGQgb25seSB3b3JrIHdpdGgKZ29vZCBsdWNrLiBFdmVuIGlmIHRoZSBrZXJuZWwgZHJpdmVyIHdv
dWxkIHN3aXRjaCB0aGUgcmVndWxhdG9yIGJhY2sgdG8KMS44ViBpbiB0aGlzIGNhc2UsIHRoZSB2
b2x0YWdlIG1pc21hdGNoIHJlbWFpbnMgaW4gdGhlIGJvb3Rsb2FkZXIgd2hlbgp0aGlzIGNhcmQg
Y29udGFpbnMgdGhlIGJvb3QgaW1hZ2UuCgpUaGUgb25seSBzYW5lIHdheSBJIHNlZSB0byBoYW5k
bGUgdGhpcyBpcyBpbXBsZW1lbnRpbmcgdGhlIHNhbWUKd29ya2Fyb3VuZCAobW9kZSBndWVzc2lu
ZykgYWxzbyBpbiB0aGUgYm9vdGxvYWRlciAocm9ja2NoaXAgbWluaWxvYWRlcgphbmQgdS1ib290
IFNQTCBzaW5jZSBib3RoIGJvb3Rsb2FkZXIgY2hhaW5zIGFyZSBzdXBwb3J0ZWQgZm9yIHRoaXMg
Ym9hcmQpLgoKT3IgbWF5YmUgSSBtaXNzIHNvbWV0aGluZz8KClNvZXJlbgoKCj4KPj4KPj4gYWx0
aG91Z2ggSSdtIG5vdCBzdXJlIHdoYXQgaWYgYW55IHByb2dyZXNzIGhhcyBiZWVuIG1hZGUgc2lu
Y2UgdGhlbi4KPj4KPj4gUm9iaW4uCj4+Cj4+Cj4+Cj4KPgoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
