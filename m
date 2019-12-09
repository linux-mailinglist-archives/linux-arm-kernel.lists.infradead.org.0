Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E96E7117B75
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 00:29:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sbPYpt8fiJwwZpSGnyUezLmbqgsHvUIgR6FDA7mqsx4=; b=LaYealuh2E68I1
	WAXzEJR2aMlkLRP1wRtTW8HCEDSmfYsGxqMKWWJ0oYGaRec6+rq8omAdtuTu43ZF/31XqYD6VZaC8
	7V8kcGcqgLa78WlO+yzArHIAM4dwoaqsB8O1ozzdEQFW38KZBdzh6AnzhoJrZnMMAbb0jjW8IOKgn
	LhiDMeuXwtzykillCst+J3406H8Ba5rXfsn6neBABRabOqFBmTBa46XdrfVEULITrXxhXpQhaxg/7
	qXBhg+5tgEi5kkXRrmHhNCQ0eRywsOegCQKWL185cRkhnlAzvTkLgc+fDHAsIp/TsIAR3F8PeGOBE
	QIHg7cJ/Fxy6bc+KsExw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieSTL-0002AY-Id; Mon, 09 Dec 2019 23:29:47 +0000
Received: from mout.web.de ([212.227.17.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieSTC-00028X-K8; Mon, 09 Dec 2019 23:29:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1575934164;
 bh=tFGLEa5vAczgtQSMID/uAW4XZ44Pcq/V03m/8wSAyDk=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Zx9ybmtk7a3giRtkrpP2t97nZ/WzZDkbbe09MS9N4tq7ldFFrnJ4ToTZr1s+vG/ex
 K1fzwl6UJi0kxc7ho1lPix3OfC2J+ewY2e+Qg3Jh8M2bzk3wVlG0uQVO84ygL4sk5O
 CWFWE9eQ0+TKIgbU6JZTsRyeS9jtonU3tU+gOLWY=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.43.108] ([89.204.137.56]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MORiL-1ii1Mf2d2D-005pko; Tue, 10
 Dec 2019 00:29:24 +0100
Subject: Re: [PATCH 8/8] arm64: dts: rockchip: RockPro64: enable wifi module
 at sdio0
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <20191209223822.27236-1-smoch@web.de>
 <20191209223822.27236-8-smoch@web.de> <2668270.pdtvSLGib8@diego>
From: Soeren Moch <smoch@web.de>
Autocrypt: addr=smoch@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <2cf70216-8d98-4122-4f4e-b8254089a017@web.de>
Date: Tue, 10 Dec 2019 00:29:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <2668270.pdtvSLGib8@diego>
Content-Language: en-GB
X-Provags-ID: V03:K1:hS4MXinMGCbbb/YUxEw1OEkSdP/8WM9Im0/xM1AhdM4sHNskhqG
 gxgHb+6uo/YxXYrWAQFfRWzVhyigkeY5a3cXmdpDumOc/kJLPazmTC6jUV2kDQjh7pSp4zU
 YT+CywW+fs+wpWm1ag26CWKMydBTRbtcP69aGC6/8BMV8tFmFDj/FvMwm+f0plFm77SkyoD
 73m8AkV5MzLRQzuM4TTpw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zzxg7GtFA4Y=:/Kr+d+CBcDroTZm8U89Q3c
 /ocEU4vjlGxfGTNwMZ26FHxEedP3qeKLpFiKrVZaDtEkSkwfJ1sc3zLs2A7rx+yfF8/0XK+fk
 SvXzGacYSMLGRV2J6uwc+mJ83DEoCO1w97yJyc7pHVimq9de32mNvlAdW2xEAvxlZYLExIjWN
 4sI2BiJGZ3XQ0B/DsXFX2HB9WzA41FmPeraBUNn9wlYkGGOsmwsjotWwXEIXqns1n5KV1Wb6t
 oU5tCeFvj13I1ojnPF/L88T3OvyJUy3ZtuozLu/ONveB+EWbxUgWFmXjWxzTY5Z1sTcluW/oi
 sDdgGd5SLTG8evnai7DSbZRJBY0XBBbgOqDoeiW8qv/XaAzuxyJtMEc7LjlgZrgJg+6Xj/gN/
 XBZy603penSwO2dULi8bzHaQphDcGgiAtGOSmnW3lNMVrna1p1b2A4Pvi5zTwsodOxHznpsqG
 kIZUiKRgth/Qy3irGxlTTbXKi1hg/6WJlb98WKlbQHWgu4ycn6Zw4iuhrjQ9JZ1TIfv1de8sW
 JhtttyWFLnKsbohlTHXgbWidAwVq6gmAPqVMQIYCVzuKpZlHD7xVqgCvtW0X3H7+M5Qp6Nb3o
 fPOGtCJdKgzrDR+M6pyg0FnPjIYuZt0rDm4VC1Yc+skTF3Xh/xWaxQJ9lhwVgtfqA8i/Z80iV
 61GKHDnpCbKAbWrNxN91p73VR9/GzxP/TlZIxechwDNWW7j6J6OMWdA5SqOAoMJnc8zn1To3P
 Lq2kJXGid7677OW6UzBS5HuH6aHM4KXEGqclOekp04VO26fjjsbM89rYA9MzqmCR08TmSYvaq
 lrxM9YHIdmLdDw7B6sXbPOZL7aTPThUQvWmpmJn2k28Hh737WwqfaYHi4m45sGU2jwlF4JIRK
 F2457a6DANUXaLiKvf0zuZEXjZYjAltqNKNAfjjoKy6A5tDP9/z/fkUktMVGC5fnmTz7gowdS
 OCMy7BTRw1EqBHBuwCxF95R+cpEmlGUmAWbpM1PRrQfZRYMVjttyu2Nrlx5SSkK5I+PJucuhA
 AJg8IbNxRp0p+IE3Jng4Sswqd4XBKjnhGftoKTdL/1Z2RSbmysN/E5rr+2oE4GQ8nWkJWSfzK
 Jv+Qi5C1lTYybD+ehdf2/aR+s+p82M5BkCVyeNg3494Riwd+UjS4UYvAWxeY2NdpB8UTx3aqD
 1CfUPCs4STpYeLD8hg6iYPEO/T8uy6F3zp/aP3PJN8HBWgXQLNz/kVo9bcSURG1Ndo0rkcqpv
 qKm5vSMVOKdmG8tEZK+xct/SAQGtXACI6hD+Mog==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_152938_961916_03828403 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.11 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: brcm80211-dev-list.pdl@broadcom.com, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>,
 brcm80211-dev-list@cypress.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpPbiAxMC4xMi4xOSAwMDowOCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkg
U29lcmVuLAo+Cj4gQW0gTW9udGFnLCA5LiBEZXplbWJlciAyMDE5LCAyMzozODoyMiBDRVQgc2No
cmllYiBTb2VyZW4gTW9jaDoKPj4gUm9ja1BybzY0IHN1cHBvcnRzIGFuIEFtcGFrIEFQNjM1OVNB
IGJhc2VkIHdpZmkvYnQgY29tYm8gbW9kdWxlLgo+PiBUaGUgQkNNNDM1OS85IHdpZmkgY29udHJv
bGxlciBpbiB0aGlzIG1vZHVsZSBpcyBjb25uZWN0ZWQgdG8gc2RpbzAsCj4+IGVuYWJsZSB0aGlz
IGludGVyZmFjZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogU29lcmVuIE1vY2ggPHNtb2NoQHdlYi5k
ZT4KPj4gLS0tCj4+IE5vdCBzdXJlIHdoZXJlIHRvIHBsYWNlIGV4YWN0bHkgdGhlIHNkaW8wIG5v
ZGUgaW4gdGhlIGR0cyBiZWNhdXNlCj4+IGV4aXN0aW5nIHNkIG5vZGVzIGFyZSBub3Qgc29ydGVk
IGFscGhhYmV0aWNhbGx5Lgo+Pgo+PiBUaGlzIGxhc3QgcGF0Y2ggaW4gdGhpcyBicmNtZm1hYyBw
YXRjaCBzZXJpZXMgcHJvYmFibHkgc2hvdWxkIGJlIHBpY2tlZAo+PiB1cCBieSBIZWlrbyBpbmRl
cGVuZGVudGx5IG9mIHRoZSByZXN0IG9mIHRoaXMgc2VyaWVzLiBJdCB3YXMgc2VudCB0b2dldGhl
cgo+PiB0byBzaG93IGhvdyB0aGlzIGJyY21mbWFjIGV4dGVuc2lvbiBmb3IgNDM1OS1zZGlvIHN1
cHBvcnQgd2l0aCBSU0RCIGlzCj4+IHVzZWQgYW5kIHRlc3RlZC4KPiBub2RlIHBsYWNlbWVudCBs
b29rcyBnb29kIHNvIEkgY2FuIGFwcGx5IGl0LCBqdXN0IGEgZ2VuZXJhbCBxdWVzdGlvbnMKPiBJ
IG9ubHkgZ290IHBhdGNoIDgvOCBhcmUgcGF0Y2hlcyAxLTcgcmVsZXZhbnQgZm9yIHRoaXMgb25l
IGFuZCB3aGF0IGFyZSB0aGV5PwpQYXRjaGVzIDEtNyBhcmUgdGhlIHBhdGNoZXMgdG8gc3VwcG9y
dCB0aGUgQkNNNDM1OSBjaGlwc2V0IHdpdGggU0RJTwppbnRlcmZhY2UgaW4gdGhlIGxpbnV4IGJy
Y21mbWFjIG5ldC13aXJlbGVzcyBkcml2ZXIsIHNlZSBbMV0uCgpTbyB0aGlzIHBhdGNoIHNlcmll
cyBoYXMgMiBwYXJ0czoKcGF0Y2hlcyAxLTc6IGFkZCBzdXBwb3J0IGZvciB0aGUgd2lmaSBjaGlw
c2V0IGluIHRoZSB3aXJlbGVzcyBkcml2ZXIsCnRoaXMgaGFzIHRvIGdvIHRocm91Z2ggbmV0LXdp
cmVsZXNzCnBhdGNoIDg6IGVuYWJsZSB0aGUgd2lmaSBtb2R1bGUgd2l0aCB0aGlzIGNoaXBzZXQg
b24gUm9ja1BybzY0LCB0aGlzIHBhdGNoCgpJZiB0aGlzIHdhcyBjb25mdXNpbmcsIHdoYXQgd291
bGQgYmUgdGhlIGlkZWFsIHdheSB0byBwb3N0IHN1Y2ggc2VyaWVzPwoKVGhhbmtzLApTb2VyZW4K
ClsxXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtd2lyZWxlc3Mv
bGlzdC8/c2VyaWVzPTIxMzk1MQo+Cj4gVGhhbmtzCj4gSGVpa28KPgo+Cj4+IENjOiBIZWlrbyBT
dHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+PiBDYzogS2FsbGUgVmFsbyA8a3ZhbG9AY29kZWF1
cm9yYS5vcmc+Cj4+IENjOiBsaW51eC13aXJlbGVzc0B2Z2VyLmtlcm5lbC5vcmcKPj4gQ2M6IGJy
Y204MDIxMS1kZXYtbGlzdC5wZGxAYnJvYWRjb20uY29tCj4+IENjOiBicmNtODAyMTEtZGV2LWxp
c3RAY3lwcmVzcy5jb20KPj4gQ2M6IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcKPj4gQ2M6IGxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+PiBDYzogbGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwo+PiBDYzogbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZwo+PiAt
LS0KPj4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0cyAgICB8IDIx
ICsrKysrKysrKysrKy0tLS0tLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCsp
LCA3IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LXJvY2twcm82NC5kdHMKPj4gaW5kZXggN2Y0YjJlYmEzMWQ0Li45ZmE5Mjc5MGQ2
ZTAgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJv
Y2twcm82NC5kdHMKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkt
cm9ja3BybzY0LmR0cwo+PiBAQCAtNzEsMTMgKzcxLDYgQEAKPj4gIAkJY2xvY2stbmFtZXMgPSAi
ZXh0X2Nsb2NrIjsKPj4gIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gIAkJcGluY3Ry
bC0wID0gPCZ3aWZpX2VuYWJsZV9oPjsKPj4gLQo+PiAtCQkvKgo+PiAtCQkgKiBPbiB0aGUgbW9k
dWxlIGl0c2VsZiB0aGlzIGlzIG9uZSBvZiB0aGVzZSAoZGVwZW5kaW5nCj4+IC0JCSAqIG9uIHRo
ZSBhY3R1YWwgY2FyZCBwb3B1bGF0ZWQpOgo+PiAtCQkgKiAtIFNESU9fUkVTRVRfTF9XTF9SRUdf
T04KPj4gLQkJICogLSBQRE4gKHBvd2VyIGRvd24gd2hlbiBsb3cpCj4+IC0JCSAqLwo+PiAgCQly
ZXNldC1ncGlvcyA9IDwmZ3BpbzAgUktfUEIyIEdQSU9fQUNUSVZFX0xPVz47Cj4+ICAJfTsKPj4K
Pj4gQEAgLTY1MCw2ICs2NDMsMjAgQEAKPj4gIAlzdGF0dXMgPSAib2theSI7Cj4+ICB9Owo+Pgo+
PiArJnNkaW8wIHsKPj4gKwlidXMtd2lkdGggPSA8ND47Cj4+ICsJY2FwLXNkLWhpZ2hzcGVlZDsK
Pj4gKwljYXAtc2Rpby1pcnE7Cj4+ICsJZGlzYWJsZS13cDsKPj4gKwlrZWVwLXBvd2VyLWluLXN1
c3BlbmQ7Cj4+ICsJbW1jLXB3cnNlcSA9IDwmc2Rpb19wd3JzZXE+Owo+PiArCW5vbi1yZW1vdmFi
bGU7Cj4+ICsJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gKwlwaW5jdHJsLTAgPSA8JnNk
aW8wX2J1czQgJnNkaW8wX2NtZCAmc2RpbzBfY2xrPjsKPj4gKwlzZC11aHMtc2RyMTA0Owo+PiAr
CXN0YXR1cyA9ICJva2F5IjsKPj4gK307Cj4+ICsKPj4gICZzZG1tYyB7Cj4+ICAJYnVzLXdpZHRo
ID0gPDQ+Owo+PiAgCWNhcC1zZC1oaWdoc3BlZWQ7Cj4+IC0tCj4+IDIuMTcuMQo+Pgo+Cj4KPgoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
