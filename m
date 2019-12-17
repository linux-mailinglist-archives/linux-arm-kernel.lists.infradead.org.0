Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFDD1228E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 11:32:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+En5JkpYzu6EM9wUnbDKu8vqjuXK8S/bZJOA9XblnLk=; b=WpgNKihPHUAX3a
	fCop0MCnvbzDkAcEJlEkYBKPzTfp0HFt2Y5XWtpgaIkGeH2arGkJs79IiHOJb395xGWYkvjvOXew/
	9CWuciOjDvEsyPtwfTTR0hLjp7DJMlzsXTT2SEk08KhEyanU6BT1Tj47Rw62Jk7ZDuu6AiNptVDoo
	5eBCdwZUZCU+CR7LftvD2OdSpO9LOYWlXbduBHeSXBwG+z6wPcGfX53T3/I+QvDjBcz3uoe82OE9o
	UllGUbD8Xt/0uZNKce8feunCsD3Cv6uF5D8tYTy2lgab+bAtOR0+RMNeuR6FQ6yQ+5R+DmmJS1p4o
	q4EY+psabKxDlA1QeVeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihA9p-00039m-I0; Tue, 17 Dec 2019 10:32:49 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihA9c-00038T-0u
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 10:32:37 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBHAWWme076204;
 Tue, 17 Dec 2019 04:32:32 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576578752;
 bh=5z22DOMxe9ERTYZQN4IPLEVBrsRz70Mah/Vov2vIbjk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Qie8fWb/48AlIMLVc4ts4LqusyY3F1qPGN4b+o4Xz+bvUjmFuqFw87c+FzZvh9Wm2
 DzvpAJhd9MKV/aRrzCMtXmmv6cF2iXKwF53uu8+poYhTX6tpcaMcU6Jbk3D8+Lqwnw
 lk8QhnMz1yOvOLvhm2CrO6PBPB1F4tuJdnzJPqRw=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBHAWV93068770
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 17 Dec 2019 04:32:31 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 17
 Dec 2019 04:32:30 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 17 Dec 2019 04:32:30 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBHAWSwp012173;
 Tue, 17 Dec 2019 04:32:29 -0600
Subject: Re: [PATCH] iio: adc: at91: Use dma_request_chan() instead
 dma_request_slave_channel()
To: <Eugen.Hristev@microchip.com>, <jic23@kernel.org>
References: <20191217075043.23539-1-peter.ujfalusi@ti.com>
 <102e71da-8b9c-8528-3bec-b4a22895fb44@microchip.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <d4885bc6-4e3b-42ee-1cf6-c782fa70d3cb@ti.com>
Date: Tue, 17 Dec 2019 12:32:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <102e71da-8b9c-8528-3bec-b4a22895fb44@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_023236_151033_5A18DF4C 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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
Cc: linux-iio@vger.kernel.org, vkoul@kernel.org,
 Ludovic.Desroches@microchip.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRXVnZW4sCgpPbiAxNy8xMi8yMDE5IDkuNTksIEV1Z2VuLkhyaXN0ZXZAbWljcm9jaGlwLmNv
