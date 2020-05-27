Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE4C1E3C7B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 10:46:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q1ritMIDh8DPIotlM31Oq/EYm1UpZQI6HrEzuw6F2Xw=; b=eeCLUC574dWY84
	vPrxtYpCGtHtYSF3X9KEvDhaBEX5kYet8knJpEyASDV88dCn9lYxRmu9lzyztgXSu/+ofY1NSZTCa
	CGwA0hK3rAAiUpsk9gk2QmwkaEJQym2gZK1hprRyKiarBlJEvDUTQ28ra3dhie9DU84A2cKAVlRTc
	N6HxMdOv3DBGWZFJjnfnRst85bK6oXysQQlUoQHginK534B3hFdwrBgsbyuO75cvXBbT2kDkRad61
	h97DTISQAJIy1qLrFSlc3S5QeA7Y5wPj9/fTa1Z+ZaG0NMA8j59lpu2RZ7+u/JWxTo9pTzcXsC5v+
	6ncYzldPcgX0KOS8GTvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrhu-0003Ce-4M; Wed, 27 May 2020 08:46:38 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrhd-0003Ak-Tj
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 08:46:24 +0000
Received: by mail-io1-xd42.google.com with SMTP id q8so23657104iow.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 01:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cpwITzrftWrJAY0LVaSeu6jYTmkJe1PVewzQjLawjdA=;
 b=GxKyCH668dBc5VipkdT8YFjPTCx5H6Ette6THzOjjs/DRDGNcXIMDQi5ZP5v3Sf9Oa
 mwVrP6RSqnYeL10DiHJM1SOkKIcn6brwgQRHX0b0oKqUeDUGj/rjNQW55Xq53NQfseRD
 vXhZTU3mB8ZA8VEHKczO26DPAktbj8hdettUmRE8i6vyRvcYoYFGvApZ8ukhZ5+bQK7D
 9L8+5xCW38IQadhYPoyI/PQs166Rw+w8+8SWRYvSIyYFnkV+77MOB9qUtGq2ER6cdPV/
 +/sr0UAOp1UfaGH7K0FiwaDoGqoJN+EI3wjFXv9n4Zv/oSigkjbvRq3z7WEgWAq+aZOX
 0EsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cpwITzrftWrJAY0LVaSeu6jYTmkJe1PVewzQjLawjdA=;
 b=C3ucNDmKObiDgrwaAeWeqYRMTtUK//jP0k87uUDACWU8pXlS8L3JYFxJiGmGFojgzm
 ef0qk5W7kE1SM3w893A7H7TGE5aMvBplMpr8/EEnnZO8c3bhfzdrUQW0/wj2bj4Ns+l5
 pSitOhFcxD4uD3ZjYqQen8X4x5q4rtULrHHek+FhQed1vTmhH5AzoeDOOZOuRmhzU8za
 Xki590LP/4Q3GZ50y/W76LUNeuoDTploIRVukZbVI9RFlyFwqF4gOCJp1JTpRaU1aRwX
 SYWrRewlBifPVMKZvBulky37Uxk93ZB66ukE795/dPSswoTSVNeVh9awAbQ20nCPJ3JQ
 y20Q==
X-Gm-Message-State: AOAM532UJvYh53Jg/qDaQsXxhdKG5Ujio/SUZFrFqwO/q5GCmSSdrtsx
 aLLbZeIQdyjdF+Qsb681CcohjRB6S0VGgl25bGDaJQ==
X-Google-Smtp-Source: ABdhPJwMXQdy6+RxEU74Dd9WQ5Tly2o2sH55kV9ZSrhh4NH0gl/D2WFHak2VKletNu2Ql3a2wNrDFJNkEIRMls/7rZo=
X-Received: by 2002:a02:3e06:: with SMTP id s6mr4481666jas.57.1590569179357;
 Wed, 27 May 2020 01:46:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200522120700.838-1-brgl@bgdev.pl>
 <20200522120700.838-7-brgl@bgdev.pl>
 <20200527073150.GA3384158@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200527073150.GA3384158@ubuntu-s3-xlarge-x86>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 27 May 2020 10:46:08 +0200
