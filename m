Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE071BA1B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 12:50:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=unq9SgRRN7AFemm/bmLvlZI2qYiccsx0W4y4vGY0jK8=; b=n4jHNf0F0fvsaeTku1rOiSn8O
	wpuy80v1ztNhi5QOMCdzojPTVkJSQatQe8c8vE0joEKUMINhHM9TqNQ0BOu4/m4bL/NvITyhWUzZS
	3lDSLe3hBJ9fic6AzTfNgRhMcHWSzwfc8/7YyXQ9dAeT3NHHdJdp/0FzanOSi4WlxrbbUOn5iuP5o
	obfd9Xv5YN9eXwh4ZkYCBuNIL9BXfMNGUEu+JucaHYuX5yQtJ5cLn9iPcAlQDgZHSvDFAx7i7tZlP
	5CJo43/+S5rH9OF4dhl3ep6gXqAQFiHScEvT+YUEuDrJ3hWzirYHnNSP3/iz30CRW4eHDfogZlsfp
	hBHhyXbWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT1LW-0001fn-TX; Mon, 27 Apr 2020 10:50:42 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT1LL-0001e3-Px
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 10:50:33 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03RAoQXT001400;
 Mon, 27 Apr 2020 05:50:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587984626;
 bh=IGT8KtVf7PY2gZ9dU2q+ikbbXQeLIMBV50rwe1LAM80=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=mL4UttTBU230xpooZ1c7vwuHNunAEuD65ZxU9nPRWzcn4X+OHnetVmvL1Q9v6MTQB
 NIsXhHt3QqtXq43Hdz30XG41zctgvylQTy3Z3Nruu+To5kn10r/QgpLkVolIT+sRFB
 5jOD488Lu2mtwWSoQIfHxY0gXAm/ziB1GOMlmvKc=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03RAoQo3001900
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 27 Apr 2020 05:50:26 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 27
 Apr 2020 05:50:25 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 27 Apr 2020 05:50:25 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03RAoONg024515;
 Mon, 27 Apr 2020 05:50:24 -0500
Subject: Re: [PATCH 1/3] arm64: dts: ti: am654: Add DSS node
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>, Rob Herring
 <robh+dt@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Jyri Sarha <jsarha@ti.com>