bSB3cm90ZToKPiAKPiAKPiBPbiAxNy4xMi4yMDE5IDA5OjUwLCBQZXRlciBVamZhbHVzaSB3cm90
ZToKPiAKPj4gZG1hX3JlcXVlc3Rfc2xhdmVfY2hhbm5lbCgpIGlzIGEgd3JhcHBlciBvbiB0b3Ag
b2YgZG1hX3JlcXVlc3RfY2hhbigpCj4+IGVhdGluZyB1cCB0aGUgZXJyb3IgY29kZS4KPj4KPj4g
QnkgdXNpbmcgZG1hX3JlcXVlc3RfY2hhbigpIGRpcmVjdGx5IHRoZSBkcml2ZXIgY2FuIHN1cHBv
cnQgZGVmZXJyZWQKPj4gcHJvYmluZyBhZ2FpbnN0IERNQS4KPj4KPj4gU2lnbmVkLW9mZi1ieTog
UGV0ZXIgVWpmYWx1c2kgPHBldGVyLnVqZmFsdXNpQHRpLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVy
cy9paW8vYWRjL2F0OTEtc2FtYTVkMl9hZGMuYyB8IDYgKysrLS0tCj4+ICAgMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBIaSBQZXRlciwKPiAKPiBU
aGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KPiBOaXRwaWNrIDogYXQ5MSBpcyBhbm90aGVyIGRyaXZl
ciAob2xkIG9uZSBmb3IgZGlmZmVyZW50IHBsYXRmb3JtcyksIHNvIAo+IGNhbiB5b3UgcGxlYXNl
IGNoYW5nZSB0aGUgY29tbWl0IG9uZWxpbmUgdG8gaWlvOiBhZGM6IGF0OTEtc2FtYTVkMl9hZGM6
IAo+IHRvIG5vdCBiZSBjb25mdXNlZCBhYm91dCB3aGljaCBkcml2ZXIgaXMgYWZmZWN0ZWQuCgpT
b3JyeSwganVzdCBzZW50IHYyIHdpdGggdGhlIGNvcnJlY3Qgc3ViamVjdCBwcmVmaXguCkJ5IG1p
c3Rha2UgSSBsb29rZWQgYXQgdGhlIGdpdCBsb2cgb2YgYXQ5MV9hZGMuYyBhbmQgcGlja2VkIHRo
ZSB3cm9uZwpwcmVmaXguCgo+IAo+IFRoYW5rcyAhCj4gRXVnZW4KPiAKPj4KPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvaWlvL2FkYy9hdDkxLXNhbWE1ZDJfYWRjLmMgYi9kcml2ZXJzL2lpby9hZGMv
YXQ5MS1zYW1hNWQyX2FkYy5jCj4+IGluZGV4IGUxODUwZjNkNWNmMy4uYTVjNzc3MTIyN2Q1IDEw
MDY0NAo+PiAtLS0gYS9kcml2ZXJzL2lpby9hZGMvYXQ5MS1zYW1hNWQyX2FkYy5jCj4+ICsrKyBi
L2RyaXZlcnMvaWlvL2FkYy9hdDkxLXNhbWE1ZDJfYWRjLmMKPj4gQEAgLTE0NDQsMTAgKzE0NDQs
MTAgQEAgc3RhdGljIHZvaWQgYXQ5MV9hZGNfZG1hX2luaXQoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKPj4gICAgICAgICAgaWYgKHN0LT5kbWFfc3QuZG1hX2NoYW4pCj4+ICAgICAgICAg
ICAgICAgICAgcmV0dXJuOwo+Pgo+PiAtICAgICAgIHN0LT5kbWFfc3QuZG1hX2NoYW4gPSBkbWFf
cmVxdWVzdF9zbGF2ZV9jaGFubmVsKCZwZGV2LT5kZXYsICJyeCIpOwo+PiAtCj4+IC0gICAgICAg
aWYgKCFzdC0+ZG1hX3N0LmRtYV9jaGFuKSAgewo+PiArICAgICAgIHN0LT5kbWFfc3QuZG1hX2No
YW4gPSBkbWFfcmVxdWVzdF9jaGFuKCZwZGV2LT5kZXYsICJyeCIpOwo+PiArICAgICAgIGlmIChJ
U19FUlIoc3QtPmRtYV9zdC5kbWFfY2hhbikpICB7Cj4+ICAgICAgICAgICAgICAgICAgZGV2X2lu
Zm8oJnBkZXYtPmRldiwgImNhbid0IGdldCBETUEgY2hhbm5lbFxuIik7Cj4+ICsgICAgICAgICAg
ICAgICBzdC0+ZG1hX3N0LmRtYV9jaGFuID0gTlVMTDsKPj4gICAgICAgICAgICAgICAgICBnb3Rv
IGRtYV9leGl0Owo+PiAgICAgICAgICB9Cj4+Cj4+IC0tCj4+IFBldGVyCj4+Cj4+IFRleGFzIElu
c3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgo+
PiBZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBI
ZWxzaW5raQo+PgoKLSBQw6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtr
YWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUy
MS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
