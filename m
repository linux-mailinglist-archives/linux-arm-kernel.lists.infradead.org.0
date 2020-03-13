Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0181847D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 14:18:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kN56/G+dFASHK8GfOJjNkWgIffhC3KGEJKtCRLvp7ko=; b=Ewf6EsdGW23OEP
	f/+i68dLyAIGrpD01bbMDO0lEyQLSkYo12iOODMvfLkzLNp20j9UHx8Xuh1/7scdehfJqj4z8HAdY
	IdKfjD/oiz+x78ElHVo2M2YvrdDwTqBHHyDCl4cdNWfR5u8IP4nOsobjM9lM5L4PyslmGVrxVA6rb
	ho5iHPyjjtCrRCc3Ss0WAeeAleyQhkHs8tI8Qm2tF4Uxty1xCCc+fKeL43KqsaRzpDdbiQD5Rejus
	HbvhQXZq+LcN87PXKBGmNqIcDINuOmwHKm6MggSKE0r5ud7WyA3ax5Ye36w5uwCUr+TrYjMPSTJ5V
	gAzCCVQoWfqnj45TzdPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCkCL-0003Kp-KJ; Fri, 13 Mar 2020 13:17:57 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCkCD-0003KA-52; Fri, 13 Mar 2020 13:17:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1584105458;
 bh=s17YN6zBvUkf8m+IR4qkLbONDJ8Rl5iogNahwfY04L0=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=EkroZexSqNRhgu/n7QEI7Qb3xRC9C1nnKzEUwMq4CASb5XasHgRZK3O16owX+G86E
 qaRKlkFwMQvGkX/tl/pYkfCztvOFqhK4kVhGOIXlouy05da2BLzOwnskQAklX6CbxH
 NyxkRZ2T+ZZdxZfXAYrUjjYq57zwriTChnC6uCNs=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.23] ([77.191.109.216]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MRUBA-1ikG0g1dv6-00SjQl; Fri, 13
 Mar 2020 14:17:38 +0100
Subject: Re: [PATCH v2 0/9] brcmfmac: add support for BCM4359 SDIO chipset
To: chi-hsien.lin@cypress.com, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <20191211235253.2539-1-smoch@web.de>
 <1daadfe0-5964-db9b-818c-6e4c75ac6a69@web.de>
 <22526722-1ae8-a018-0e24-81d7ad7512dd@web.de> <2685733.IzV8dBlDb2@diego>
 <d7b05a6c-dfba-c8e0-b5fb-f6f7f5a6c1b7@cypress.com>
From: Soeren Moch <smoch@web.de>
Message-ID: <09d6c2d7-b632-3dd1-2c9d-736ccc18d4a9@web.de>
Date: Fri, 13 Mar 2020 14:17:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <d7b05a6c-dfba-c8e0-b5fb-f6f7f5a6c1b7@cypress.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:BnRPO9/yoBVzD9397yrzsC8frrT9NO6N1rg6fxEL1s/TpY8gBJs
 T9I7UAKzTjLELxaKIyjGe4GEWi8ZkMmTnESd2jeac7rlL2ZyPKZ02neSX55SjVbwuo6WZYg
 uue+4wWpOcKLpRTUf1vrqytHX5qZ7ikSaSBkHWE8K0Dn1QdvlCt/InOde3CWsVhw0ll2H4Q
 0punPCQeAhK0y2UZ5p8ow==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cF3WspyrK0M=:BijzAxOqvZo5FBsY8cbBzu
 a9X5D3QrhmpNrUWUmjpCUCyFBXDwC+zY/LMJtVlbMaqzBphnWmw8WQvOJ3GzwtnSPB7xOnQLg
 Nr6LZhF4y+o4mryN5gJiYkLLlRQYCgF6IUMRlufYfT6NZCjTlEmpR0e07oiH3NCYViB+HLj/W
 qeSaMlsVIFLwAumQrWH5ZjLX3+Bo2nzT+GiplMlyXd21Z9AzW1A7q5aMJLjPpwI/zNloCCD2C
 c+I7khkLyH8lAoYYG16MfMpmkzgEvVqnHOnccExVO43dsSNAxPuMCypRZxjUfhV2F5I3q5nEV
 Yqoq8tbxzXWKDHglQeZs26m/UVHzUn2Yunnzzy3LlHXKA5KnlB9dkiYlQfa6DTbFfGqPTjTW0
 /LNfPfslrrKgp/EI3kupTNu/qlc1tlMmqXXkJOYDRn3sewSQy95UefK5S8s65xM5qqa1gf79C
 MegkN5FQy1Xnuv2KIX8jrxErcBYzJjBicevZxyMtZE+IAhm+sxijzQahlBl8SD3rgKwoJZCzk
 OAMN1N5xyRQ7QOmlMlfn06UMS5s4wHFSDvDbcXpZE0b1nqIxC+CQHvdAVLfAZABsi1JItZdx6
 gZIxoVmJKMul/nzAE3vIodRcVlAX92BvW5k591I6juSFQGW/SDnHndPK0Svp6jc4eJOfcJo4D
 3Wy3GC9oh5UUXG0dRz4U6SToxK6eksE1F8YH4//Qav6ikGVrK1XbENms0c5biat/xL32hmAMq
 hUg3/fLQpp+dwU9mdtsPfrVGjQrd3RPoKDA8mKpHQZJFgnauU81px2MHSEP+bQwr7Bp4nOp7M
 wY5Wytbfga3y/p66R0ypwIsQB56u7AyJ6mpjI7BrKQ4dR9CdpfhuQmB+mavsn+8eukBhXf2E9
 GH48TUquQya1jShqcWnIhwhBNEl8WXo0mTjeFNZvECDBN3NYb138fScLh6lV9n3CK0aM6NSkY
 qwsp8jzWe35yVdZOYJWjCYrpg3vTpyba0o0tYVevRyUB2OBRBAFL+MTBzs1zpLJn0FZVgBsZg
 WLl06i7fmBD24hFbJVGLeiU00OD78uS3Wq3B+V0Gj4eFEOJlREoPCwTDiGnhwv9iEn8D1fMsG
 XmM8fG1qeZfGh3edCLl8RofIkFvhvRAFVCxNO7NJD/6iBYXmSSq3Rb/PYsXbEBW/LwXhtyYDB
 B0labZIm6rEcYDGPl5Ijx3JZqLQGwaJvc/J+AqCnkX5RRoESOR08F/Wi8T9+X+zYoAFc3k/LH
 uybn9eMmp2+5GIPBU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_061749_608545_D1B6AC7A 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [smoch[at]web.de]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.12 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 brcm80211-dev-list@cypress.com, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDEzLjAzLjIwIDEyOjAzLCBDaGktSHNpZW4gTGluIHdyb3RlOgo+IE9uIDEyLzE2LzIwMTkg
Nzo0MywgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+IEhpIFNvZXJlbiwKPj4KPj4gQW0gU29ubnRh
ZywgMTUuIERlemVtYmVyIDIwMTksIDIyOjI0OjEwIENFVCBzY2hyaWViIFNvZXJlbiBNb2NoOgo+
Pj4gT24gMTIuMTIuMTkgMTE6NTksIFNvZXJlbiBNb2NoIHdyb3RlOgo+Pj4+IE9uIDEyLjEyLjE5
IDEwOjQyLCBLYWxsZSBWYWxvIHdyb3RlOgo+Pj4+PiBTb2VyZW4gTW9jaCA8c21vY2hAd2ViLmRl
PiB3cml0ZXM6Cj4+Pj4+Cj4+Pj4+PiBBZGQgc3VwcG9ydCBmb3IgdGhlIEJDTTQzNTkgY2hpcHNl
dCB3aXRoIFNESU8gaW50ZXJmYWNlIGFuZCBSU0RCCj4+Pj4+PiBzdXBwb3J0Cj4+Pj4+PiB0byB0
aGUgYnJjbWZtYWMgd2lyZWxlc3MgbmV0d29yayBkcml2ZXIgaW4gcGF0Y2hlcyAxLTcuCj4+Pj4+
Pgo+Pj4+Pj4gRW5oYW5jZSBkZXZpY2V0cmVlIG9mIHRoZSBSb2NrUHJvNjQgYXJtNjQvcm9ja2No
aXAgYm9hcmQgdG8gdXNlIGFuCj4+Pj4+PiBBUDYzNTlTQSBiYXNlZCB3aWZpL2J0IGNvbWJvIG1v
ZHVsZSB3aXRoIHRoaXMgY2hpcHNldCBpbiBwYXRjaGVzCj4+Pj4+PiA4LTkuCj4+Pj4+Pgo+Pj4+
Pj4KPj4+Pj4+IENodW5nLUhzaWVuIEhzdSAoMSk6Cj4+Pj4+PiDCoMKgIGJyY21mbWFjOiBzZXQg
RjIgYmxvY2tzaXplIGFuZCB3YXRlcm1hcmsgZm9yIDQzNTkKPj4+Pj4+Cj4+Pj4+PiBTb2VyZW4g
TW9jaCAoNSk6Cj4+Pj4+PiDCoMKgIGJyY21mbWFjOiBmaXggcmFtYmFzZSBmb3IgNDM1OS85Cj4+
Pj4+PiDCoMKgIGJyY21mbWFjOiBtYWtlIGVycm9ycyB3aGVuIHNldHRpbmcgcm9hbWluZyBwYXJh
bWV0ZXJzIG5vbi1mYXRhbAo+Pj4+Pj4gwqDCoCBicmNtZm1hYzogYWRkIHN1cHBvcnQgZm9yIEJD
TTQzNTkgU0RJTyBjaGlwc2V0Cj4+Pj4+PiDCoMKgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBSb2Nr
UHJvNjQ6IGVuYWJsZSB3aWZpIG1vZHVsZSBhdCBzZGlvMAo+Pj4+Pj4gwqDCoCBhcm02NDogZHRz
OiByb2NrY2hpcDogUm9ja1BybzY0OiBob29rIHVwIGJsdWV0b290aCBhdCB1YXJ0MAo+Pj4+Pj4K
Pj4+Pj4+IFdyaWdodCBGZW5nICgzKToKPj4+Pj4+IMKgwqAgYnJjbWZtYWM6IHJlc2V0IHR3byBE
MTEgY29yZXMgaWYgY2hpcCBoYXMgdHdvIEQxMSBjb3Jlcwo+Pj4+Pj4gwqDCoCBicmNtZm1hYzog
YWRkIFJTREIgY29uZGl0aW9uIHdoZW4gc2V0dGluZyBpbnRlcmZhY2UgY29tYmluYXRpb25zCj4+
Pj4+PiDCoMKgIGJyY21mbWFjOiBub3Qgc2V0IG1ic3MgaW4gdmlmIGlmIGZpcm13YXJlIGRvZXMg
bm90IHN1cHBvcnQgTUJTUwo+Pj4+Pj4KPj4+Pj4+IMKgIC4uLi9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTktcm9ja3BybzY0LmR0c8KgwqDCoCB8IDUwICsrKysrKysrKysrLS0tCj4+Pj4+PiDCoCAu
Li4vYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL2JjbXNkaC5jwqDCoMKgwqDCoCB8wqAgOCAr
Ky0KPj4+Pj4+IMKgIC4uLi9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvY2ZnODAyMTEuY8Kg
wqDCoCB8IDY4Cj4+Pj4+PiArKysrKysrKysrKysrKystLS0tCj4+Pj4+PiDCoCAuLi4vYnJvYWRj
b20vYnJjbTgwMjExL2JyY21mbWFjL2NoaXAuY8KgwqDCoMKgwqDCoMKgIHwgNTQgKysrKysrKysr
KysrKystCj4+Pj4+PiDCoCAuLi4vYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL2NoaXAuaMKg
wqDCoMKgwqDCoMKgIHzCoCAxICsKPj4+Pj4+IMKgIC4uLi9icm9hZGNvbS9icmNtODAyMTEvYnJj
bWZtYWMvcGNpZS5jwqDCoMKgwqDCoMKgwqAgfMKgIDIgKy0KPj4+Pj4+IMKgIC4uLi9icm9hZGNv
bS9icmNtODAyMTEvYnJjbWZtYWMvc2Rpby5jwqDCoMKgwqDCoMKgwqAgfCAxNyArKysrKwo+Pj4+
Pj4gwqAgaW5jbHVkZS9saW51eC9tbWMvc2Rpb19pZHMuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgfMKgIDIgKwo+Pj4+Pj4gwqAgOCBmaWxlcyBjaGFuZ2VkLCAxNzYgaW5zZXJ0
aW9ucygrKSwgMjYgZGVsZXRpb25zKC0pCj4+Pj4+IEp1c3QgdG8gbWFrZSBzdXJlIHdlIGFyZSBv
biB0aGUgc2FtZSBwYWdlLCBJIHdpbGwgYXBwbHkgcGF0Y2hlcwo+Pj4+PiAxLTcgdG8KPj4+Pj4g
d2lyZWxlc3MtZHJpdmVycy1uZXh0IGFuZCBwYXRjaGVzIDgtOSBnbyB0byBzb21lIG90aGVyIHRy
ZWU/IEFuZAo+Pj4+PiB0aGVyZQo+Pj4+PiBhcmUgbm8gZGVwZW5kZW5jaWVzIGJldHdlZW4gdGhl
IGJyY21mbWFjIHBhdGNoZXMgYW5kIGR0cyBwYXRjaGVzPwo+Pj4+Pgo+Pj4+IFllcywgdGhpcyBh
bHNvIGlzIG15IHVuZGVyc3RhbmRpbmcuIEknbSBnbGFkIGlmIHlvdSBhcmUgZmluZSB3aXRoCj4+
Pj4gcGF0Y2hlcyAxLTcuCj4+Pj4gSGVpa28gd2lsbCBwaWNrIHVwIHBhdGNoZXMgOC05IGxhdGVy
IGZvciBsaW51eC1yb2NrY2hpcCBpbmRlcGVuZGVudGx5Lgo+Pj4+IEFuZCBpZiB3ZSBuZWVkIGFu
b3RoZXIgcm91bmQgb2YgcmV2aWV3IGZvciBwYXRjaGVzIDgtOSwgSSB0aGluayB3ZQo+Pj4+IGRv
bid0Cj4+Pj4gbmVlZCB0byBib3RoZXIgbGludXgtd2lyZWxlc3Mgd2l0aCB0aGlzLgo+Pj4KPj4+
IEhlaWtvLAo+Pj4KPj4+IGlzIHRoaXMgT0sgZm9yIHlvdSB3aGVuIHBhdGNoZXMgMS03IGFyZSBt
ZXJnZWQgbm93IGluIHdpcmVsZXNzLWRyaXZlcnMsCj4+PiBhbmQgdGhlbiBJIHNlbmQgYSB2MyBm
b3IgcGF0Y2hlcyA4LTkgb25seSBmb3IgeW91IHRvIG1lcmdlIGluCj4+PiBsaW51eC1yb2NrY2hp
cCBsYXRlcj8gT3IgZG8geW91IHByZWZlciBhIGZ1bGwgdjMgZm9yIHRoZSB3aG9sZSBzZXJpZXMK
Pj4+IHdpdGggb25seSB0aGlzIHBlbmRpbmcgY2xvY2sgbmFtZSB1cGRhdGUgaW4gcGF0Y2ggOT8K
Pj4KPj4gTm9wZSwgbWVyZ2luZyAxLTcgZnJvbSB0aGlzIHYyIGFuZCB0aGVuIGdldHRpbmcgYSB2
MyB3aXRoIG9ubHkgdGhlIGR0cwo+PiBzdHVmZiBpcyBwZXJmZWN0bHkgZmluZSA6LSkKPgo+IFNv
ZXJlbiwKPgo+IEkgc3VwcG9zZSBwYXRjaCAxLTcgZnJvbSB0aGlzIHNlcmlvdXMgYXJlIGFsbCBn
b29kIGZvciBtZXJnaW5nLiBJcwo+IHRoYXQgcmlnaHQ/IElmIHNvLCBjb3VsZCB5b3UgcGxlYXNl
IGNyZWF0ZSBhIHJlYmFzZWQgVjM/CkNoaS1oc2llbiwKClRoYW5rcyBmb3IgYXNraW5nLCBidXQg
dGhlc2UgcGF0Y2hlcyBhcmUgYWxyZWFkeSBtZXJnZWQgaW4KdG9ydmFsZHMvdjUuNi1yYzEgYXMg
Y29tbWl0cwoxYjhkMmUwYTllNDIuLjI2MzU4NTNjZTRhYgoKU28gZXZlcnl0aGluZyBhbHJlYWR5
IGZpbmUgd2l0aCB0aGlzLgoKVGhhbmtzLApTb2VyZW4KCj4KPgo+IFJlZ2FyZHMsCj4gQ2hpLWhz
aWVuIExpbgo+Cj4+Cj4+IEhlaWtvCj4+Cj4+Cj4+IC4KPj4KCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
