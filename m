Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F15DBD67
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 08:00:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=82Jo78D6076cB+9CRyRiu1RumqFPQMExM74waQFecgg=; b=KINDy5Ag+bwsn5
	Xt4n7iTiUCoZqoRow5EgaLkhn2Z4Hc8cBDXyjrPuwaMUwkciPUBQh4r08my8Dmdy12s68uOxOhxws
	IGMrA+sTGBUDoVomz6L1sf0cS08V1dgHb9DCd48Wli6gDf6deFcskXRRB16sFypzZMHF8FszTROvk
	Wh7dLtynf9jA55AyKWaLiMoHj+qCRmJgmkszDtOoRmNljW8S1PwQ5C/pC+Hi00xB/4gAeJo7+7ylo
	ZT48F2x1Yges0srJk8R4gldhzXX3GBq4e7UBDF2t+3PWmXOF/CkMx5/KkghsFYTTH0pfkk1O8YPVc
	DWYtHFz1IqekpIjiRBrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLLJ9-00040n-TC; Fri, 18 Oct 2019 06:00:15 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLLIw-0003Ju-Fc
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 06:00:05 +0000
Received: by mail-oi1-x243.google.com with SMTP id i185so4224603oif.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 23:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UqfvRiIf/2+i2h/4Ujog5bIvchOk5tCgScNdijxQat0=;
 b=pYwivSRkBCkHKIKFMDxSUQzYxZubKHj+eCQPph1DAVEMONHUi6BTkSvZFnrCvfLDxH
 V4OwguAODrasciR5IXTpPZ+z7pwLQDiwResq2ZCCpKPZ9gC9ReqObuK06qxyekoEAnkt
 Lin0M1x80JQOW86VzKE/a/V400dWUexZDggO72ItnaHM0dmXMfVd6xC6Wgn1BvHuCudQ
 +GULmOf7tQBP3UOhpQk3PQVJyZkQCwRxOjGivUuHXavq2ko60LD+eB6Rc+0/aL0XABBw
 ZHBPvTIj+om6O9AfsDy4rIhOHzfkZ4RgLtxOeN9hldC0DmH8GJoJBm56IH7+s1eU4WZH
 szjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UqfvRiIf/2+i2h/4Ujog5bIvchOk5tCgScNdijxQat0=;
 b=fgEIGTsxRT7lXRXPPz6Q+ruQqqDXxiLMAYQqcenbYKj+3DD//Q4siJFC5iPArrzkKz
 IuMFG5M7Y/+rBmWXyu0iHhsM1CDr14NJ+2EcL7ble8k3qQeQRozZrlXjLAUyU0St8HTa
 EKCiFsTYSA9ypTXG8BqeYE8wDl0vt9AwMECQH2y6uQRcNabZQMt46QPoN/R0PA1ecwjL
 kRMi95u6eqjChvkPpJKBEC3XBe8gaUrYFKh3QEn9haqr9mJbEoMpD0zZxdlD6xOlzMUu
 vNAGhMJl1/OdeheX+Es6ahpqZVCCo1fSdWHCrKG0qStxsw2RidNTcFOycHxzCzB0/lyF
 9IPA==
X-Gm-Message-State: APjAAAVaZXzQxWpsIIBMDSIptVbcketpHzLb1CtdqMhPf0kB4ZBA42qL
 AfCVR/IanIUJDpKVkRZaLzbiab7aSip/OE8/IAfAXA==
X-Google-Smtp-Source: APXvYqyCvDHaJrg7j1BywNpOntr+hSlB0UMU2FiS9ccSeEXT+v+90TwnyKhF9R7q13vsCdz5mVYJmK4+DYouCWn6Cw8=
X-Received: by 2002:a54:4e83:: with SMTP id c3mr6575837oiy.170.1571378401053; 
 Thu, 17 Oct 2019 23:00:01 -0700 (PDT)
MIME-Version: 1.0
References: <20191017031051.20366-1-chris.packham@alliedtelesis.co.nz>
 <20191017031051.20366-2-chris.packham@alliedtelesis.co.nz>
 <20191017192437.GA24080@bogus>
