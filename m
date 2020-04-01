Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C26F719AC1F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 14:54:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfe51ea6faYlJ8buAV05tfC67bQFuamhOaJ2cQIyN5g=; b=I0IjhdPRSfp4A6
	vBy1woMJLxjqlg4kH2FrSrXo5iDd6liceZMtVc/KECubWOQxmZJeDSw3AFFC5Vnwrt+S7dULLt08I
	niDDS5CY3o/hogqJ7P6BQJRrafMIVmH9Szo/tJIf4xf2b8NMfnsbHNwy5JvzseCJUtFK+PQtj1IHz
	KKecGLVaI0eIWEHE34r1wCo1O3AxVETmXxArIO1f0RKKhRTJXYAAaqW+YGPFygkYpzVtyJYOg7YwW
	5s0ZmekVu/xN70co18jr1+j6WUtDkh3FvoJVomIIc2LIns1Ou/ejCMbQ11oEL7LfFtlF1h6q/KB7v
	yKdmVr/bnB45u67N8v0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJcsS-0001Ux-4c; Wed, 01 Apr 2020 12:53:52 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJcsL-0001U6-Q4
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 12:53:47 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48smN825PXz1qrf8;
 Wed,  1 Apr 2020 14:53:44 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48smN81KtRz1r0cV;
 Wed,  1 Apr 2020 14:53:44 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 8USAorR7QHc5; Wed,  1 Apr 2020 14:53:43 +0200 (CEST)
X-Auth-Info: CkaXDWL2aPDQWtXFJ2NHMLBg5LF1b+qx0X5QUxiedY8=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed,  1 Apr 2020 14:53:43 +0200 (CEST)
Subject: Re: [PATCH V3 01/22] ARM: dts: stm32: Add alternate pinmux for
 ethernet RGMII
To: Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200331175811.205153-1-marex@denx.de>
 <20200331175811.205153-2-marex@denx.de>
 <06ad9a40-3118-7336-056d-b115aef66599@st.com>
 <86a4957a-dddd-08b9-e920-2943548610d1@denx.de>
 <6634a7b7-e786-6840-649f-0c49b16fd450@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <a2fed019-8c68-d6d5-4ee5-cb419fbbf5e0@denx.de>
