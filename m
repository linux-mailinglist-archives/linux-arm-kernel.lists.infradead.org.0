Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 206D01E0E8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 14:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fbphV6JMwQ+oDNCXht9HR80/LPmwxi4f7ovKgFKE8vs=; b=ahr9b9+NnjLP7hVBBNUkaa+s0
	Aq8OskXujutwdzyWYtts9wgb9GFWHnGhfJH1guiszd+dt85tkX06k2AbSr4dpQ5j2cIjj4nX1LPxM
	+ARrgr7vL+09Cn7fVuamAthrOs7jiJlTSCk3A4jOn9kmenQLMvxkPHjO5glhyeYQDVN2HLKItFagz
	scuODAjPEg/YuT2l5QsPE8b2XHNBGUxBps7Ws2gQszwORfCaklvwlO1/EAwgPBBFWJNHqG2NIHzOO
	2CE6KVgPLPJ6vdfPVYF1pp+/fvEFP/SDf1h34Me2l74wbWJLHH7IsXWO7ppwU+bwD9mGXnYsed/NC
	AyKA/0qew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdCNZ-00078O-Uy; Mon, 25 May 2020 12:38:53 +0000
Received: from gateway30.websitewelcome.com ([192.185.152.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdCNQ-00077X-O4
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 12:38:46 +0000
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
 by gateway30.websitewelcome.com (Postfix) with ESMTP id C594E4265
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 07:38:40 -0500 (CDT)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id dCNMjAb9SSl8qdCNMjQz8y; Mon, 25 May 2020 07:38:40 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2TljW7JsW+WCZFc/vJnuFILXikxQwHFnuGlW+UY2ObY=; b=jaAKaoE9zh9aAvTL7GhKDpQNfZ
 eCkF23JYStQG4EZq2qZzqP49go5dOw9ojs1PsnVGvyLai1KxDT0AnuEHSZvt78SEUFG+kIeKJSNGm
 AywzfK60JlfYclTVBVEX/O13c507O3NL15Y4kkECBAyR+/rsBt1CgI57jNHVHol3waSbwKkicclDh
 byKVOqwGT+T5D2Qi2dW56i2rq6Kd1g6EeQeS1wQYX/6LduDjKI08Rzu3w48VIyPCsL2C2on24UlnZ
 s55pwtE+N4dhLk3lwOZ7O+IOUvl34wTmWtY9SGSZjZpgXHK0NySh8NAyoOr5hA3zZNwtRX/8W6zbv
 BnZy0WJg==;
Received: from [191.31.196.240] (port=53056 helo=[192.168.15.5])
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1jdCNM-002LnX-Dr; Mon, 25 May 2020 09:38:40 -0300
Subject: Re: [PATCH v5 2/3] dt-bindings: arm: actions: Document Caninos Loucos
 Labrador
To: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>,
 manivannan.sadhasivam@linaro.org, robh+dt@kernel.org
References: <20200525013008.108750-1-matheus@castello.eng.br>
 <20200525013008.108750-3-matheus@castello.eng.br>
 <8fc7b0d0-6516-ecd4-ce9c-a63a3cba7e9a@suse.de>
From: Matheus Castello <matheus@castello.eng.br>
Message-ID: <752b0710-ba99-ef19-d3c2-78cca5c6bdf2@castello.eng.br>
Date: Mon, 25 May 2020 09:38:36 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <8fc7b0d0-6516-ecd4-ce9c-a63a3cba7e9a@suse.de>
Content-Language: pt-BR
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.196.240
X-Source-L: No
X-Exim-ID: 1jdCNM-002LnX-Dr
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.15.5]) [191.31.196.240]:53056
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 8
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_053844_871901_0BDF4BEE 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.152.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.185.152.11 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, igor.lima@lsitec.org.br,
 edgar.righi@lsitec.org.br, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywKCkVtIDUvMjUvMjAgNzo0MSBBTSwgQW5kcmVhcyBGw6RyYmVyIGVzY3JldmV1
