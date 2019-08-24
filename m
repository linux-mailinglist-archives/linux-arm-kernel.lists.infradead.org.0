Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF2D9BCF8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 12:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zfTxVaJGApUCT3Hpd6ZTfQygSw8IGsyrCBJ9Bd3NRfk=; b=k/liWuAf1ldoe6
	skHqNTVdTUir1BrZ+3XpOZ/PzSVwB8ScT3aHL+hSseky8OMOTAeNz+hBkm/Kda10FaoQKHVgnoIEX
	x5QWIuwzxWUDvYInm5k3vEcLEuR/Bqa6TpXoIpIvQQTAvz9sHwaA1kYEC2B6kE0GfuO2+sRP1w7gH
	OSqsM7LcaiTMjMtb31PPqJi1Q3bPFnUwrEV9sCVzRcLwzyMjOvt5yP1sGSp5Yfc0GNvhKQVJ/zJ8r
	MNrjLxm0F6NoMxYOGMHa2iChgsPLLLt4nKYZ5eTRdD7OUJWG3qMXQpC6KZgTgF5AxJ+vKRA+JJX6i
	+n7aiDzio5fzBmBEK4Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1T05-0006RT-Ea; Sat, 24 Aug 2019 10:10:26 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Szp-0006Qz-Td
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 10:10:11 +0000
Received: by mail-wr1-x442.google.com with SMTP id b16so10758021wrq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 24 Aug 2019 03:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hT7cSmPZKRUdqD9D/lDoReXsSyJf6TsU+BhKTkGeFEo=;
 b=bMZRE8vYyL3SNczbFposfdV0aBxbml5NLfdfxJgQBb5YS6FkrP5j/G1UkCdcxeatRb
 oR0iR5JuXifHejiI9Wli+6ObydVTeDKnAo2d47NianT68dwIhbHz3w+Tp68l4+YgbrOz
 p5Mmqi396inZaAIKsjoQKc946r2Tjr6p1Rb+w3wPxT44HnBYcKtPmqJQg4Bo7W9NLIic
 b6xqA8VGL47ZkX/9wIxzcgjyouAvR+EPODwWL9upJoBRwtI0WvVevZKjxDIHXAGwkuDT
 J/Ht7oNen+ZolS/ePR4h3k/71FQ9z0k117Cbn1eVtsT5u1Cc1xqeDw39ySdlYyz+PB9O
 rXeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hT7cSmPZKRUdqD9D/lDoReXsSyJf6TsU+BhKTkGeFEo=;
 b=CWErJiAhSzcXXQ4sK7n8r91BAtHS2cxu1kKipW14rq6oMk/PcdLKFAdQqY8pUWXbws
 7W/m8yQWs6ud8wQHLZPOZS2Hcl81+5j0XNcNnpPmqSDsTkhdWqFbI3d1wCVkyGnmdVMx
 rb/b6ypSwu3rUhioQ5J0XsktL5o6YojJotP4Dyatl7c6up62aXFfake6hw48R8rPFIJh
 PcKo5WvftP8VVNvWmLtjLaKGmRvHxa1OZH4ScD4VSakNRlpZlphMjbesCV7+wRs3+9RW
 wdvRZzvQIbkgAG+GkXzyJdGq4+bN00PmbKNjhAxz2y9qHzXgrQHSQzFOTRKSowUcpCTx
 3FpQ==
X-Gm-Message-State: APjAAAXDhvHR5isrBeja2R4ozFVES8VuFb4AfAwXr7y+8kX60zQgtIB3
 PsqmoYHSTEvMW1OdN7HqsUUCBesSRXOuJA==
X-Google-Smtp-Source: APXvYqzIbYq2G3tydjot4/wtSszBOi+pq0zee1xlmWxpwklAZZ26lfUh8dqr8m1ZHignzi/Q9l9+Lw==
X-Received: by 2002:adf:f844:: with SMTP id d4mr10593832wrq.128.1566641407824; 
 Sat, 24 Aug 2019 03:10:07 -0700 (PDT)
