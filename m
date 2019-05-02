Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8985B118C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 14:13:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wvYXJeyEJLqWhAMl4JOP0/oCbNqUrXylLlh1DYhFkYM=; b=YCH8QhPE/EI1aw
	YRJHM6y/i9bZCQNS7fz4r7rmqmbH3p0jG47b/9a9PvnZYCaymvbWtA8lkOJUEONPNehnwAs7umeuE
	V5Wm+LxirNPWYs6N4YigUc+LdHfGDKUfXfFc1hvBzg1IsegElbt4ZMEJMmPu6J9RO5GIeZtJ4KNe3
	9QBYp0G5+c13NwsW6u77z7rd7ykFMaU8AG/4AiNvJjGETkhXW56YXWlGMYeiY57RIbVHixr+B4zM/
	wljOOIAVaJMiIQjAQrrG8Zn3DYUBbvrtQIwWtNmz8aKGphojPix7bI8f9expO3tCORtKykdzC2G/7
	7mgIZML7dixML+ePuvNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMAag-0003n9-Uw; Thu, 02 May 2019 12:13:30 +0000
Received: from 8.mo178.mail-out.ovh.net ([46.105.74.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMAaZ-0003mY-7i
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 12:13:25 +0000
Received: from player738.ha.ovh.net (unknown [10.108.35.158])
 by mo178.mail-out.ovh.net (Postfix) with ESMTP id 7D9105E125
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  2 May 2019 14:13:09 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player738.ha.ovh.net (Postfix) with ESMTPSA id 5EE455742B83;
 Thu,  2 May 2019 12:12:59 +0000 (UTC)
Subject: Re: [PATCH] ARM: imx: cpuidle-imx6sx: Restrict the SW2ISO increase to
 i.MX6SX
To: Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
References: <20190502113020.8642-1-festevam@gmail.com>
From: =?UTF-8?Q?S=c3=a9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
Openpgp: preference=signencrypt
Message-ID: <0a76bd74-6d9e-05e1-5928-f62eaf059e0b@armadeus.com>
Date: Thu, 2 May 2019 14:13:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190502113020.8642-1-festevam@gmail.com>
Content-Language: en-US
X-Ovh-Tracer-Id: 16056458574684181756
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddrieelgdehudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_051323_421323_3C2E5D6F 
X-CRM114-Status: GOOD (  20.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.74.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: cniedermaier@dh-electronics.com, anson.huang@nxp.com,
 stable@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS8yLzE5IDE6MzAgUE0sIEZhYmlvIEVzdGV2YW0gd3JvdGU6Cj4gU2luY2UgY29tbWl0IDFl
NDM0YjcwMzI0OCAoIkFSTTogaW14OiB1cGRhdGUgdGhlIGNwdSBwb3dlciB1cCB0aW1pbmcKPiBz
ZXR0aW5nIG9uIGkubXg2c3giKSBzb21lIGNoYXJhY3RlcnMgbG9zcyBpcyBub3RpY2VkIG9uIGku
TVg2VUxMIFVBUlQKPiBhcyByZXBvcnRlZCBieSBDaHJpc3RvcGggTmllZGVybWFpZXIuCj4gCj4g
VGhlIGludGVudGlvbiBvZiBzdWNoIGNvbW1pdCB3YXMgdG8gaW5jcmVhc2UgdGhlIFNXMklTTyBm
aWVsZCBmb3IgaS5NWDZTWAo+IG9ubHksIGJ1dCBzaW5jZSBjcHVpZGxlLWlteDZzeCBpcyBhbHNv
IHVzZWQgb24gaS5NWDZVTC9pLk1YNlVMTCB0aGlzIGNhdXNlZAo+IHVuaW50ZW5kZWQgc2lkZSBl
ZmZlY3RzIG9uIG90aGVyIFNvQ3MuCj4gCj4gRml4IHRoaXMgcHJvYmxlbSBieSBrZWVwaW5nIHRo
ZSBvcmlnaW5hbCBTVzJJU08gdmFsdWUgZm9yIGkuTVg2VUwvaS5NWDZVTEwKPiBhbmQgb25seSBp
bmNyZWFzZSBTVzJJU08gaW4gdGhlIGkuTVg2U1ggY2FzZS4KPiAKPiBDYzogc3RhYmxlQHZnZXIu
a2VybmVsLm9yZwo+IEZpeGVzOiAxZTQzNGI3MDMyNDggKCJBUk06IGlteDogdXBkYXRlIHRoZSBj
cHUgcG93ZXIgdXAgdGltaW5nIHNldHRpbmcgb24gaS5teDZzeCIpCj4gUmVwb3J0ZWQtYnk6IENo
cmlzdG9waCBOaWVkZXJtYWllciA8Y25pZWRlcm1haWVyQGRoLWVsZWN0cm9uaWNzLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+Cj4gLS0tCj4g
IGFyY2gvYXJtL21hY2gtaW14L2NwdWlkbGUtaW14NnN4LmMgfCA5ICsrKysrKysrLQo+ICAxIGZp
bGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL21hY2gtaW14L2NwdWlkbGUtaW14NnN4LmMgYi9hcmNoL2FybS9tYWNoLWlt
eC9jcHVpZGxlLWlteDZzeC5jCj4gaW5kZXggZmQwMDUzZTQ3YTE1Li41N2NiOWM3NjMyMjIgMTAw
NjQ0Cj4gLS0tIGEvYXJjaC9hcm0vbWFjaC1pbXgvY3B1aWRsZS1pbXg2c3guYwo+ICsrKyBiL2Fy
Y2gvYXJtL21hY2gtaW14L2NwdWlkbGUtaW14NnN4LmMKPiBAQCAtMTUsNiArMTUsNyBAQAo+ICAK
PiAgI2luY2x1ZGUgImNvbW1vbi5oIgo+ICAjaW5jbHVkZSAiY3B1aWRsZS5oIgo+ICsjaW5jbHVk
ZSAiaGFyZHdhcmUuaCIKPiAgCj4gIHN0YXRpYyBpbnQgaW14NnN4X2lkbGVfZmluaXNoKHVuc2ln
bmVkIGxvbmcgdmFsKQo+ICB7Cj4gQEAgLTk5LDggKzEwMCwxMiBAQCBzdGF0aWMgc3RydWN0IGNw
dWlkbGVfZHJpdmVyIGlteDZzeF9jcHVpZGxlX2RyaXZlciA9IHsKPiAgCS5zYWZlX3N0YXRlX2lu
ZGV4ID0gMCwKPiAgfTsKPiAgCj4gKyNkZWZpbmUgU1cySVNPX09SSUdJTkFMCQkweDIKPiArI2Rl
ZmluZSBTVzJJU09fSU1YNlNYCQkweGYKPiAgaW50IF9faW5pdCBpbXg2c3hfY3B1aWRsZV9pbml0
KHZvaWQpCj4gIHsKPiArCXUzMiBzdzJpc28gPSBTVzJJU09fT1JJR0lOQUw7Cj4gKwo+ICAJaW14
Nl9zZXRfaW50X21lbV9jbGtfbHBtKHRydWUpOwo+ICAJaW14Nl9lbmFibGVfcmJjKGZhbHNlKTsK
PiAgCWlteF9ncGNfc2V0X2wyX21lbV9wb3dlcl9pbl9scG0oZmFsc2UpOwo+IEBAIC0xMTAsNyAr
MTE1LDkgQEAgaW50IF9faW5pdCBpbXg2c3hfY3B1aWRsZV9pbml0KHZvaWQpCj4gIAkgKiBleGNl
cHQgZm9yIHBvd2VyIHVwIHN3MmlzbyB3aGljaCBuZWVkIHRvIGJlCj4gIAkgKiBsYXJnZXIgdGhh
biBMRE8gcmFtcCB1cCB0aW1lLgo+ICAJICovCj4gLQlpbXhfZ3BjX3NldF9hcm1fcG93ZXJfdXBf
dGltaW5nKDB4ZiwgMSk7Cj4gKwlpZiAoY3B1X2lzX2lteDZzeCgpKQo+ICsJCXN3MmlzbyA9IFNX
MklTT19JTVg2U1g7Cj4gKwlpbXhfZ3BjX3NldF9hcm1fcG93ZXJfdXBfdGltaW5nKHN3Mmlzbywg
MSk7Cj4gIAlpbXhfZ3BjX3NldF9hcm1fcG93ZXJfZG93bl90aW1pbmcoMSwgMSk7Cj4gIAo+ICAJ
cmV0dXJuIGNwdWlkbGVfcmVnaXN0ZXIoJmlteDZzeF9jcHVpZGxlX2RyaXZlciwgTlVMTCk7Cj4g
CgpUZXN0ZWQtYnk6IFPDqWJhc3RpZW4gU3p5bWFuc2tpIDxzZWJhc3RpZW4uc3p5bWFuc2tpQGFy
bWFkZXVzLmNvbT4KClJlZ2FyZHMsCgotLSAKU8OpYmFzdGllbiBTenltYW5za2kKU29mdHdhcmUg
ZW5naW5lZXIsIEFybWFkZXVzIFN5c3RlbXMKVGVsOiArMzMgKDApOSA3MiAyOSA0MSA0NApGYXg6
ICszMyAoMCk5IDcyIDI4IDc5IDI2CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
