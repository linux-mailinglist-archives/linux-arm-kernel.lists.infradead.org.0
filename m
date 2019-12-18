Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9124212575E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 00:05:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gtDOJbDfWi3uY9iOLvDofAYdBKHjPwpl6PecQ1ww2ws=; b=uiRW1h9EXrh3bK
	1xTVn1x7EubUID5znXAU7wWQUX79kJmVYqJ0NpGrNaYaj5/YC5ltjKM59GveqKYSw2vZ5BKpBZyyE
	rBDrXuaPz8h8fjPRzWdPiOljOx/vQcHxXp+5EgiQUS7MqnoxHscFwVJftLFv+rHNQGvYfPHmTj8ay
	4fiM3GhhNtQNy0YcblLBXwGTkqrLt6eQkt2bv9S8k7FXrkoNW0uyIOm4D4NXNXuvJlS6aty25zo95
	WWPJa0y5d8lex+i3ykbu4ExnWG+Ei9jM+lu8zwhkuBvGKl5DK+ek4n1L+FusZtHThkl9uThEZum/h
	HkDjlXF34AmBzq7/6CRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihiNW-0000wr-Ct; Wed, 18 Dec 2019 23:05:14 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihiNE-0000wP-9h; Wed, 18 Dec 2019 23:04:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576710285;
 bh=JeD9UjBEBsG+7esEHJ1K+i5iEZyYkip7/p7WAEBn4m0=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=lz/xHXj8iLzofQiqSW8gCM7dhAzjwfcOjYJwCbD9YGM0meIg659qfOi0ApBWC7pt1
 EKynZ9Mqvt9RKnPZS1Q8JjG8GGHdBjD0DPBaEMzF2mI789g6eI32ni0kic8IK8NwPb
 4Zu+wrZ/lH8msiXon2QzNzHjzQGifb1/xqVSB/bY=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.43.108] ([89.204.137.218]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MIN6p-1igM7f48Cd-004DeO; Thu, 19
 Dec 2019 00:04:45 +0100
Subject: Re: [PATCH v2 0/9] brcmfmac: add support for BCM4359 SDIO chipset
To: Christian Hewitt <christianshewitt@gmail.com>
References: <20191211235253.2539-1-smoch@web.de>
 <D1B53CE9-E87C-4514-A2D7-0FE70A4D1A5D@gmail.com>
From: Soeren Moch <smoch@web.de>
Autocrypt: addr=smoch@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <cb3ac55f-4c8f-b0a0-41ee-f16b3232c87e@web.de>
Date: Thu, 19 Dec 2019 00:04:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <D1B53CE9-E87C-4514-A2D7-0FE70A4D1A5D@gmail.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:OngXJGyXWd1j3PLPDFNMGDzyRaQ9Xj4izf7RsJvC9NTlpKJKj/L
 kJYOzD0XSpE6CMJyA+0bn4AzreDqSCbqpV1cTzU6kvF4y3uc4TnAcRzEJed/+6b33j13qAg
 deQKVr1RriP0/UMI9mYbDRTfVppkk1tHsYjzSLaSveAIXmyfTzBviFVxJQNhJHNIbapkuxR
 G9NVqRrf0FHG8KXUJwA2A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MqJ2ltsPEvc=:H76FQv81RvAxfuYdoPdz3p
 GeYD5H7jRJnP9SvuMAjMhAGKmh7HZH0j+JkmoibUfrBY9fEZPH87DnUvv+GL+JSkNNlGAOB2p
 RpYfD8dRjetMt+9bwfCRLVyvdPXUE0clmHQWhTJ6s5XerS+FvsiMwe8qPsJHpx4TgQBwrz673
 fGeVOvFYT8pHBtfqM9QVP2j9biz+JzhabsfJpQ2I8+Oyp9E21UqgzJ8AG31Zky7oGjej7V8mP
 XTSIyWR3vOLsxcS1GMm5oC2Zgy6THGxa7DCxLfdc2DekRDOT/5drjNsqn/3CNJjdGj3L+JapP
 Cssh6d3m1Uu6B3mJQlkXja55uLlLqZN1nB9EdRZxtMSy8kFEnd2mk8nU3mzKseH0Dgzh7O8lg
 aV6Sq8q8UHzYeN4tpEw5Im+ltxcEQLjRjbTDu5H++8pA5rmhc0xk6lszoh0dggXmd1LnFGrFH
 pnzgc0Mc9xQF3VGZRQHks1A1OZns0xPRBxQun7xsJ2brswZGTW/TywxLVdz8MUjUAcMEv4ova
 X4tKLTzmoTAxeXG3qRMt3atKfq6yRibN4hDW0nvHULVCWpRqybg951JHliebuejvf9pn3QNEx
 njKj+j/kog8tF9taOQsml0maB3c6u30YeEGCGa4TbE1lNRz67osKBgZRLf4PQB3u4opxMTKbh
 DniNdkIx2fsAuwJsD3n4+WUTTAZHWKqVF336+EtFdjhnPGj8MQro7QWGCPX1eEFEW3qi7h0Rd
 CiS0Mni6d+2eldg3t3tSKsrPzWSBgnaDwWvDP0CinvWwbd0cX+95RAMRp20BD1S6f7JIPeTE7
 yIKTYtVUftTyTAO/zVyAD9kmUOnyMo/5IKWVc4Udhy0g/dZLOkoinOl0TnoZ8bW0evXcxquXw
 VEZMKJ5AOmS5OgHiN+SRYRCxDT/KjXJuzRNcnAtnmhTaeVZto8ENu4D1sBp2iLBhQw+daKbXy
 h7qEreFxYYH5PUJMk4+37CaE2a/RCpYwm3lu19C8kSnhF9CTi/6ljdQvJpoxNe+Dril4BimrF
 OTX6+HuOkWYoR/35hMl2Xj7ElNjcx/OrsGHZBF7laRXXTjJ9gCjt4/b+fIvw/FgzddDrKtrNx
 9iFr1k75dVE+RAYRvWfmeo0C0BAwPZbBG0LsgAySZBFqrn9TqHitdoxrOFjVxmEQfPny9jF9G
 gfc44OTPEYH3Ryz9MgMnSX0pdyaAiKK/6k043xqKo2g4yY7IaVghL3IovDoFLxmSu2lEFnXGZ
 hjLOKO/Ix/TN3kudTMAkLxGqlj9WSMG4xdsaPOA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_150456_635846_9C2BC8F7 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [89.204.137.218 listed in dnsbl.sorbs.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.12 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: brcm80211-dev-list.pdl@broadcom.com, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 brcm80211-dev-list@cypress.com, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTguMTIuMTkgMTI6NTUsIENocmlzdGlhbiBIZXdpdHQgd3JvdGU6Cj4+IE9uIDEyIERlYyAy
MDE5LCBhdCAxOjUyIGFtLCBTb2VyZW4gTW9jaCA8c21vY2hAd2ViLmRlPiB3cm90ZToKPj4KPj4g
QWRkIHN1cHBvcnQgZm9yIHRoZSBCQ000MzU5IGNoaXBzZXQgd2l0aCBTRElPIGludGVyZmFjZSBh
bmQgUlNEQiBzdXBwb3J0Cj4+IHRvIHRoZSBicmNtZm1hYyB3aXJlbGVzcyBuZXR3b3JrIGRyaXZl
ciBpbiBwYXRjaGVzIDEtNy4KPj4KPj4gRW5oYW5jZSBkZXZpY2V0cmVlIG9mIHRoZSBSb2NrUHJv
NjQgYXJtNjQvcm9ja2NoaXAgYm9hcmQgdG8gdXNlIGFuCj4+IEFQNjM1OVNBIGJhc2VkIHdpZmkv
YnQgY29tYm8gbW9kdWxlIHdpdGggdGhpcyBjaGlwc2V0IGluIHBhdGNoZXMgOC05Lgo+Pgo+Pgo+
PiBDaHVuZy1Ic2llbiBIc3UgKDEpOgo+PiAgYnJjbWZtYWM6IHNldCBGMiBibG9ja3NpemUgYW5k
IHdhdGVybWFyayBmb3IgNDM1OQo+Pgo+PiBTb2VyZW4gTW9jaCAoNSk6Cj4+ICBicmNtZm1hYzog
Zml4IHJhbWJhc2UgZm9yIDQzNTkvOQo+PiAgYnJjbWZtYWM6IG1ha2UgZXJyb3JzIHdoZW4gc2V0
dGluZyByb2FtaW5nIHBhcmFtZXRlcnMgbm9uLWZhdGFsCj4+ICBicmNtZm1hYzogYWRkIHN1cHBv
cnQgZm9yIEJDTTQzNTkgU0RJTyBjaGlwc2V0Cj4+ICBhcm02NDogZHRzOiByb2NrY2hpcDogUm9j
a1BybzY0OiBlbmFibGUgd2lmaSBtb2R1bGUgYXQgc2RpbzAKPj4gIGFybTY0OiBkdHM6IHJvY2tj
aGlwOiBSb2NrUHJvNjQ6IGhvb2sgdXAgYmx1ZXRvb3RoIGF0IHVhcnQwCj4+Cj4+IFdyaWdodCBG
ZW5nICgzKToKPj4gIGJyY21mbWFjOiByZXNldCB0d28gRDExIGNvcmVzIGlmIGNoaXAgaGFzIHR3
byBEMTEgY29yZXMKPj4gIGJyY21mbWFjOiBhZGQgUlNEQiBjb25kaXRpb24gd2hlbiBzZXR0aW5n
IGludGVyZmFjZSBjb21iaW5hdGlvbnMKPj4gIGJyY21mbWFjOiBub3Qgc2V0IG1ic3MgaW4gdmlm
IGlmIGZpcm13YXJlIGRvZXMgbm90IHN1cHBvcnQgTUJTUwo+IFRoYW5rcyBmb3IgcG9zdGluZyB0
aGlzIHNlcmllcywgdGhpcyBjaGlwIGlzIHdpZGVseSB1c2VkIGJ5IGEgbGFyZ2UgbnVtYmVyIG9m
IGN1cnJlbnQgQW1sb2dpYyBkZXZpY2VzIQo+Cj4gUGF0Y2hlcyAxLTcgaGF2ZSBiZWVuIHRlc3Rl
ZCBvbiBBbWxvZ2ljIEcxMkIgKEtoYWRhcyBWSU0zKSBoYXJkd2FyZSB3aXRoIDUuNS1yYyBrZXJu
ZWwgYW5kIGEgTGlicmVFTEVDIChkaXN0cm8pIGNvbGxlYWd1ZSBhbHNvIHRlc3RlZCB3aXRoIGEg
S2hhZGFzIEVkZ2UgYm9hcmQgKFJLMzM5OSkuIFRoZSBBbXBhayA2Mzk4UyBtb2R1bGUgb24gYm90
aCBib2FyZHMgYXJlIGRldGVjdGVkIGFuZCBjYW4gY29ubmVjdCB0byBuZXR3b3JrcyB0byBwYXNz
IGJhc2ljIGZ1bmN0aW9uYWwgdGVzdGluZy4KVGhhbmtzIGZvciBjb25maXJtaW5nIHRoYXQgdGhp
cyBzZXJpZXMgdG8gYWRkIHN1cHBvcnQgZm9yIHRoZSBCQ000MzU5ClNESU8gY2hpcHNldCB3b3Jr
cyBvbiBkaWZmZXJlbnQgYm9hcmRzLgo+Cj4gT24gdGhlIFZJTTMgYm9hcmQgSSBkbyBzZWUgdGhl
IGZvbGxvd2luZyB3YXJuaW5nIHNwbGF0Ogo+Cj4gWyAgICA3Ljk4NzM1MV0gLS0tLS0tLS0tLS0t
WyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tCj4gWyAgICA3Ljk4NzM4Ml0gV0FSTklORzogQ1BVOiA1
IFBJRDogMzYgYXQgZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21m
bWFjL2JjbXNkaC5jOjc3NiBicmNtZl9zZGlvZF9zZ3RhYmxlX2FsbG9jKzB4MTMwLzB4MTM4IFti
cmNtZm1hY10KPiBbICAgIDcuOTg3Mzg0XSBNb2R1bGVzIGxpbmtlZCBpbjogYnJjbWZtYWMgZWNk
aF9nZW5lcmljIGJyY211dGlsIHJ0Y19tZXNvbl92cnRjIHZpZGVvZGV2IGVjYyBjZmc4MDIxMSBn
cGlvX3BjYTk1M3ggcmZraWxsIGlyX25lY19kZWNvZGVyIGNyY3QxMGRpZl9jZSByY19raGFkYXMg
bWFsaV9rYmFzZShPKSBtZXNvbl9pciBhb19jZWNfZzEyYSBtYyBydGNfaHltODU2MyByY19jb3Jl
IGdwaW9fa2V5c19wb2xsZWQgYWRjX2tleXMgaXB2NiBuZl9kZWZyYWdfaXB2NiBjcmNfY2NpdHQg
c2NoX2ZxX2NvZGVsCj4gWyAgICA3Ljk4NzQwM10gQ1BVOiA1IFBJRDogMzYgQ29tbToga3dvcmtl
ci81OjAgVGFpbnRlZDogRyAgICAgICAgICAgTyAgICAgIDUuNS4wLXJjMSAjMQo+IFsgICAgNy45
ODc0MDRdIEhhcmR3YXJlIG5hbWU6IEtoYWRhcyBWSU0zIChEVCkKPiBbICAgIDcuOTg3NDE3XSBX
b3JrcXVldWU6IGV2ZW50cyBicmNtZl9kcml2ZXJfcmVnaXN0ZXIgW2JyY21mbWFjXQo+IFsgICAg
Ny45ODc0MjBdIHBzdGF0ZTogODAwMDAwMDUgKE56Y3YgZGFpZiAtUEFOIC1VQU8pCj4gWyAgICA3
Ljk4NzQzMl0gcGMgOiBicmNtZl9zZGlvZF9zZ3RhYmxlX2FsbG9jKzB4MTMwLzB4MTM4IFticmNt
Zm1hY10KPiBbICAgIDcuOTg3NDQzXSBsciA6IGJyY21mX3NkaW9fcHJvYmUrMHgyOGMvMHg4OTAg
W2JyY21mbWFjXQo+IFsgICAgNy45ODc0NDRdIHNwIDogZmZmZjgwMDAxMDE3YmE5MAo+IFsgICAg
Ny45ODc0NDVdIHgyOTogZmZmZjgwMDAxMDE3YmE5MCB4Mjg6IDAwMDAwMDAwMDAwMDAwMDAgCj4g
WyAgICA3Ljk4NzQ0N10geDI3OiAwMDAwMDAwMDAwMDAwMDAwIHgyNjogZmZmZjAwMDBhOGMwOTQw
MCAKPiBbICAgIDcuOTg3NDQ5XSB4MjU6IGZmZmY4MDAwMGEyNGNiMDggeDI0OiBmZmZmMDAwMGEz
ODAwNDAwIAo+IFsgICAgNy45ODc0NTFdIHgyMzogZmZmZjgwMDAxMmM2MThjOCB4MjI6IGZmZmYw
MDAwYTY3NWUwMDAgCj4gWyAgICA3Ljk4NzQ1M10geDIxOiBmZmZmMDAwMGE2NzVlMDAwIHgyMDog
MDAwMDAwMDAwMDAwMDAyMyAKPiBbICAgIDcuOTg3NDU0XSB4MTk6IGZmZmYwMDAwYTM4MDAwMDAg
eDE4OiBmZmZmODAwMDEzYjI1OTA4IAo+IFsgICAgNy45ODc0NTZdIHgxNzogZmZmZjgwMDAxM2Iy
NWQwYyB4MTY6IGZmZmY4MDAwMTNiMjUxMDQgCj4gWyAgICA3Ljk4NzQ1N10geDE1OiAwMDAwMDAw
MGYwMDAwMDAwIHgxNDogMDAwMDAwMDAwMDAwMDAwYSAKPiBbICAgIDcuOTg3NDU5XSB4MTM6IDAw
MDAwMDAwMDAwMDAwMDAgeDEyOiAwMDAwMDAwMDAwMDAwMDAxIAo+IFsgICAgNy45ODc0NjBdIHgx
MTogMDAwMDAwMDAwMDAwMDAwNSB4MTA6IDAxMDEwMTAxMDEwMTAxMDEgCj4gWyAgICA3Ljk4NzQ2
MV0geDkgOiBmZmZmZmZmZmZmZmZmZmZmIHg4IDogN2Y3ZjdmN2Y3ZjdmN2Y3ZiAKPiBbICAgIDcu
OTg3NDYzXSB4NyA6IDAwMDAwMDAwMDAwMDAxZmYgeDYgOiAwMDAwMDAwMDAwMDAwMDgwIAo+IFsg
ICAgNy45ODc0NjRdIHg1IDogMDAwMDAwMDAwMDAwMDYwMCB4NCA6IDAwMDAwMDAwMDAwMDAwMDMg
Cj4gWyAgICA3Ljk4NzQ2Nl0geDMgOiBmZmZmMDAwMGE1YTNkODgwIHgyIDogMDAwMDAwMDAwMDAw
MDAyMSAKPiBbICAgIDcuOTg3NDY3XSB4MSA6IDAwMDAwMDAwMDAwMDAwMDMgeDAgOiBmZmZmMDAw
MGE2NzVlMDAwIAo+IFsgICAgNy45ODc0NjldIENhbGwgdHJhY2U6Cj4gWyAgICA3Ljk4NzQ4MV0g
IGJyY21mX3NkaW9kX3NndGFibGVfYWxsb2MrMHgxMzAvMHgxMzggW2JyY21mbWFjXQo+IFsgICAg
Ny45ODc0OTNdICBicmNtZl9zZGlvX3Byb2JlKzB4MjhjLzB4ODkwIFticmNtZm1hY10KPiBbICAg
IDcuOTg3NTA0XSAgYnJjbWZfc2Rpb2RfcHJvYmUrMHhlMC8weDFjMCBbYnJjbWZtYWNdCj4gWyAg
ICA3Ljk4NzUxNl0gIGJyY21mX29wc19zZGlvX3Byb2JlKzB4MTZjLzB4MjA4IFticmNtZm1hY10K
PiBbICAgIDcuOTg3NTIyXSAgc2Rpb19idXNfcHJvYmUrMHhlMC8weDFjOAo+IFsgICAgNy45ODc1
MjZdICByZWFsbHlfcHJvYmUrMHhkOC8weDQyOAo+IFsgICAgNy45ODc1MjldICBkcml2ZXJfcHJv
YmVfZGV2aWNlKzB4ZGMvMHgxMzAKPiBbICAgIDcuOTg3NTMxXSAgZGV2aWNlX2RyaXZlcl9hdHRh
Y2grMHg2Yy8weDc4Cj4gWyAgICA3Ljk4NzUzM10gIF9fZHJpdmVyX2F0dGFjaCsweDljLzB4MTY4
Cj4gWyAgICA3Ljk4NzUzNV0gIGJ1c19mb3JfZWFjaF9kZXYrMHg3MC8weGMwCj4gWyAgICA3Ljk4
NzUzNl0gIGRyaXZlcl9hdHRhY2grMHgyMC8weDI4Cj4gWyAgICA3Ljk4NzUzOF0gIGJ1c19hZGRf
ZHJpdmVyKzB4MTkwLzB4MjIwCj4gWyAgICA3Ljk4NzUzOV0gIGRyaXZlcl9yZWdpc3RlcisweDYw
LzB4MTEwCj4gWyAgICA3Ljk4NzU0MV0gIHNkaW9fcmVnaXN0ZXJfZHJpdmVyKzB4MjQvMHgzMAo+
IFsgICAgNy45ODc1NTJdICBicmNtZl9zZGlvX3JlZ2lzdGVyKzB4MTQvMHg0OCBbYnJjbWZtYWNd
Cj4gWyAgICA3Ljk4NzU2M10gIGJyY21mX2RyaXZlcl9yZWdpc3RlcisweGMvMHgyMCBbYnJjbWZt
YWNdCj4gWyAgICA3Ljk4NzU2N10gIHByb2Nlc3Nfb25lX3dvcmsrMHgxZTAvMHgzNTgKPiBbICAg
IDcuOTg3NTY5XSAgd29ya2VyX3RocmVhZCsweDQwLzB4NDg4Cj4gWyAgICA3Ljk4NzU3MV0gIGt0
aHJlYWQrMHgxMTgvMHgxMjAKPiBbICAgIDcuOTg3NTczXSAgcmV0X2Zyb21fZm9yaysweDEwLzB4
MTgKPiBbICAgIDcuOTg3NTc1XSAtLS1bIGVuZCB0cmFjZSA4MDhhYzdlMTU5ZDFmYzMzIF0tLS0K
Pgo+IEkgZG9u4oCZdCBzZWUgdGhpcyBvbiBvbGRlciBBbWxvZ2ljIFNvQ3MgKEdYTC9HWE0gZGV2
aWNlcyB3aXRoIHZhcmlvdXMgb3RoZXIgQkNNIGNoaXBzKSBvciBhbm90aGVyIEFtbG9naWMgRzEy
QiBkZXZpY2UgKHNhbWUgU29DIHdpdGggYSBkaWZmZXJlbnQgQW1wYWsgbW9kdWxlKSBvciBzb21l
IFJLMzM5OSBkZXZpY2VzLCBzbyBpdCBtYXkgYmUgc29tZXRoaW5nIGJvYXJkIChLaGFkYXMgVklN
Mykgc3BlY2lmaWMuClVuZm9ydHVuYXRlbHkgSSBkb24ndCBrbm93IHRoaXMgS2hhZGFzIFZJTTMg
Ym9hcmQgYW5kIHNwZWNpYWwgcHJvYmxlbXMKdG8gc3VwcG9ydCBicmNtZm1hYyBvbiBpdC4KCk9u
IFJvY2tQcm82NCB0aGVyZSBhcmUgMiBib2FyZCBzcGVjaWZpYyB0d2Vha3MgbmVlZGVkIHRvIGdl
dCB0aGlzCnJ1bm5pbmcgKGFsc28gc2VlIHBhdGNoIDggaW4gdGhpcyBzZXJpZXMsIGFuZCByazMz
OTkuZHRzaSk6Ci0gbGltaXQgY2xvY2sgb2YgdGhlIHNkaW8wIHBvcnQgb2YgcmszMzk5Ci0gZW5h
YmxlIHNkaW8gaW4tYmFuZCBpcnEsIGRvIG5vdCB1c2Ugb3V0LW9mLWJhbmQgaXJxIHRoYXQgdGhl
IHdpZmkKbW9kdWxlIHN1cHBvcnRzLgoKSSBndWVzcyB5b3UgbmVlZCBzaW1pbGFyIGVuaGFuY2Vt
ZW50cyBvZiB0aGUgYm9hcmQgZGV2aWNlIHRyZWUgYXMgaW4KcGF0Y2ggOCBvZiB0aGlzIHNlcmll
cyBmb3IgeW91ciBWSU0zIGJvYXJkLgoKUmVnYXJkcywKU29lcmVuCj4KPiBJIGFsc28gc2VlIHNv
bWUgZXJyb3JzIGxpa2U6Cj4KPiBbICAgNzEuMDQ2NTk3XSBicmNtZm1hYzogYnJjbWZfc2Rpb19y
ZWFkZnJhbWVzOiBSWEhFQURFUiBGQUlMRUQ6IC01Cj4gWyAgIDcxLjA0NjY1Ml0gYnJjbWZtYWM6
IGJyY21mX3NkaW9fcnhmYWlsOiBhYm9ydCBjb21tYW5kLCB0ZXJtaW5hdGUgZnJhbWUsIHNlbmQg
TkFLCj4gWyAgMTIzLjg0NDg2M10gYnJjbWZtYWM6IGJyY21mX3NkaW9fYnVzX3NsZWVwOiBlcnJv
ciB3aGlsZSBjaGFuZ2luZyBidXMgc2xlZXAgc3RhdGUgLTUKPiBbICAxMjQuNjc4MzI5XSBicmNt
Zm1hYzogYnJjbWZfc2Rpb190eGZhaWw6IHNkaW8gZXJyb3IsIGFib3J0IGNvbW1hbmQgYW5kIHRl
cm1pbmF0ZSBmcmFtZQo+IFsgIDEyNC42ODAyMjZdIG1tYzA6IHR1bmluZyBleGVjdXRpb24gZmFp
bGVkOiAtNQo+IFsgIDEyNC43MDg4NDNdIGJyY21mbWFjOiBicmNtZl9zZGlvX2J1c19zbGVlcDog
ZXJyb3Igd2hpbGUgY2hhbmdpbmcgYnVzIHNsZWVwIHN0YXRlIC01Cj4gWyAgMTI1LjcwMDc2NV0g
YnJjbWZtYWM6IGJyY21mX3NkaW9fdHhmYWlsOiBzZGlvIGVycm9yLCBhYm9ydCBjb21tYW5kIGFu
ZCB0ZXJtaW5hdGUgZnJhbWUKPiBbICAxMjUuODgwMzcyXSBicmNtZm1hYzogbW1jX3N1Ym1pdF9v
bmU6IENNRDUzIHNnIGJsb2NrIHJlYWQgZmFpbGVkIC0yMgo+IFsgIDEyNS44ODAzOTNdIGJyY21m
bWFjOiBicmNtZl9zZGlvX3J4Z2xvbTogZ2xvbSByZWFkIG9mIDUxMiBieXRlcyBmYWlsZWQ6IC01
Cj4gWyAgMTI1Ljg4MDQwMV0gYnJjbWZtYWM6IGJyY21mX3NkaW9fcnhmYWlsOiBhYm9ydCBjb21t
YW5kLCB0ZXJtaW5hdGUgZnJhbWUKPiBbICAxMjUuODgxMjYyXSBicmNtZm1hYzogYnJjbWZfc2Rp
b19yZWFkZnJhbWVzOiBicmNtZl9zZGlvX3JlYWRmcmFtZXM6IGdsb20gc3VwZXJmcmFtZSB3L28g
ZGVzY3JpcHRvciEKPiBbICAxMjUuODgxMzE4XSBicmNtZm1hYzogYnJjbWZfc2Rpb19yeGZhaWw6
IHRlcm1pbmF0ZSBmcmFtZQo+IFsgIDEzMS44NDQyODldIGJyY21mbWFjOiBtbWNfc3VibWl0X29u
ZTogQ01ENTMgc2cgYmxvY2sgd3JpdGUgZmFpbGVkIC0yMgo+IFsgIDEzMS44NDQzMDJdIGJyY21m
bWFjOiBicmNtZl9zZGlvX3R4ZmFpbDogc2RpbyBlcnJvciwgYWJvcnQgY29tbWFuZCBhbmQgdGVy
bWluYXRlIGZyYW1lCj4gWyAgMTMxLjg0NDQ4OF0gYnJjbWZtYWM6IG1tY19zdWJtaXRfb25lOiBD
TUQ1MyBzZyBibG9jayB3cml0ZSBmYWlsZWQgLTIyCj4gWyAgMTMxLjg0NDQ5NF0gYnJjbWZtYWM6
IGJyY21mX3NkaW9fdHhmYWlsOiBzZGlvIGVycm9yLCBhYm9ydCBjb21tYW5kIGFuZCB0ZXJtaW5h
dGUgZnJhbWUKPgo+IEnigJltIG5vdCBzdXJlIGlmIHRoYXTigJlzIG9mIGFueSBjb25jZXJuLCBi
dXQgaWYgeWVzLCBJ4oCZZCBiZSBoYXBweSB0byBhcHBseSBhbnkgZGVidWdnaW5nIHBhdGNoZXMg
eW91IHByb3ZpZGUgdG8gZ2VuZXJhdGUgb3V0cHV0Lgo+Cj4gVGhhbmtzIGFnYWluIGZvciB3b3Jr
aW5nIG9uIHRoaXMgY2hpcHNldCEKPgo+IENocmlzdGlhbgo+Cj4KCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
