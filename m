Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CAFA82B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 14:44:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+EVv/vWK4cdLbaFw4iFYNHfE544qR51T7UV3pY87FT4=; b=scQ9nzDbpFmWQ+
	6Uie0GtJX0tKFbOuUnz+vagJCsWIc7WGnmMko+IURIm3KPjSOf8iLONTx8Gpm9njWNmD42Tnbru9v
	zFodXEXIcPBo3Up80OmzJ50427nS3oRFuHcFyIjbpoB2rKBLIAxmvO2Wxw4X1UBY7K/Vjlj2kJ9zZ
	dBack33tN1vA+WIDhFo7nNHFlRnwwI/5oN6LWD8NlpHCx402q+WBZpC3Kn4ecJFXLoQVz+v4ZUE63
	4RIGroUWh7T03I3IfxNcuGIMnB7GelCl7LJr9j3TBiRBiAlHxzGjebmaZSrl54i40z/EylJBkBGv1
	Snd6VwBzjeI6FLei55GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Udt-0001vl-De; Wed, 04 Sep 2019 12:44:09 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Udg-0001ub-Nv; Wed, 04 Sep 2019 12:43:58 +0000
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 1B4DA2000E;
 Wed,  4 Sep 2019 12:43:33 +0000 (UTC)
Date: Wed, 4 Sep 2019 14:43:32 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 01/15] thermal: armada: use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20190904144332.46ab190f@xps13>
In-Reply-To: <20190904122939.23780-2-yuehaibing@huawei.com>
References: <20190904122939.23780-1-yuehaibing@huawei.com>
 <20190904122939.23780-2-yuehaibing@huawei.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_054356_934228_588C8DA8 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mans@mansr.com, mmayer@broadcom.com, eric@anholt.net,
 linux-stm32@st-md-mailman.stormreply.com, heiko@sntech.de,
 amit.kucheria@verdurent.com, f.fainelli@gmail.com, daniel.lezcano@linaro.org,
 phil@raspberrypi.org, linux-rockchip@lists.infradead.org, agross@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-msm@vger.kernel.org,
 rui.zhang@intel.com, david.hernandezsanchez@st.com, alexandre.torgue@st.com,
 marc.w.gonzalez@free.fr, rjui@broadcom.com, edubezval@gmail.com,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 gregory.0xf0@gmail.com, matthias.bgg@gmail.com, horms+renesas@verge.net.au,
 talel@amazon.com, linux-arm-kernel@lists.infradead.org, sbranden@broadcom.com,
 wsa+renesas@sang-engineering.com, gregkh@linuxfoundation.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, wahrenst@gmx.net,
 mcoquelin.stm32@gmail.com, jun.nie@linaro.org, computersforpeace@gmail.com,
 shawnguo@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWXVlLAoKWXVlSGFpYmluZyA8eXVlaGFpYmluZ0BodWF3ZWkuY29tPiB3cm90ZSBvbiBXZWQs
IDQgU2VwIDIwMTkgMjA6Mjk6MjUKKzA4MDA6Cgo+IFVzZSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBf
cmVzb3VyY2UoKSB0byBzaW1wbGlmeSB0aGUgY29kZSBhIGJpdC4KPiBUaGlzIGlzIGRldGVjdGVk
IGJ5IGNvY2NpbmVsbGUuCj4gCj4gUmVwb3J0ZWQtYnk6IEh1bGsgUm9ib3QgPGh1bGtjaUBodWF3
ZWkuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFl1ZUhhaWJpbmcgPHl1ZWhhaWJpbmdAaHVhd2VpLmNv
bT4KPiAtLS0KPiAgZHJpdmVycy90aGVybWFsL2FybWFkYV90aGVybWFsLmMgfCA0ICstLS0KPiAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3RoZXJtYWwvYXJtYWRhX3RoZXJtYWwuYyBiL2RyaXZlcnMvdGhlcm1h
bC9hcm1hZGFfdGhlcm1hbC5jCj4gaW5kZXggNzA5YTIyZi4uNzBmZTljNiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3RoZXJtYWwvYXJtYWRhX3RoZXJtYWwuYwo+ICsrKyBiL2RyaXZlcnMvdGhlcm1h
bC9hcm1hZGFfdGhlcm1hbC5jCj4gQEAgLTcwOCwxMiArNzA4LDEwIEBAIHN0YXRpYyBpbnQgYXJt
YWRhX3RoZXJtYWxfcHJvYmVfbGVnYWN5KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsCj4g
IAkJCQkgICAgICAgc3RydWN0IGFybWFkYV90aGVybWFsX3ByaXYgKnByaXYpCj4gIHsKPiAgCXN0
cnVjdCBhcm1hZGFfdGhlcm1hbF9kYXRhICpkYXRhID0gcHJpdi0+ZGF0YTsKPiAtCXN0cnVjdCBy
ZXNvdXJjZSAqcmVzOwo+ICAJdm9pZCBfX2lvbWVtICpiYXNlOwo+ICAKPiAgCS8qIEZpcnN0IG1l
bW9yeSByZWdpb24gcG9pbnRzIHRvd2FyZHMgdGhlIHN0YXR1cyByZWdpc3RlciAqLwo+IC0JcmVz
ID0gcGxhdGZvcm1fZ2V0X3Jlc291cmNlKHBkZXYsIElPUkVTT1VSQ0VfTUVNLCAwKTsKPiAtCWJh
c2UgPSBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoJnBkZXYtPmRldiwgcmVzKTsKPiArCWJhc2UgPSBk
ZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2UocGRldiwgMCk7Cj4gIAlpZiAoSVNfRVJSKGJh
c2UpKQo+ICAJCXJldHVybiBQVFJfRVJSKGJhc2UpOwo+ICAKClJldmlld2VkLWJ5OiBNaXF1ZWwg
UmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgoKVGhhbmtzLApNaXF1w6hsCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
