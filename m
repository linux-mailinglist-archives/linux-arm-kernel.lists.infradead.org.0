Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 687F9185F53
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 20:16:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OWSDvlIEhEQgN6+GTpc+duBE0F7ObI84EhYk6Ia5f2s=; b=FmyUwQfLrPK54L
	D/Th/EBfh8jlFapoOnWDx08Td6ey9YVaV7a4YIXwE62bqyeDmkZe3OrPQSQgDWWHwtCeQwIRfyvUT
	E6HeZV9+V5xkrVWDT/zZJZiQkplziDRxZa1N+SN5tSLzHuR9BHzLLAeA/9eFOg9WYgItFmBaMQLcU
	c5F9QG4ZKysRFNLQr2WEpjYymVdGe+2+baDVTIyIweLmlq+dA48D9ctnwH3L4jOMx38Tql46SLHrY
	Y4leRVwweNt+ZgG4GQZRT/C2grjHo/BPWxY6zF0VOg9kHeU2wUOwTUEBSr5KmGUiOHaOtoaTNQX4a
	H4H1X/q+rTRjTS0bMu+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDYkS-0003if-Dl; Sun, 15 Mar 2020 19:16:32 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDYkH-0003iA-Cr; Sun, 15 Mar 2020 19:16:23 +0000
