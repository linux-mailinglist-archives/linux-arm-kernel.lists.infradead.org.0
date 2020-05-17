Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 263D21D665D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 May 2020 08:39:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xvkUMqhQB7Bl7gf0YjkAQIZLwFfpgIdQDHTSJCmGxlA=; b=ifW4wNyMs2alG3
	z4iXRGWeqZJtsEIEfkhZ7KYQfxNI0kVf4l7IyIRfmCto61/wcypVz26nrErcoejxSufdxXCW/2Tj4
	imIE/gknmrNIlcgiNrctU1idOdPiIeFuMpnRyt8UlaUfCfwSDlTLysgXEFJNLLmv28ot3VA1sKALt
	zn6gDvqxJsRUGig+RtUatCtmcJ6r4Wak0a+9hpSET8/RGJZx5A76suzVtPB8qlPBFX1e+Yy2q52CZ
	m9q7gaW0dEaYIhHYy+EE9K8rdarxccF5a7XpDz059QjrLcFICgHFEYMiB1M4VTcdA7BWfy/RHFQ3M
	fy2dQlHJAdLTByi/n5qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaCxR-0006Al-9e; Sun, 17 May 2020 06:39:33 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaCxJ-00069p-8E; Sun, 17 May 2020 06:39:26 +0000
Received: by mail-pg1-x544.google.com with SMTP id r10so3131351pgv.8;
 Sat, 16 May 2020 23:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=giiyGxJpm87EbQlUnTEEY4T8mtfUuD9q9mhH9A0THMY=;
 b=KZNd9WxGab+Wxx2FQYpQK99sEhKX0EoKcsTEvjvPB2y7NMoUBoKvcSkv/v7QP331tU
 e7dKpZXYUuyFm2A/aNXm06Aznk0GzKC0K0Am1PGl3RkaVdFNo4vKQhxgs0988c7wx34D
 jDvN0kI+j4vwpSac+x/zh69hjXxP2U4DI4Xu+AW7RWR01urRVl87VyYNZJd802nvta/k
 wfVEkrY3BeUMOjhlZF0tO+xAlFPTm2f5BcMEMEaJkdC6EqVGI7AcMTSfPRKJWM1d/iKr
 cXSlLOPPkDJo8rwy3R9/Oe9CQvTfi4K2ak7rUHsObV6Cspny7FsZ1zxgMGDd0dURsxDU
 kCZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=giiyGxJpm87EbQlUnTEEY4T8mtfUuD9q9mhH9A0THMY=;
 b=fncljXvKbIRmSG2I6L5hjqfr+R7UD3JLRPhbx/zTq3+PzUTUbjSYsl6JyxAUALRN4m
 nA+Y986GFFbLjzNtmLqsNvFXR35EUCYlMvOoVK6OIQk/K4w35YFU+/NAnATR9xYz0IA3
 gne3+UNeKClsRd5e7AMucSjcy5wywd3FBsUayeGlVpHIup5zFly1xV2iM1c0dZPRWAPy
 2SL4OE4uTFLKD/nPonKhktEqfDP+e/3lRjyWlN9hQy6uNh2AzRhvhDON3yhFnPBRav4s
 3VRLW+zsKSVjtCILbwDRs8I/o315MHwO6hGtj9IWI7kC3vkV0PMAlH2EeJO1HYZorfWg
 gf1g==
X-Gm-Message-State: AOAM531OG6S4ezk1xZlNjDrovIcGSM1E1vQOQlLfviTL/+eNnRlrVzbX
 6xRQXJt1o6batN0IrSgiJGfViXIOwM/13uKD4jI=
X-Google-Smtp-Source: ABdhPJz9Wc0b/rXgXC6zFchEKbbitNBEl08NrzHB+VnONl/exhhVxqMdiNhlz3AsS5yawpaD9vqc40/WfnFbO0q8OHQ=
X-Received: by 2002:a62:e51a:: with SMTP id n26mr11295162pff.301.1589697564158; 
 Sat, 16 May 2020 23:39:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200516124857.75004-1-lecopzer@gmail.com>
 <20200516124857.75004-2-lecopzer@gmail.com>
