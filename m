Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5245DCB38C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 05:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GnOrXYm3KKE8R0L7x4vrM3dQnZTLGVEsNidlhUTjtAw=; b=TDNEBcgDFUFpub
	a2+yeaom9/oq6PZDR337HwzSClK7e6jBIkSfhwlqyFMGFQ7xCgvfclpI7U6XHT9OxVlWpFL/wkTy1
	uEt1Ty5uT9jDevexG/LyG9BqfGkCONWJBYHfm+66w6/eNTqQT1+LBcXkNxuDjUQWIiGMkPiAEK2g/
	KDh8FICbb855AYuJne/DSg5qCwzSTn5V7KhRI/G4hm5bHMOXk83ghxhiHyjSqMrst/nn6KVMQDz+w
	jRlKTLsEEcdAuD7pRkIYQimCp1wjRwEjgG0geMHhjFAzFEK26RAIF23RLgmpV3HED+YWvHh5+NwcC
	xcj8uiR4PvsKCVuh5rQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGES2-0003ew-2F; Fri, 04 Oct 2019 03:40:18 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGERq-0002vv-Ui; Fri, 04 Oct 2019 03:40:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1570160395;
 bh=M2hr1DFTmVUJtV0KSUX/LhA146pG6rhKVo+Ai17B1nU=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=ZpyY0dXOTpwwqAFAFHizLTQBvV9RYXIbq1FI5oRN7fy6FET+CxPgQK22B/aU5Cu6M
 w8hk+k7NrL/oJlBzqVOa1CdftsvorLyaupw+X3R7FHsLG6e7b/5BIQnfwmLl44pDw6
 XexSVCV5fQ+iypzVc42hjkRftykR0HQynXslggDM=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.27] ([77.183.117.42]) by smtp.web.de (mrweb002
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0McWbQ-1iXtr0345I-00HbDo; Fri, 04
 Oct 2019 05:39:54 +0200
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
From: Soeren Moch <smoch@web.de>
Message-ID: <1c452b8b-853f-8f58-5f3a-0bbecbe20557@web.de>
Date: Fri, 4 Oct 2019 05:39:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <120e2dbc-55eb-2205-b00f-7e50928ec706@rock-chips.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:KiA97Kjmyv4wFkvQ0/dhatW3EPzZBAUT7SGV1rKafjmtxsn00Lx
 ZuwA20AQdpNfoTr8YYmi92f2N/UGkWxJ9p5Gyf8j7DmYgDtav37azDQAFNv5ZT/WkzqPGWP
 zjMEM7bm7ZukdM4HtNmVPE37KDCWKrYDN/6uutZ+4SWq95R6H2TceDOCCsd2M2pla1cWuiB
 WuFhbGn5E95o4io0Oed/w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0RMfn7JLJKA=:aLtcRB63cedwkhHqYcK3An
 RP0UlDMnYvySyUBVjSoaOBaRua+NUvP9W+GHrjUIc3vKxC0W9crsjUrkZLn8U1SD1un0RgSQ9
 4VyZ8iLEhrvg5Lhq+uKKvOqw6IHD43+M6hGzJkqxEFD7QoE01kIdRs4aV3KiM0sw/EZb6iVYN
 tNdAQzEWOS+bahYMaFiK3o6oMYgJkP6ls/BUr2FFhx/5P6EBzRJB2xTJyj+aGNE7B/BsqFK6S
 3t/GDwXPBQi63crIGCk9fWMTxG58k90LHOQginzDzfj6MAa/L++MFfKL/tTA/eXcwxJTbh9ir
 rUz7slNxFEjchlcnIIk0T3TOBJASxhfYxNuyx/7ZPdvt49Lg6OONRFg+ZgN/zOvZFvqcy9v3G
 3JQc9zo2KBFCssebPr+VaGjBRr0DnWEbfz83raGYbCy8idYBvv6+dxaSLehJLEWSu3cPUZB10
 5kjT2pcSNkxihJ3MV0xe7EV3X0aMTnNExMhcJjqvduV/jzmdE8rjTDeIA3tt1aBO1Q562F9+9
 oZM0q8thQ2YTjfdNzLePbHKUKkYN8Vqp4DxFNIaCSeHWzAS5wtn57Cp2UysDFHeZipO0jXa0I
 GJklneAK/dxYneXyFV4CawDPT2HcVZfu7RuClHPK3wXjwTw22nlEcFIeo9wtdQIDrTfkTaGze
 g2R14RGLymYai5VBqdjW9OMIRI9sqJeTW535gI0aJ3nJKhGKrmuDjJESZCXt1emh6waavv8bD
 5ccivHFmUmMdzts4NL9HqyRpDAQ/kUePJUwdb4oJP/7vQyZ4X7CHhi4rRr7+/hhRQWKhX+3mv
 SLpXY5AQhErnmQl3WOLDFVMsDsdBzTkXU1mWKSg25R95AUQ9PjV7hSUIpiVO5GYgngwmWq/bc
 swAcqul1OKTjnGFq5sr0f4GEgFRqlKepFmQbpkL/5hyZ7X1N4NsWNawfIxiaiCNOOLNy+Kf7K
 /ehjY7VOX3yjmvdfUF3z8Mne4keME4HwlB6aR/Yh9iajNn58No2WMVQzYUamxtwgnuJDGBVtG
 C3pWTxZs+ygJDyya9uf5Y669cxFC6qHZsBw6F+gM1LtsOG1ItCvb1GVkSpkZXxdYm+aG/lfLW
 yw0akWYMeaRsBc2LFZ6ljjJRqiV53qf/4g57qdt7Y2peoo12UrnF0MyrU7eX6WbTKyLS6Nwa+
 itLyDiCbH3mrPT5HQka8/exeghviIUKEN4cVXsQIvSXvETnh9qJarlpUmGicHH1b/Eh9Ujop3
 fwixYoBYAwOywTmEH5Avo3/CGS9zdga/mw4e1hQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_204007_411794_4C81135E 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.4 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

CgpPbiAwNC4xMC4xOSAwNDoxMywgU2hhd24gTGluIHdyb3RlOgo+IE9uIDIwMTkvMTAvNCA4OjUz
LCBTb2VyZW4gTW9jaCB3cm90ZToKPj4KPj4KPj4gT24gMDQuMTAuMTkgMDI6MDEsIFJvYmluIE11
cnBoeSB3cm90ZToKPj4+IE9uIDIwMTktMTAtMDMgMTA6NTAgcG0sIFNvZXJlbiBNb2NoIHdyb3Rl
Ogo+Pj4+IEFjY29yZGluZyB0byB0aGUgUm9ja1BybzY0IHNjaGVtYXRpYyBbMV0gdGhlIHJrMzM5
OSBzZG1tYwo+Pj4+IGNvbnRyb2xsZXIgaXMKPj4+PiBjb25uZWN0ZWQgdG8gYSBtaWNyb1NEIChU
RiBjYXJkKSBzbG90LCB3aGljaCBjYW5ub3QgYmUgc3dpdGNoZWQgdG8KPj4+PiAxLjhWLgo+Pj4K
Pj4+IFJlYWxseT8gQUZBSUNTIHRoZSBTRE1NQzAgd2lyaW5nIGxvb2tzIHByZXR0eSBtdWNoIGlk
ZW50aWNhbCB0byB0aGUKPj4+IE5hbm9QQy1UNCBzY2hlbWF0aWMgKGl0J3MgdGhlIHNhbWUgcmVm
ZXJlbmNlIGRlc2lnbiwgYWZ0ZXIgYWxsKSwgYW5kIEkKPj4+IGtub3cgdGhhdCBib2FyZCBjYW4g
aGFwcGlseSBkcml2ZSBhIFVIUy1JIG1pY3JvU0QgY2FyZCB3aXRoIDEuOHYgSS9PcywKPj4+IGJl
Y2F1c2UgbWluZSdzIGRvaW5nIHNvIHJpZ2h0IG5vdy4KPj4+Cj4+PiBSb2Jpbi4KPj4gT0ssIHRo
ZSBSb2NrUHJvNjQgZG9lcyBub3QgYWxsb3cgYSBjYXJkIHJlc2V0IChwb3dlciBjeWNsZSkgc2lu
Y2UKPj4gVkNDM1YwX1NEIGlzIGRpcmVjdGx5IGNvbm5lY3RlZCB0byBWQ0MzVjNfU1lTICh2aWEg
Ujg5NTU1KSwgdGhlCj4+IFNETU1DMF9QV0hfSCBzaWduYWwgaXMgbm90IGNvbm5lY3RlZC4gU28g
dGhlIGNhcmQgZmFpbHMgdG8gaWRlbnRpZnkKPj4gaXRzZWxmIGFmdGVyIHN1c3BlbmQgb3IgcmVi
b290IHdoZW4gc3dpdGNoZWQgdG8gMS44ViBvcGVyYXRpb24uCj4+Cj4KPiBJIGJlbGlldmUgd2Ug
YWRkcmVzc2VkIHRoaXMgaXNzdWUgbG9uZyB0aW1lIGFnbywgcGxlYXNlIGNoZWNrOgo+Cj4gaHR0
cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGlu
dXguZ2l0L2NvbW1pdC8/aWQ9NmExMWZjNDdmMTc1YzhkODcwMThlODljYjU4ZTJkMzZjNjY1MzRj
Ygo+ClRoYW5rcyBmb3IgdGhlIHBvaW50ZXIuCkluIHRoaXMgY2FzZSBJIGd1ZXNzIEkgc2hvdWxk
IHVzZSBmb2xsb3dpbmcgcGF0Y2ggaW5zdGVhZDoKCi0tLSByazMzOTktcm9ja3BybzY0LmR0cy5i
YWsgwqDCoCAyMDE5LTEwLTAzIDIyOjE0OjAwLjA2Nzc0NTc5OSArMDIwMAorKysgcmszMzk5LXJv
Y2twcm82NC5kdHPCoMKgwqAgMjAxOS0xMC0wNCAwMDowMjo1MC4wNDc4OTIzNjYgKzAyMDAKQEAg
LTYxOSw2ICs2MTksOCBAQArCoMKgwqDCoCBtYXgtZnJlcXVlbmN5ID0gPDE1MDAwMDAwMD47CsKg
wqDCoMKgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CsKgwqDCoMKgIHBpbmN0cmwtMCA9IDwm
c2RtbWNfY2xrICZzZG1tY19jbWQgJnNkbW1jX2J1czQ+OworwqDCoMKgIHNkLXVocy1zZHIxMDQ7
CivCoMKgwqAgdnFtbWMtc3VwcGx5ID0gPCZ2Y2Nfc2Rpbz47CsKgwqDCoMKgIHN0YXR1cyA9ICJv
a2F5IjsKwqB9OwrCoApXaGVuIEkgZG8gc28sIHRoZSBzZCBjYXJkIGlzIGRldGVjdGVkIGFzIFNE
UjEwNCwgYnV0IGEgcmVib290IGhhbmdzOgoKQm9vdDE6IDIwMTgtMDYtMjYsIHZlcnNpb246IDEu
MTQKQ1BVSWQgPSAweDAKQ2hpcFR5cGUgPSAweDEwLCAyODYKU3BpX0NoaXBJZCA9IGM4NDAxOApu
byBmaW5kIHJrcGFydGl0aW9uClNwaUJvb3RJbml0OmZmZmZmZmZmCm1tYzogRVJST1I6IFNESENJ
IEVSUjpjbWQ6MHgxMDIsc3RhdDoweDE4MDAwCm1tYzogRVJST1I6IENhcmQgZGlkIG5vdCByZXNw
b25kIHRvIHZvbHRhZ2Ugc2VsZWN0IQplbW1jIHJlaW5pdAptbWM6IEVSUk9SOiBTREhDSSBFUlI6
Y21kOjB4MTAyLHN0YXQ6MHgxODAwMAptbWM6IEVSUk9SOiBDYXJkIGRpZCBub3QgcmVzcG9uZCB0
byB2b2x0YWdlIHNlbGVjdCEKZW1tYyByZWluaXQKbW1jOiBFUlJPUjogU0RIQ0kgRVJSOmNtZDow
eDEwMixzdGF0OjB4MTgwMDAKbW1jOiBFUlJPUjogQ2FyZCBkaWQgbm90IHJlc3BvbmQgdG8gdm9s
dGFnZSBzZWxlY3QhClNkbW1jSW5pdD0yIDEKbW1jMDpjbWQ1LDMyCm1tYzA6Y21kNywzMgptbWMw
OmNtZDUsMzIKbW1jMDpjbWQ3LDMyCm1tYzA6Y21kNSwzMgptbWMwOmNtZDcsMzIKU2RtbWNJbml0
PTAgMQoKU28gSSBndWVzcyBJIHNob3VsZCB1c2UgYSBkaWZmZXJlbnQgbWluaWxvYWRlciBmb3Ig
dGhpcyByZWJvb3QgdG8gd29yayE/Ck9yIHdoYXQgZWxzZSBjb3VsZCBiZSB3cm9uZyBoZXJlPwoK
VGhhbmtzLApTb2VyZW4KCj4+IFJlZ2FyZHMsCj4+IFNvZXJlbgo+Pj4KPj4+PiBTbyBhbHNvIGNv
bmZpZ3VyZSB0aGUgdmNjX3NkaW8gcmVndWxhdG9yLCB3aGljaCBkcml2ZXMgdGhlIGkvbyB2b2x0
YWdlCj4+Pj4gb2YgdGhlIHNkbW1jIGNvbnRyb2xsZXIsIGFjY29yZGluZ2x5Lgo+Pj4+Cj4+Pj4g
V2hpbGUgYXQgaXQsIGFsc28gcmVtb3ZlIHRoZSBjYXAtbW1jLWhpZ2hzcGVlZCBwcm9wZXJ0eSBv
ZiB0aGUgc2RtbWMKPj4+PiBjb250cm9sbGVyLCBzaW5jZSBubyBtbWMgY2FyZCBjYW4gYmUgY29u
bmVjdGVkIGhlcmUuCj4+Pj4KPj4+PiBbMV0gaHR0cDovL2ZpbGVzLnBpbmU2NC5vcmcvZG9jL3Jv
Y2twcm82NC9yb2NrcHJvNjRfdjIxLVNDSC5wZGYKPj4+Pgo+Pj4+IEZpeGVzOiBlNGYzZmI0OTA5
NjcgKCJhcm02NDogZHRzOiByb2NrY2hpcDogYWRkIGluaXRpYWwgZHRzIHN1cHBvcnQKPj4+PiBm
b3IgUm9ja3BybzY0IikKPj4+PiBTaWduZWQtb2ZmLWJ5OiBTb2VyZW4gTW9jaCA8c21vY2hAd2Vi
LmRlPgo+Pj4+IC0tLQo+Pj4+IENjOiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+
Pj4+IENjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+Pj4gQ2M6IGxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4+IENjOiBsaW51eC1rZXJuZWxAdmdl
ci5rZXJuZWwub3JnCj4+Pj4gLS0tCj4+Pj4gwqDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzIHwgMyArLS0KPj4+PiDCoMKgIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzCj4+Pj4gYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzCj4+Pj4gaW5k
ZXggMmU0NGRhZTQ4NjVhLi4wODRmMWQ5OTRhNTAgMTAwNjQ0Cj4+Pj4gLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0cwo+Pj4+ICsrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHMKPj4+PiBAQCAtMzUz
LDcgKzM1Myw3IEBACj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJl
Z3VsYXRvci1uYW1lID0gInZjY19zZGlvIjsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcmVndWxhdG9yLWFsd2F5cy1vbjsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcmVndWxhdG9yLWJvb3Qtb247Cj4+Pj4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKPj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0
ID0gPDMwMDAwMDA+Owo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBy
ZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMDAwMDAwPjsKPj4+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVndWxhdG9yLXN0YXRlLW1lbSB7Cj4+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVndWxhdG9yLW9uLWluLXN1c3Bl
bmQ7Cj4+Pj4gQEAgLTYyNCw3ICs2MjQsNiBAQAo+Pj4+Cj4+Pj4gwqDCoCAmc2RtbWMgewo+Pj4+
IMKgwqDCoMKgwqDCoCBidXMtd2lkdGggPSA8ND47Cj4+Pj4gLcKgwqDCoCBjYXAtbW1jLWhpZ2hz
cGVlZDsKPj4+PiDCoMKgwqDCoMKgwqAgY2FwLXNkLWhpZ2hzcGVlZDsKPj4+PiDCoMKgwqDCoMKg
wqAgY2QtZ3Bpb3MgPSA8JmdwaW8wIDcgR1BJT19BQ1RJVkVfTE9XPjsKPj4+PiDCoMKgwqDCoMKg
wqAgZGlzYWJsZS13cDsKPj4+PiAtLcKgCj4+Pj4gMi4xNy4xCj4+Pj4KPj4+Pgo+Pj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0Cj4+Pj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+Pj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAKPj4+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+PiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPj4gTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4+Cj4KPgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
