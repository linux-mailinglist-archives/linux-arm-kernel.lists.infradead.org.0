Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B5D19A9F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 13:04:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hoJ/fDHBUXsQI2Yrt2f+wcNZjzr2BfoO4BAvDzlpZHA=; b=hcVzOsXI6VqUGF
	KzdGdI0AkPLBwZpk6Q1LMxUU6uoQGJre3ufbCpMHINI5r1qiBsjNzbsul+NEO4kG+B5qRGUHrpWM2
	/AUk/C2eyRfh3Hy8RsN+VO1leSq8A7Eg13BHCTxfCav1hIBG0ePQahzdl7/j/BaCcXUNAqGUJ818J
	rDzvI5ytvzHLDeTFarPRwYGqfQ96hA1vnwocfy5T0xQH9o+ajnny/qPATXhlm1JBEAzXK8119BuDI
	62fxJtcPeq+b08wKIfuZxP8nu+ACOp+s2HmyyF4LnW8WycxV0v8UfmMCT0r9+dpm5SJHPn3baNxd8
	jmW2D6JMB5s7R2sWI/gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJbAj-0000qa-Hr; Wed, 01 Apr 2020 11:04:37 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJbAb-0000ph-Tz
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 11:04:32 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48sjy05ZH8z1rtM7;
 Wed,  1 Apr 2020 13:04:24 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48sjy04sNZz1r0cS;
 Wed,  1 Apr 2020 13:04:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id dryn0hDFTdTa; Wed,  1 Apr 2020 13:04:22 +0200 (CEST)
X-Auth-Info: P13QGhQEKyjD9t8OKEs8nxx7eM+buhDn3ECmbptOyz0=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed,  1 Apr 2020 13:04:22 +0200 (CEST)
Subject: Re: [PATCH V3 01/22] ARM: dts: stm32: Add alternate pinmux for
 ethernet RGMII
To: Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200331175811.205153-1-marex@denx.de>
 <20200331175811.205153-2-marex@denx.de>
 <06ad9a40-3118-7336-056d-b115aef66599@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <86a4957a-dddd-08b9-e920-2943548610d1@denx.de>
Date: Wed, 1 Apr 2020 13:04:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <06ad9a40-3118-7336-056d-b115aef66599@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_040430_263365_19DC91CF 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

T24gNC8xLzIwIDExOjUyIEFNLCBBbGV4YW5kcmUgVG9yZ3VlIHdyb3RlOgo+IEhpIE1hcmVrCgpI
aSwKClsuLi5dCgo+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTUtcGluY3RybC5k
dHNpCj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNS1waW5jdHJsLmR0c2kKPj4g
QEAgLTE5Niw2ICsxOTYsNTcgQEAgcGluczEgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4g
wqDCoMKgwqDCoCB9Owo+PiDCoCArwqDCoMKgIGV0aGVybmV0MF9yZ21paV9waW5zX2I6IHJnbWlp
LTEgewo+PiArwqDCoMKgwqDCoMKgwqAgcGluczEgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBwaW5tdXggPSA8U1RNMzJfUElOTVVYKCdHJywgNSwgQUYxMSk+LCAvKgo+PiBFVEhfUkdNSUlf
Q0xLMTI1ICovCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8U1RNMzJfUElO
TVVYKCdHJywgNCwgQUYxMSk+LCAvKiBFVEhfUkdNSUlfR1RYX0NMSyAqLwo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPFNUTTMyX1BJTk1VWCgnQicsIDEyLCBBRjExKT4sIC8q
IEVUSF9SR01JSV9UWEQwICovCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8
U1RNMzJfUElOTVVYKCdHJywgMTQsIEFGMTEpPiwgLyogRVRIX1JHTUlJX1RYRDEgKi8KPj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxTVE0zMl9QSU5NVVgoJ0MnLCAyLCBBRjEx
KT4sIC8qIEVUSF9SR01JSV9UWEQyICovCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCA8U1RNMzJfUElOTVVYKCdFJywgMiwgQUYxMSk+LCAvKiBFVEhfUkdNSUlfVFhEMyAqLwo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPFNUTTMyX1BJTk1VWCgnRycsIDEx
LCBBRjExKT4sIC8qIEVUSF9SR01JSV9UWF9DVEwgKi8KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIDxTVE0zMl9QSU5NVVgoJ0MnLCAxLCBBRjExKT47IC8qIEVUSF9NREMgKi8K
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYmlhcy1kaXNhYmxlOwo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBkcml2ZS1wdXNoLXB1bGw7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNs
ZXctcmF0ZSA9IDwyPjsKPj4gK8KgwqDCoMKgwqDCoMKgIH07Cj4+ICvCoMKgwqDCoMKgwqDCoCBw
aW5zMiB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBpbm11eCA9IDxTVE0zMl9QSU5NVVgo
J0EnLCAyLCBBRjExKT47IC8qIEVUSF9NRElPICovCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGJpYXMtZGlzYWJsZTsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJpdmUtcHVzaC1wdWxs
Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzbGV3LXJhdGUgPSA8MD47Cj4+ICvCoMKgwqDC
oMKgwqDCoCB9Owo+PiArwqDCoMKgwqDCoMKgwqAgcGluczMgewo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBwaW5tdXggPSA8U1RNMzJfUElOTVVYKCdDJywgNCwgQUYxMSk+LCAvKiBFVEhfUkdN
SUlfUlhEMCAqLwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPFNUTTMyX1BJ
Tk1VWCgnQycsIDUsIEFGMTEpPiwgLyogRVRIX1JHTUlJX1JYRDEgKi8KPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxTVE0zMl9QSU5NVVgoJ0gnLCA2LCBBRjExKT4sIC8qIEVU
SF9SR01JSV9SWEQyICovCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8U1RN
MzJfUElOTVVYKCdCJywgMSwgQUYxMSk+LCAvKiBFVEhfUkdNSUlfUlhEMyAqLwo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPFNUTTMyX1BJTk1VWCgnQScsIDEsIEFGMTEpPiwg
LyogRVRIX1JHTUlJX1JYX0NMSyAqLwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgPFNUTTMyX1BJTk1VWCgnQScsIDcsIEFGMTEpPjsgLyogRVRIX1JHTUlJX1JYX0NUTCAqLwo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBiaWFzLWRpc2FibGU7Cj4+ICvCoMKgwqDCoMKgwqDC
oCB9Owo+PiArwqDCoMKgIH07Cj4+ICsKPj4gK8KgwqDCoCBldGhlcm5ldDBfcmdtaWlfcGluc19z
bGVlcF9iOiByZ21paS1zbGVlcC0xIHsKPiAKPiBJIGp1c3QgbWVyZ2VkIGEgc2VyaWVzIGZyb20g
QWhtYWQgdGhhdCB1bmlmeSBwaW5zIGdyb3VwIG5hbWUuIFNvIGl0Cj4gc2hvdWxkIGJlIGV0aGVy
bmV0MF9yZ21paV9zbGVlcF9waW5zX2IuIEFzIGEgbG90IGNoYW5nZSBoYXZlIGJlZW4gZG9uZQo+
IGluIHBpbmN0cmwgZHRzaSBkaWxlcywgY2FuIHlvdSByZWJhc2Ugb24gdG9wIG9mIHN0bTMyLW5l
dCBwbGVhc2U/CgpHcmVhdC4gRG8geW91IGhhdmUgYSBsaW5rIHRvIHRoaXMgdHJlZSB3aXRoIHRo
aXMgYnJhbmNoID8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
