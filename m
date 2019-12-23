Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7081293FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 11:12:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HEtpROX6FNDPum2jRRZT5M0OQ6MvcBVUBMpojfVla7U=; b=tfUrCFp9jh+Yte
	JZmYcTLarZIg2duTGrFAu+jr+IWk+wO9L37bpB46UhS5punqYK1GVUpRVDnfFYROtN0SEYs66G8Vn
	7fawxOLgYk9dhOBNy9sQEX9nlHA/ZgSylQGbsrlG7Ms5dO6xZ0WePfRH42BTFig28bR4PyYFZLYlZ
	3cNiU/hCqS+XEpEjRKA41czUQgPZ0Ig32fQWdq0MITrckbBIucd7Vry4iEXbU09WZIRqyCqO9eh6E
	SiOzpS0hgg2COuGWJrjhaycRyrzj1I5yApWR0DStPqCVEDtdytmYI50amw1yL4YU8VhqSbQO4/aKJ
	VBfmJVohOLanwao0RZHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijKh8-0008FQ-L1; Mon, 23 Dec 2019 10:12:10 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijKh0-0008Ex-FK
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 10:12:04 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBNABjPi016210;
 Mon, 23 Dec 2019 04:11:45 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1577095905;
 bh=k+tddIamd1GoffpRlXypzqb1aH//9w2l3PTAw6k6ivk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=XdZDPG1BdBY3eniRcgcc0wE2sFeoqj26AvQ/1upCR53cLTTn/ynkbDKdv7ePE7jwH
 +wakbPP9IbfzX+i3gbbbBWiN3F+hKQMFQCsVCDjZDAqI8/YoRVkm1g/ko29ncuDS/X
 IhwqRJ6zYZ+a4jl8RJYbqiKOAifOpBRTP0CYLFXg=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBNABjWd078419
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 23 Dec 2019 04:11:45 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 23
 Dec 2019 04:11:45 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 23 Dec 2019 04:11:45 -0600
Received: from [10.24.69.20] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBNABe33065334;
 Mon, 23 Dec 2019 04:11:41 -0600
Subject: Re: [PATCH V3 2/2] drivers/irqchip: add NXP INTMUX interrupt
 multiplexer support
To: Joakim Zhang <qiangqing.zhang@nxp.com>, Marc Zyngier <maz@kernel.org>
References: <1576827431-31942-1-git-send-email-qiangqing.zhang@nxp.com>
 <1576827431-31942-3-git-send-email-qiangqing.zhang@nxp.com>
 <ad5165ba-24d7-ceeb-8794-cdbe4e564bd5@ti.com>
 <DB7PR04MB4618B9A227807CCF884910C6E62D0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <8bc6bcf113cce13816c62c166f091785@www.loen.fr>
 <DB7PR04MB4618A390C538DCD6929DE998E62D0@DB7PR04MB4618.eurprd04.prod.outlook.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <d7ee5841-0b99-32d3-1d62-d2b47adf4476@ti.com>
