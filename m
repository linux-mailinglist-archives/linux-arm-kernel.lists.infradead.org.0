Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E80C047F68
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 12:14:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ntFcpguzKZY0iXgcg+VHA679fL/U+na/O9AhVTD/W7c=; b=hHEZOMr3K4ElFc
	jWwi5lZ12B/T7r2Zo6gZIlDsQ1OJZWCKSkZStbxxnmMms99WAK5F3Tctgwt/7zU3FHspWEn/jV5iU
	5YAfCjFLs7uZT00Oz/lhUm1ouactoJB0CTW46LY10NRP+q9O1jNUwX79PrGTiQI/RbHGUU5BjANUW
	MwCNezv9JA7VbZHkjd4lNAesBU5CVdGjuT2l2Tzgdfb2dmlTrHuLJVJNFHb7dgZxv88UugkQR1NEV
	yqtgk6xiDhJJDfvwlHoZ9hB6mbu+EZqwpDitmzcWP1COJSOKm8S0C6HZe8RkSj+NxNdM+P7meqJ+I
	AUIKojDDYYmiXd9hC+cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcof4-0000Qi-Nv; Mon, 17 Jun 2019 10:14:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcoer-0000QC-OT
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 10:14:39 +0000
Received: by mail-wr1-x441.google.com with SMTP id d18so9304766wrs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 03:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=0h7IM4lrz+H9Hm55K4LDe4S6XuzNxvQo2AKIRNvmLBw=;
 b=Pr7pW/pDVfmnr1f95jMU1cjpSQB6d5bTyGiKUHuQmECYAAmlvQ2YmHiXyDHzGHWt6+
 cXEDSmKaSOEcy4gxQX8e4uqO0XleQxrbMWtM/p2M7wbrleb/gJxdcfVA4QzH1AS7ljHo
 dlXnrwUvlTmmn5PUk2gfTHyqFb55p4K/J/MTA99zw/pXDWZ2Vm5R8MIqQLdu+FsEJYHM
 c9XX7Hny7i4JQgqqvxwpkMXV8Hlr8hYhuYuyGxSdco6PT/Szg/fVWye6R/EOZJsm8b21
 5pkz82OGwz0MSywdlg8AnAe1OnItyssC/hAWvgcYqic959IYI2obFsLxC/PBOANecqjJ
 JHiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=0h7IM4lrz+H9Hm55K4LDe4S6XuzNxvQo2AKIRNvmLBw=;
 b=uXEnXwv2/VnMyrDj7X4YnmKVrK5pvQj0XKJ76w0rk+/ZwGyJ5b+VtYbtN2TVJeNFmv
 UPTUFubmGWbc3tYBp9RuY3lQiV3h5EMwpF9bWLUXgU8wwHnVh8mAyeMxR8HQfpLMZQgh
 cNRgkN1JvgI3iPKmf7Xu7RiV5Xhs5cnR0WogO/cN/dO0yvCghG89KyingMPm1+48jTRb
 5QoyJatHomw4rVAS1ex087g1jLak0KQZ4CNcCMpb+ITftrhqfGNOSObq1IWE5fekh1H2
 V5MHVukMyTHmINennLOr3fwPee8JZcEDNfOKHG92Avz/OtSvpqZoORQw2K5C9H/vY9If
 uKyw==
X-Gm-Message-State: APjAAAWSmddljyhAl3nynM5XVPDrPMVTfA5BtoZKsGsPLfG2UxuGCnjr
 0yHGNNl0tt+Lijb+pEzyw4hfcw==
X-Google-Smtp-Source: APXvYqxM183T4T8pUHIJPMxjfA6ieRjPgyyNwqF9AptFukBr31lpl3EdpNm5vAtxOqsCKbTl9IykQw==
X-Received: by 2002:a5d:6449:: with SMTP id d9mr19355586wrw.192.1560766475722; 
 Mon, 17 Jun 2019 03:14:35 -0700 (PDT)
