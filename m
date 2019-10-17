Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72959DB0EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 17:18:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMA7loeWXgkmfdBxmNNJQUwnOEP5Hc4FXH9kfQ2JHbc=; b=cTas5OKtCB8snn
	7Y7t9BJ9fZ9pwHKZGOK518JWwVvPRhttdH7vtCMY0MBzN0SKRVu2fVsU41+kCTAuN8MsXXGJxY+eH
	5ZGlFHeZL+ffRjUWiUAB8ctl05d6uZrXJCEuksu7MqIzCkH0Fu32+djW1v93M8WBftAervD+suRsc
	RdhvYrWeOKbjcSgv3o0+GphbnsdF1foY76hcJCcK4KIgLoysTJGwzjQQWgOkW196xe0zbZkmjWZu5
	jBFO5f9nDs0DcZlIUYQCxCxNQdB+NlSfOKPxCBohjfgm02UjTE15sYY54R/BQdnPYqfLadLG+g+Ph
	+fXSXyDq5eC3X7Lrp0qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL7XN-0003eC-2W; Thu, 17 Oct 2019 15:18:01 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL7XD-0003dT-NX
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 15:17:54 +0000
Received: by mail-oi1-x244.google.com with SMTP id t84so2442394oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 08:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6tlDHmC6wlZ5TK6UmlVKTwMVjF5/yhTWEc3F91aKg24=;
 b=kVFYtNMLoieGIHim43g4qoHdRv+TfrHMppysmtPYdQmFpQ8AAVGtvOS5SFDe79ELLD
 ZFC8PJZL31LKEnbLFaAcMHxM840aoGBhMAdxX1rue5Y+DvX0cEwvXPD+cNjQWnaaVvLX
 EKxymEzRR+BQLmhWQ2OwFbhclVX08imRm3wWFjPC5dOYVKgxolaO89nSjbayGcm30K8/
 MO0u6oDdsGptvpsxhQcv+TfONcrc+qFTYiG2AtYBkuJf/+jsOCxVUH91gM+DS+uO+eEj
 pTXgyRSSd9bx2uQThNkVkAfoQUroVL82i7pvZRsnTn9MOvig2YisHYB5Ba7eVqupy6pB
 Tadg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6tlDHmC6wlZ5TK6UmlVKTwMVjF5/yhTWEc3F91aKg24=;
 b=lQaOJMzgAiKSAej+wC2+uqQazDFtIqi7lvFGqsvDV+FM5CLY672IjgcgnbrzO59gDU
 nubXwwn/sf3N/3MDaTi54wwQlyr8AJuGChbUyoTzu3VLkofsN9m86jwXSHLS/iyOC+6y
 6pEcmG8qqDbdDJI7RiwiuLtJaPn/ItUles7SrWYKTuR6163N8gUvDrGleWom+CqEQ1FD
 Sm9kmXRJgQAWPkw7jspNkNU9ehhjabnxqQVwa5j1Vesnl4LQAfXd1hGxdn9IwVSYyf2+
 eiG8uybovUwxAYCq44BVeVoaRWY7CZNni5/VFo44lJ39a2VugTizDQuRb9TSRojUZeWM
 sH6Q==
X-Gm-Message-State: APjAAAUWEDxbqcuX2cBeobHwIiW2Pa9fuI96PkT+4tItS03rRmtuZ2BP
 LefzrUQYZ7F9FyT0CFdw+31z88cBsu4DeovZft/qqRYZg14=
X-Google-Smtp-Source: APXvYqxiWsXZ2j9DUQLFGq87hxZDl0mle0KZeE0MzrbCxrr1SAMYc1t/T3AwFp1T5iXEUyNqtcAKVA1xZBO4JVtcpiU=
X-Received: by 2002:a05:6808:114:: with SMTP id
 b20mr3772123oie.114.1571325471084; 
 Thu, 17 Oct 2019 08:17:51 -0700 (PDT)
MIME-Version: 1.0
References: <20191017031051.20366-1-chris.packham@alliedtelesis.co.nz>
 <20191017031051.20366-2-chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20191017031051.20366-2-chris.packham@alliedtelesis.co.nz>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 17 Oct 2019 17:17:40 +0200
