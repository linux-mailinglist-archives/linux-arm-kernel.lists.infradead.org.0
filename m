Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF443444E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nQn8o1r/OpcyQk+FrhowPSSDS8vU7GdMmh48ZG6zjIM=; b=Tku30IcYvZFy28
	szG3PM5uXjjbWonLKxspVZ85wWLK9P7SMbidp2LsQzJJSDccvEtRp6dxY63YCwnPIf5JVgDoBSqyo
	xspl1ubI5Kq42/siv+njeMvEu/wwM/K1nC1qelNWTAYnTTUb0f/cPWsqEj3m++UUvZB6/fD55DXGp
	+CoLJ/eqaoturY/z4/O+VDC8AwxVCxMARi3uxcXEbr/liNXthew57SnWAasLdPmlBSJ/+nLjOaj5b
	GrERouXiSfMX9o8NNysEIMb9IeuCC+dPjZL3/iwO1HWhJ/HB+1g2FFPWQhoBIAtEEClfWQYgId08g
	ppVEe50EstEmHQx7AeHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6Yx-0006ri-OP; Tue, 04 Jun 2019 10:21:03 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6Yq-0006rE-KD
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 10:20:57 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54AKrP3116973;
 Tue, 4 Jun 2019 05:20:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559643653;
 bh=nm0T5tQenif1+kAsSPqyl4wh91LtWhi71eWiiNKnBeY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=d2kZYuIGugnMLJz0GM4y66ITknvNQAhndKVQtzcY3SEQqejcOaaGiBooRJbl7wcEk
 jtrxb0KzRzwYDByfvCpoIHR2lYN0bNxq+g4+O9ckvrYw8o+OVaO1zvkERQU24VTluF
 BhnGLUq/AsqRyTZsAGE9cKvXvj8M3DEh9s7+bcTY=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54AKrNE114078
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 05:20:53 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 05:20:52 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 05:20:52 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54AKoSa025637;
 Tue, 4 Jun 2019 05:20:51 -0500
Subject: Re: [PATCH] firmware: ti_sci: Parse all resource ranges even if some
 is not available
To: Lokesh Vutla <lokeshvutla@ti.com>, <nm@ti.com>, <t-kristo@ti.com>,
 <ssantosh@kernel.org>
References: <20190604101000.6741-1-peter.ujfalusi@ti.com>
 <4ff3a042-41a2-62d3-c899-7a62406ad6a4@ti.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <685f477a-65fe-36ae-0081-a329554714a9@ti.com>
Date: Tue, 4 Jun 2019 13:21:17 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <4ff3a042-41a2-62d3-c899-7a62406ad6a4@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_032056_744229_B08E4C9B 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNC8wNi8yMDE5IDEzLjEzLCBMb2tlc2ggVnV0bGEgd3JvdGU6Cj4gCj4gCj4gT24gMDQv
MDYvMTkgMzo0MCBQTSwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+IERvIG5vdCBmYWlsIGlmIGFu
eSBvZiB0aGUgcmVxdWVzdGVkIHN1YnR5cGVzIGFyZSBub3QgYXZhaWxhYmUsIGJ1dCBzZXQgdGhl
Cj4+IG51bWJlciBvZiByZXNvdXJjZXMgdG8gMCBhbmQgY29udGludWUgcGFyc2luZyB0aGUgcmVz
b3VyY2UgcmFuZ2VzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBVamZhbHVzaSA8cGV0ZXIu
dWpmYWx1c2lAdGkuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvZmlybXdhcmUvdGlfc2NpLmMgfCAx
MSArKysrKysrKystLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZmlybXdhcmUvdGlfc2NpLmMgYi9k
cml2ZXJzL2Zpcm13YXJlL3RpX3NjaS5jCj4+IGluZGV4IGFmM2ViY2RlYWIxOC4uNWQxM2VkNzI0
ZmYwIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2Zpcm13YXJlL3RpX3NjaS5jCj4+ICsrKyBiL2Ry
aXZlcnMvZmlybXdhcmUvdGlfc2NpLmMKPj4gQEAgLTI3ODMsNiArMjc4Myw3IEBAIGRldm1fdGlf
c2NpX2dldF9vZl9yZXNvdXJjZShjb25zdCBzdHJ1Y3QgdGlfc2NpX2hhbmRsZSAqaGFuZGxlLAo+
PiAgCXN0cnVjdCB0aV9zY2lfcmVzb3VyY2UgKnJlczsKPj4gIAl1MzIgcmVzb3VyY2Vfc3VidHlw
ZTsKPj4gIAlpbnQgaSwgcmV0Owo+PiArCWJvb2wgdmFsaWRfc2V0ID0gZmFsc2U7Cj4gCj4gTWlu
b3Igbml0OiBDYW4geW91IG1haW50YWluIHRoZSByZXZlcnNlIENocmlzdG1hcyB0cmVlIGhlcmU/
IEl0IGxvb2tzIGdvb2QgOikgTm8KPiBzdHJvbmcgZmVlbGluZ3MgdGhvdWdoCgpib29sIG5vX3Zh
bGlkX3NldHMgPSB0cnVlOwoKYW5kIHdoZW4gd2UgaGF2ZSBhdCBsZWFzdCBvbmUgdmFsaWQgc2V0
IGZsaXAgaXQgdG8gZmFsc2U/IFRoYXQncyBlcXVhbGx5CnR3aXN0ZWQgaWYgbm90IHdvcnN0LiBp
bWhvCgo+IAo+IE90aGVyIHRoYW4gdGhhdDoKPiBSZXZpZXdlZC1ieTogTG9rZXNoIFZ1dGxhIDxs
b2tlc2h2dXRsYUB0aS5jb20+Cj4gCj4gVGhhbmtzIGFuZCByZWdhcmRzLAo+IExva2VzaAo+IAoK
LSBQw6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIs
IDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFp
a2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