Received: from [192.168.0.8] (57.166.117.91.dynamic.reverse-mundo-r.com.
 [91.117.166.57])
 by smtp.gmail.com with ESMTPSA id 91sm17305681wrp.3.2019.08.24.03.10.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 24 Aug 2019 03:10:06 -0700 (PDT)
Subject: Re: [RESEND PATCH 1/1] rtc: sun6i: Allow using as wakeup source from
 suspend
To: a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 maxime.ripard@bootlin.com, wens@csie.org, linux-rtc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20190821210056.11995-1-alejandro.gonzalez.correo@gmail.com>
From: =?UTF-8?Q?Alejandro_Gonz=c3=a1lez?= <alejandro.gonzalez.correo@gmail.com>
Message-ID: <86432b18-7a62-8412-33ad-b2e6e579a1ec@gmail.com>
Date: Sat, 24 Aug 2019 12:10:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190821210056.11995-1-alejandro.gonzalez.correo@gmail.com>
Content-Language: es-ES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_031009_984886_E06E8274 
X-CRM114-Status: GOOD (  24.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alejandro.gonzalez.correo[at]gmail.com)
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
Cc: linux-sunxi@googlegroups.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkFsZWphbmRybyBHb256w6FsZXogd3JvdGU6Cj4gVGhpcyBwYXRjaCBhbGxvd3MgdXNlcnNwYWNl
IHRvIHNldCB1cCB3YWtldXAgYWxhcm1zIG9uIGFueSBSVEMgaGFuZGxlZCBieSB0aGUKPiBzdW42
aSBkcml2ZXIsIGFuZCBhZGRzIHRoZSBuZWNlc3NhcnkgUE0gb3BlcmF0aW9ucyB0byBhbGxvdyBy
ZXN1bWluZyBmcm9tCj4gc3VzcGVuZCB3aGVuIHRoZSBjb25maWd1cmVkIHdha2V1cCBhbGFybSBm
aXJlcyBhIElSUS4gT2YgY291cnNlLCB0aGF0IHRoZQo+IGRldmljZSBhY3R1YWxseSByZXN1bWVz
IGRlcGVuZHMgb24gdGhlIHN1c3BlbmQgc3RhdGUgYW5kIGhvdyBhIHBhcnRpY3VsYXIKPiBoYXJk
d2FyZSByZWFjdHMgdG8gaXQsIGJ1dCB0aGF0IGlzIG91dCBvZiBzY29wZSBmb3IgdGhpcyBwYXRj
aC4KPiAKPiBJJ3ZlIHRlc3RlZCB0aGVzZSBjaGFuZ2VzIG9uIGEgUGluZSBINjQgbW9kZWwgQiwg
d2hpY2ggY29udGFpbnMgYQo+IEFsbHdpbm5lciBINiBTb0MsIHdpdGggdGhlIGhlbHAgb2YgQ09O
RklHX1BNX1RFU1RfU1VTUEVORCBrZXJuZWwgb3B0aW9uLgo+IFRoZXNlIGFyZSB0aGUgaW50ZXJl
c3Rpbmcgb3V0cHV0cyBmcm9tIHRoZSBrZXJuZWwgYW5kIGNvbW1hbmRzIHdoaWNoCj4gc2hvdyB0
aGF0IGl0IHdvcmtzLiBBcyBldmVyeSBSVEMgaGFuZGxlZCBieSB0aGlzIGRyaXZlciBpcyBsYXJn
ZWx5IHRoZQo+IHNhbWUsIEkgdGhpbmsgdGhhdCBpdCBzaG91bGRuJ3QgaW50cm9kdWNlIGFueSBy
ZWdyZXNzaW9uIG9uIG90aGVyIFNvQ3MsCj4gYnV0IEkgbWF5IGJlIHdyb25nLgo+IAo+IFsgICAg
MS4wOTI3MDVdIFBNOiB0ZXN0IFJUQyB3YWtldXAgZnJvbSAnZnJlZXplJyBzdXNwZW5kCj4gWyAg
ICAxLjA5ODIzMF0gUE06IHN1c3BlbmQgZW50cnkgKHMyaWRsZSkKPiBbICAgIDEuMjEyOTA3XSBQ
TTogc3VzcGVuZCBkZXZpY2VzIHRvb2sgMC4wODAgc2Vjb25kcwo+IChUaGUgU29DIGZyZWV6ZXMg
Zm9yIHNvbWUgc2Vjb25kcykKPiBbICAgIDMuMTk3NjA0XSBQTTogcmVzdW1lIGRldmljZXMgdG9v
ayAwLjEwNCBzZWNvbmRzCj4gWyAgICAzLjIxNTkzN10gUE06IHN1c3BlbmQgZXhpdAo+IAo+IFsg
ICAgMS4wOTI4MTJdIFBNOiB0ZXN0IFJUQyB3YWtldXAgZnJvbSAnbWVtJyBzdXNwZW5kCj4gWyAg
ICAxLjA5ODA4OV0gUE06IHN1c3BlbmQgZW50cnkgKGRlZXApCj4gWyAgICAxLjEwMjAzM10gUE06
IHN1c3BlbmQgZXhpdAo+IFsgICAgMS4xMDUyMDVdIFBNOiBzdXNwZW5kIHRlc3QgZmFpbGVkLCBl
cnJvciAtMjIKPiAKPiBJbiBhbnkgY2FzZSwgdGhlIFJUQyBhbGFybSBpbnRlcnJ1cHQgZ2V0cyBm
aXJlZCBhcyBleHB0ZWN0ZWQ6Cj4gCj4gJCBlY2hvICs1ID4gL3N5cy9jbGFzcy9ydGMvcnRjMC93
YWtlYWxhcm0gJiYgc2xlZXAgNSAmJiBncmVwIHJ0YyAvcHJvYy9pbnRlcnJ1cHRzCj4gIDI5OiAg
ICAgICAgICAxICAgICAgICAgIDAgICAgICAgICAgMCAgICAgICAgICAwICAgICBHSUN2MiAxMzMg
TGV2ZWwgICAgIDcwMDAwMDAucnRjCj4gCj4gU2lnbmVkLW9mZi1ieTogQWxlamFuZHJvIEdvbnrD
oWxleiA8YWxlamFuZHJvLmdvbnphbGV6LmNvcnJlb0BnbWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZl
cnMvcnRjL3J0Yy1zdW42aS5jIHwgMzAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4g
IDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcnRjL3J0Yy1zdW42aS5jIGIvZHJpdmVycy9ydGMvcnRjLXN1bjZpLmMKPiBpbmRleCBjMGU3
NWMzNzM2MDUuLmI3NjExZTVkZWEzZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3J0Yy9ydGMtc3Vu
NmkuYwo+ICsrKyBiL2RyaXZlcnMvcnRjL3J0Yy1zdW42aS5jCj4gQEAgLTU5OCw2ICs1OTgsMzMg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBydGNfY2xhc3Nfb3BzIHN1bjZpX3J0Y19vcHMgPSB7Cj4g
IAkuYWxhcm1faXJxX2VuYWJsZQk9IHN1bjZpX3J0Y19hbGFybV9pcnFfZW5hYmxlCj4gIH07Cj4g
IAo+ICsjaWZkZWYgQ09ORklHX1BNX1NMRUVQCj4gKy8qIEVuYWJsZSBJUlEgd2FrZSBvbiBzdXNw
ZW5kLCB0byB3YWtlIHVwIGZyb20gUlRDLiAqLwo+ICtzdGF0aWMgaW50IHN1bjZpX3J0Y19zdXNw
ZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiArewo+ICsJc3RydWN0IHN1bjZpX3J0Y19kZXYgKmNo
aXAgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPiArCj4gKwlpZiAoZGV2aWNlX21heV93YWtldXAo
ZGV2KSkKPiArCQllbmFibGVfaXJxX3dha2UoY2hpcC0+aXJxKTsKPiArCj4gKwlyZXR1cm4gMDsK
PiArfQo+ICsKPiArLyogRGlzYWJsZSBJUlEgd2FrZSBvbiByZXN1bWUuICovCj4gK3N0YXRpYyBp
bnQgc3VuNmlfcnRjX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gK3sKPiArCXN0cnVjdCBz
dW42aV9ydGNfZGV2ICpjaGlwID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gKwo+ICsJaWYgKGRl
dmljZV9tYXlfd2FrZXVwKGRldikpCj4gKwkJZGlzYWJsZV9pcnFfd2FrZShjaGlwLT5pcnEpOwo+
ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKyNlbmRpZgo+ICsKPiArc3RhdGljIFNJTVBMRV9ERVZf
UE1fT1BTKHN1bjZpX3J0Y19wbV9vcHMsCj4gKwlzdW42aV9ydGNfc3VzcGVuZCwgc3VuNmlfcnRj
X3Jlc3VtZSk7Cj4gKwo+ICBzdGF0aWMgaW50IHN1bjZpX3J0Y19wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQo+ICB7Cj4gIAlzdHJ1Y3Qgc3VuNmlfcnRjX2RldiAqY2hpcCA9IHN1
bjZpX3J0YzsKPiBAQCAtNjUwLDYgKzY3Nyw4IEBAIHN0YXRpYyBpbnQgc3VuNmlfcnRjX3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAo+ICAJY2xrX3ByZXBhcmVfZW5hYmxl
KGNoaXAtPmxvc2MpOwo+ICAKPiArCWRldmljZV9pbml0X3dha2V1cCgmcGRldi0+ZGV2LCAxKTsK
PiArCj4gIAljaGlwLT5ydGMgPSBkZXZtX3J0Y19kZXZpY2VfcmVnaXN0ZXIoJnBkZXYtPmRldiwg
InJ0Yy1zdW42aSIsCj4gIAkJCQkJICAgICAmc3VuNmlfcnRjX29wcywgVEhJU19NT0RVTEUpOwo+
ICAJaWYgKElTX0VSUihjaGlwLT5ydGMpKSB7Cj4gQEAgLTY4NCw2ICs3MTMsNyBAQCBzdGF0aWMg
c3RydWN0IHBsYXRmb3JtX2RyaXZlciBzdW42aV9ydGNfZHJpdmVyID0gewo+ICAJLmRyaXZlcgkJ
PSB7Cj4gIAkJLm5hbWUJCT0gInN1bjZpLXJ0YyIsCj4gIAkJLm9mX21hdGNoX3RhYmxlID0gc3Vu
NmlfcnRjX2R0X2lkcywKPiArCQkucG0gPSAmc3VuNmlfcnRjX3BtX29wcywKPiAgCX0sCj4gIH07
Cj4gIGJ1aWx0aW5fcGxhdGZvcm1fZHJpdmVyKHN1bjZpX3J0Y19kcml2ZXIpOwo+IApJJ2QgYmUg
Z3JhdGVmdWwgaWYgc29tZW9uZSBjYW4gdGVzdCB0aGlzIHBhdGNoIG9uIGRpZmZlcmVudCBib2Fy
ZHMgdG8gdGhlIFBpbmUgSDY0IG1vZGVsIEIuIEknbSBhZnJhaWQgdGhhdCBib2FyZCBpcyB0aGUg
b25seSBvbmUgSSBoYXZlIHRvIHRlc3QgdGhpcy4KClJlZ2FyZHMuCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