Date: Mon, 23 Dec 2019 15:40:52 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <DB7PR04MB4618A390C538DCD6929DE998E62D0@DB7PR04MB4618.eurprd04.prod.outlook.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_021202_613123_7FCB93AC 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Andy Duan <fugang.duan@nxp.com>, "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMC8xMi8xOSA4OjU2IFBNLCBKb2FraW0gWmhhbmcgd3JvdGU6Cj4gCj4+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tCj4+IEZyb206IE1hcmMgWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+
Cj4+IFNlbnQ6IDIwMTnlubQxMuaciDIw5pelIDIyOjIwCj4+IFRvOiBKb2FraW0gWmhhbmcgPHFp
YW5ncWluZy56aGFuZ0BueHAuY29tPgo+PiBDYzogTG9rZXNoIFZ1dGxhIDxsb2tlc2h2dXRsYUB0
aS5jb20+OyB0Z2x4QGxpbnV0cm9uaXguZGU7Cj4+IGphc29uQGxha2VkYWVtb24ubmV0OyByb2Jo
K2R0QGtlcm5lbC5vcmc7IG1hcmsucnV0bGFuZEBhcm0uY29tOwo+PiBzaGF3bmd1b0BrZXJuZWwu
b3JnOyBzLmhhdWVyQHBlbmd1dHJvbml4LmRlOyBBbmR5IER1YW4KPj4gPGZ1Z2FuZy5kdWFuQG54
cC5jb20+OyBTLmouIFdhbmcgPHNoZW5naml1LndhbmdAbnhwLmNvbT47Cj4+IGxpbnV4LWtlcm5l
bEB2Z2VyLmtlcm5lbC5vcmc7IGRsLWxpbnV4LWlteCA8bGludXgtaW14QG54cC5jb20+Owo+PiBr
ZXJuZWxAcGVuZ3V0cm9uaXguZGU7IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+PiBTdWJqZWN0OiBSRTogW1BBVENIIFYzIDIvMl0gZHJpdmVycy9pcnFjaGlwOiBhZGQgTlhQ
IElOVE1VWCBpbnRlcnJ1cHQKPj4gbXVsdGlwbGV4ZXIgc3VwcG9ydAo+Pgo+PiBPbiAyMDE5LTEy
LTIwIDE0OjEwLCBKb2FraW0gWmhhbmcgd3JvdGU6Cj4+Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0KPj4+PiBGcm9tOiBMb2tlc2ggVnV0bGEgPGxva2VzaHZ1dGxhQHRpLmNvbT4KPj4KPj4g
Wy4uLl0KPj4KPj4+PiBEb2VzIHRoZSB1c2VyIGNhcmUgdG8gd2hpY2ggY2hhbm5lbCBkb2VzIHRo
ZSBpbnRlcnJ1cHQgc291cmNlIGdvZXMKPj4+PiB0bz8gSWYgbm90LCBpbnRlcnJ1cHQtY2VsbHMg
aW4gRFQgY2FuIGp1c3QgYmUgYSBzaW5nbGUgZW50cnkgYW5kIHRoZQo+Pj4+IGNoYW5uZWwgc2Vs
ZWN0aW9uIGNhbiBiZSBjb250cm9sbGVkIGJ5IHRoZSBkcml2ZXIgbm8/IEkgYW0gdHJ5aW5nIHRv
Cj4+Pj4gdW5kZXJzdGFuZCB3aHkgdXNlciBzaG91bGQgc3BlY2lmeSB0aGUgY2hhbm5lbCBuby4K
Pj4+IEhpIExva2VzaCwKPj4+Cj4+PiBJZiBhIGZpeGVkIGNoYW5uZWwgaXMgc3BlY2lmaWVkIGlu
IHRoZSBkcml2ZXIsIGFsbCBpbnRlcnJ1cHQgc291cmNlcwo+Pj4gd2lsbCBiZSBjb25uZWN0ZWQg
dG8gdGhpcyBjaGFubmVsLCBhZmZlY3RpbmcgdGhlIGludGVycnVwdCBwcmlvcml0eSB0bwo+Pj4g
c29tZSBleHRlbnQuCj4+Pgo+Pj4gRnJvbSBteSBwb2ludCBvZiB2aWV3LCBhIGZpeGVkIGNoYW5u
ZWwgY291bGQgYmUgZW5vdWdoIGlmIGRvbid0IGNhcmUKPj4+IGludGVycnVwdCBwcmlvcml0eS4K
Pj4KPj4gSG9sZCBvbiBhIHNlYzoKPj4KPj4gSXMgdGhlIGNoYW5uZWwgdG8gd2hpY2ggYW4gaW50
ZXJydXB0IGlzIHJvdXRlZCB0byBwcm9ncmFtbWFibGU/IFdoYXQgaGFzIHRoZQo+PiBwcmlvcml0
eSBvZiB0aGUgaW50ZXJydXB0IHRvIGRvIHdpdGggdGhpcz8gSG93IGRvZXMgdGhpcyBhZmZlY3Qg
aW50ZXJydXB0Cj4+IGRlbGl2ZXJ5Pwo+Pgo+PiBJdCBsb29rcyBsaWtlIHRoaXMgSFcgZG9lcyBt
b3JlIHRoYXQgeW91IGluaXRpYWxseSBleHBsYWluZWQuLi4KPiBIaSBNYXJjLAo+IAo+IFRoZSBj
aGFubmVsIHRvIHdoaWNoIGFuIGludGVycnVwdCBpcyByb3V0ZWQgdG8gaXMgbm90IHByb2dyYW1t
YWJsZS4gRWFjaCBjaGFubmVsIGhhcyB0aGUgc2FtZSAzMiBpbnRlcnJ1cHQgc291cmNlcy4KCkJ1
dCB0aGUgaW50ZXJydXB0IHNvdXJjZSB0byBjaGFubmVsIGlzIHByb2dyYW1tYWJsZSByaWdodD8g
SSBndWVzcyB5b3UgYXJlCndvcnJpZWQgYWJvdXQgdGhlIGFmZmluaXR5IGZvciBlYWNoIGludGVy
cnVwdC4gWW91IGNhbiBicmluZyB0aGUgbG9naWMgaW5zaWRlCnRoZSBkcml2ZXIgdG8gYXNzaWdu
IHRoZSBjaGFubmVsIHRvIGVhY2ggaW50ZXJydXB0IHNvdXJjZSBhbmQgY2FuIG1haW50YWluIHRo
ZQphZmZpbml0eSB0byBzb21lIGV4dGVudC4uCgo+IEVhY2ggY2hhbm5lbCBoYXMgbWFzaywgdW5t
YXNrIGFuZCBzdGF0dXMgcmVnaXN0ZXIuCj4gSWYgdXNlIDEgY2hhbm5lbCwgMzIgaW50ZXJydXB0
IHNvdXJjZXMgaW5wdXQgYW5kIDEgaW50ZXJydXB0IG91dHB1dC4KPiBJZiB1c2UgMiBjaGFubmVs
cywgMzIgaW50ZXJydXB0IHNvdXJjZXMgaW5wdXQgYW5kIDIgaW50ZXJydXB0cyBvdXRwdXQuCj4g
QW5kIHNvIG9uLiBZb3UgY2FuIHNlZSBhYm92ZSBJTlRNVVggYmxvY2sgZGlhZ3JhbS4gVGhpcyBp
cyBob3cgSFcgd29ya3MuCj4gCj4gRm9yIGV4YW1wbGU6Cj4gMSkgdXNlIDEgY2hhbm5lbDoKPiBX
ZSBjYW4gZW5hYmxlIDB+MzEgaW50ZXJydXB0IGluIGNoYW5uZWwgMC4gQW5kIDEgaW50ZXJydXB0
IG91dHB1dC4gSWYgZ2VuZXJhdGUgaW50ZXJydXB0LCB3ZSBjYW5ub3QgZmlndXJlIG91dCB3aGlj
aCBoYWxmIGhhcHBlbmVkIGZpcnN0LgoKSG1tLi4uZG9lcyB0aGlzIG1lYW4gdGhhdCBlYWNoIGNo
YW5uZWwgaXMgY2FwYWJsZSBvZiBoYW5kbGluZyBvbmx5IDE1IGludGVycnVwdApzb3VyY2VzIG9y
IGRpZCBJIG1pc3N1bmRlcnN0b29kIHRoZSBoYXJkd2FyZT8KClRoYW5rcyBhbmQgcmVnYXJkcywK
TG9rZXNoCgo+IDIpdXNlIDIgY2hhbm5lbHM6Cj4gV2UgY2FuIGVuYWJsZSAwfjE1IGludGVycnVw
dCBpbiBjaGFubmVsIDAsIGFuZCBlbmFibGUgMTZ+MzEgaW4gY2hhbm5lbCAxLiBBbmQgMiBpbnRl
cnJ1cHRzIG91dHB1dC4gSWYgZ2VuZXJhdGUgaW50ZXJydXB0LCBhdCBsZWFzdCB3ZSBjYW4gZmlu
ZCBjaGFubmVsIDAgb3IgY2hhbm5lbCAxIGZpcnN0LiBUaGVuIGZpbmQgMH4xNSBvciAxNn4zMSBm
aXJzdC4KPiAKPiBUaGlzIGlzIG15IHVuZGVyc3RhbmRpbmcgb2YgdGhlIGludGVycnVwdCBwcmlv
cml0eSBmcm9tIHRoaXMgaW50bXV4LCBJIGRvbid0IGtub3cgaWYgaXQgaXMgbXkgbWlzdW5kZXJz
dGFuZGluZy4KPiAKPiBCZXN0IFJlZ2FyZHMsCj4gSm9ha2ltIFpoYW5nCj4+ICAgICAgICAgIE0u
Cj4+IC0tCj4+IEphenogaXMgbm90IGRlYWQuIEl0IGp1c3Qgc21lbGxzIGZ1bm55Li4uCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
