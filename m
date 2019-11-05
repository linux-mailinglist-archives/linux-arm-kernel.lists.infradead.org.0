Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EADEFF68
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 15:06:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dgsgum3etddTqH9MnXmEY010czz/MGLlMDYJxZsTLZk=; b=mYxXLCeNFNY5L9
	/lKQ83kKYPSjhKsPbjIj3khDAWbSydqwye1DjsAzHSu0QYEKJfTN9yh+J1LYPHfBKcV93OzyJdIDb
	YbWsZKogJvnbxa4a8rQqf1Jk3t1dEb+L7unwdeVGNFK0b/P2gxLDHzW0mfZ6NcE7sUkNqyyE0rhIt
	qC+jD2MghrqHPCfDveFxLwA/2ncUhNRXBEpG9yPIptGMuS5oW+TWgPjmq2ySXTqlvU//1znMU4Avl
	EpfKu3uxwfLk9h7+1itQvgGWna3BQK3XnQy/4J6wDc5egS3GZu59NwY64iNmQwrhwFGtuIbiVm7Wf
	98ZgpdTjxOUGGL/G+dEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRzTh-0000NW-90; Tue, 05 Nov 2019 14:06:37 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRzTb-0000Mp-91
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 14:06:32 +0000
Received: by mail-wm1-x344.google.com with SMTP id 6so16617562wmf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 06:06:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=B1Y/RM2Mz7kHjeXIz94GZRfB4ieyu+FKgqSY/1H3X9U=;
 b=kGrWivnaI6V9lkGpzTZ0OvRK5tGWrMKuxcql5NqByB8JizVWkPrpiZ0A9jJnaYPUhD
 +WaiDkhPUS25qGmGgZ+z7hKwuPcDZ3slW4w8ftU7dKCLrjRTyLiifXYEt7MR1dBxOGOc
 U1ZmE7mKt7LOLFhMEVdAxaw018otafaQbXIQbK114P+SkVno+hRipvoDUfkVGNMIabQf
 aZmXFuFaTchhjnY+FQgFhM2NHvYLGnPLVDWaQMzI5Y06UpYmFKmj4HkQzDyZPWr6lr8F
 tEiVQwX8DNNFxc37XSyfEKoxgkAS5wcV1siJBrsrHEKm9NVm3RGrI5PPjnZLKn/RsWGD
 uWIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=B1Y/RM2Mz7kHjeXIz94GZRfB4ieyu+FKgqSY/1H3X9U=;
 b=dIntjU9gFWUp3KF66nNXuVEO5Qo3rfHdWr393/N+I85hWp7UJRFxpvN41ku7zgTvCg
 kQViGDey7mn3ofQcn97Tdd24e6BoOBcGXZKiiRr0V3L4RDtGWMLcwg6HC+C1znusn2K+
 2Utd5RFN1LG2jO92Dy5kyUoA6Jbhw5Dlf8dY07P/29l57G/EGO6Jcyg8jfIBmpz7FcYd
 WSDX1/ld0aSmGKpCH2ui9nxVwhYGlsM7YXusA+D0U/u7DXc0g5jp/u06Qo1yV+jljMDJ
 hwq5b0uvzZMctFqDyfkzEsFR9to16wIKvSBzJLKFYRrdWQ8otyRlmf8DmYrfHzRi1fRA
 EsTg==
X-Gm-Message-State: APjAAAVcbHPVliUGczWKTpl129sS4KglzKz4dkaBXipHqhx5REpo0m5p
 OeFcFdB2hpOQrKst/T3xt4u+od3ZdAgIviIM1mQ=
X-Google-Smtp-Source: APXvYqxddcZh8iQRhjIgQrK0b9aLG19Xi2F8TSSTEuWMQxK7GJf3TbgIpTv/4hQg8PsgXtuLD7Bf0bZBo9A9To3U1ug=
X-Received: by 2002:a1c:2342:: with SMTP id j63mr4214667wmj.56.1572962788801; 
 Tue, 05 Nov 2019 06:06:28 -0800 (PST)
MIME-Version: 1.0
References: <20191105131456.32400-1-peron.clem@gmail.com>
 <20191105131456.32400-4-peron.clem@gmail.com>
 <20191105135745.mf63pelpbekmitgm@pengutronix.de>