Message-ID: <CAMRc=MevVsYZFDQif+8Zyv41sSkbS8XqWbKGdCvHooneXz88hg@mail.gmail.com>
Subject: Re: [PATCH v5 06/11] net: ethernet: mtk-star-emac: new driver
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_014623_363178_97D39A6C 
X-CRM114-Status: GOOD (  23.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Edwin Peer <edwin.peer@broadcom.com>,
 devicetree <devicetree@vger.kernel.org>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pedro Tsai <pedro.tsai@mediatek.com>, "David S . Miller" <davem@davemloft.net>,
 Fabien Parent <fparent@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 clang-built-linux@googlegroups.com,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

xZtyLiwgMjcgbWFqIDIwMjAgbyAwOTozMSBOYXRoYW4gQ2hhbmNlbGxvciA8bmF0ZWNoYW5jZWxs
b3JAZ21haWwuY29tPgpuYXBpc2HFgihhKToKPgo+IE9uIEZyaSwgTWF5IDIyLCAyMDIwIGF0IDAy
OjA2OjU1UE0gKzAyMDAsIEJhcnRvc3ogR29sYXN6ZXdza2kgd3JvdGU6Cj4KPiA8c25pcD4KPgo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19zdGFyX2Vt
YWMuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19zdGFyX2VtYWMuYwo+ID4g
bmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uNzg5Yzc3YWY1MDFm
Cj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRl
ay9tdGtfc3Rhcl9lbWFjLmMKPiA+IEBAIC0wLDAgKzEsMTY3OCBAQAo+Cj4gPHNuaXA+Cj4KPiBJ
J3ZlIHNlYXJjaGVkIG5ldGRldiBhbmQgSSBjYW5ub3QgZmluZCBhbnkgcmVwb3J0cyBmcm9tIG90
aGVycyBidXQgdGhpcwo+IGZ1bmN0aW9uIGludHJvZHVjZXMgYSBjbGFuZyB3YXJuaW5nOgo+Cj4g
ZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX3N0YXJfZW1hYy5jOjEyOTY6Njogd2Fy
bmluZzogdmFyaWFibGUgJ25ld19kbWFfYWRkcicgaXMgdXNlZCB1bmluaXRpYWxpemVkIHdoZW5l
dmVyICdpZicgY29uZGl0aW9uIGlzIHRydWUgWy1Xc29tZXRpbWVzLXVuaW5pdGlhbGl6ZWRdCj4g
ICAgICAgICBpZiAoIW5ld19za2IpIHsKPiAgICAgICAgICAgICBefn5+fn5+fgo+IGRyaXZlcnMv
bmV0L2V0aGVybmV0L21lZGlhdGVrL210a19zdGFyX2VtYWMuYzoxMzIxOjIzOiBub3RlOiB1bmlu
aXRpYWxpemVkIHVzZSBvY2N1cnMgaGVyZQo+ICAgICAgICAgZGVzY19kYXRhLmRtYV9hZGRyID0g
bmV3X2RtYV9hZGRyOwo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+
Cj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX3N0YXJfZW1hYy5jOjEyOTY6Mjog
bm90ZTogcmVtb3ZlIHRoZSAnaWYnIGlmIGl0cyBjb25kaXRpb24gaXMgYWx3YXlzIGZhbHNlCj4g
ICAgICAgICBpZiAoIW5ld19za2IpIHsKPiAgICAgICAgIF5+fn5+fn5+fn5+fn5+fgo+IGRyaXZl
cnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19zdGFyX2VtYWMuYzoxMjg1OjY6IHdhcm5pbmc6
IHZhcmlhYmxlICduZXdfZG1hX2FkZHInIGlzIHVzZWQgdW5pbml0aWFsaXplZCB3aGVuZXZlciAn
aWYnIGNvbmRpdGlvbiBpcyB0cnVlIFstV3NvbWV0aW1lcy11bmluaXRpYWxpemVkXQo+ICAgICAg
ICAgaWYgKChkZXNjX2RhdGEuZmxhZ3MgJiBNVEtfU1RBUl9ERVNDX0JJVF9SWF9DUkNFKSB8fAo+
ICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fgo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19zdGFyX2VtYWMuYzoxMzIx
OjIzOiBub3RlOiB1bmluaXRpYWxpemVkIHVzZSBvY2N1cnMgaGVyZQo+ICAgICAgICAgZGVzY19k
YXRhLmRtYV9hZGRyID0gbmV3X2RtYV9hZGRyOwo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgXn5+fn5+fn5+fn5+Cj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX3N0YXJf
ZW1hYy5jOjEyODU6Mjogbm90ZTogcmVtb3ZlIHRoZSAnaWYnIGlmIGl0cyBjb25kaXRpb24gaXMg
YWx3YXlzIGZhbHNlCj4gICAgICAgICBpZiAoKGRlc2NfZGF0YS5mbGFncyAmIE1US19TVEFSX0RF
U0NfQklUX1JYX0NSQ0UpIHx8Cj4gICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsv
bXRrX3N0YXJfZW1hYy5jOjEyODU6Njogd2FybmluZzogdmFyaWFibGUgJ25ld19kbWFfYWRkcicg
aXMgdXNlZCB1bmluaXRpYWxpemVkIHdoZW5ldmVyICd8fCcgY29uZGl0aW9uIGlzIHRydWUgWy1X
c29tZXRpbWVzLXVuaW5pdGlhbGl6ZWRdCj4gICAgICAgICBpZiAoKGRlc2NfZGF0YS5mbGFncyAm
IE1US19TVEFSX0RFU0NfQklUX1JYX0NSQ0UpIHx8Cj4gICAgICAgICAgICAgXn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gZHJpdmVycy9uZXQvZXRoZXJuZXQv
bWVkaWF0ZWsvbXRrX3N0YXJfZW1hYy5jOjEzMjE6MjM6IG5vdGU6IHVuaW5pdGlhbGl6ZWQgdXNl
IG9jY3VycyBoZXJlCj4gICAgICAgICBkZXNjX2RhdGEuZG1hX2FkZHIgPSBuZXdfZG1hX2FkZHI7
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn4KPiBkcml2ZXJzL25l
dC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfc3Rhcl9lbWFjLmM6MTI4NTo2OiBub3RlOiByZW1vdmUg
dGhlICd8fCcgaWYgaXRzIGNvbmRpdGlvbiBpcyBhbHdheXMgZmFsc2UKPiAgICAgICAgIGlmICgo
ZGVzY19kYXRhLmZsYWdzICYgTVRLX1NUQVJfREVTQ19CSVRfUlhfQ1JDRSkgfHwKPiAgICAgICAg
ICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiBk
cml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfc3Rhcl9lbWFjLmM6MTI3NDoyNTogbm90
ZTogaW5pdGlhbGl6ZSB0aGUgdmFyaWFibGUgJ25ld19kbWFfYWRkcicgdG8gc2lsZW5jZSB0aGlz
IHdhcm5pbmcKPiAgICAgICAgIGRtYV9hZGRyX3QgbmV3X2RtYV9hZGRyOwo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBeCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA9
IDAKPiAzIHdhcm5pbmdzIGdlbmVyYXRlZC4KPgo+ID4gK3N0YXRpYyBpbnQgbXRrX3N0YXJfcmVj
ZWl2ZV9wYWNrZXQoc3RydWN0IG10a19zdGFyX3ByaXYgKnByaXYpCj4gPiArewo+ID4gKyAgICAg
c3RydWN0IG10a19zdGFyX3JpbmcgKnJpbmcgPSAmcHJpdi0+cnhfcmluZzsKPiA+ICsgICAgIHN0
cnVjdCBkZXZpY2UgKmRldiA9IG10a19zdGFyX2dldF9kZXYocHJpdik7Cj4gPiArICAgICBzdHJ1
Y3QgbXRrX3N0YXJfcmluZ19kZXNjX2RhdGEgZGVzY19kYXRhOwo+ID4gKyAgICAgc3RydWN0IG5l
dF9kZXZpY2UgKm5kZXYgPSBwcml2LT5uZGV2Owo+ID4gKyAgICAgc3RydWN0IHNrX2J1ZmYgKmN1
cnJfc2tiLCAqbmV3X3NrYjsKPiA+ICsgICAgIGRtYV9hZGRyX3QgbmV3X2RtYV9hZGRyOwo+Cj4g
VW5pbml0aWFsaXplZCBoZXJlCj4KPiA+ICsgICAgIGludCByZXQ7Cj4gPiArCj4gPiArICAgICBz
cGluX2xvY2soJnByaXYtPmxvY2spOwo+ID4gKyAgICAgcmV0ID0gbXRrX3N0YXJfcmluZ19wb3Bf
dGFpbChyaW5nLCAmZGVzY19kYXRhKTsKPiA+ICsgICAgIHNwaW5fdW5sb2NrKCZwcml2LT5sb2Nr
KTsKPiA+ICsgICAgIGlmIChyZXQpCj4gPiArICAgICAgICAgICAgIHJldHVybiAtMTsKPiA+ICsK
PiA+ICsgICAgIGN1cnJfc2tiID0gZGVzY19kYXRhLnNrYjsKPiA+ICsKPiA+ICsgICAgIGlmICgo
ZGVzY19kYXRhLmZsYWdzICYgTVRLX1NUQVJfREVTQ19CSVRfUlhfQ1JDRSkgfHwKPiA+ICsgICAg
ICAgICAoZGVzY19kYXRhLmZsYWdzICYgTVRLX1NUQVJfREVTQ19CSVRfUlhfT1NJWkUpKSB7Cj4g
PiArICAgICAgICAgICAgIC8qIEVycm9yIHBhY2tldCAtPiBkcm9wIGFuZCByZXVzZSBza2IuICov
Cj4gPiArICAgICAgICAgICAgIG5ld19za2IgPSBjdXJyX3NrYjsKPiA+ICsgICAgICAgICAgICAg
Z290byBwdXNoX25ld19za2I7Cj4KPiB0aGlzIGdvdG8KPgo+ID4gKyAgICAgfQo+ID4gKwo+ID4g
KyAgICAgLyogUHJlcGFyZSBuZXcgc2tiIGJlZm9yZSByZWNlaXZpbmcgdGhlIGN1cnJlbnQgb25l
LiBSZXVzZSB0aGUgY3VycmVudAo+ID4gKyAgICAgICogc2tiIGlmIHdlIGZhaWwgYXQgYW55IHBv
aW50Lgo+ID4gKyAgICAgICovCj4gPiArICAgICBuZXdfc2tiID0gbXRrX3N0YXJfYWxsb2Nfc2ti
KG5kZXYpOwo+ID4gKyAgICAgaWYgKCFuZXdfc2tiKSB7Cj4gPiArICAgICAgICAgICAgIG5kZXYt
PnN0YXRzLnJ4X2Ryb3BwZWQrKzsKPiA+ICsgICAgICAgICAgICAgbmV3X3NrYiA9IGN1cnJfc2ti
Owo+ID4gKyAgICAgICAgICAgICBnb3RvIHB1c2hfbmV3X3NrYjsKPgo+IGFuZCB0aGlzIGdvdG8K
Pgo+ID4gKyAgICAgfQo+ID4gKwo+ID4gKyAgICAgbmV3X2RtYV9hZGRyID0gbXRrX3N0YXJfZG1h
X21hcF9yeChwcml2LCBuZXdfc2tiKTsKPiA+ICsgICAgIGlmIChkbWFfbWFwcGluZ19lcnJvcihk
ZXYsIG5ld19kbWFfYWRkcikpIHsKPiA+ICsgICAgICAgICAgICAgbmRldi0+c3RhdHMucnhfZHJv
cHBlZCsrOwo+ID4gKyAgICAgICAgICAgICBkZXZfa2ZyZWVfc2tiKG5ld19za2IpOwo+ID4gKyAg
ICAgICAgICAgICBuZXdfc2tiID0gY3Vycl9za2I7Cj4gPiArICAgICAgICAgICAgIG5ldGRldl9l
cnIobmRldiwgIkRNQSBtYXBwaW5nIGVycm9yIG9mIFJYIGRlc2NyaXB0b3JcbiIpOwo+ID4gKyAg
ICAgICAgICAgICBnb3RvIHB1c2hfbmV3X3NrYjsKPiA+ICsgICAgIH0KPiA+ICsKPiA+ICsgICAg
IC8qIFdlIGNhbid0IGZhaWwgYW55bW9yZSBhdCB0aGlzIHBvaW50OiBpdCdzIHNhZmUgdG8gdW5t
YXAgdGhlIHNrYi4gKi8KPiA+ICsgICAgIG10a19zdGFyX2RtYV91bm1hcF9yeChwcml2LCAmZGVz
Y19kYXRhKTsKPiA+ICsKPiA+ICsgICAgIHNrYl9wdXQoZGVzY19kYXRhLnNrYiwgZGVzY19kYXRh
Lmxlbik7Cj4gPiArICAgICBkZXNjX2RhdGEuc2tiLT5pcF9zdW1tZWQgPSBDSEVDS1NVTV9OT05F
Owo+ID4gKyAgICAgZGVzY19kYXRhLnNrYi0+cHJvdG9jb2wgPSBldGhfdHlwZV90cmFucyhkZXNj
X2RhdGEuc2tiLCBuZGV2KTsKPiA+ICsgICAgIGRlc2NfZGF0YS5za2ItPmRldiA9IG5kZXY7Cj4g
PiArICAgICBuZXRpZl9yZWNlaXZlX3NrYihkZXNjX2RhdGEuc2tiKTsKPiA+ICsKPiA+ICtwdXNo
X25ld19za2I6Cj4gPiArICAgICBkZXNjX2RhdGEuZG1hX2FkZHIgPSBuZXdfZG1hX2FkZHI7Cj4K
PiBhc3NpZ24gaXQgdW5pbml0aWFsaXplZCBoZXJlLgo+Cj4gPiArICAgICBkZXNjX2RhdGEubGVu
ID0gc2tiX3RhaWxyb29tKG5ld19za2IpOwo+ID4gKyAgICAgZGVzY19kYXRhLnNrYiA9IG5ld19z
a2I7Cj4gPiArCj4gPiArICAgICBzcGluX2xvY2soJnByaXYtPmxvY2spOwo+ID4gKyAgICAgbXRr
X3N0YXJfcmluZ19wdXNoX2hlYWRfcngocmluZywgJmRlc2NfZGF0YSk7Cj4gPiArICAgICBzcGlu
X3VubG9jaygmcHJpdi0+bG9jayk7Cj4gPiArCj4gPiArICAgICByZXR1cm4gMDsKPiA+ICt9Cj4K
PiBJIGRvbid0IGtub3cgaWYgdGhlcmUgc2hvdWxkIGJlIGEgbmV3IGxhYmVsIHRoYXQgZXhjbHVk
ZXMgdGhhdAo+IGFzc2lnbm1lbnQgZm9yIHRob3NlIHBhcnRpY3VsYXIgZ290b3Mgb3IgaWYgbmV3
X2RtYV9hZGRyIHNob3VsZAo+IGJlIGluaXRpYWxpemVkIHRvIHNvbWV0aGluZyBhdCB0aGUgdG9w
LiBQbGVhc2UgdGFrZSBhIGxvb2sgYXQKPiBhZGRyZXNzaW5nIHRoaXMgd2hlbiB5b3UgZ2V0IGEg
Y2hhbmNlLgo+Cj4gQ2hlZXJzLAo+IE5hdGhhbgoKSGkgTmF0aGFuLAoKVGhhbmtzIGZvciByZXBv
cnRpbmcgdGhpcyEgSSBoYXZlIGEgZml4IHJlYWR5IGFuZCB3aWxsIHNlbmQgaXQgc2hvcnRseS4K
CkJhcnRvc3oKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