In-Reply-To: <20200516124857.75004-2-lecopzer@gmail.com>
From: Lecopzer Chen <lecopzer@gmail.com>
Date: Sun, 17 May 2020 14:39:13 +0800
Message-ID: <CANr2M1_Jzw1Z6A2Gw4DgcKiZqUd1-Bzn-GM+g1CCHgQP597FBQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm_pmu: Add support for perf NMI interrupts
 registration
To: linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_233925_309560_D0F4FDAE 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lecopzer[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, Jian-Lin Chen <lecopzer.chen@mediatek.com>,
 alexander.shishkin@linux.intel.com, catalin.marinas@arm.com, jolsa@redhat.com,
 acme@kernel.org, peterz@infradead.org, mingo@redhat.com,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 namhyung@kernel.org, will@kernel.org, yj.chiang@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlcmUgd2FzIHNvbWUgbWlzdGFrZXMgd2hlbiBtZXJnaW5nIHRoaXMgcGF0Y2guClRoZSBmcmVl
IG5taSBwYXJ0IGlzIG5vdCBwcmVzZW50IDooCgpUaGUgZm9sbG93aW5nIHBhcnQgd2lsbCBiZSBh
ZGRlZCBpbiBWMiBuZXh0IHdlZWtlbmQuCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9wZXJmL2FybV9w
bXUuYyBiL2RyaXZlcnMvcGVyZi9hcm1fcG11LmMKaW5kZXggZmEzN2I3MmQxOWUyLi5hYTllZDA5
ZTUzMDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGVyZi9hcm1fcG11LmMKKysrIGIvZHJpdmVycy9w
ZXJmL2FybV9wbXUuYwpAQCAtNTQ0LDYgKzU0NCwzOCBAQCBzdGF0aWMgaW50IGFybXBtdV9jb3Vu
dF9pcnFfdXNlcnMoY29uc3QgaW50IGlycSkKICAgICAgICByZXR1cm4gY291bnQ7CiB9Cgorc3Rh
dGljIHZvaWQgYXJtcG11X3RlYXJkb3duX3BlcmNwdV9ubWlfb3RoZXIodm9pZCogaW5mbykKK3sK
KyAgICAgICAvKgorICAgICAgICAqIFdlIGRvbid0IG5lZWQgdG8gZGlzYWJsZSBwcmVlbXB0aW9u
IHNpbmNlIHNtcF9jYWxsX2Z1bmN0aW9uKCkKKyAgICAgICAgKiBkaWQgdGhpcyBmb3IgdXMuCisg
ICAgICAgICovCisgICAgICAgdGVhcmRvd25fcGVyY3B1X25taSgodWludHB0cl90KSBpbmZvKTsK
K30KKworc3RhdGljIHZvaWQgX2FybXBtdV9mcmVlX2lycSh1bnNpZ25lZCBpbnQgaXJxLCB2b2lk
ICpkZXZfaWQpCit7CisgICAgICAgaWYgKGFybXBtdV9zdXBwb3J0X25taSgpKQorICAgICAgICAg
ICAgICAgZnJlZV9ubWkoaXJxLCBkZXZfaWQpOworICAgICAgIGVsc2UKKyAgICAgICAgICAgICAg
IGZyZWVfaXJxKGlycSwgZGV2X2lkKTsKK30KKworc3RhdGljIHZvaWQgX2FybXBtdV9mcmVlX3Bl
cmNwdV9pcnEodW5zaWduZWQgaW50IGlycSwgdm9pZCBfX3BlcmNwdSAqZGV2X2lkKQoreworICAg
ICAgIGlmIChhcm1wbXVfc3VwcG9ydF9ubWkoKSkgeworICAgICAgICAgICAgICAgcHJlZW1wdF9k
aXNhYmxlKCk7CisgICAgICAgICAgICAgICB0ZWFyZG93bl9wZXJjcHVfbm1pKGlycSk7CisgICAg
ICAgICAgICAgICBzbXBfY2FsbF9mdW5jdGlvbihhcm1wbXVfdGVhcmRvd25fcGVyY3B1X25taV9v
dGhlciwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICh2b2lkICopKHVpbnRwdHJf
dCkgaXJxLCB0cnVlKTsKKyAgICAgICAgICAgICAgIHByZWVtcHRfZW5hYmxlKCk7CisKKyAgICAg
ICAgICAgICAgIGZyZWVfcGVyY3B1X25taShpcnEsIGRldl9pZCk7CisgICAgICAgfQorICAgICAg
IGVsc2UKKyAgICAgICAgICAgICAgIGZyZWVfcGVyY3B1X2lycShpcnEsIGRldl9pZCk7Cit9CisK
IHZvaWQgYXJtcG11X2ZyZWVfaXJxKGludCBpcnEsIGludCBjcHUpCiB7CiAgICAgICAgaWYgKHBl
cl9jcHUoY3B1X2lycSwgY3B1KSA9PSAwKQpAQCAtNTUyLDkgKzU4NCw5IEBAIHZvaWQgYXJtcG11
X2ZyZWVfaXJxKGludCBpcnEsIGludCBjcHUpCiAgICAgICAgICAgICAgICByZXR1cm47CgogICAg
ICAgIGlmICghaXJxX2lzX3BlcmNwdV9kZXZpZChpcnEpKQotICAgICAgICAgICAgICAgZnJlZV9p
cnEoaXJxLCBwZXJfY3B1X3B0cigmY3B1X2FybXBtdSwgY3B1KSk7CisgICAgICAgICAgICAgICBf
YXJtcG11X2ZyZWVfaXJxKGlycSwgcGVyX2NwdV9wdHIoJmNwdV9hcm1wbXUsIGNwdSkpOwogICAg
ICAgIGVsc2UgaWYgKGFybXBtdV9jb3VudF9pcnFfdXNlcnMoaXJxKSA9PSAxKQotICAgICAgICAg
ICAgICAgZnJlZV9wZXJjcHVfaXJxKGlycSwgJmNwdV9hcm1wbXUpOworICAgICAgICAgICAgICAg
X2FybXBtdV9mcmVlX3BlcmNwdV9pcnEoaXJxLCAmY3B1X2FybXBtdSk7CgogICAgICAgIHBlcl9j
cHUoY3B1X2lycSwgY3B1KSA9IDA7CiB9CgoKCgpUaGFua3MsCkxlY29wemVyCgpMZWNvcHplciBD
aGVuIDxsZWNvcHplckBnbWFpbC5jb20+IOaWvCAyMDIw5bm0NeaciDE25pelIOmAseWFrSDkuIvl
jYg4OjUw5a+r6YGT77yaCj4KPiBSZWdpc3RlciBwZXJmIGludGVycnVwdHMgYnkgcmVxdWVzdF9u
bWkoKS9wZXJjcHVfbm1pKCkgd2hlbiBib3RoCj4gQVJNNjRfUFNFVURPX05NSSBhbmQgQVJNNjRf
UFNFVURPX05NSV9QRVJGIGFyZSBlbmFibGVkIGFuZCBubWkKPiBjcHVmcmVhdHVyZSBpcyBhY3Rp
dmUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBMZWNvcHplciBDaGVuIDxsZWNvcHplci5jaGVuQG1lZGlh
dGVrLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9wZXJmL2FybV9wbXUuYyAgICAgICB8IDUxICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLQo+ICBpbmNsdWRlL2xpbnV4L3BlcmYvYXJt
X3BtdS5oIHwgIDYgKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA1MSBpbnNlcnRpb25zKCspLCA2
IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGVyZi9hcm1fcG11LmMgYi9k
cml2ZXJzL3BlcmYvYXJtX3BtdS5jCj4gaW5kZXggZGYzNTJiMzM0ZWE3Li5mYTM3YjcyZDE5ZTIg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wZXJmL2FybV9wbXUuYwo+ICsrKyBiL2RyaXZlcnMvcGVy
Zi9hcm1fcG11LmMKPiBAQCAtNTU5LDYgKzU1OSw0OCBAQCB2b2lkIGFybXBtdV9mcmVlX2lycShp
bnQgaXJxLCBpbnQgY3B1KQo+ICAgICAgICAgcGVyX2NwdShjcHVfaXJxLCBjcHUpID0gMDsKPiAg
fQo+Cj4gK3N0YXRpYyB2b2lkIGFybXBtdV9wcmVwYXJlX3BlcmNwdV9ubWlfb3RoZXIodm9pZCAq
aW5mbykKPiArewo+ICsgICAgICAgLyoKPiArICAgICAgICAqIFdlIGRvbid0IG5lZWQgdG8gZGlz
YWJsZSBwcmVlbXB0aW9uIHNpbmNlIHNtcF9jYWxsX2Z1bmN0aW9uKCkKPiArICAgICAgICAqIGRp
ZCB0aGlzIGZvciB1cy4KPiArICAgICAgICAqLwo+ICsgICAgICAgcHJlcGFyZV9wZXJjcHVfbm1p
KCh1aW50cHRyX3QpIGluZm8pOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IF9hcm1wbXVfcmVxdWVz
dF9pcnEodW5zaWduZWQgaW50IGlycSwgaXJxX2hhbmRsZXJfdCBoYW5kbGVyLAo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nIGZsYWdzLCBpbnQgY3B1KQo+ICt7
Cj4gKyAgICAgICBpZiAoYXJtcG11X3N1cHBvcnRfbm1pKCkpCj4gKyAgICAgICAgICAgICAgIHJl
dHVybiByZXF1ZXN0X25taShpcnEsIGhhbmRsZXIsIGZsYWdzLCAiYXJtLXBtdSIsCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwZXJfY3B1X3B0cigmY3B1X2FybXBtdSwgY3B1
KSk7Cj4gKyAgICAgICByZXR1cm4gcmVxdWVzdF9pcnEoaXJxLCBoYW5kbGVyLCBmbGFncywgImFy
bS1wbXUiLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIHBlcl9jcHVfcHRyKCZjcHVfYXJt
cG11LCBjcHUpKTsKPiArfQo+ICsKPiArc3RhdGljIGludCBfYXJtcG11X3JlcXVlc3RfcGVyY3B1
X2lycSh1bnNpZ25lZCBpbnQgaXJxLCBpcnFfaGFuZGxlcl90IGhhbmRsZXIpCj4gK3sKPiArICAg
ICAgIGlmIChhcm1wbXVfc3VwcG9ydF9ubWkoKSkgewo+ICsgICAgICAgICAgICAgICBpbnQgZXJy
Owo+ICsKPiArICAgICAgICAgICAgICAgZXJyID0gcmVxdWVzdF9wZXJjcHVfbm1pKGlycSwgaGFu
ZGxlciwgImFybS1wbXUiLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgJmNwdV9hcm1wbXUpOwo+ICsgICAgICAgICAgICAgICBpZiAoZXJyKQo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIHJldHVybiBlcnI7Cj4gKwo+ICsgICAgICAgICAgICAgICBwcmVlbXB0X2Rp
c2FibGUoKTsKPiArICAgICAgICAgICAgICAgZXJyID0gcHJlcGFyZV9wZXJjcHVfbm1pKGlycSk7
Cj4gKyAgICAgICAgICAgICAgIGlmIChlcnIpIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBy
ZXR1cm4gZXJyOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIHByZWVtcHRfZW5hYmxlKCk7Cj4g
KyAgICAgICAgICAgICAgIH0KPiArICAgICAgICAgICAgICAgc21wX2NhbGxfZnVuY3Rpb24oYXJt
cG11X3ByZXBhcmVfcGVyY3B1X25taV9vdGhlciwKPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgKHZvaWQgKikodWludHB0cl90KSBpcnEsIHRydWUpOwo+ICsgICAgICAgICAgICAg
ICBwcmVlbXB0X2VuYWJsZSgpOwo+ICsgICAgICAgfQo+ICsgICAgICAgcmV0dXJuIHJlcXVlc3Rf
cGVyY3B1X2lycShpcnEsIGhhbmRsZXIsICJhcm0tcG11IiwKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgJmNwdV9hcm1wbXUpOwo+ICt9Cj4gKwo+ICBpbnQgYXJtcG11X3JlcXVl
c3RfaXJxKGludCBpcnEsIGludCBjcHUpCj4gIHsKPiAgICAgICAgIGludCBlcnIgPSAwOwo+IEBA
IC01ODIsMTIgKzYyNCw5IEBAIGludCBhcm1wbXVfcmVxdWVzdF9pcnEoaW50IGlycSwgaW50IGNw
dSkKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSVJRRl9OT19USFJFQUQ7Cj4KPiAgICAg
ICAgICAgICAgICAgaXJxX3NldF9zdGF0dXNfZmxhZ3MoaXJxLCBJUlFfTk9BVVRPRU4pOwo+IC0g
ICAgICAgICAgICAgICBlcnIgPSByZXF1ZXN0X2lycShpcnEsIGhhbmRsZXIsIGlycV9mbGFncywg
ImFybS1wbXUiLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwZXJfY3B1X3B0
cigmY3B1X2FybXBtdSwgY3B1KSk7Cj4gLSAgICAgICB9IGVsc2UgaWYgKGFybXBtdV9jb3VudF9p
cnFfdXNlcnMoaXJxKSA9PSAwKSB7Cj4gLSAgICAgICAgICAgICAgIGVyciA9IHJlcXVlc3RfcGVy
Y3B1X2lycShpcnEsIGhhbmRsZXIsICJhcm0tcG11IiwKPiAtICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICZjcHVfYXJtcG11KTsKPiAtICAgICAgIH0KPiArICAgICAgICAg
ICAgICAgZXJyID0gX2FybXBtdV9yZXF1ZXN0X2lycShpcnEsIGhhbmRsZXIsIGlycV9mbGFncywg
Y3B1KTsKPiArICAgICAgIH0gZWxzZSBpZiAoYXJtcG11X2NvdW50X2lycV91c2VycyhpcnEpID09
IDApCj4gKyAgICAgICAgICAgICAgIGVyciA9IF9hcm1wbXVfcmVxdWVzdF9wZXJjcHVfaXJxKGly
cSwgaGFuZGxlcik7Cj4KPiAgICAgICAgIGlmIChlcnIpCj4gICAgICAgICAgICAgICAgIGdvdG8g
ZXJyX291dDsKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9wZXJmL2FybV9wbXUuaCBiL2lu
Y2x1ZGUvbGludXgvcGVyZi9hcm1fcG11LmgKPiBpbmRleCA1YjYxNmRkZTlhNGMuLjViODc4YjVh
MjJhYSAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2xpbnV4L3BlcmYvYXJtX3BtdS5oCj4gKysrIGIv
aW5jbHVkZS9saW51eC9wZXJmL2FybV9wbXUuaAo+IEBAIC0xNjAsNiArMTYwLDEyIEBAIGludCBh
cm1fcG11X2FjcGlfcHJvYmUoYXJtcG11X2luaXRfZm4gaW5pdF9mbik7Cj4gIHN0YXRpYyBpbmxp
bmUgaW50IGFybV9wbXVfYWNwaV9wcm9iZShhcm1wbXVfaW5pdF9mbiBpbml0X2ZuKSB7IHJldHVy
biAwOyB9Cj4gICNlbmRpZgo+Cj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBhcm1wbXVfc3VwcG9ydF9u
bWkodm9pZCkKPiArewo+ICsgICAgICAgcmV0dXJuIElTX0VOQUJMRUQoQ09ORklHX0FSTTY0X1BT
RVVET19OTUlfUEVSRikgJiYKPiArICAgICAgICAgICAgICBzeXN0ZW1fdXNlc19pcnFfcHJpb19t
YXNraW5nKCk7Cj4gK30KPiArCj4gIC8qIEludGVybmFsIGZ1bmN0aW9ucyBvbmx5IGZvciBjb3Jl
IGFybV9wbXUgY29kZSAqLwo+ICBzdHJ1Y3QgYXJtX3BtdSAqYXJtcG11X2FsbG9jKHZvaWQpOwo+
ICBzdHJ1Y3QgYXJtX3BtdSAqYXJtcG11X2FsbG9jX2F0b21pYyh2b2lkKTsKPiAtLQo+IDIuMjUu
MQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
