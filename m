Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6985E9BCD6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 11:44:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVQRIqXiOT757IeF1Jou184342XIVZxnORQ/vbDo/As=; b=KskUi1kQZZIatR
	pitPsbHY5xnnEdMNf6arlTxtXVRHiRz7c64/CJt3tU1tMhBly3kgX9Hgn32iItpz50z3Kvksw43fu
	E+Zex4s1hLQKGR52r2jCUYBsGNSktUERfxcoWK58QUInkOnRGw4nfLVkl/Ivl6nGJ7kwY5fM1y9Aa
	X2RbNziQZPD8lj8DEAOPNsRt5Q6i0Jp8JBtv00JRUHYpXncSYaIWcPbwQ5L6afq9sKDTEx/Mirw/f
	U01yXAVqyzHoNOTSKdV5XxgdIgchrrQo6HNU5ETPLz8cqBihrnL/pEQuMVZWWVF+AHaRl7p28BqsP
	xcuhaPJUEYIRklmgpkag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Sb0-0006fu-5o; Sat, 24 Aug 2019 09:44:30 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Sao-0006fa-37
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 09:44:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566639851;
 bh=o25+H6F80CL7d71UPSF8mu/OUpqJZUbmDQzA3VpDamo=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=ktSl/ZDfKw+6djwR6auE4UBReMMkjXtRktYBhI7y9X1ISreouMCWEnH9bKryXNT5c
 L/YQl/SWv7wcQsCw1SAjZFIDdwSe9DKRcm9PIQ1TqCmbyErxQ8goS8ou1eBegA1XNz
 MYWEXtBGjc+tENPGAbjLaTlYb6ZV8j/rOWDKFpPE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.106]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mlw7V-1iSIsi1SXz-00j3kB; Sat, 24
 Aug 2019 11:44:11 +0200
Subject: Re: [PATCH 3/3] pwm: bcm2835: suppress error message during deferred
 probe
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <1566630445-4599-1-git-send-email-wahrenst@gmx.net>
 <1566630445-4599-4-git-send-email-wahrenst@gmx.net>
 <20190824093032.cunkmukx73vl4hy3@pengutronix.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <141b0cb0-fa5c-ba3b-12cd-8e8252b1eb4e@gmx.net>
Date: Sat, 24 Aug 2019 11:44:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190824093032.cunkmukx73vl4hy3@pengutronix.de>
Content-Language: en-US
X-Provags-ID: V03:K1:CvREUcbmlepWWdGvEeJuPg4orUnjs7BbFSLlS4nG/SaJk3+BAJa
 EE1t5qSXzeD4Ytt0jkWh4z3ZRk/jc8oDVNCaB6YbOv6e7FdHY0Onj2LtGNfI2Nx0uUK6DKX
 U1wMmDfScvLOo5OOjUwvFh3eaQnZM7S/9tx5CAMmhtEld2T/qrzhUGnp+v7Pi7/Fp0XFAwX
 P2VaKPc2A+IQuksNc019w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+/nI3fmllLA=:d0Nw+1A8072vxyjSDsW2o9
 Txk2xVL2nrTnHpokn4arZeN56cyiaNZSzqhBM+Mh67qRwK4SVlAcBhKieZ5PU5o4UmbeufMqL
 ZPGOjhiWVkPd4NsbSHsSm/YhJgZEXKs3Wy52B8oHGrZg9SiO/5Nrq4A/I9pGG61kX9hr5dC8u
 i1vleGeyGYJbaBeyHyxyPCH9p0VOTlVmEphvu+vdL++Gv1/4BhzqkRXfC61GawLubQQs3MjVT
 wPgzHjeCoBEZ9i6PCFYTSr/UhZBIZRTDZYe82btfCw1bU3gnrA0myVmOjLjhbpk3DzcMJD5yn
 uLBnC6e7q3gSdpJkldff8CBDuixUkbYQIXTXoPjCLNWjzsftFNdT7yw7SUp6XI1tyxnq30i7b
 03SijeiJasYdDoswxYz2CxwDJFW7zJNobHFtcL2Lk2zrorCVko7tpTg/WDppqxKhyWH/rvnxY
 bZxYu8/lph5SdZ21+zEPTSvdibaU4ziGuy8xpCEXgr7/g15zWHPD3Vl43BgVa9Hz5khRPLSZ9
 1MUXQvYAcqX34wrM0hkXiNPgcigLsuVvBVVIQ7B195kNLFQwn7IRLEihgNbQwHvuNVxwc1Djz
 M1JNFXUrrrxrpUh8B7LLoa8R7/HsM4RzAeZEFgz5wIqAA+2Yw/iemHQ4GFlifnxNNNpuD/6dk
 W75rOUdkGnmyjyRt3ybMwpnjXxlkORB/9fz0YMSD2X3nhCEkK2yYRUVoyEhVASUxSKrr0nJd1
 LgXs/UQlkfkecKTdDflT7/G/afmb88ewEwSir8X3TGO/k1G6hi8rsGJK/mDEz8Wk+sdoPgULK
 Cff6ccNcNGKah1mZY1Kfg99pe6nGVB5x+LgJ3036XFXswak5pLIQAGmbEoRbLhjHRVBV5Zu+O
 USiEorinA3fHqSDQe7Btlko2pxqElitpynohHFy+7zGHsMd0jDGA/0+iBwuxq2MjClG3WJMHL
 qRVk174uaKMydCmPLD6/ec70NkKIASVET0/kNGrWWGv21uhXv6jvwwAGwJZMdc8N8qYQm3LeM
 7/MpRNKvXfCiaAVzlddDPFsjsrRZdSCSIJ7nrJcjXqh0o6nw4/Vi/BEuPtoWd8JOQ3v4Qr8a8
 sPu3WWC4E6YUrdAMcZl1nBcvWQmwCSAc3usszuuwDxiyytojTSzwZbweWZDScpfbMI83P2TNB
 glpkc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_024418_427944_ED02BA6C 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Eric Anholt <eric@anholt.net>, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjQuMDguMTkgdW0gMTE6MzAgc2NocmllYiBVd2UgS2xlaW5lLUvDtm5pZzoKPiBPbiBTYXQs