Date: Wed, 1 Apr 2020 14:52:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <6634a7b7-e786-6840-649f-0c49b16fd450@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_055346_150186_96736ADB 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Patrick Delaunay <patrick.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNC8xLzIwIDE6NDkgUE0sIEFsZXhhbmRyZSBUb3JndWUgd3JvdGU6Cj4gCj4gCj4gT24gNC8x
LzIwIDE6MDQgUE0sIE1hcmVrIFZhc3V0IHdyb3RlOgo+PiBPbiA0LzEvMjAgMTE6NTIgQU0sIEFs
ZXhhbmRyZSBUb3JndWUgd3JvdGU6Cj4+PiBIaSBNYXJlawo+Pgo+PiBIaSwKPj4KPj4gWy4uLl0K
Pj4KPj4+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTUtcGluY3RybC5kdHNpCj4+
Pj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1LXBpbmN0cmwuZHRzaQo+Pj4+IEBA
IC0xOTYsNiArMTk2LDU3IEBAIHBpbnMxIHsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+
Pj4+IMKgwqDCoMKgwqDCoCB9Owo+Pj4+IMKgwqAgK8KgwqDCoCBldGhlcm5ldDBfcmdtaWlfcGlu
c19iOiByZ21paS0xIHsKPj4+PiArwqDCoMKgwqDCoMKgwqAgcGluczEgewo+Pj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHBpbm11eCA9IDxTVE0zMl9QSU5NVVgoJ0cnLCA1LCBBRjExKT4sIC8q
Cj4+Pj4gRVRIX1JHTUlJX0NMSzEyNSAqLwo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCA8U1RNMzJfUElOTVVYKCdHJywgNCwgQUYxMSk+LCAvKiBFVEhfUkdNSUlfR1RYX0NM
SyAqLwo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8U1RNMzJfUElOTVVY
KCdCJywgMTIsIEFGMTEpPiwgLyogRVRIX1JHTUlJX1RYRDAgKi8KPj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgPFNUTTMyX1BJTk1VWCgnRycsIDE0LCBBRjExKT4sIC8qIEVU
SF9SR01JSV9UWEQxICovCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxT
VE0zMl9QSU5NVVgoJ0MnLCAyLCBBRjExKT4sIC8qIEVUSF9SR01JSV9UWEQyICovCj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxTVE0zMl9QSU5NVVgoJ0UnLCAyLCBBRjEx
KT4sIC8qIEVUSF9SR01JSV9UWEQzICovCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIDxTVE0zMl9QSU5NVVgoJ0cnLCAxMSwgQUYxMSk+LCAvKiBFVEhfUkdNSUlfVFhfQ1RM
ICovCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxTVE0zMl9QSU5NVVgo
J0MnLCAxLCBBRjExKT47IC8qIEVUSF9NREMgKi8KPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBiaWFzLWRpc2FibGU7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJpdmUtcHVzaC1w
dWxsOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNsZXctcmF0ZSA9IDwyPjsKPj4+PiAr
wqDCoMKgwqDCoMKgwqAgfTsKPj4+PiArwqDCoMKgwqDCoMKgwqAgcGluczIgewo+Pj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHBpbm11eCA9IDxTVE0zMl9QSU5NVVgoJ0EnLCAyLCBBRjExKT47
IC8qIEVUSF9NRElPICovCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYmlhcy1kaXNhYmxl
Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRyaXZlLXB1c2gtcHVsbDsKPj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBzbGV3LXJhdGUgPSA8MD47Cj4+Pj4gK8KgwqDCoMKgwqDCoMKg
IH07Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHBpbnMzIHsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBwaW5tdXggPSA8U1RNMzJfUElOTVVYKCdDJywgNCwgQUYxMSk+LCAvKgo+Pj4+IEVUSF9S
R01JSV9SWEQwICovCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxTVE0z
Ml9QSU5NVVgoJ0MnLCA1LCBBRjExKT4sIC8qIEVUSF9SR01JSV9SWEQxICovCj4+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxTVE0zMl9QSU5NVVgoJ0gnLCA2LCBBRjExKT4s
IC8qIEVUSF9SR01JSV9SWEQyICovCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIDxTVE0zMl9QSU5NVVgoJ0InLCAxLCBBRjExKT4sIC8qIEVUSF9SR01JSV9SWEQzICovCj4+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxTVE0zMl9QSU5NVVgoJ0EnLCAx
LCBBRjExKT4sIC8qIEVUSF9SR01JSV9SWF9DTEsgKi8KPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgPFNUTTMyX1BJTk1VWCgnQScsIDcsIEFGMTEpPjsgLyogRVRIX1JHTUlJ
X1JYX0NUTCAqLwo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJpYXMtZGlzYWJsZTsKPj4+
PiArwqDCoMKgwqDCoMKgwqAgfTsKPj4+PiArwqDCoMKgIH07Cj4+Pj4gKwo+Pj4+ICvCoMKgwqAg
ZXRoZXJuZXQwX3JnbWlpX3BpbnNfc2xlZXBfYjogcmdtaWktc2xlZXAtMSB7Cj4+Pgo+Pj4gSSBq
dXN0IG1lcmdlZCBhIHNlcmllcyBmcm9tIEFobWFkIHRoYXQgdW5pZnkgcGlucyBncm91cCBuYW1l
LiBTbyBpdAo+Pj4gc2hvdWxkIGJlIGV0aGVybmV0MF9yZ21paV9zbGVlcF9waW5zX2IuIEFzIGEg
bG90IGNoYW5nZSBoYXZlIGJlZW4gZG9uZQo+Pj4gaW4gcGluY3RybCBkdHNpIGRpbGVzLCBjYW4g
eW91IHJlYmFzZSBvbiB0b3Agb2Ygc3RtMzItbmV0IHBsZWFzZT8KPj4KPj4gR3JlYXQuIERvIHlv
dSBoYXZlIGEgbGluayB0byB0aGlzIHRyZWUgd2l0aCB0aGlzIGJyYW5jaCA/Cj4+Cj4gCj4gU29y
cnkgSSBtZWFuIHN0bTMyLW5leHQgYnJhbmNoIGhlcmU6Cj4gZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcv
cHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2F0b3JndWUvc3RtMzIuZ2l0CgpPSywgdGhhbmtzLgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
