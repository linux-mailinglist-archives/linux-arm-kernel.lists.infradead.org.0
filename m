Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 917C2114EA5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 11:02:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H06wgQmaITx+sv9hIr18bgKyaJJyi8kMfJH/i69rwDk=; b=lp0QcrHyEjv1UH
	z2cCkDr8hyU0S/hmAKnysrv4aVtgtW984lm/OWTiuIZLjxjjPzRwG7nujeXJPWelOhDmK67sj6FxK
	TzuCkcDfdv8cI2z/PkHmDrFXgHrc+kzfMFVrn8TmCEZsm5IDMqM/xyaMASvdQlogVO3fO9sid22XF
	wsdCjLn/zppjevk8GQGnxfW/aS1Ix3s2+EwTEKE4StEyBS2rQRuwNUf4DzC9zLChNBQzIDnqsgSGm
	1DEnvBbrKss+jy6zlAsXoXlHq+7v3vVQHbxFZ2XyeyCubbUsbyut/OEKVPFAGRR3WPpuDCWQH0mQ0
	/f3XmCyObSH0X8nNTH4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idARf-0003Mu-W7; Fri, 06 Dec 2019 10:02:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idARP-0003Ge-VU
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 10:02:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 41D4C1FB;
 Fri,  6 Dec 2019 02:02:24 -0800 (PST)
Received: from [10.1.194.43] (e112269-lin.cambridge.arm.com [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C748C3F718;
 Fri,  6 Dec 2019 02:02:22 -0800 (PST)
Subject: Re: [PATCH] drm/panfrost: no need to display probe deferred error
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Rob Herring <robh@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
References: <20191205221102.28248-1-peron.clem@gmail.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <ad2de6cc-41a2-7a4e-fe8a-84890b6c110a@arm.com>
Date: Fri, 6 Dec 2019 10:02:21 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191205221102.28248-1-peron.clem@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_020228_062461_6C2FF31C 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDUvMTIvMjAxOSAyMjoxMSwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+IFBhbmZyb3N0IGRy
aXZlciBpcyBzaG91dGluZyBhbiBlcnJvciBpZiB0aGUgcmVndWxhdG9yIGluaXQKPiByZXR1cm4g
YW4gLUVQUk9CRV9ERUZGRVIuIFRoaXMgaXMgYSBub3QgYSByZWFsIGVycm9yIGFuZAo+IGl0IGRv
ZXNuJ3QgcmVxdWlyZSB0byBiZSBkaXNwbGF5Lgo+IAo+IENoZWNrIGlmIHRoZSBlcnJvciBpcyBu
b3QgYW4gRVBST0JFX0RFRkZFUiBiZWZvcmUgZGlzcGxheWluZyBpdC4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+IC0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZGV2aWNlLmMgfCA2ICsrKystLQo+ICAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZGV2aWNlLmMgYi9kcml2ZXJz
L2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZGV2aWNlLmMKPiBpbmRleCAyMzhmYjZkNTRkZjQu
LjAwY2VmMDYyYzM1ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFu
ZnJvc3RfZGV2aWNlLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3Rf
ZGV2aWNlLmMKPiBAQCAtOTIsNyArOTIsOCBAQCBzdGF0aWMgaW50IHBhbmZyb3N0X3JlZ3VsYXRv
cl9pbml0KHN0cnVjdCBwYW5mcm9zdF9kZXZpY2UgKnBmZGV2KQo+ICAJcGZkZXYtPnJlZ3VsYXRv
ciA9IGRldm1fcmVndWxhdG9yX2dldChwZmRldi0+ZGV2LCAibWFsaSIpOwo+ICAJaWYgKElTX0VS
UihwZmRldi0+cmVndWxhdG9yKSkgewo+ICAJCXJldCA9IFBUUl9FUlIocGZkZXYtPnJlZ3VsYXRv
cik7Cj4gLQkJZGV2X2VycihwZmRldi0+ZGV2LCAiZmFpbGVkIHRvIGdldCByZWd1bGF0b3I6ICVk
XG4iLCByZXQpOwo+ICsJCWlmIChyZXQgIT0gLUVQUk9CRV9ERUZFUikKPiArCQkJZGV2X2Vycihw
ZmRldi0+ZGV2LCAiZmFpbGVkIHRvIGdldCByZWd1bGF0b3I6ICVkXG4iLCByZXQpOwo+ICAJCXJl
dHVybiByZXQ7Cj4gIAl9Cj4gIAo+IEBAIC0xMzAsNyArMTMxLDggQEAgaW50IHBhbmZyb3N0X2Rl
dmljZV9pbml0KHN0cnVjdCBwYW5mcm9zdF9kZXZpY2UgKnBmZGV2KQo+ICAKPiAgCWVyciA9IHBh
bmZyb3N0X3JlZ3VsYXRvcl9pbml0KHBmZGV2KTsKPiAgCWlmIChlcnIpIHsKPiAtCQlkZXZfZXJy
KHBmZGV2LT5kZXYsICJyZWd1bGF0b3IgaW5pdCBmYWlsZWQgJWRcbiIsIGVycik7Cj4gKwkJaWYg
KGVyciAhPSAtRVBST0JFX0RFRkVSKQo+ICsJCQlkZXZfZXJyKHBmZGV2LT5kZXYsICJyZWd1bGF0
b3IgaW5pdCBmYWlsZWQgJWRcbiIsIGVycik7CgpZb3UgY291bGQgYWN0dWFsbHkgZHJvcCB0aGlz
IGRldl9lcnIoKSBhbHRvZ2V0aGVyIC0KcGFuZnJvc3RfcmVndWxhdG9yX2luaXQoKSB3aWxsIGFs
d2F5cyBwcm9kdWNlIGl0J3Mgb3duIGRldl9lcnIoKSBvdXRwdXQKaWYgaXQgcmV0dXJucyBub24t
emVyby4KCkVpdGhlciB3YXk6CgpSZXZpZXdlZC1ieTogU3RldmVuIFByaWNlIDxzdGV2ZW4ucHJp
Y2VAYXJtLmNvbT4KCj4gIAkJZ290byBlcnJfb3V0MDsKPiAgCX0KPiAgCj4gCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