Received: from dell ([2.27.35.243])
 by smtp.gmail.com with ESMTPSA id b6sm10592370wrx.85.2019.06.17.03.14.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Jun 2019 03:14:35 -0700 (PDT)
Date: Mon, 17 Jun 2019 11:14:33 +0100
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, agross@kernel.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 balbi@kernel.org, gregkh@linuxfoundation.org,
 ard.biesheuvel@linaro.org, jlhugo@gmail.com
Subject: Re: [PATCH v4 3/6] soc: qcom: geni: Add support for ACPI
Message-ID: <20190617101433.GF16364@dell>
References: <20190612142654.9639-1-lee.jones@linaro.org>
 <20190612142654.9639-4-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612142654.9639-4-lee.jones@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_031437_800140_E9F4B3AE 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.or
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGF2aWQsIEFuZHksCgpTaW5jZSB0aGVyZSBkb2VzIG5vdCBhcHBlYXIgdG8gYmUgYW55IG90aGVy
IE1haW50YWluZXJzIGZvciB0aGlzCmZpbGUvc3Vic3lzdGVtLCBvbmUgb2YgeW91IGd1eXMgYXJl
IGdvaW5nIHRvIGhhdmUgdG8gYXQgbGVhc3QKcmV2aWV3L2FjayBpdC4KCldoaWNoIHJvdXRlIGRv
IGNoYW5nZXMgdG8gdGhpcyBmaWxlIHVzdWFsbHkgdGFrZT8KCkF0IHdvcnN0IEkgY2FuIHRha2Ug
dGhlbSwgYnV0IEkgbmVlZCBtYWludGFpbmVyIEFja3MgdG8gZG8gc28uCgo9PT09PT09PT09PT09
PT09PT09PT09PT09PT0KCj4gV2hlbiBib290aW5nIHdpdGggQUNQSSBhcyB0aGUgYWN0aXZlIHNl
dCBvZiBjb25maWd1cmF0aW9uIHRhYmxlcywKPiBhbGw7IGNsb2NrcywgcmVndWxhdG9ycywgcGlu
IGZ1bmN0aW9ucyBlY3QgYXJlIGV4cGVjdGVkIHRvIGJlIGF0Cj4gdGhlaXIgaWRlYWwgdmFsdWVz
L2xldmVscy9yYXRlcywgdGh1cyB0aGUgYXNzb2NpYXRlZCBmcmFtZXdvcmtzCj4gYXJlIHVuYXZh
aWxhYmxlLiAgRW5zdXJlIGNhbGxzIHRvIHRoZXNlIEFQSXMgYXJlIHNoaWVsZGVkIHdoZW4KPiBB
Q1BJIGlzIGVuYWJsZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNA
bGluYXJvLm9yZz4KPiBBY2tlZC1ieTogQXJkIEJpZXNoZXV2ZWwgPGFyZC5iaWVzaGV1dmVsQGxp
bmFyby5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvc29jL3Fjb20vcWNvbS1nZW5pLXNlLmMgfCAyMSAr
KysrKysrKysrKysrKystLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyks
IDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL3Fjb20vcWNvbS1n
ZW5pLXNlLmMgYi9kcml2ZXJzL3NvYy9xY29tL3Fjb20tZ2VuaS1zZS5jCj4gaW5kZXggNmI4ZWYw
MTQ3MmU5Li5kNWNmOTUzYjQzMzcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zb2MvcWNvbS9xY29t
LWdlbmktc2UuYwo+ICsrKyBiL2RyaXZlcnMvc29jL3Fjb20vcWNvbS1nZW5pLXNlLmMKPiBAQCAt
MSw2ICsxLDcgQEAKPiAgLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiAgLy8g
Q29weXJpZ2h0IChjKSAyMDE3LTIwMTgsIFRoZSBMaW51eCBGb3VuZGF0aW9uLiBBbGwgcmlnaHRz
IHJlc2VydmVkLgo+ICAKPiArI2luY2x1ZGUgPGxpbnV4L2FjcGkuaD4KPiAgI2luY2x1ZGUgPGxp
bnV4L2Nsay5oPgo+ICAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+ICAjaW5jbHVkZSA8bGludXgv
ZG1hLW1hcHBpbmcuaD4KPiBAQCAtNDUwLDYgKzQ1MSw5IEBAIGludCBnZW5pX3NlX3Jlc291cmNl
c19vZmYoc3RydWN0IGdlbmlfc2UgKnNlKQo+ICB7Cj4gIAlpbnQgcmV0Owo+ICAKPiArCWlmICho
YXNfYWNwaV9jb21wYW5pb24oc2UtPmRldikpCj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICAJcmV0ID0g
cGluY3RybF9wbV9zZWxlY3Rfc2xlZXBfc3RhdGUoc2UtPmRldik7Cj4gIAlpZiAocmV0KQo+ICAJ
CXJldHVybiByZXQ7Cj4gQEAgLTQ4Nyw2ICs0OTEsOSBAQCBpbnQgZ2VuaV9zZV9yZXNvdXJjZXNf
b24oc3RydWN0IGdlbmlfc2UgKnNlKQo+ICB7Cj4gIAlpbnQgcmV0Owo+ICAKPiArCWlmIChoYXNf
YWNwaV9jb21wYW5pb24oc2UtPmRldikpCj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICAJcmV0ID0gZ2Vu
aV9zZV9jbGtzX29uKHNlKTsKPiAgCWlmIChyZXQpCj4gIAkJcmV0dXJuIHJldDsKPiBAQCAtNzI0
LDEyICs3MzEsMTQgQEAgc3RhdGljIGludCBnZW5pX3NlX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4gIAlpZiAoSVNfRVJSKHdyYXBwZXItPmJhc2UpKQo+ICAJCXJldHVybiBQ
VFJfRVJSKHdyYXBwZXItPmJhc2UpOwo+ICAKPiAtCXdyYXBwZXItPmFoYl9jbGtzWzBdLmlkID0g
Im0tYWhiIjsKPiAtCXdyYXBwZXItPmFoYl9jbGtzWzFdLmlkID0gInMtYWhiIjsKPiAtCXJldCA9
IGRldm1fY2xrX2J1bGtfZ2V0KGRldiwgTlVNX0FIQl9DTEtTLCB3cmFwcGVyLT5haGJfY2xrcyk7
Cj4gLQlpZiAocmV0KSB7Cj4gLQkJZGV2X2VycihkZXYsICJFcnIgZ2V0dGluZyBBSEIgY2xrcyAl
ZFxuIiwgcmV0KTsKPiAtCQlyZXR1cm4gcmV0Owo+ICsJaWYgKCFoYXNfYWNwaV9jb21wYW5pb24o
JnBkZXYtPmRldikpIHsKPiArCQl3cmFwcGVyLT5haGJfY2xrc1swXS5pZCA9ICJtLWFoYiI7Cj4g
KwkJd3JhcHBlci0+YWhiX2Nsa3NbMV0uaWQgPSAicy1haGIiOwo+ICsJCXJldCA9IGRldm1fY2xr
X2J1bGtfZ2V0KGRldiwgTlVNX0FIQl9DTEtTLCB3cmFwcGVyLT5haGJfY2xrcyk7Cj4gKwkJaWYg
KHJldCkgewo+ICsJCQlkZXZfZXJyKGRldiwgIkVyciBnZXR0aW5nIEFIQiBjbGtzICVkXG4iLCBy
ZXQpOwo+ICsJCQlyZXR1cm4gcmV0Owo+ICsJCX0KPiAgCX0KPiAgCj4gIAlkZXZfc2V0X2RydmRh
dGEoZGV2LCB3cmFwcGVyKTsKCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZp
Y2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZv
ciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
