Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA1474E5D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 14:44:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VxWSEf/LjzbDCwHBaxh8TSfgK13AQt9bZvnS0LE/YIU=; b=LNiJlDHF9DnH9I
	JtCTZQ4/mV6HyEhNmTPxPtRf4eq2nyGc1JvfeMfudew8ktARiG/rSV9+vmIpqxNJQpzcxj6e5YSFY
	qQWw8oikzd3rdni5wGASDUaOlcC3Q0NWkfAtdlSu+MkTaQPybX1Z1AjWqN27fEGUOolmzftdiZXIL
	yhRT8fqWDiaSj82tomDYFvcxEYraVsIDCFR8yonV23LAWm7Sn6QHP0Lp2Thj/5NBAi3bB2WDJj19u
	sOzJCqdhVJRE7IbQhTtdtnH/MNEDgCFdJWqNjaHne1EgYxczpBQUBcH3GUzxken+jZ39bbGA9ggJ9
	OueV0VcPPAolvOuf+NDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqd6a-0006mr-CU; Thu, 25 Jul 2019 12:44:20 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqd6R-0006mG-FN
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 12:44:12 +0000
Received: by mail-lf1-x144.google.com with SMTP id u10so34417157lfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 05:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc:content-transfer-encoding;
 bh=eknW/TOhMypD0xkCLP+fL/Yr6TV2yqEhmiGmkOzq3EY=;
 b=SGrHQnGamBfhL9h2LIZhaX7f9KvB10ttFxb277iUL+BvpuX19DWhTckbrOHBS4+bB+
 m9YetynEB8y7ypr4B8nFLVAGyapGKxWjoZxUPkuSEeDirKOx+jYujLjma9zqPA4jRlS3
 GqwZ7gFTVqcgMYaMp5hSI+XykjFFYKDAt78k+JUDX26g+tebTeWpVj7PKL3tuV7FVjHN
 JuE8XfOXKZUJ/QTUpnBfsy4KGo+SEGF8wT74VSYK0JXj9TD9qMCge0cJS9XqIsPcrFd7
 r8QfBLlVMx5sLRIa7z3M/0UhksbtUTCZ/ao0mZ7+K907kG9CK9zFquLPd5PxSCf8UdbU
 grbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc:content-transfer-encoding;
 bh=eknW/TOhMypD0xkCLP+fL/Yr6TV2yqEhmiGmkOzq3EY=;
 b=CHZicM4lu7cOb8rYsJg4G/2GCVWp+ijkhrXKsWiIQpND0OYVjYbjBYbUXXaKjNKyrt
 kd57hYCXIAt1XQ+2tHD4R4Nor34ElK9MKzdxfDv9B1SLcMIy7VT/538I6VBOwZvWQMTW
 jWry81NeVcGv2LdVjSvgsrIy7mTDfbGXa9iEHCwrz/9QGd7+9JIqs1w4DA3o0dGOCUnN
 9EVRW/ds93NNwojCDagrL3f6YPO1+OIlxHdhlYp9pQC+9k8rhC/R+RnVe1F794pgzB3A
 VrCAjkH6V5jV+pUtvVQgRcFPkcIQWoyyr6NFDin01fafOsIDsEfdH1OVSklVad5Q4kmU
 xhSw==
X-Gm-Message-State: APjAAAX2nhme16QevNObhouONNBZWNK5g4+RRSyKlG1sLa3mJLnH3aM9
 ZgmnQGq1u7t+083iqqXG8mvvppW0BYdn0rYgOTM=
X-Google-Smtp-Source: APXvYqwpmD94AweNs5qa5XTy4hbRxs01Hq1+o+UpAxFYnCbprWQUIs8wQla3LFmrbYj8sb8whiJOm8JPZnPJaxTAFyo=
X-Received: by 2002:a19:7f17:: with SMTP id a23mr44348217lfd.49.1564058649021; 
 Thu, 25 Jul 2019 05:44:09 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190723122022eucas1p1266d90873d564894bd852c20140f8474@eucas1p1.samsung.com>
 <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <20190723122016.30279-2-a.swigon@partner.samsung.com>