Message-ID: <CAMpxmJUY3_Fv6mMw=ARAedXUM611Mr91UZrQpPAz28i2=Q_srQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: brcm: Add bindings for xgs-iproc
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_081752_129325_58A3C229 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-devicetree <devicetree@vger.kernel.org>, sbranden@broadcom.com,
 rjui@broadcom.com, Linus Walleij <linus.walleij@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-gpio <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Y3p3LiwgMTcgcGHFuiAyMDE5IG8gMDU6MTEgQ2hyaXMgUGFja2hhbQo8Y2hyaXMucGFja2hhbUBh
bGxpZWR0ZWxlc2lzLmNvLm56PiBuYXBpc2HFgihhKToKPgo+IFRoaXMgR1BJTyBjb250cm9sbGVy
IGlzIHByZXNlbnQgb24gYSBudW1iZXIgb2YgQnJvYWRjb20gc3dpdGNoIEFTSUNzCj4gd2l0aCBp
bnRlZ3JhdGVkIFNvQ3MuIEl0IGlzIHNpbWlsYXIgdG8gdGhlIG5zcC1ncGlvIGFuZCBpcHJvYy1n
cGlvCj4gYmxvY2tzIGJ1dCBkaWZmZXJlbnQgZW5vdWdoIHRvIHJlcXVpcmUgYSBzZXBhcmF0ZSBk
cml2ZXIuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBQYWNraGFtIDxjaHJpcy5wYWNraGFtQGFs
bGllZHRlbGVzaXMuY28ubno+Cj4gLS0tCj4KPiBOb3RlczoKPiAgICAgQ2hhbmdlcyBpbiB2MjoK
PiAgICAgLSBEb2N1bWVudCBhcyBEVCBzY2hlbWEKPiAgICAgLSBJbmNsdWRlIG5ncGlvcywgI2dw
aW8tY2VsbHMgYW5kIGdwaW8tY29udHJvbGxlciBwcm9wZXJ0aWVzCj4KPiAgLi4uL2JpbmRpbmdz
L2dwaW8vYnJjbSx4Z3MtaXByb2MueWFtbCAgICAgICAgIHwgODMgKysrKysrKysrKysrKysrKysr
Kwo+ICAxIGZpbGUgY2hhbmdlZCwgODMgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2
NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vYnJjbSx4Z3MtaXByb2Mu
eWFtbAo+Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9n
cGlvL2JyY20seGdzLWlwcm9jLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvZ3Bpby9icmNtLHhncy1pcHJvYy55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRl
eCAwMDAwMDAwMDAwMDAuLjcxOTk4NTUxMjA5ZQo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZ3Bpby9icmNtLHhncy1pcHJvYy55YW1sCj4g
QEAgLTAsMCArMSw4MyBAQAo+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCBP
UiBCU0QtMi1DbGF1c2UpCj4gKyVZQU1MIDEuMgo+ICstLS0KPiArJGlkOiBodHRwOi8vZGV2aWNl
dHJlZS5vcmcvc2NoZW1hcy9ncGlvL2JyY20seGdzLWlwcm9jLnlhbWwjCj4gKyRzY2hlbWE6IGh0
dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ICsKPiArdGl0bGU6
IEJyb2FkY29tIFhHUyBpUHJvYyBHUElPIGNvbnRyb2xsZXIKPiArCj4gK21haW50YWluZXJzOgo+
ICsgIC0gQ2hyaXMgUGFja2hhbSA8Y2hyaXMucGFja2hhbUBhbGxpZWR0ZWxlc2lzLmNvLm56Pgo+
ICsKPiArZGVzY3JpcHRpb246IHwKPiArICBUaGlzIGNvbnRyb2xsZXIgaXMgdGhlIENoaXAgQ29t
bW9uIEEgR1BJTyBwcmVzZW50IG9uIGEgbnVtYmVyIG9mIEJyb2FkY29tCj4gKyAgc3dpdGNoIEFT
SUNzIHdpdGggaW50ZWdyYXRlZCBTb0NzLgo+ICsKPiArcHJvcGVydGllczoKPiArICBjb21wYXRp
YmxlOgo+ICsgICAgZW51bToKPiArICAgICAgLSBicmNtLGlwcm9jLWdwaW8tY2NhCgpJIGJlbGll
dmUgdGhpcyBzaG91bGQgYmU6CgogICAgY29uc3Q6IGJyY20saXByb2MtZ3Bpby1jY2EKCkJhcnQK
Cj4gKwo+ICsgIHJlZzoKPiArICAgIG1pbkl0ZW1zOiAyCj4gKyAgICBtYXhJdGVtczogMgo+ICsg
ICAgZGVzY3JpcHRpb246Cj4gKyAgICAgIFRoZSBmaXJzdCByZWdpb24gZGVmaW5lcyB0aGUgYmFz
ZSBJL08gYWRkcmVzcyBjb250YWluaW5nCj4gKyAgICAgIHRoZSBHUElPIGNvbnRyb2xsZXIgcmVn
aXN0ZXJzLiBUaGUgc2Vjb25kIHJlZ2lvbiBkZWZpbmVzCj4gKyAgICAgIHRoZSBJL08gYWRkcmVz
cyBjb250YWluaW5nIHRoZSBDaGlwIENvbW1vbiBBIGludGVycnVwdAo+ICsgICAgICByZWdpc3Rl
cnMuCj4gKwo+ICsgIGdwaW8tY29udHJvbGxlcjogdHJ1ZQo+ICsKPiArICAnI2dwaW8tY2VsbHMn
Ogo+ICsgICAgICBjb25zdDogMgo+ICsKPiArICBuZ3Bpb3M6Cj4gKyAgICAkcmVmOiAvc2NoZW1h
cy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzIKPiArICAgIG1pbmltdW06IDAKPiArICAg
IG1heGltdW06IDMyCj4gKwo+ICsgIGludGVycnVwdC1jb250cm9sbGVyOgo+ICsgICAgdHlwZTog
Ym9vbGVhbgo+ICsKPiArICAnI2ludGVycnVwdC1jZWxscyc6Cj4gKyAgICBjb25zdDogMgo+ICsK
PiArICBpbnRlcnJ1cHRzOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArCj4gK3JlcXVpcmVkOgo+ICsg
IC0gY29tcGF0aWJsZQo+ICsgIC0gcmVnCj4gKyAgLSAiI2dwaW8tY2VsbHMiCj4gKyAgLSBncGlv
LWNvbnRyb2xsZXIKPiArCj4gK2FsbE9mOgo+ICsgLSBpZjoKPiArICAgICBwcm9wZXJ0aWVzOgo+
ICsgICAgICAgaW50ZXJydXB0LWNvbnRyb2xsZXI6Cj4gKyAgICAgICAgIGNvbnRhaW5zOgo+ICsg
ICAgICAgICAgIGNvbnN0OiB0cnVlCj4gKyAgIHRoZW46Cj4gKyAgICAgcmVxdWlyZWQ6Cj4gKyAg
ICAgICAtIGludGVycnVwdHMKPiArICAgICAgIC0gJyNpbnRlcnJ1cHQtY2VsbHMnCj4gKwo+ICtl
eGFtcGxlczoKPiArICAtIHwKPiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQt
Y29udHJvbGxlci9pcnEuaD4KPiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQt
Y29udHJvbGxlci9hcm0tZ2ljLmg+Cj4gKyAgICBncGlvQDE4MDAwMDYwIHsKPiArICAgICAgICBj
b21wYXRpYmxlID0gImJyY20saXByb2MtZ3Bpby1jY2EiOwo+ICsgICAgICAgICNncGlvLWNlbGxz
ID0gPDI+Owo+ICsgICAgICAgIHJlZyA9IDwweDE4MDAwMDYwIDB4NTA+LAo+ICsgICAgICAgICAg
ICAgIDwweDE4MDAwMDAwIDB4NTA+Owo+ICsgICAgICAgIG5ncGlvcyA9IDwxMj47Cj4gKyAgICAg
ICAgZ3Bpby1jb250cm9sbGVyOwo+ICsgICAgICAgIGludGVycnVwdC1jb250cm9sbGVyOwo+ICsg
ICAgICAgICNpbnRlcnJ1cHQtY2VsbHMgPSA8Mj47Cj4gKyAgICAgICAgaW50ZXJydXB0cyA9IDxH
SUNfU1BJIDkxIElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ICsgICAgfTsKPiArCj4gKwo+ICsuLi4K
PiAtLQo+IDIuMjMuMAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