Received: from [192.168.1.183] ([37.4.249.171]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mth79-1jRda71HAd-00v9Fb; Sun, 15 Mar 2020 20:16:12 +0100
Subject: Re: [PATCH] ARM: dts: bcm283x: Use firmware PM driver for V3D
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20200303173217.3987-1-nsaenzjulienne@suse.de>
 <736f0c59-352b-03b2-f77f-bfc22171b3fb@i2se.com>
 <03fcb1e2bc7f3ff389b6dfbf3964e159a93ae835.camel@suse.de>
 <d3d40174-9c08-f42f-e088-08e23c2dc029@i2se.com>
 <f2ec22160ac86aec8d252ade7d6eb8789777cc42.camel@suse.de>
 <01ceb60e-a791-b6ca-352e-ad2e79f264e3@i2se.com>
 <ddcb8fd5-9e35-454c-b38d-d36e7b41ef07@i2se.com>
 <9e685fce547d808f269e59e2290331e75c66f3e4.camel@suse.de>
 <bb2c7d99-06b1-d222-7f69-8ce91157bde5@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <90e92438-00df-520f-c8b1-2e2077934592@i2se.com>
Date: Sun, 15 Mar 2020 20:16:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <bb2c7d99-06b1-d222-7f69-8ce91157bde5@i2se.com>
Content-Language: en-US
X-Provags-ID: V03:K1:wAxhojnD7oe97Bijy6wo2ma8SLvnyDL0UrcqPDgSC4UADV966dq
 K+E3BnRoDAUxjTgVDJCAlzJN/UXNLSD2GRnCrRaE04TgDhYl3W/64wTUMvNC2v6mfb+vXp4
 KYs2FqadhY3Ao369WDfD9W5NFjuaXiXz6G/tDv/4fm5JgjEui063YQ+f/KEnuWKDgMaIuZS
 2W/AbFtSpeTrAg8hMbaQQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AS5/MUNtyzs=:hoLihDn/AVsqPlUHp9Nrra
 q7VRW4GWhRlVeuPvW5dp1nj/WqA6rmZz+1HBbRuoKMRDKVr9P6VBZKIF7O6oDA/o5n7U1vI9l
 ZDwXBj0/U2+Zpf709gq/+0tsK9Gqf3m7frIlaH2DpPdYqVcxFlzdOvak7gcMr3GwFETMssket
 1lxi/Xm8eIeJm4pYF6Ukvf7G2F9fUQhAh4GuEp9JTNnkoPurgmwZv2osJMe+mCoJTvCZBB6sH
 /MZykFbww9miS38074dU9KZRBGnam58CWN4bCL5p4c6h+R+1rVyvgc+dPUbUBx0uSAKd7G8tL
 qmADJoWTB06EJiZrrUZX8Rn7W/nUI+aYMyd5+WjgPQEZfH6+6CLehze+TANGh2nRrhdwZw5SR
 gxNd7YUEVLlej7Hr0AKqGdXsRNARB0r7K5mYuN43Fc4+8f6VwrGd+ZjK6tJwwcaH3hUo4W1J/
 n3zlWp6HlfDGLcNHw61WLULqDUpH/ii0XheNa68d5R7DMj8DQgNeZX+1PD81w/0Oko52+6NbL
 8M7JGT7WJRqE9hhOYfObGE0gazivIEjQ8W1TOaj/aCbXxt6EbgnPqu5UEWLdbjYhhofVbInfO
 x8OxVK0GHC6kdyhrGjrqSUnkH/BZNgE1mkNYEV6zdh/x75aRyCcAbU4TUcs8PZZgATV7Dr/ia
 rrLwr3DYeb9Psf4eT4tmcaEB7MWqz5mKiCzqxfBiYnBuQP3l9wp23MoqfOeF5+zKxq3cZvdDv
 86oghsoJLtLOVX88Fe3Q9/GWNt/jHCcmdpWuJv+cb3Vzu3pG3OXOK+8Q65/XG3EbYfDhlBlml
 cRtSYsP+K/+hfZP0tqwoRtfKG0xti0scOQQqTvAJlCGkGw8U+s81zjcoAkTcGe5mfkSYjQf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_121621_734206_05D41565 
X-CRM114-Status: GOOD (  20.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, Eric Anholt <eric@anholt.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTmljb2xhcywKClthZGp1c3QgYXVkaWVuY2VdCgpBbSAxMy4wMy4yMCB1bSAxNDo1OSBzY2hy
aWViIFN0ZWZhbiBXYWhyZW46Cj4gSGkgTmljb2xhcywKPgo+IEFtIDA5LjAzLjIwIHVtIDIwOjIy
IHNjaHJpZWIgTmljb2xhcyBTYWVueiBKdWxpZW5uZToKPj4gSGkgU3RlZmFuLAo+Pgo+PiBPbiBN
b24sIDIwMjAtMDMtMDkgYXQgMTY6NDEgKzAxMDAsIFN0ZWZhbiBXYWhyZW4gd3JvdGU6Cj4+PiBI
aSBOaWNvbGFzLAo+Pj4KPj4+IE9uIDA2LjAzLjIwIDIxOjMzLCBTdGVmYW4gV2FocmVuIHdyb3Rl
Ogo+Pj4+IEhpIE5pY29sYXMsCj4+Pj4KPj4+PiBBbSAwNS4wMy4yMCB1bSAxMTo0NCBzY2hyaWVi
IE5pY29sYXMgU2FlbnogSnVsaWVubmU6Cj4+Pj4+IEhpIFN0ZWZhbiwKPj4+Pj4KPj4+Pj4gT24g
VHVlLCAyMDIwLTAzLTAzIGF0IDIwOjI0ICswMTAwLCBTdGVmYW4gV2FocmVuIHdyb3RlOgo+Pj4+
Pj4+Pj4gTm90ZTogSSB0ZXN0ZWQgdGhpcyBvbiBSUGkzYiwgUlBpM2ErIGFuZCBSUGkyYi4KPj4+
Pj4+Pj4gYXMgaSBhbHJlYWR5IHdyb3RlIHRoaXMgcHJldmVudCBYIHRvIHN0YXJ0IG9uIGN1cnJl
bnQgUmFzcGJpYW4gb24gbXkKPj4+Pj4+Pj4gUmFzcGJlcnJ5IFBpIDNBKyAobXVsdGlfdjdfZGVm
Y29uZmlnLCBubyB1LWJvb3QpLiBXZSBtdXN0IGJlIGNhcmVmdWwKPj4+Pj4+Pj4gaGVyZS4KPj4+
Pj4+Pj4KPj4+Pj4+Pj4gSSB3aWxsIHRha2UgYSBsb29rIGF0IHRoZSBkZWJ1ZyBVQVJULiBNYXli
ZSB0aGVyZSBhcmUgbW9yZSBoZWxwZnVsCj4+Pj4+Pj4+IGluZm9ybWF0aW9uLgo+Pj4+Pj4+IEl0
IHNlZW1zIHdlJ3JlIHNlZWluZyBkaWZmZXJlbnQgdGhpbmdzLCBJIHRlc3RlZCB0aGlzIG9uIHJh
c3BiaWFuCj4+Pj4+Pj4gKG11bHRpX3Y3X2RlZmNvbmZpZykgYW5kIG9uIGFybTY0LiBJJ2xsIHRy
eSBhZ2FpbiBmcm9tIHNjcmF0Y2gKPj4+Pj4+PiB0b21vcnJvdy4KPj4+Pj4+IE15IG1vZGlmaWNh
dGlvbnMgdG8gdGhlIFJhc3BiaWFuIGltYWdlIChmcm9tIDEzLjIuMjAyMCkgYXJlIGxpdHRsZToK
Pj4+Pj4+Cj4+Pj4+PiAtIHNwZWNpZnkgZGV2aWNldHJlZSB0byBjb25maWcudHh0Cj4+Pj4+PiAt
IGNoYW5nZSBjb25zb2xlIHRvIHR0eVMxIGFuZCByZW1vdmUgInNpbGVudCIgaW4gY21kbGluZS50
eHQKPj4+Pj4+IC0gcmVuYW1lIGFsbCBvcmlnaW5hbCBrZXJuZWw3Ki5pbWcKPj4+Pj4+IC0gY29w
eSBkdGIgYW5kIGtlcm5lbDcuaW1nIHRvIGJvb3QgcGFydGl0aW9uCj4+Pj4+PiAtIGNvcHkga2Vy
bmVsIG1vZHVsZXMgdG8gcm9vdCBwYXJ0aXRpb24KPj4+Pj4gV291bGQgeW91IG1pbmQgcmV0ZXN0
aW5nIHdpdGggdGhlIGxhdGVzdCBsaW51eC1uZXh0PyBJIHZhbGlkYXRlZCBhbiBpbWFnZQo+Pj4+
PiBiYXNlZAo+Pj4+PiBvbiA1LjYuMC1yYzQtbmV4dC0yMDIwMDMwNS0wMDAwMS1nMjg1YTdhNjRj
ZDU2IGFuZCBhIGZyZXNoIHJhc3BiaWFuCj4+Pj4+IGRvd25sb2FkIG9uCj4+Pj4+IFJQaTNhKyB3
aXRob3V0IFggaXNzdWVzLgo+Pj4+IGkgcmV0ZXN0ZWQgd2l0aCB0b2RheXMgbGludXgtbmV4dCBh
bmQgdGhlIGlzc3VlIHBlcnNpc3RzIG9uIG15IFJQaSAzQSsgLwo+Pj4+IEhQIFpSMjQ0MHcgd2l0
aCB0aGlzIHBhdGNoIGFwcGxpZWQuCj4+PiBJIHRlc3RlZCBteSBkaXNwbGF5IHdpdGggYSBSUEkg
M0IsIDNCKyBhbmQgYSBaZXJvIFcuIEFsbCBvZiB0aGVtIGhhZCB0aGUKPj4+IHNhbWUgaXNzdWUu
IEJ0dyBpIHVzZWQgdGhpcyBkaXNwbGF5IHRoZSBsYXN0IHllYXJzIGZvciB0ZXN0aW5nIHRoZQo+
Pj4gUmFzcGJlcnJ5IFBpLgo+Pj4KPj4+IEFmdGVyIHRoYXQgaSBjb25uZWN0ZWQgdGhlIFJQSSAz
QiB0byBteSBUViBzY3JlZW4gYW5kIGl0IHdvcmtzIHdpdGggdGhlCj4+PiBwYXRjaCBhcHBsaWVk
Lgo+PiBUaGFua3MgZm9yIHRha2luZyB0aGUgdGltZSBvbiB0aGlzLiBJIGd1ZXNzIGFsbCB3ZSBo
YXZlIGxlZnQgaXMgbG9va2luZyBkZWVwZXIKPj4gaW50byBpdC4gSSdsbCBhZGQgaXQgdG8gbXkg
YmFja2xvZyBmb3Igbm93LgoKaSd2ZSBuYXJyb3dlZCBkb3duIHRoZSBpc3N1ZS4gRnJvbSBrZXJu
ZWwgNC4xOSB1bnRpbCA1LjEgdGhlIERSTQplbXVsYXRlZCBkcml2ZXIgd2FzIHJlc3BvbnNpYmxl
IGZvciBhIHdvcmtpbmcgWCBvbiBteSBSYXNwYmVycnkgUGkgMwp3aXRoIEhQIFpSMjQ0MHcuIFN0
YXJ0aW5nIHdpdGggNS4yIHRoZSB2YzRkcm1mYiB0b29rIG92ZXIgYW5kIHdpdGggNS4zIFgKZGlk
bid0IHN0YXJ0IGFueW1vcmUgKGRpc3BsYXkgZnJlZXplKS4KClNvIGkgc3RhcnQgYmlzZWN0aW5n
IGFuZCB0aGlzIHdhcyB0aGUgY29tbWl0IHdoZXJlIHRoZSBmcmVlemluZyBzdGFydGVkOgoKZTA4
YWI3NGJkNCBkcm0vbW9kZXM6IFJld3JpdGUgdGhlIGNvbW1hbmQgbGluZSBwYXJzZXIKCkFmdGVy
IHRoaXMgaSBlbmFibGVkIGRybSBkZWJ1ZyBhbmQgc2F3IHRoYXQgc3VnZ2VzdCBtb2RlIDE5MjB4
MTIwMCBieQp0aGUgZmlybXdhcmUgaXMgcmVqZWN0ZWQgYnkgdGhlIGRyaXZlciBiZWNhdXNlIHRo
ZSBwaXhlbCBjbG9jayB3b3VsZCBiZQp0b28gaGlnaCAoMTU0IE1IeiwgbWF4ID0gMTQ4LjUpLiBU
aGlzIHdhc24ndCBhIHByb2JsZW0gYmVmb3JlIHNpbmNlIHRoZQpmaXJtd2FyZSBwcm92aWRlZCB2
aWRlbyBjbWRsaW5lIHBhcmFtZXRlciB3YXNuJ3QgcGFyc2VhYmxlOgoKW2RybV0gcGFyc2UgZXJy
b3IgYXQgcG9zaXRpb24gNjkgaW4gdmlkZW8gbW9kZQonMTkyMHgxMjAwTUA2MCxtYXJnaW5fbGVm
dD0wLG1hcmdpbl9yaWdodD0wLG1hcmdpbl90b3A9MCxtYXJnaW5fYm90dG9tPTAnCgpBZnRlciBt
ZW50aW9uZWQgY29tbWl0IHRoZSBkaXNwbGF5IGp1c3QgZnJlZXplcyAobm8gdHJ5IHRvIHVzZQox
OTIweDEwODAsIG5vIGVycm9yIG1lc3NhZ2UpLgoKRm9yIGNvbXBhcmlzb24gaSBzd2l0Y2hlZCB0
byB0aGUgdmVuZG9yIHRyZWUgd2l0aCBmaXJtd2FyZSBrbXMgZHJpdmVyCmFuZCBub3RpY2VkIHRo
YXQgdGhlIGRyaXZlciBzd2l0Y2hlcyB0byAxOTIweDEyMDAgd2l0aCBhIHBpeGVsIGF0IDE1NCBN
SHouCgpTbyB0aGlzIHBhdGNoIHdvcmtzIGZvciBtZToKCi0tLQrCoGRyaXZlcnMvZ3B1L2RybS92
YzQvdmM0X2hkbWkuYyB8IDkgKysrKystLS0tCsKgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdmM0L3Zj
NF9oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9oZG1pLmMKaW5kZXggY2VhMThkYy4u
NjQ3ODAzZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfaGRtaS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2hkbWkuYwpAQCAtNjgxLDExICs2ODEsMTIgQEAgc3Rh
dGljIGVudW0gZHJtX21vZGVfc3RhdHVzCsKgdmM0X2hkbWlfZW5jb2Rlcl9tb2RlX3ZhbGlkKHN0
cnVjdCBkcm1fZW5jb2RlciAqY3J0YywKwqDCoMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgY29u
c3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUpCsKgewotwqDCoMKgIC8qIEhTTSBjbG9j
ayBtdXN0IGJlIDEwOCUgb2YgdGhlIHBpeGVsIGNsb2NrLsKgIEFkZGl0aW9uYWxseSwKLcKgwqDC
oCDCoCogdGhlIEFYSSBjbG9jayBuZWVkcyB0byBiZSBhdCBsZWFzdCAyNSUgb2YgcGl4ZWwgY2xv
Y2ssIGJ1dAotwqDCoMKgIMKgKiBIU00gZW5kcyB1cCBiZWluZyB0aGUgbGltaXRpbmcgZmFjdG9y
LgorwqDCoMKgIC8qIEFjY29yZGluZyB0byBzcGVjIHRoZSBIU00gY2xvY2sgbXVzdCBiZSAxMDgl
IG9mIHRoZSBwaXhlbCBjbG9jay4KK8KgwqDCoCDCoCogQWRkaXRpb25hbGx5LCB0aGUgQVhJIGNs
b2NrIG5lZWRzIHRvIGJlIGF0IGxlYXN0IDI1JSBvZiBwaXhlbCBjbG9jaywKK8KgwqDCoCDCoCog
YnV0IEhTTSBlbmRzIHVwIGJlaW5nIHRoZSBsaW1pdGluZyBmYWN0b3IuCivCoMKgwqAgwqAqIEl0
IHNlZW1zIHRoYXQgb3BlcmF0aW5nIHRoZSBwaXhlbCBjbG9jayBhdCAxNTQgTUh6IHN0aWxsIHdv
cmtzLgrCoMKgwqDCoCDCoCovCi3CoMKgwqAgaWYgKG1vZGUtPmNsb2NrID4gSFNNX0NMT0NLX0ZS
RVEgLyAoMTAwMCAqIDEwOCAvIDEwMCkpCivCoMKgwqAgaWYgKG1vZGUtPmNsb2NrID4gSFNNX0NM
T0NLX0ZSRVEgLyAoMTAwMCAqIDEwNiAvIDEwMCkpCsKgwqDCoMKgIMKgwqDCoCByZXR1cm4gTU9E
RV9DTE9DS19ISUdIOwrCoArCoMKgwqDCoCByZXR1cm4gTU9ERV9PSzsKLS0gCjIuNy40CgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
