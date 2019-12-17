Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 063E9122B0E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 13:15:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UC4habLe2B9dR4gnor5zti7cZUMLNthlnmtoGSCDnc4=; b=t7ChBDi6xPFruO
	f5uq4HOSIZKmTFmoATvY0H/xQlNa79BPl6sTx1ao8rBXdMrF0wKt61/818sG9D43R8zJhm6wXQfVT
	jtzNrDT+31n2c7dDkJ6riOH99JI5nH8mUtdjwECLZXCEhk4tJEE/CYsfXj1PaLsMF4d2wwpw4FEOq
	f4ULgM3j7Kmhi9HgJWDOiUvirf3RQkjy7h9sSFXd4mHtkVIWATUjwRqvwYyLl++GM1W0i3UgOFJuV
	EPRZYlrRt8ZaaVF7/bzRgXgfmY1lPh4sgYSzBZfOEgMrpEuIHg9G7Y8vryq5gJFZEMtRVUS2ERCSj
	Df5I5yGNGhHGD3zvwHkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihBlV-0000mo-Vx; Tue, 17 Dec 2019 12:15:49 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihBlJ-0000mJ-FP; Tue, 17 Dec 2019 12:15:38 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBHCFX20050766;
 Tue, 17 Dec 2019 06:15:33 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576584933;
 bh=tiBTZBVZZUyfG1wtAQA0cbMS1Uad3ftsgVbxfku27BA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=rDdNNzxMLMOiRS1WpGu33OEooLiBoWmayuhWEVcEl8xD4kephNvZ6WMOpBiVbvgF4
 NIpyvCFdqzef4VJxFzxJelT5lMPiLS3S2GxlK/eJzgeIXBLMwXt9zWUYjZIWnagyYI
 WNlIfoXDcDtukgFfwn7ijPLyYqTj6egtX2mvlVvU=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBHCFXK5008159
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 17 Dec 2019 06:15:33 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 17
 Dec 2019 06:15:33 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 17 Dec 2019 06:15:33 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBHCFUbD038749;
 Tue, 17 Dec 2019 06:15:31 -0600
Subject: Re: [PATCH] mmc: bcm2835: Use dma_request_chan() instead
 dma_request_slave_channel()
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, <ulf.hansson@linaro.org>, 
 <f.fainelli@gmail.com>, <rjui@broadcom.com>, <sbranden@broadcom.com>
References: <20191217112625.30715-1-peter.ujfalusi@ti.com>
 <cd316378273d18b93b5dcad8b357821a708c7805.camel@suse.de>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <1eecb651-cce7-b099-e2d2-65dcde357a71@ti.com>
Date: Tue, 17 Dec 2019 14:15:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <cd316378273d18b93b5dcad8b357821a708c7805.camel@suse.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_041537_618001_C6C28A9B 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, vkoul@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxNy8xMi8yMDE5IDEzLjM3LCBOaWNvbGFzIFNhZW56IEp1bGllbm5lIHdyb3RlOgo+IEhp
IFBldGVyLAo+IAo+IE9uIFR1ZSwgMjAxOS0xMi0xNyBhdCAxMzoyNiArMDIwMCwgUGV0ZXIgVWpm
YWx1c2kgd3JvdGU6Cj4+IGRtYV9yZXF1ZXN0X3NsYXZlX2NoYW5uZWwoKSBpcyBhIHdyYXBwZXIg
b24gdG9wIG9mIGRtYV9yZXF1ZXN0X2NoYW4oKQo+PiBlYXRpbmcgdXAgdGhlIGVycm9yIGNvZGUu
Cj4+Cj4+IEJ5IHVzaW5nIGRtYV9yZXF1ZXN0X2NoYW4oKSBkaXJlY3RseSB0aGUgZHJpdmVyIGNh
biBzdXBwb3J0IGRlZmVycmVkCj4+IHByb2JpbmcgYWdhaW5zdCBETUEuCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IFBldGVyIFVqZmFsdXNpIDxwZXRlci51amZhbHVzaUB0aS5jb20+Cj4+IC0tLQo+PiAg
ZHJpdmVycy9tbWMvaG9zdC9iY20yODM1LmMgfCAxMCArKysrKysrKystCj4+ICAxIGZpbGUgY2hh
bmdlZCwgOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL21tYy9ob3N0L2JjbTI4MzUuYyBiL2RyaXZlcnMvbW1jL2hvc3QvYmNtMjgzNS5jCj4+
IGluZGV4IDk5ZjYxZmQyYTY1OC4uMzgyMWYxNTlkMzZkIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L21tYy9ob3N0L2JjbTI4MzUuYwo+PiArKysgYi9kcml2ZXJzL21tYy9ob3N0L2JjbTI4MzUuYwo+
PiBAQCAtMTM5Myw3ICsxMzkzLDE1IEBAIHN0YXRpYyBpbnQgYmNtMjgzNV9wcm9iZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+PiAgCWhvc3QtPmRtYV9jaGFuID0gTlVMTDsKPj4gIAlo
b3N0LT5kbWFfZGVzYyA9IE5VTEw7Cj4+ICAKPj4gLQlob3N0LT5kbWFfY2hhbl9yeHR4ID0gZG1h
X3JlcXVlc3Rfc2xhdmVfY2hhbm5lbChkZXYsICJyeC10eCIpOwo+PiArCWhvc3QtPmRtYV9jaGFu
X3J4dHggPSBkbWFfcmVxdWVzdF9jaGFuKGRldiwgInJ4LXR4Iik7Cj4+ICsJaWYgKElTX0VSUiho
b3N0LT5kbWFfY2hhbl9yeHR4KSkgewo+PiArCQlpZiAoUFRSX0VSUihob3N0LT5kbWFfY2hhbl9y
eHR4KSA9PSAtRVBST0JFX0RFRkVSKQo+PiArCQkJcmV0dXJuIC1FUFJPQkVfREVGRVI7Cj4gCj4g
SSB0aGluayB5b3Ugc2hvdWxkICdnb3RvIGVycicgaGVyZSwgYXMgeW91IGhhdmUgdG8gZnJlZSB0
aGUgbW1jIGhvc3Qgc3RydWN0dXJlCj4gYWxsb2NhdGVkIGVhcmxpZXIgaW4gdGhlIHByb2JlIGZ1
bmN0aW9uLgoKWW91IGFyZSByaWdodC4KCj4gT3RoZXIgdGhhbiB0aGF0IHRoZSBwYXRjaCBsb29r
cyBnb29kIHRvIG1lLgo+IAo+IFJlZ2FyZHMsCj4gTmljb2xhcwo+IAoKLSBQw6l0ZXIKClRleGFz
IEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtp
LgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBI
ZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