In-Reply-To: <20191017192437.GA24080@bogus>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Fri, 18 Oct 2019 07:59:50 +0200
Message-ID: <CAMpxmJVrFK38BPjoUtGt99sqgFeOA=wHFAu=QNQg_5Rj1gU92A@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: brcm: Add bindings for xgs-iproc
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_230002_583491_FC8DD603 
X-CRM114-Status: GOOD (  22.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
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
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 bcm-kernel-feedback-list@broadcom.com,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Y3p3LiwgMTcgcGHFuiAyMDE5IG8gMjE6MjQgUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4g
bmFwaXNhxYIoYSk6Cj4KPiBPbiBUaHUsIE9jdCAxNywgMjAxOSBhdCAwNDoxMDo1MFBNICsxMzAw
LCBDaHJpcyBQYWNraGFtIHdyb3RlOgo+ID4gVGhpcyBHUElPIGNvbnRyb2xsZXIgaXMgcHJlc2Vu
dCBvbiBhIG51bWJlciBvZiBCcm9hZGNvbSBzd2l0Y2ggQVNJQ3MKPiA+IHdpdGggaW50ZWdyYXRl
ZCBTb0NzLiBJdCBpcyBzaW1pbGFyIHRvIHRoZSBuc3AtZ3BpbyBhbmQgaXByb2MtZ3Bpbwo+ID4g
YmxvY2tzIGJ1dCBkaWZmZXJlbnQgZW5vdWdoIHRvIHJlcXVpcmUgYSBzZXBhcmF0ZSBkcml2ZXIu
Cj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgUGFja2hhbSA8Y2hyaXMucGFja2hhbUBhbGxp
ZWR0ZWxlc2lzLmNvLm56Pgo+ID4gLS0tCj4gPgo+ID4gTm90ZXM6Cj4gPiAgICAgQ2hhbmdlcyBp
biB2MjoKPiA+ICAgICAtIERvY3VtZW50IGFzIERUIHNjaGVtYQo+ID4gICAgIC0gSW5jbHVkZSBu
Z3Bpb3MsICNncGlvLWNlbGxzIGFuZCBncGlvLWNvbnRyb2xsZXIgcHJvcGVydGllcwo+ID4KPiA+
ICAuLi4vYmluZGluZ3MvZ3Bpby9icmNtLHhncy1pcHJvYy55YW1sICAgICAgICAgfCA4MyArKysr
KysrKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDgzIGluc2VydGlvbnMoKykKPiA+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dw
aW8vYnJjbSx4Z3MtaXByb2MueWFtbAo+ID4KPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvZ3Bpby9icmNtLHhncy1pcHJvYy55YW1sIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vYnJjbSx4Z3MtaXByb2MueWFtbAo+ID4gbmV3
IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uNzE5OTg1NTEyMDllCj4g
PiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvZ3Bpby9icmNtLHhncy1pcHJvYy55YW1sCj4gPiBAQCAtMCwwICsxLDgzIEBACj4gPiArIyBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAgT1IgQlNELTItQ2xhdXNlKQo+ID4gKyVZ
QU1MIDEuMgo+ID4gKy0tLQo+ID4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMv
Z3Bpby9icmNtLHhncy1pcHJvYy55YW1sIwo+ID4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVl
Lm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ID4gKwo+ID4gK3RpdGxlOiBCcm9hZGNvbSBY
R1MgaVByb2MgR1BJTyBjb250cm9sbGVyCj4gPiArCj4gPiArbWFpbnRhaW5lcnM6Cj4gPiArICAt
IENocmlzIFBhY2toYW0gPGNocmlzLnBhY2toYW1AYWxsaWVkdGVsZXNpcy5jby5uej4KPiA+ICsK
PiA+ICtkZXNjcmlwdGlvbjogfAo+ID4gKyAgVGhpcyBjb250cm9sbGVyIGlzIHRoZSBDaGlwIENv
bW1vbiBBIEdQSU8gcHJlc2VudCBvbiBhIG51bWJlciBvZiBCcm9hZGNvbQo+ID4gKyAgc3dpdGNo
IEFTSUNzIHdpdGggaW50ZWdyYXRlZCBTb0NzLgo+ID4gKwo+ID4gK3Byb3BlcnRpZXM6Cj4gPiAr
ICBjb21wYXRpYmxlOgo+ID4gKyAgICBlbnVtOgo+ID4gKyAgICAgIC0gYnJjbSxpcHJvYy1ncGlv
LWNjYQo+Cj4gZW51bSB2cy4gY29uc3QgdXNhZ2UgZGVwZW5kcyBvbiB3aGV0aGVyIHlvdSB0aGlu
ayB5b3UnbGwgYWRkIG1vcmUKPiBjb21wYXRpYmxlcy4KPgoKV2hhdCBpZiB5b3UgZG9uJ3Qga25v
dyB5ZXQ/IEZvciBpbnN0YW5jZSB3ZSB1c2UgYSBjb25zdCBjb21wYXRpYmxlIGFuZAp0aGVuIGEg
bmV3IGNoaXAgaXMgcmVsZWFzZWQgZm9yIHdoaWNoIHdlIGNhbiByZXVzZSB0aGUgZHJpdmVyPyBJ
cyB0aGlzCnNvbWV0aGluZyB0aGF0IGlzIGV4cGVjdGVkIHRvIHJlbWFpbiBzdGFibGUgaW4gdGhl
IGJpbmRpbmcgZG9jdW1lbnQ/ClRoZSBxdWVzdGlvbiBpcyB1bnJlbGF0ZWQgdG8gdGhpcyBwYXRj
aCwgSSdtIGp1c3QgdW5zdXJlIGFib3V0IG15IG93bgphcHByb2FjaCB0byB3cml0aW5nIHlhbWwg
YmluZGluZ3MuCgpCYXJ0Cgo+ID4gKwo+ID4gKyAgcmVnOgo+ID4gKyAgICBtaW5JdGVtczogMgo+
ID4gKyAgICBtYXhJdGVtczogMgo+ID4gKyAgICBkZXNjcmlwdGlvbjoKPiA+ICsgICAgICBUaGUg
Zmlyc3QgcmVnaW9uIGRlZmluZXMgdGhlIGJhc2UgSS9PIGFkZHJlc3MgY29udGFpbmluZwo+ID4g
KyAgICAgIHRoZSBHUElPIGNvbnRyb2xsZXIgcmVnaXN0ZXJzLiBUaGUgc2Vjb25kIHJlZ2lvbiBk
ZWZpbmVzCj4gPiArICAgICAgdGhlIEkvTyBhZGRyZXNzIGNvbnRhaW5pbmcgdGhlIENoaXAgQ29t
bW9uIEEgaW50ZXJydXB0Cj4gPiArICAgICAgcmVnaXN0ZXJzLgo+Cj4gaXRlbXM6Cj4gICAtIGRl
c2NyaXB0aW9uOiB0aGUgSS9PIGFkZHJlc3MgY29udGFpbmluZyB0aGUgR1BJTyBjb250cm9sbGVy
Cj4gICAgICAgcmVnaXN0ZXJzCj4gICAtIGRlc2NyaXB0aW9uOiB0aGUgSS9PIGFkZHJlc3MgY29u
dGFpbmluZyB0aGUgQ2hpcCBDb21tb24gQSBpbnRlcnJ1cHQKPiAgICAgICByZWdpc3RlcnMKPgo+
IEFuZCBtaW5JdGVtcy9tYXhJdGVtcyBjYW4gYmUgaW1wbGljaXQuCj4KPiA+ICsKPiA+ICsgIGdw
aW8tY29udHJvbGxlcjogdHJ1ZQo+ID4gKwo+ID4gKyAgJyNncGlvLWNlbGxzJzoKPiA+ICsgICAg
ICBjb25zdDogMgo+ID4gKwo+ID4gKyAgbmdwaW9zOgo+ID4gKyAgICAkcmVmOiAvc2NoZW1hcy90
eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzIKPgo+IENvbW1vbiBwcm9wZXJ0eSwgZG9lc24n
dCBuZWVkIGEgdHlwZSBkZWZpbml0aW9uLiBBbHNvLCBpdCB3b3VsZCBoYXZlIHRvCj4gYmUgdW5k
ZXIgYW4gJ2FsbE9mJyB0byBhY3R1YWxseSB3b3JrLgo+Cj4gPiArICAgIG1pbmltdW06IDAKPiA+
ICsgICAgbWF4aW11bTogMzIKPiA+ICsKPiA+ICsgIGludGVycnVwdC1jb250cm9sbGVyOgo+ID4g
KyAgICB0eXBlOiBib29sZWFuCj4KPiBKdXN0ICdpbnRlcnJ1cHQtY29udHJvbGxlcjogdHJ1ZScK
Pgo+ID4gKwo+ID4gKyAgJyNpbnRlcnJ1cHQtY2VsbHMnOgo+ID4gKyAgICBjb25zdDogMgo+ID4g
Kwo+ID4gKyAgaW50ZXJydXB0czoKPiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+ICsKPiA+ICtyZXF1
aXJlZDoKPiA+ICsgIC0gY29tcGF0aWJsZQo+ID4gKyAgLSByZWcKPiA+ICsgIC0gIiNncGlvLWNl
bGxzIgo+ID4gKyAgLSBncGlvLWNvbnRyb2xsZXIKPiA+ICsKPiA+ICthbGxPZjoKPiA+ICsgLSBp
ZjoKPiA+ICsgICAgIHByb3BlcnRpZXM6Cj4gPiArICAgICAgIGludGVycnVwdC1jb250cm9sbGVy
Ogo+ID4gKyAgICAgICAgIGNvbnRhaW5zOgo+ID4gKyAgICAgICAgICAgY29uc3Q6IHRydWUKPiA+
ICsgICB0aGVuOgo+ID4gKyAgICAgcmVxdWlyZWQ6Cj4gPiArICAgICAgIC0gaW50ZXJydXB0cwo+
ID4gKyAgICAgICAtICcjaW50ZXJydXB0LWNlbGxzJwo+Cj4gVGhpcyBpcyBtb3N0bHkgaGFuZGxl
ZCBpbiB0aGUgY29yZSBzY2hlbWEgYWxyZWFkeSBhbmQgJ2RlcGVuZGVuY2llcycKPiB3b3JrcyBi
ZXR0ZXIgZm9yIHRoaXMgYW55d2F5cy4gQWxsIHlvdSBuZWVkIGhlcmUgaXM6Cj4KPiBkZXBlbmRl
bmNpZXM6Cj4gICBpbnRlcnJ1cHQtY29udHJvbGxlcjogWyBpbnRlcnJ1cHRzIF0KPgo+ID4gKwo+
ID4gK2V4YW1wbGVzOgo+ID4gKyAgLSB8Cj4gPiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9p
bnRlcnJ1cHQtY29udHJvbGxlci9pcnEuaD4KPiA+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdz
L2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KPiA+ICsgICAgZ3Bpb0AxODAwMDA2MCB7
Cj4gPiArICAgICAgICBjb21wYXRpYmxlID0gImJyY20saXByb2MtZ3Bpby1jY2EiOwo+ID4gKyAg
ICAgICAgI2dwaW8tY2VsbHMgPSA8Mj47Cj4gPiArICAgICAgICByZWcgPSA8MHgxODAwMDA2MCAw
eDUwPiwKPiA+ICsgICAgICAgICAgICAgIDwweDE4MDAwMDAwIDB4NTA+Owo+ID4gKyAgICAgICAg
bmdwaW9zID0gPDEyPjsKPiA+ICsgICAgICAgIGdwaW8tY29udHJvbGxlcjsKPiA+ICsgICAgICAg
IGludGVycnVwdC1jb250cm9sbGVyOwo+ID4gKyAgICAgICAgI2ludGVycnVwdC1jZWxscyA9IDwy
PjsKPiA+ICsgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSA5MSBJUlFfVFlQRV9MRVZFTF9I
SUdIPjsKPiA+ICsgICAgfTsKPiA+ICsKPiA+ICsKPiA+ICsuLi4KPiA+IC0tCj4gPiAyLjIzLjAK
PiA+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