In-Reply-To: <20191105135745.mf63pelpbekmitgm@pengutronix.de>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 5 Nov 2019 15:06:17 +0100
Message-ID: <CAJiuCceg4CeHf-ZtK0A=SzQGGQD5D7CK2Zcy5dzDshmY=yP9sg@mail.gmail.com>
Subject: Re: [PATCH v3 3/7] pwm: sun4i: Add an optional probe for bus clock
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_060631_316660_EE660846 
X-CRM114-Status: GOOD (  21.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <pza@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlLAoKT24gVHVlLCA1IE5vdiAyMDE5IGF0IDE0OjU3LCBVd2UgS2xlaW5lLUvDtm5pZwo8
dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IE9uIFR1ZSwgTm92IDA1
LCAyMDE5IGF0IDAyOjE0OjUyUE0gKzAxMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+IEZy
b206IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPiA+Cj4gPiBINiBQ
V00gY29yZSBuZWVkcyBidXMgY2xvY2sgdG8gYmUgZW5hYmxlZCBpbiBvcmRlciB0byB3b3JrLgo+
ID4KPiA+IEFkZCBhbiBvcHRpb25hbCBwcm9iZSBmb3IgaXQgYW5kIGEgZmFsbGJhY2sgZm9yIHBy
ZXZpb3VzCj4gPiBiaW5kaW5ncyB3aXRob3V0IG5hbWUgb24gbW9kdWxlIGNsb2NrLgo+ID4KPiA+
IFNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4K
PiA+IFNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+
Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3B3bS9wd20tc3VuNGkuYyB8IDQ1ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKy0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDQzIGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdt
L3B3bS1zdW40aS5jIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+IGluZGV4IDliYTgzNzY5
YTQ3OC4uNTRlMTlmYTU2YTRlIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9wd20vcHdtLXN1bjRp
LmMKPiA+ICsrKyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCj4gPiBAQCAtNzgsNiArNzgsNyBA
QCBzdHJ1Y3Qgc3VuNGlfcHdtX2RhdGEgewo+ID4KPiA+ICBzdHJ1Y3Qgc3VuNGlfcHdtX2NoaXAg
ewo+ID4gICAgICAgc3RydWN0IHB3bV9jaGlwIGNoaXA7Cj4gPiArICAgICBzdHJ1Y3QgY2xrICpi
dXNfY2xrOwo+ID4gICAgICAgc3RydWN0IGNsayAqY2xrOwo+ID4gICAgICAgc3RydWN0IHJlc2V0
X2NvbnRyb2wgKnJzdDsKPiA+ICAgICAgIHZvaWQgX19pb21lbSAqYmFzZTsKPiA+IEBAIC0zNjMs
OSArMzY0LDM1IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4gPiAgICAgICBpZiAoSVNfRVJSKHB3bS0+YmFzZSkpCj4gPiAgICAgICAg
ICAgICAgIHJldHVybiBQVFJfRVJSKHB3bS0+YmFzZSk7Cj4gPgo+ID4gLSAgICAgcHdtLT5jbGsg
PSBkZXZtX2Nsa19nZXQoJnBkZXYtPmRldiwgTlVMTCk7Cj4gPiAtICAgICBpZiAoSVNfRVJSKHB3
bS0+Y2xrKSkKPiA+ICsgICAgIC8qIEdldCBhbGwgY2xvY2tzIGFuZCByZXNldCBsaW5lICovCj4g
PiArICAgICBwd20tPmNsayA9IGRldm1fY2xrX2dldF9vcHRpb25hbCgmcGRldi0+ZGV2LCAibW9k
Iik7Cj4gPiArICAgICBpZiAoSVNfRVJSKHB3bS0+Y2xrKSkgewo+ID4gKyAgICAgICAgICAgICBk
ZXZfZXJyKCZwZGV2LT5kZXYsICJnZXQgY2xvY2sgZmFpbGVkICVsZFxuIiwKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICBQVFJfRVJSKHB3bS0+Y2xrKSk7Cj4KPiBQbGVhc2Ugb25seSBwcmludCB0
aGlzIG1lc3NhZ2UgaWYgUFRSX0VSUihwd20tPmNsaykgIT0gLUVQUk9CRV9ERUZFUi4KCkkgZGlk
bid0IGRvIGl0IGJlY2F1c2UgdGhlIHN1bnhpIGNsb2NrIGNhbid0IGJlIGNvbXBpbGVkIGFzIG1v
ZHVsZSBidXQKaW5kZWVkIGkgY2FuIGNoYW5nZSBpdCBzbyBpdCdzIG1vcmUgZ2VuZXJpYy4KCj4g
WW91IG1pZ2h0IGFsc28gd2FudCB0byBtYWtlIHVzZSBvZiBjb21taXQgNTdmNTY3N2U1MzViICgi
cHJpbnRmOiBhZGQKPiBzdXBwb3J0IGZvciBwcmludGluZyBzeW1ib2xpYyBlcnJvciBuYW1lcyIp
IGFuZCB1c2UKPgo+ICAgICAgICAgZGV2X2VycigmcGRldi0+ZGV2LCAiZ2V0IGNsb2NrIGZhaWxl
ZDogJXBlXG4iLCBwd20tPmNsayk7CgpUaGFua3MgSSB3aWxsIGNoYW5nZSBpdCwKClJlZ2FyZHMs
CkNsw6ltZW50Cgo+Cj4gT3RoZXIgdGhhbiB0aGF0IHRoZSBwYXRjaCBpcyBmaW5lIGZvciBtZS4K
Pgo+IEJlc3QgcmVnYXJkcwo+IFV3ZQo+Cj4gLS0KPiBQZW5ndXRyb25peCBlLksuICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCBVd2UgS2xlaW5lLUvDtm5pZyAgICAgICAgICAgIHwKPiBJbmR1
c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1
dHJvbml4LmRlLyAgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
