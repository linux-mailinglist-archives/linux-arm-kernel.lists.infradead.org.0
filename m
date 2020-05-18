Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 987321D7CDC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 17:31:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JjhZeRBICqcVEhsDXllxFygLkSU1MOTDBJousRZqDg8=; b=sK1QASLeJxvy6q
	NU7ayi3qykDLLutoygCpgLY2Bqiz8QUy5C5Ko1aAjssICI1UYXjzPAas7WAhB4MNbVw77sLVUJGjf
	kSs4BWr1luZS9mz2TzPRHPyK3alBRqO4Pdeunvu97bL9sWFqwHjtmIhIw9Q0G6Gj1V0KZ7b1Eq+jC
	rdaUhm7t0bzZcZUaj+2DCgCzRDyXXB/58xQjOCDa7plPll+DY6PoyXYWEqNutJxxuHkAaZcnxzi2V
	KJAUX7faXsT/tiNp5tx/Gzc16UnXolqcilh31xAQCqNz5kLljOEhKEXJR6MYTR7sP6kIIONuYABi+
	uImSr4zocQFcqymKI0Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahjY-0008W7-JU; Mon, 18 May 2020 15:31:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahjF-0008V0-PH; Mon, 18 May 2020 15:30:59 +0000
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0CF242086A;
 Mon, 18 May 2020 15:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589815857;
 bh=mOGRIgATXCaoYLlPjTGM7OxQp7Rn0K8nGLavhwaGw/g=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Lstul7dk5bmGsfDbFN8VWwMAuyU3oipItF/LaWXkWfhnn9aYwUES/qtRsj25CdqbI
 HTyXMB/Edmia6M4okNtn4PIxXoPD3p3c6188gvqPnuOcYm539BpYxKW5MB++zFE53X
 OoYgntGRVmBfRWI4aXOAGlzahVx5guUvw/de1fyU=
Received: by mail-ej1-f54.google.com with SMTP id s21so9175297ejd.2;
 Mon, 18 May 2020 08:30:56 -0700 (PDT)
X-Gm-Message-State: AOAM533ug9d39PsKvEHdcv/dFp+TfvhaGR9RS9mJ+T2qCtOhIwYYN2/r
 1hCRgWEpLVx17+Z4NxNE9AFhamKIEpSZFUSMCw==
X-Google-Smtp-Source: ABdhPJycD95owhAarHRJ4FN02oHjKHI+oZIVAI4p7qeyibBNsTqdoru9JEcc0l+4TBtcPYB7VuZi4PHySGlFopHwhms=
X-Received: by 2002:a17:906:2503:: with SMTP id
 i3mr14587876ejb.293.1589815855340; 
 Mon, 18 May 2020 08:30:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200518113156.25009-1-matthias.bgg@kernel.org>
In-Reply-To: <20200518113156.25009-1-matthias.bgg@kernel.org>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Mon, 18 May 2020 23:30:42 +0800
X-Gmail-Original-Message-ID: <CAAOTY_9-_fy4oGTBLPsXkWJ2ihL7k2hzfwiTorit+YkNi_SeMw@mail.gmail.com>
Message-ID: <CAAOTY_9-_fy4oGTBLPsXkWJ2ihL7k2hzfwiTorit+YkNi_SeMw@mail.gmail.com>
Subject: Re: [PATCH 1/4] clk/soc: mediatek: mt8183: Bind clock driver from
 platform device
