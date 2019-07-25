Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D9675201
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 17:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSsEOlGeHezx7ai0Siopxi+1Hfpung7MpvCT50Ut+TQ=; b=D2ctO7eNTWjxI0
	yKU2cRcA1XweIGIubDohUOoBlfa0SPx6fAx3Mmxrr/aFFlaee9lRfYCjY6zbHLEEHKwwFPAq5DrZt
	SpdRXnxwU7VdTa4h6er9LCDAKIHXYFX9K6nFvu66VROcMC9WSfZeC9B0+4JUSI2xEllsDIa2aG+YY
	Fv9+V7LX5gGqPjaWQ4Wy2KMH7LjLbPWrGAfh9xp7jvWR7i/Cx3OH/PkvzeUkT1x7jVdEQ56iLU0gO
	Gb+wV7sXIAPEVWPyuhG/iC4NCoRjYcUVD1uCeQF4qzgA2p9ZDlxvIiaI1gicJPBmJakTKjU2WPQgY
	QWOyDrhz2hSqmVHfGKXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqfEG-00041h-1m; Thu, 25 Jul 2019 15:00:24 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqfDr-0003va-F1
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 15:00:00 +0000
Received: by mail-lj1-x241.google.com with SMTP id d24so48307079ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 07:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc:content-transfer-encoding;
 bh=p9OR61FicIpVENd/71fr74aLBznslcDzFyCpkAgUAXc=;
 b=QpF6BdCinO8sSU+WgwVqhTBRehdNQtib+EoE3soWMylfDlEr7ExQR6aPDum3wSyomO
 YjvZHhKphEW9EvLI+saojKFniOHKA2wjO4m2MIh/dEBr82C/sZIL9KLeDDVlhcJaZjbU
 4YMf32NobArfgLnsmOTI4uAUgcPoo9s12i65I023l8RYJ8s18KSHHdOQsaIsBRh3JEiA
 TwZ55d1Eln05YRaSbpfpRcuQ8uLXh2ZNprhmG8BfsBxq/RjNvFhqBWGgW3vX7DKt3mtc
 UqzbXF2+OgEuSmOr4S+gW1cA2J707vr1vY0nG1Ph5wxT5BKtVL5GBhYe94vSiSH7AWib
 jLVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc:content-transfer-encoding;
 bh=p9OR61FicIpVENd/71fr74aLBznslcDzFyCpkAgUAXc=;
 b=KVM3hg8JRP6IFRKMbFTbq5wmOe9qEWuaXjknLkdCM/TYGXXNjQbkhh/ZOzZA0NxyB5
 32s0FRW+8c1uraPNzcTfgbuZdImYR8lhrK4qNLkd3SnpHbrHmq9+CvJSxtIqpSFsv4YK
 8cZWCKxKvQN+IF71eACrl0/2njDjzwAFHZDZlQ7JoZ6f87e7yqf1UhI9lFBc3oNV2wnK
 qDihE7rfnBH7gfHrK4cDLvHAzsjOBJbv0CJE+oWfy8ifn1VaBY/10zCCIiL0pPhFVG+r
 eT4uIePCUPrLXAG10bV+4EHB5M3P0//ZnFzapNt2kMGDGB6Y5LNhLQek4VRz03+uz4bZ
 1Dzw==
X-Gm-Message-State: APjAAAXjRRdYZh+9EhN246qbk/jSIHnWv8uei0X4pvmNb+2TJdSgGavn
 20AC95oNsE5oXh0ps49toTeXAEDlV+EN4lzsmllvvO61etk=
X-Google-Smtp-Source: APXvYqwsM3OgAowPI5xaCfG8fdrn/hdgdcd4tyijHhC7H2G6DeZ7i8m+exE9TkNVLdcveFGTrpBdfmLVo4VyTFHuGTE=
X-Received: by 2002:a2e:b0e6:: with SMTP id h6mr44378736ljl.18.1564066797851; 
 Thu, 25 Jul 2019 07:59:57 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190725144325eucas1p1463ecde90f9c93cb73d3c54c7cf3f1ff@eucas1p1.samsung.com>
 <20190725144300.25014-1-k.konieczny@partner.samsung.com>
 <20190725144300.25014-2-k.konieczny@partner.samsung.com>