IEF1ZyAyNCwgMjAxOSBhdCAwOTowNzoyNUFNICswMjAwLCBTdGVmYW4gV2FocmVuIHdyb3RlOgo+
PiBUaGlzIHN1cHByZXNzZXMgZXJyb3IgbWVzc2FnZXMgaW4gY2FzZSB0aGUgUFdNIGNsb2NrIGlz
bid0IHJlYWR5IHlldC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogU3RlZmFuIFdhaHJlbiA8d2FocmVu
c3RAZ214Lm5ldD4KPj4gLS0tCj4+ICBkcml2ZXJzL3B3bS9wd20tYmNtMjgzNS5jIHwgNSArKysr
LQo+PiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wd20vcHdtLWJjbTI4MzUuYyBiL2RyaXZlcnMvcHdtL3B3
bS1iY20yODM1LmMKPj4gaW5kZXggMmM4MjM4Ni4uY2UzNjJiZSAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9wd20vcHdtLWJjbTI4MzUuYwo+PiArKysgYi9kcml2ZXJzL3B3bS9wd20tYmNtMjgzNS5j
Cj4+IEBAIC0xNTMsNyArMTUzLDEwIEBAIHN0YXRpYyBpbnQgYmNtMjgzNV9wd21fcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4KPj4gIAlwYy0+Y2xrID0gZGV2bV9jbGtfZ2V0
KCZwZGV2LT5kZXYsIE5VTEwpOwo+PiAgCWlmIChJU19FUlIocGMtPmNsaykpIHsKPj4gLQkJZGV2
X2VycigmcGRldi0+ZGV2LCAiY2xvY2sgbm90IGZvdW5kOiAlbGRcbiIsIFBUUl9FUlIocGMtPmNs
aykpOwo+PiArCQlpZiAoUFRSX0VSUihwYy0+Y2xrKSAhPSAtRVBST0JFX0RFRkVSKSB7Cj4+ICsJ
CQlkZXZfZXJyKCZwZGV2LT5kZXYsICJjbG9jayBub3QgZm91bmQ6ICVsZFxuIiwKPj4gKwkJCQlQ
VFJfRVJSKHBjLT5jbGspKTsKPj4gKwkJfQo+PiAgCQlyZXR1cm4gUFRSX0VSUihwYy0+Y2xrKTsK
Pj4gIAl9Cj4gSSB3b3VsZCBoYXZlIHVzZWQ6Cj4KPiAJaWYgKElTX0VSUihwYy0+Y2xrKSkgewo+
IAkJaW50IGVyciA9IFBUUl9FUlIocGMtPmNsayk7Cj4gCQlpZiAoZXJyICE9IC1FUFJPQkVfREVG
RVIpCj4gCQkJZGV2X2VycigmcGRldi0+ZGV2LCAiY2xvY2sgbm90IGZvdW5kOiAlZFxuIiwgZXJy
KTsKPgo+IAkJcmV0dXJuIGVycjsKPiAJfQo+Cj4gVGhpcyBjYWxjdWxhdGVzIHRoZSBlcnJvciBj
b2RlIG9ubHkgb25jZSBhbmQgbWFrZSB0aGUgZGV2X2VyciBsaW5lIHNob3J0Cj4gZW5vdWdoIHRv
IG5vdCBtYWtlIGl0IG5lY2Vzc2FyeSB0byBhZGQgYSBsaW5lIGJyZWFrLgpTdXJlIHRoYXQncyBi
ZXR0ZXIuIFdpbGwgc2VuZCBWMiBzb29uCj4KPiBCZXN0IHJlZ2FyZHMKPiBVd2UKPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