To: matthias.bgg@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_083057_866393_D3B2007B 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Allison Randal <allison@lohutok.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, mtk01761 <wendell.lin@mediatek.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIE1hdHRoaWFzOgoKPG1hdHRoaWFzLmJnZ0BrZXJuZWwub3JnPiDmlrwgMjAyMOW5tDXmnIgx
OOaXpSDpgLHkuIAg5LiL5Y2INzozMuWvq+mBk++8mgo+Cj4gRnJvbTogTWF0dGhpYXMgQnJ1Z2dl
ciA8bWF0dGhpYXMuYmdnQGdtYWlsLmNvbT4KPgo+IFRoZSBtbXN5cyBkcml2ZXIgaXMgbm93IHRo
ZSB0b3AgbGV2ZWwgZW50cnkgcG9pbnQgZm9yIHRoZSBtdWx0aW1lZGlhCj4gc3lzdGVtIChtbXN5
cyksIHdlIGJpbmQgdGhlIGNsb2NrIGRyaXZlciBieSBjcmVhdGluZyBhIHBsYXRmb3JtIGRldmlj
ZS4KPiBXZSBhbHNvIGJpbmQgdGhlIE1lZGlhVGVrIERSTSBkcml2ZXIgd2hpY2ggaXMgbm90IHll
dCBpbXBsZW1lbnQgYW5kCj4gdGhlcmVmb3Igd2lsbCBlcnJyb3Igb3V0IGZvciBub3cuCgpZb3Ug
bWF5IG5lZWQgdG8gbGV0IENPTkZJR19NVEtfTU1TWVMgZGVwZW5kcyBvbgpDT05GSUdfQ09NTU9O
X0NMS19NVDgxNzNfTU1TWVMgfHwgQ09ORklHX0NPTU1PTl9DTEtfTVQ4MTgzX01NU1lTCgpSZWdh
cmRzLApDaHVuLUt1YW5nLgoKPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoaWFzIEJydWdnZXIgPG1h
dHRoaWFzLmJnZ0BnbWFpbC5jb20+Cj4gLS0tCj4KPiAgZHJpdmVycy9jbGsvbWVkaWF0ZWsvY2xr
LW10ODE4My1tbS5jIHwgOSArKy0tLS0tLS0KPiAgZHJpdmVycy9zb2MvbWVkaWF0ZWsvbXRrLW1t
c3lzLmMgICAgIHwgOCArKysrKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMo
KyksIDcgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvbWVkaWF0ZWsv
Y2xrLW10ODE4My1tbS5jIGIvZHJpdmVycy9jbGsvbWVkaWF0ZWsvY2xrLW10ODE4My1tbS5jCj4g
aW5kZXggNzIwYzY5NmI1MDZkLi45ZDYwZTA5NjE5YzEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9j
bGsvbWVkaWF0ZWsvY2xrLW10ODE4My1tbS5jCj4gKysrIGIvZHJpdmVycy9jbGsvbWVkaWF0ZWsv
Y2xrLW10ODE4My1tbS5jCj4gQEAgLTg0LDggKzg0LDkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBt
dGtfZ2F0ZSBtbV9jbGtzW10gPSB7Cj4KPiAgc3RhdGljIGludCBjbGtfbXQ4MTgzX21tX3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIHsKPiArICAgICAgIHN0cnVjdCBkZXZp
Y2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUg
PSBkZXYtPnBhcmVudC0+b2Zfbm9kZTsKPiAgICAgICAgIHN0cnVjdCBjbGtfb25lY2VsbF9kYXRh
ICpjbGtfZGF0YTsKPiAtICAgICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZSA9IHBkZXYtPmRl
di5vZl9ub2RlOwo+Cj4gICAgICAgICBjbGtfZGF0YSA9IG10a19hbGxvY19jbGtfZGF0YShDTEtf
TU1fTlJfQ0xLKTsKPgo+IEBAIC05NSwxNiArOTYsMTAgQEAgc3RhdGljIGludCBjbGtfbXQ4MTgz
X21tX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAgICAgICByZXR1cm4g
b2ZfY2xrX2FkZF9wcm92aWRlcihub2RlLCBvZl9jbGtfc3JjX29uZWNlbGxfZ2V0LCBjbGtfZGF0
YSk7Cj4gIH0KPgo+IC1zdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBvZl9tYXRjaF9j
bGtfbXQ4MTgzX21tW10gPSB7Cj4gLSAgICAgICB7IC5jb21wYXRpYmxlID0gIm1lZGlhdGVrLG10
ODE4My1tbXN5cyIsIH0sCj4gLSAgICAgICB7fQo+IC19Owo+IC0KPiAgc3RhdGljIHN0cnVjdCBw
bGF0Zm9ybV9kcml2ZXIgY2xrX210ODE4M19tbV9kcnYgPSB7Cj4gICAgICAgICAucHJvYmUgPSBj
bGtfbXQ4MTgzX21tX3Byb2JlLAo+ICAgICAgICAgLmRyaXZlciA9IHsKPiAgICAgICAgICAgICAg
ICAgLm5hbWUgPSAiY2xrLW10ODE4My1tbSIsCj4gLSAgICAgICAgICAgICAgIC5vZl9tYXRjaF90
YWJsZSA9IG9mX21hdGNoX2Nsa19tdDgxODNfbW0sCj4gICAgICAgICB9LAo+ICB9Owo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvc29jL21lZGlhdGVrL210ay1tbXN5cy5jIGIvZHJpdmVycy9zb2Mv
bWVkaWF0ZWsvbXRrLW1tc3lzLmMKPiBpbmRleCBjYWNhZmUyM2M4MjMuLjc4M2MzZGQwMDhiMiAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL3NvYy9tZWRpYXRlay9tdGstbW1zeXMuYwo+ICsrKyBiL2Ry
aXZlcnMvc29jL21lZGlhdGVrL210ay1tbXN5cy5jCj4gQEAgLTkyLDYgKzkyLDEwIEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgbXRrX21tc3lzX2RyaXZlcl9kYXRhIG10ODE3M19tbXN5c19kcml2ZXJf
ZGF0YSA9IHsKPiAgICAgICAgIC5jbGtfZHJpdmVyID0gImNsay1tdDgxNzMtbW0iLAo+ICB9Owo+
Cj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX21tc3lzX2RyaXZlcl9kYXRhIG10ODE4M19tbXN5
c19kcml2ZXJfZGF0YSA9IHsKPiArICAgICAgIC5jbGtfZHJpdmVyID0gImNsay1tdDgxODMtbW0i
LAo+ICt9Owo+ICsKPiAgc3RhdGljIHVuc2lnbmVkIGludCBtdGtfbW1zeXNfZGRwX21vdXRfZW4o
ZW51bSBtdGtfZGRwX2NvbXBfaWQgY3VyLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGVudW0gbXRrX2RkcF9jb21wX2lkIG5leHQsCj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgaW50ICphZGRyKQo+IEBAIC0zMzks
NiArMzQzLDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIG9mX21hdGNoX210
a19tbXN5c1tdID0gewo+ICAgICAgICAgICAgICAgICAuY29tcGF0aWJsZSA9ICJtZWRpYXRlayxt
dDgxNzMtbW1zeXMiLAo+ICAgICAgICAgICAgICAgICAuZGF0YSA9ICZtdDgxNzNfbW1zeXNfZHJp
dmVyX2RhdGEsCj4gICAgICAgICB9LAo+ICsgICAgICAgewo+ICsgICAgICAgICAgICAgICAuY29t
cGF0aWJsZSA9ICJtZWRpYXRlayxtdDgxODMtbW1zeXMiLAo+ICsgICAgICAgICAgICAgICAuZGF0
YSA9ICZtdDgxODNfbW1zeXNfZHJpdmVyX2RhdGEsCj4gKyAgICAgICB9LAo+ICAgICAgICAgeyB9
Cj4gIH07Cj4KPiAtLQo+IDIuMjYuMgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IExpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdAo+IExpbnV4
LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