In-Reply-To: <20190725144300.25014-2-k.konieczny@partner.samsung.com>
From: Chanwoo Choi <cwchoi00@gmail.com>
Date: Thu, 25 Jul 2019 23:59:21 +0900
Message-ID: <CAGTfZH0=skWJ3Dny7voeRzDp5oRkbNO=Pf6j+PM03=epmX-86g@mail.gmail.com>
Subject: Re: [PATCH v4 1/5] devfreq: exynos-bus: correct clock enable sequence
To: Kamil Konieczny <k.konieczny@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_075959_526548_F2A20BC2 
X-CRM114-Status: GOOD (  21.32  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 devicetree <devicetree@vger.kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpZb3UgYXJlIG1pc3NpbmcgbXkgQWNrZWQgdGFnLgoKMjAxOeuFhCA37JuUIDI17J28ICjr
qqkpIOyYpO2bhCAxMTo0NCwgPGsua29uaWVjem55QHBhcnRuZXIuc2Ftc3VuZy5jb20+64uY7J20
IOyekeyEsToKPgo+IFJlZ3VsYXRvcnMgc2hvdWxkIGJlIGVuYWJsZWQgYmVmb3JlIGNsb2NrcyB0
byBhdm9pZCBoL3cgaGFuZy4gVGhpcwo+IHJlcXVpcmUgY2hhbmdlIGluIGV4eW5vc19idXNfcHJv
YmUoKSB0byBtb3ZlIGV4eW5vc19idXNfcGFyc2Vfb2YoKQo+IGFmdGVyIGV4eW5vc19idXNfcGFy
ZW50X3BhcnNlX29mKCkgYW5kIGNoYW5nZSBpbiBlcnJvciBoYW5kbGluZy4KPiBTaW1pbGFyIGNo
YW5nZSBpcyBuZWVkZWQgaW4gZXh5bm9zX2J1c19leGl0KCkgd2hlcmUgY2xvY2sgc2hvdWxkIGJl
Cj4gZGlzYWJsZWQgYmVmb3JlIHJlZ3VsYXRvcnMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBLYW1pbCBL
b25pZWN6bnkgPGsua29uaWVjem55QHBhcnRuZXIuc2Ftc3VuZy5jb20+Cj4gLS0tCj4gQ2hhbmdl
czoKPiB2NDoKPiAtIG1vdmUgcmVndWxhdG9yIGRpc2FibGUgYWZ0ZXIgY2xvY2sgZGlzYWJsZQo+
IC0gcmVtb3ZlIHVucmVsYXRlZCBjaGFuZ2VzCj4gLSBhZGQgZGlzYWJsaW5nIHJlZ3VsYXRvcnMg
aW4gZXJyb3IgcGF0aCBpbiBleHlub3NfYnVzX3Byb2JlKCkKPgo+IC0tLQo+ICBkcml2ZXJzL2Rl
dmZyZXEvZXh5bm9zLWJ1cy5jIHwgMzEgKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCj4KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyBiL2RyaXZlcnMvZGV2ZnJl
cS9leHlub3MtYnVzLmMKPiBpbmRleCA0ODZjYzViNDIyZjEuLmYzNGZhMjZmMDBkMCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4gKysrIGIvZHJpdmVycy9kZXZm
cmVxL2V4eW5vcy1idXMuYwo+IEBAIC0xOTQsMTEgKzE5NCwxMCBAQCBzdGF0aWMgdm9pZCBleHlu
b3NfYnVzX2V4aXQoc3RydWN0IGRldmljZSAqZGV2KQo+ICAgICAgICAgaWYgKHJldCA8IDApCj4g
ICAgICAgICAgICAgICAgIGRldl93YXJuKGRldiwgImZhaWxlZCB0byBkaXNhYmxlIHRoZSBkZXZm
cmVxLWV2ZW50IGRldmljZXNcbiIpOwo+Cj4gLSAgICAgICBpZiAoYnVzLT5yZWd1bGF0b3IpCj4g
LSAgICAgICAgICAgICAgIHJlZ3VsYXRvcl9kaXNhYmxlKGJ1cy0+cmVndWxhdG9yKTsKPiAtCj4g
ICAgICAgICBkZXZfcG1fb3BwX29mX3JlbW92ZV90YWJsZShkZXYpOwo+ICAgICAgICAgY2xrX2Rp
c2FibGVfdW5wcmVwYXJlKGJ1cy0+Y2xrKTsKPiArICAgICAgIGlmIChidXMtPnJlZ3VsYXRvcikK
PiArICAgICAgICAgICAgICAgcmVndWxhdG9yX2Rpc2FibGUoYnVzLT5yZWd1bGF0b3IpOwo+ICB9
Cj4KPiAgLyoKPiBAQCAtMzg2LDYgKzM4NSw3IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgICAgICAgc3RydWN0IGV4eW5vc19i
dXMgKmJ1czsKPiAgICAgICAgIGludCByZXQsIG1heF9zdGF0ZTsKPiAgICAgICAgIHVuc2lnbmVk
IGxvbmcgbWluX2ZyZXEsIG1heF9mcmVxOwo+ICsgICAgICAgYm9vbCBwYXNzaXZlID0gZmFsc2U7
Cj4KPiAgICAgICAgIGlmICghbnApIHsKPiAgICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJm
YWlsZWQgdG8gZmluZCBkZXZpY2V0cmVlIG5vZGVcbiIpOwo+IEBAIC0zOTksMjcgKzM5OSwyNyBA
QCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKPiAgICAgICAgIGJ1cy0+ZGV2ID0gJnBkZXYtPmRldjsKPiAgICAgICAgIHBsYXRmb3JtX3Nl
dF9kcnZkYXRhKHBkZXYsIGJ1cyk7Cj4KPiAtICAgICAgIC8qIFBhcnNlIHRoZSBkZXZpY2UtdHJl
ZSB0byBnZXQgdGhlIHJlc291cmNlIGluZm9ybWF0aW9uICovCj4gLSAgICAgICByZXQgPSBleHlu
b3NfYnVzX3BhcnNlX29mKG5wLCBidXMpOwo+IC0gICAgICAgaWYgKHJldCA8IDApCj4gLSAgICAg
ICAgICAgICAgIHJldHVybiByZXQ7Cj4gLQo+ICAgICAgICAgcHJvZmlsZSA9IGRldm1fa3phbGxv
YyhkZXYsIHNpemVvZigqcHJvZmlsZSksIEdGUF9LRVJORUwpOwo+IC0gICAgICAgaWYgKCFwcm9m
aWxlKSB7Cj4gLSAgICAgICAgICAgICAgIHJldCA9IC1FTk9NRU07Cj4gLSAgICAgICAgICAgICAg
IGdvdG8gZXJyOwo+IC0gICAgICAgfQo+ICsgICAgICAgaWYgKCFwcm9maWxlKQo+ICsgICAgICAg
ICAgICAgICByZXR1cm4gLUVOT01FTTsKPgo+ICAgICAgICAgbm9kZSA9IG9mX3BhcnNlX3BoYW5k
bGUoZGV2LT5vZl9ub2RlLCAiZGV2ZnJlcSIsIDApOwo+ICAgICAgICAgaWYgKG5vZGUpIHsKPiAg
ICAgICAgICAgICAgICAgb2Zfbm9kZV9wdXQobm9kZSk7Cj4gLSAgICAgICAgICAgICAgIGdvdG8g
cGFzc2l2ZTsKPiArICAgICAgICAgICAgICAgcGFzc2l2ZSA9IHRydWU7Cj4gICAgICAgICB9IGVs
c2Ugewo+ICAgICAgICAgICAgICAgICByZXQgPSBleHlub3NfYnVzX3BhcmVudF9wYXJzZV9vZihu
cCwgYnVzKTsKPiArICAgICAgICAgICAgICAgaWYgKHJldCA8IDApCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgcmV0dXJuIHJldDsKPiAgICAgICAgIH0KPgo+ICsgICAgICAgLyogUGFyc2UgdGhl
IGRldmljZS10cmVlIHRvIGdldCB0aGUgcmVzb3VyY2UgaW5mb3JtYXRpb24gKi8KPiArICAgICAg
IHJldCA9IGV4eW5vc19idXNfcGFyc2Vfb2YobnAsIGJ1cyk7Cj4gICAgICAgICBpZiAocmV0IDwg
MCkKPiAtICAgICAgICAgICAgICAgZ290byBlcnI7Cj4gKyAgICAgICAgICAgICAgIGdvdG8gZXJy
X3JlZzsKPiArCj4gKyAgICAgICBpZiAocGFzc2l2ZSkKPiArICAgICAgICAgICAgICAgZ290byBw
YXNzaXZlOwo+Cj4gICAgICAgICAvKiBJbml0aWFsaXplIHRoZSBzdHJ1Y3QgcHJvZmlsZSBhbmQg
Z292ZXJub3IgZGF0YSBmb3IgcGFyZW50IGRldmljZSAqLwo+ICAgICAgICAgcHJvZmlsZS0+cG9s
bGluZ19tcyA9IDUwOwo+IEBAIC01MTAsNiArNTEwLDkgQEAgc3RhdGljIGludCBleHlub3NfYnVz
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIGVycjoKPiAgICAgICAgIGRl
dl9wbV9vcHBfb2ZfcmVtb3ZlX3RhYmxlKGRldik7Cj4gICAgICAgICBjbGtfZGlzYWJsZV91bnBy
ZXBhcmUoYnVzLT5jbGspOwo+ICtlcnJfcmVnOgo+ICsgICAgICAgaWYgKCFwYXNzaXZlKQo+ICsg
ICAgICAgICAgICAgICByZWd1bGF0b3JfZGlzYWJsZShidXMtPnJlZ3VsYXRvcik7Cj4KPiAgICAg
ICAgIHJldHVybiByZXQ7Cj4gIH0KPiAtLQo+IDIuMjIuMAo+CgoKLS0gCkJlc3QgUmVnYXJkcywK
Q2hhbndvbyBDaG9pCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