Ogo+IEhpLAo+IAo+IEFtIDI1LjA1LjIwIHVtIDAzOjMwIHNjaHJpZWIgTWF0aGV1cyBDYXN0ZWxs
bzoKPj4gVXBkYXRlIHRoZSBkb2N1bWVudGF0aW9uIHRvIGFkZCB0aGUgQ2FuaW5vcyBMb3Vjb3Mg
TGFicmFkb3IuIExhYnJhZG9yCj4+IHByb2plY3QgY29uc2lzdHMgb2YgYSBjb21wdXRlciBvbiBt
b2R1bGUgYmFzZWQgb24gdGhlIEFjdGlvbnMgU2VtaSBTNTAwCj4+IHByb2Nlc3NvciBhbmQgdGhl
IExhYnJhZG9yIGJhc2UgYm9hcmQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1hdGhldXMgQ2FzdGVs
bG8gPG1hdGhldXNAY2FzdGVsbG8uZW5nLmJyPgo+PiBBY2tlZC1ieTogUm9iIEhlcnJpbmcgPHJv
YmhAa2VybmVsLm9yZz4KPj4gLS0tCj4+IMKgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9hcm0vYWN0aW9ucy55YW1sIHwgNSArKysrKwo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNSBp
bnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvYXJtL2FjdGlvbnMueWFtbCAKPj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvYXJtL2FjdGlvbnMueWFtbAo+PiBpbmRleCBhY2UzZmRhYTgzOTYuLjIxODdlMWM1
YmM3MyAxMDA2NDQKPj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9hY3Rpb25zLnlhbWwKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2FybS9hY3Rpb25zLnlhbWwKPj4gQEAgLTE5LDYgKzE5LDExIEBAIHByb3BlcnRpZXM6Cj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGFsbG8sc3Bhcmt5ICMgQWxsby5jb20gU3Bh
cmt5Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGN1YmlldGVjaCxjdWJpZWJv
YXJkNiAjIEN1YmlldGVjaCBDdWJpZUJvYXJkNgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0g
Y29uc3Q6IGFjdGlvbnMsczUwMAo+PiArwqDCoMKgwqDCoCAtIGl0ZW1zOgo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgIC0gZW51bToKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY2FuaW5v
cyxsYWJyYWRvci12MiAjIExhYnJhZG9yIENvcmUgdjIKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIC0gY2FuaW5vcyxsYWJyYWRvci1iYXNlLW0gIyBMYWJyYWRvciBCYXNlIEJvYXJkIE0g
djEKPiAKPiBUaGlzIGVudW0gc3RpbGwgc3RyaWtlcyBtZSBhcyB3cm9uZywgaXQgbWVhbnMgZWl0
aGVyLW9yLiAoV2FzIHBsYW5uaW5nIAo+IHRvIGxvb2sgaW50byBpdCBteXNlbGYsIGJ1dCBubyB0
aW1lIHlldC4uLikgY2FuaW5vcyxsYWJyYWRvci12MiBzaG91bGQgCj4gYmUgYSBjb25zdCBvbmUg
bGV2ZWwgZG93bjogYm9hcmQsIFNvTSwgU29DIGZyb20gbW9zdCBzcGVjaWZpYyB0byBtb3N0IAo+
IGdlbmVyaWMuIENvbXBhcmUgR3VpdGFyIGJlbG93LgoKSSBnb3QgaXQsIEkgYWdyZWUgbWFrZSBz
ZW5zZSwgSSB3aWxsIHNlbmQgdGhlIHY2LgoKPiAKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoCAtIGNv
bnN0OiBhY3Rpb25zLHM1MDAKPj4gwqDCoMKgwqDCoMKgwqAgLSBpdGVtczoKPj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAtIGVudW06Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAt
IGxlbWFrZXIsZ3VpdGFyLWJiLXJldi1iICMgTGVNYWtlciBHdWl0YXIgQmFzZSBCb2FyZCAKPj4g
cmV2LiBCCj4gCj4gUmVnYXJkcywKPiBBbmRyZWFzCj4gCgpCZXN0IFJlZ2FyZHMsCk1hdGhldXMg
Q2FzdGVsbG8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