In-Reply-To: <20190723122016.30279-2-a.swigon@partner.samsung.com>
From: Chanwoo Choi <cwchoi00@gmail.com>
Date: Thu, 25 Jul 2019 21:43:31 +0900
Message-ID: <CAGTfZH0JE0PmiCHaT3vMrDaP0-8eZ3afyHy_zT9aFmMOGNTR8g@mail.gmail.com>
Subject: Re: [RFC PATCH 01/11] devfreq: exynos-bus: Extract
 exynos_bus_profile_init()
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_054411_517516_55821D22 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (cwchoi00[at]gmail.com)
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (cwchoi00[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cwchoi00[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: cwchoi00@gmail.com
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, inki.dae@samsung.com,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, georgi.djakov@linaro.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjAxOeuFhCA37JuUIDI07J28ICjsiJgpIOyYpOyghCA4OjA5LCBBcnR1ciDFmndpZ2/FhCA8YS5z
d2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT7ri5jsnbQg7J6R7ISxOgo+Cj4gVGhpcyBwYXRjaCBh
ZGRzIGEgbmV3IHN0YXRpYyBmdW5jdGlvbiwgZXh5bm9zX2J1c19wcm9maWxlX2luaXQoKSwgZXh0
cmFjdGVkCj4gZnJvbSBleHlub3NfYnVzX3Byb2JlKCkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBBcnR1
ciDFmndpZ2/FhCA8YS5zd2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT4KPiAtLS0KPiAgZHJpdmVy
cy9kZXZmcmVxL2V4eW5vcy1idXMuYyB8IDEwNiArKysrKysrKysrKysrKysrKysrKy0tLS0tLS0t
LS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNjAgaW5zZXJ0aW9ucygrKSwgNDYgZGVsZXRpb25z
KC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyBiL2RyaXZl
cnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPiBpbmRleCBkOWYzNzc5MTJjMTAuLmQ4ZjFlZmFmMmQ0
OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4gKysrIGIvZHJp
dmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+IEBAIC0zNzIsMTIgKzM3Miw2OSBAQCBzdGF0aWMg
aW50IGV4eW5vc19idXNfcGFyc2Vfb2Yoc3RydWN0IGRldmljZV9ub2RlICpucCwKPiAgICAgICAg
IHJldHVybiByZXQ7Cj4gIH0KPgo+ICtzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvZmlsZV9pbml0
KHN0cnVjdCBleHlub3NfYnVzICpidXMsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBzdHJ1Y3QgZGV2ZnJlcV9kZXZfcHJvZmlsZSAqcHJvZmlsZSkKPiArewo+ICsgICAgICAg
c3RydWN0IGRldmljZSAqZGV2ID0gYnVzLT5kZXY7Cj4gKyAgICAgICBzdHJ1Y3QgZGV2ZnJlcV9z
aW1wbGVfb25kZW1hbmRfZGF0YSAqb25kZW1hbmRfZGF0YTsKPiArICAgICAgIGludCByZXQ7Cj4g
Kwo+ICsgICAgICAgLyogSW5pdGlhbGl6ZSB0aGUgc3RydWN0IHByb2ZpbGUgYW5kIGdvdmVybm9y
IGRhdGEgZm9yIHBhcmVudCBkZXZpY2UgKi8KPiArICAgICAgIHByb2ZpbGUtPnBvbGxpbmdfbXMg
PSA1MDsKPiArICAgICAgIHByb2ZpbGUtPnRhcmdldCA9IGV4eW5vc19idXNfdGFyZ2V0Owo+ICsg
ICAgICAgcHJvZmlsZS0+Z2V0X2Rldl9zdGF0dXMgPSBleHlub3NfYnVzX2dldF9kZXZfc3RhdHVz
Owo+ICsgICAgICAgcHJvZmlsZS0+ZXhpdCA9IGV4eW5vc19idXNfZXhpdDsKPiArCj4gKyAgICAg
ICBvbmRlbWFuZF9kYXRhID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpvbmRlbWFuZF9kYXRh
KSwgR0ZQX0tFUk5FTCk7Cj4gKyAgICAgICBpZiAoIW9uZGVtYW5kX2RhdGEpIHsKPiArICAgICAg
ICAgICAgICAgcmV0ID0gLUVOT01FTTsKPiArICAgICAgICAgICAgICAgZ290byBlcnI7Cj4gKyAg
ICAgICB9Cj4gKyAgICAgICBvbmRlbWFuZF9kYXRhLT51cHRocmVzaG9sZCA9IDQwOwo+ICsgICAg
ICAgb25kZW1hbmRfZGF0YS0+ZG93bmRpZmZlcmVudGlhbCA9IDU7Cj4gKwo+ICsgICAgICAgLyog
QWRkIGRldmZyZXEgZGV2aWNlIHRvIG1vbml0b3IgYW5kIGhhbmRsZSB0aGUgZXh5bm9zIGJ1cyAq
Lwo+ICsgICAgICAgYnVzLT5kZXZmcmVxID0gZGV2bV9kZXZmcmVxX2FkZF9kZXZpY2UoZGV2LCBw
cm9maWxlLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IERFVkZSRVFfR09WX1NJTVBMRV9PTkRFTUFORCwKPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBvbmRlbWFuZF9kYXRhKTsKPiArICAgICAgIGlmIChJU19F
UlIoYnVzLT5kZXZmcmVxKSkgewo+ICsgICAgICAgICAgICAgICBkZXZfZXJyKGRldiwgImZhaWxl
ZCB0byBhZGQgZGV2ZnJlcSBkZXZpY2VcbiIpOwo+ICsgICAgICAgICAgICAgICByZXQgPSBQVFJf
RVJSKGJ1cy0+ZGV2ZnJlcSk7Cj4gKyAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+ICsgICAgICAg
fQo+ICsKPiArICAgICAgIC8qIFJlZ2lzdGVyIG9wcF9ub3RpZmllciB0byBjYXRjaCB0aGUgY2hh
bmdlIG9mIE9QUCAgKi8KPiArICAgICAgIHJldCA9IGRldm1fZGV2ZnJlcV9yZWdpc3Rlcl9vcHBf
bm90aWZpZXIoZGV2LCBidXMtPmRldmZyZXEpOwo+ICsgICAgICAgaWYgKHJldCA8IDApIHsKPiAr
ICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJmYWlsZWQgdG8gcmVnaXN0ZXIgb3BwIG5vdGlm
aWVyXG4iKTsKPiArICAgICAgICAgICAgICAgZ290byBlcnI7Cj4gKyAgICAgICB9Cj4gKwo+ICsg
ICAgICAgLyoKPiArICAgICAgICAqIEVuYWJsZSBkZXZmcmVxLWV2ZW50IHRvIGdldCByYXcgZGF0
YSB3aGljaCBpcyB1c2VkIHRvIGRldGVybWluZQo+ICsgICAgICAgICogY3VycmVudCBidXMgbG9h
ZC4KPiArICAgICAgICAqLwo+ICsgICAgICAgcmV0ID0gZXh5bm9zX2J1c19lbmFibGVfZWRldihi
dXMpOwo+ICsgICAgICAgaWYgKHJldCA8IDApIHsKPiArICAgICAgICAgICAgICAgZGV2X2Vycihk
ZXYsICJmYWlsZWQgdG8gZW5hYmxlIGRldmZyZXEtZXZlbnQgZGV2aWNlc1xuIik7Cj4gKyAgICAg
ICAgICAgICAgIGdvdG8gZXJyOwo+ICsgICAgICAgfQo+ICsKPiArICAgICAgIHJldCA9IGV4eW5v
c19idXNfc2V0X2V2ZW50KGJ1cyk7Cj4gKyAgICAgICBpZiAocmV0IDwgMCkgewo+ICsgICAgICAg
ICAgICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCB0byBzZXQgZXZlbnQgdG8gZGV2ZnJlcS1ldmVu
dCBkZXZpY2VzXG4iKTsKPiArICAgICAgICAgICAgICAgZ290byBlcnI7Cj4gKyAgICAgICB9Cj4g
Kwo+ICtlcnI6Cj4gKyAgICAgICByZXR1cm4gcmV0Owo+ICt9Cj4gKwo+ICBzdGF0aWMgaW50IGV4
eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgewo+ICAgICAg
ICAgc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiAgICAgICAgIHN0cnVjdCBkZXZp
Y2Vfbm9kZSAqbnAgPSBkZXYtPm9mX25vZGUsICpub2RlOwo+ICAgICAgICAgc3RydWN0IGRldmZy
ZXFfZGV2X3Byb2ZpbGUgKnByb2ZpbGU7Cj4gLSAgICAgICBzdHJ1Y3QgZGV2ZnJlcV9zaW1wbGVf
b25kZW1hbmRfZGF0YSAqb25kZW1hbmRfZGF0YTsKPiAgICAgICAgIHN0cnVjdCBkZXZmcmVxX3Bh
c3NpdmVfZGF0YSAqcGFzc2l2ZV9kYXRhOwo+ICAgICAgICAgc3RydWN0IGRldmZyZXEgKnBhcmVu
dF9kZXZmcmVxOwo+ICAgICAgICAgc3RydWN0IGV4eW5vc19idXMgKmJ1czsKPiBAQCAtNDE4LDUy
ICs0NzUsOSBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKPiAgICAgICAgIGlmIChyZXQgPCAwKQo+ICAgICAgICAgICAgICAgICBnb3Rv
IGVycjsKPgo+IC0gICAgICAgLyogSW5pdGlhbGl6ZSB0aGUgc3RydWN0IHByb2ZpbGUgYW5kIGdv
dmVybm9yIGRhdGEgZm9yIHBhcmVudCBkZXZpY2UgKi8KPiAtICAgICAgIHByb2ZpbGUtPnBvbGxp
bmdfbXMgPSA1MDsKPiAtICAgICAgIHByb2ZpbGUtPnRhcmdldCA9IGV4eW5vc19idXNfdGFyZ2V0
Owo+IC0gICAgICAgcHJvZmlsZS0+Z2V0X2Rldl9zdGF0dXMgPSBleHlub3NfYnVzX2dldF9kZXZf
c3RhdHVzOwo+IC0gICAgICAgcHJvZmlsZS0+ZXhpdCA9IGV4eW5vc19idXNfZXhpdDsKPiAtCj4g
LSAgICAgICBvbmRlbWFuZF9kYXRhID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpvbmRlbWFu
ZF9kYXRhKSwgR0ZQX0tFUk5FTCk7Cj4gLSAgICAgICBpZiAoIW9uZGVtYW5kX2RhdGEpIHsKPiAt
ICAgICAgICAgICAgICAgcmV0ID0gLUVOT01FTTsKPiArICAgICAgIHJldCA9IGV4eW5vc19idXNf
cHJvZmlsZV9pbml0KGJ1cywgcHJvZmlsZSk7Cj4gKyAgICAgICBpZiAocmV0IDwgMCkKPiAgICAg
ICAgICAgICAgICAgZ290byBlcnI7Cj4gLSAgICAgICB9Cj4gLSAgICAgICBvbmRlbWFuZF9kYXRh
LT51cHRocmVzaG9sZCA9IDQwOwo+IC0gICAgICAgb25kZW1hbmRfZGF0YS0+ZG93bmRpZmZlcmVu
dGlhbCA9IDU7Cj4gLQo+IC0gICAgICAgLyogQWRkIGRldmZyZXEgZGV2aWNlIHRvIG1vbml0b3Ig
YW5kIGhhbmRsZSB0aGUgZXh5bm9zIGJ1cyAqLwo+IC0gICAgICAgYnVzLT5kZXZmcmVxID0gZGV2
bV9kZXZmcmVxX2FkZF9kZXZpY2UoZGV2LCBwcm9maWxlLAo+IC0gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIERFVkZSRVFfR09WX1NJTVBMRV9PTkRFTUFORCwK
PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvbmRlbWFu
ZF9kYXRhKTsKPiAtICAgICAgIGlmIChJU19FUlIoYnVzLT5kZXZmcmVxKSkgewo+IC0gICAgICAg
ICAgICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCB0byBhZGQgZGV2ZnJlcSBkZXZpY2VcbiIpOwo+
IC0gICAgICAgICAgICAgICByZXQgPSBQVFJfRVJSKGJ1cy0+ZGV2ZnJlcSk7Cj4gLSAgICAgICAg
ICAgICAgIGdvdG8gZXJyOwo+IC0gICAgICAgfQo+IC0KPiAtICAgICAgIC8qIFJlZ2lzdGVyIG9w
cF9ub3RpZmllciB0byBjYXRjaCB0aGUgY2hhbmdlIG9mIE9QUCAgKi8KPiAtICAgICAgIHJldCA9
IGRldm1fZGV2ZnJlcV9yZWdpc3Rlcl9vcHBfbm90aWZpZXIoZGV2LCBidXMtPmRldmZyZXEpOwo+
IC0gICAgICAgaWYgKHJldCA8IDApIHsKPiAtICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJm
YWlsZWQgdG8gcmVnaXN0ZXIgb3BwIG5vdGlmaWVyXG4iKTsKPiAtICAgICAgICAgICAgICAgZ290
byBlcnI7Cj4gLSAgICAgICB9Cj4gLQo+IC0gICAgICAgLyoKPiAtICAgICAgICAqIEVuYWJsZSBk
ZXZmcmVxLWV2ZW50IHRvIGdldCByYXcgZGF0YSB3aGljaCBpcyB1c2VkIHRvIGRldGVybWluZQo+
IC0gICAgICAgICogY3VycmVudCBidXMgbG9hZC4KPiAtICAgICAgICAqLwo+IC0gICAgICAgcmV0
ID0gZXh5bm9zX2J1c19lbmFibGVfZWRldihidXMpOwo+IC0gICAgICAgaWYgKHJldCA8IDApIHsK
PiAtICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZW5hYmxlIGRldmZyZXEt
ZXZlbnQgZGV2aWNlc1xuIik7Cj4gLSAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+IC0gICAgICAg
fQo+IC0KPiAtICAgICAgIHJldCA9IGV4eW5vc19idXNfc2V0X2V2ZW50KGJ1cyk7Cj4gLSAgICAg
ICBpZiAocmV0IDwgMCkgewo+IC0gICAgICAgICAgICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCB0
byBzZXQgZXZlbnQgdG8gZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsKPiAtICAgICAgICAgICAg
ICAgZ290byBlcnI7Cj4gLSAgICAgICB9Cj4KPiAgICAgICAgIGdvdG8gb3V0Owo+ICBwYXNzaXZl
Ogo+IC0tCj4gMi4xNy4xCj4KCk5BQ0suCgpJdCBoYXMgbm90IGFueSBiZW5lZml0IGFuZCBJIGRv
bid0IHVuZGVyc3RhbmQgcmVhc29uIHdoeSBpdCBpcyBuZWNlc3NhcnkuCkkgZG9uJ3QgYWdyZWUu
IFBsZWFzZSBkcm9wIGl0LgoKLS0gCkJlc3QgUmVnYXJkcywKQ2hhbndvbyBDaG9pCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