References: <20200422091512.950-1-tomi.valkeinen@ti.com>
 <591ddc8e-b45a-5a36-ae81-e1b92727dd2d@ti.com>
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <3708a94a-9c42-745b-3dc0-2271fcc266a5@ti.com>
Date: Mon, 27 Apr 2020 13:50:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <591ddc8e-b45a-5a36-ae81-e1b92727dd2d@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_035031_929271_3ED313D1 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjcvMDQvMjAyMCAxMzowOCwgVGVybyBLcmlzdG8gd3JvdGU6Cj4gT24gMjIvMDQvMjAyMCAx
MjoxNSwgVG9taSBWYWxrZWluZW4gd3JvdGU6Cj4+IEZyb206IEp5cmkgU2FyaGEgPGpzYXJoYUB0
aS5jb20+Cj4+Cj4+IEFkZCBEU1Mgbm9kZSB0byBrMy1hbTY1LW1haW4uZHRzaSB3aXRoIGxhYmVs
cyBmb3IgYm9hcmQgc3BlY2lmaWMKPj4gc3VwcG9ydCBhbmQgc3lzY29uIG5vZGUgZm9yIG9sZGkt
aW8tY3RybC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSnlyaSBTYXJoYSA8anNhcmhhQHRpLmNvbT4K
Pj4gU2lnbmVkLW9mZi1ieTogVG9taSBWYWxrZWluZW4gPHRvbWkudmFsa2VpbmVuQHRpLmNvbT4K
Pj4gLS0tCj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtYW02NS1tYWluLmR0c2kgfCA0
NCArKysrKysrKysrKysrKysrKysrKysrKysKPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDQ0IGluc2Vy
dGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtYW02
NS1tYWluLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWFtNjUtbWFpbi5kdHNpCj4+
IGluZGV4IDExODg3YzcyZjIzYS4uN2QxYmM5OTE3MDhlIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3RpL2szLWFtNjUtbWFpbi5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvdGkvazMtYW02NS1tYWluLmR0c2kKPj4gQEAgLTI4Nyw2ICsyODcsMTEgQEAKPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbXV4LXJlZy1tYXNrcyA9IDwweDQwODAgMHgzPiwgLyog
U0VSREVTMCBsYW5lIHNlbGVjdCAqLwo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgPDB4NDA5MCAweDM+OyAvKiBTRVJERVMxIGxhbmUgc2VsZWN0ICovCj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCB9Owo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoCBkc3Nfb2xkaV9pb19j
dHJsOiBkc3Nfb2xkaV9pb19jdHJsQDQxRTAgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBj
b21wYXRpYmxlID0gInN5c2NvbiI7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDww
eDAwMDAwNDFFMCAweDE0PjsKPj4gK8KgwqDCoMKgwqDCoMKgIH07Cj4+IMKgwqDCoMKgwqAgfTsK
Pj4gwqDCoMKgwqDCoCBkd2MzXzA6IGR3YzNANDAwMDAwMCB7Cj4+IEBAIC03NDYsNCArNzUxLDQz
IEBACj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+IMKgwqDCoMKgwqDCoMKgwqDC
oCB9Owo+PiDCoMKgwqDCoMKgIH07Cj4+ICsKPj4gK8KgwqDCoCBkc3M6IGRzc0AwNGEwMDAwMCB7
Cj4+ICvCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gInRpLGFtNjV4LWRzcyI7Cj4+ICvCoMKg
wqDCoMKgwqDCoCByZWcgPcKgwqDCoCA8MHgwIDB4MDRhMDAwMDAgMHgwIDB4MTAwMD4sIC8qIGNv
bW1vbiAqLwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MHgwIDB4MDRhMDIwMDAgMHgwIDB4
MTAwMD4sIC8qIHZpZGwxICovCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwweDAgMHgwNGEw
NjAwMCAweDAgMHgxMDAwPiwgLyogdmlkICovCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDww
eDAgMHgwNGEwNzAwMCAweDAgMHgxMDAwPiwgLyogb3ZyMSAqLwo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCA8MHgwIDB4MDRhMDgwMDAgMHgwIDB4MTAwMD4sIC8qIG92cjIgKi8KPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgPDB4MCAweDA0YTBhMDAwIDB4MCAweDEwMDA+LCAvKiB2cDEgKi8K
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDB4MCAweDA0YTBiMDAwIDB4MCAweDEwMDA+OyAv
KiB2cDIgKi8KPj4gK8KgwqDCoMKgwqDCoMKgIHJlZy1uYW1lcyA9ICJjb21tb24iLCAidmlkbDEi
LCAidmlkIiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIm92cjEiLCAib3ZyMiIsICJ2cDEi
LCAidnAyIjsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAgdGksYW02NXgtb2xkaS1pby1jdHJsID0g
PCZkc3Nfb2xkaV9pb19jdHJsPjsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAgcG93ZXItZG9tYWlu
cyA9IDwmazNfcGRzIDY3IFRJX1NDSV9QRF9FWENMVVNJVkU+Owo+PiArCj4+ICvCoMKgwqDCoMKg
wqDCoCBjbG9ja3MgPcKgwqDCoCA8JmszX2Nsa3MgNjcgMT4sCj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgPCZrM19jbGtzIDIxNiAxPiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCA8JmszX2Nsa3MgNjcgMj47Cj4+ICvCoMKgwqDCoMKgwqDCoCBjbG9jay1uYW1l
cyA9ICJmY2siLCAidnAxIiwgInZwMiI7Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgIC8qCj4+ICvC
oMKgwqDCoMKgwqDCoMKgICogU2V0IHZwMiBjbGsgKERQSV8xX0lOX0NMSykgbXV4IHRvIFBMTDQg
dmlhCj4+ICvCoMKgwqDCoMKgwqDCoMKgICogRElWMS4gU2VlICJGaWd1cmUgMTItMzM2NS4gRFNT
IEludGVncmF0aW9uIgo+PiArwqDCoMKgwqDCoMKgwqDCoCAqIGluIEFNNjV4IFRSTSBmb3IgZGV0
YWlscy4KPj4gK8KgwqDCoMKgwqDCoMKgwqAgKi8KPj4gK8KgwqDCoMKgwqDCoMKgIGFzc2lnbmVk
LWNsb2NrcyA9IDwmazNfY2xrcyA2NyAyPjsKPj4gK8KgwqDCoMKgwqDCoMKgIGFzc2lnbmVkLWNs
b2NrLXBhcmVudHMgPSA8JmszX2Nsa3MgNjcgNT47Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgIGlu
dGVycnVwdHMgPSA8R0lDX1NQSSAxNjYgSVJRX1RZUEVfRURHRV9SSVNJTkc+Owo+PiArCj4+ICvC
oMKgwqDCoMKgwqDCoCBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+IAo+IEFueSByZWFzb24gd2h5IHRo
ZSBub2RlIGlzIGRpc2FibGVkPyBBcmUgeW91IHBsYW5uaW5nIHRvIGVuYWJsZSBpdCBzb21ld2hl
cmUgbGF0ZXIgb24sIG9yIGlzIHRoYXQgCj4gbGVmdCBmb3IgdGhlIHVzZXIgdG8gZG8/CgpJdCdz
IGVuYWJsZWQgaW4gYm9hcmQgRFQgZmlsZXMgb3IgRFQgb3ZlcmxheXMgd2hpY2ggYWRkIGEgZGlz
cGxheSBhbmQgdGhlIERUIGdyYXBoIGZvciB0aGUgCmNvbm5lY3Rpb25zLiBIYXZpbmcgRFNTIGRy
aXZlciBwcm9iZSB3aXRob3V0IGFueSBkaXNwbGF5cyBpcyBhIHdhc3RlIG9mIHJlc291cmNlcy4K
CiAgVG9taQoKLS0gClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUg
MjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3Rp
cGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
