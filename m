Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BAFFD101
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 23:36:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lEQY33DaXxWDO82IGC068Vt+Flrt33XrFofA7grG+3M=; b=HoqwPyE48q1Am3
	9cQ9+C2OQesGI11cQfHoqa94Sl7B/w7Tq0Ft/CTzKErtOUoyUHtOCmwLO9+z/tiwAro2PorI4LP3Q
	uU/Ik9vSP/J9qqLFOXVDUAWhUo8HSYfn1PqFh06MGn9eC/1VaCgP0h2Agr+3vomhgux0o7LuZCxnL
	OLKI0+deXA+EQNhjm5f4DCd2TDF46fDiSDjFTuFDeuAKNeUD0akOxQaEtOFhgpQXII32ZGbBTzk9m
	6Svmr9de/80CFJCpSDA3vrpVclozQxpEmsZ533xwV2i/MfTRmydhpw9fe5im9tts7K81Afr7345oI
	jjhxfmsKiyc5KXo+5MlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVNjF-0001oq-1P; Thu, 14 Nov 2019 22:36:41 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVNj3-0001oK-Q7
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 22:36:31 +0000
Received: by mail-wm1-x343.google.com with SMTP id q70so7639131wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 14:36:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=RVuenm9Qi2pw+STW4ZtMyXnbY+dRwGZQd6cok8GsC1M=;
 b=P9vKR2GWHbPY7STfXXInk+UIPKLvMJfeivMHW7HZGEMbjb15YJ1xDERjzAeqnoF4tU
 SRh7rAuY7x1sUzF30nhAS3cqIHus5guXb1IVBXgXRUGtaQaizyed0p0GMr1TXtCwdMI6
 pwQC7ANmkxp64rgZkLmZtYbIL3c5W9PE4Fir8yw0LeNYj4iWTSnGws7mX9iFqwkqH0L9
 5RxEIJNUojdI72q9Cq496qwe/v54onHciEGhAH9PA0Knb7Q4CEW+zZMS6/P/sqhPy2br
 oDg7QM1wX9w+UrMwqUhgZhMZI55QqDjbe+2pIK7DorvfYkO+vmMTEgjE16JmfEoQnkiZ
 q3mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=RVuenm9Qi2pw+STW4ZtMyXnbY+dRwGZQd6cok8GsC1M=;
 b=D5EqfIYNoID+Wm/RCJn9Uq6rO8E6pVwK6hcqKqWX3Ynx8UscjIWWKLy7BCeoFpylZJ
 rMGBtxAChXJVwQoNcCHdutwKacayhONFKLRGbmNfRlO7kJLMGebe2XlVtBHz0MpLppsM
 2R7/omVNUibhjRev0CKZ300Fd++EPZ3Ubnm4dsdagPLi5lt0UmygIulSrcDLPT8QxtaD
 r4P/adr9glEEgBFoEyFcSyVNgVq8BCcilOtudQPHy5ZdUUBQ5+x63DeTkY1TTdLJHn4X
 jnfb6SVQhzinnHVQQQ+U27ydRLhYmdPvMJd0K9vBDrF5T050jO9OIbmKM4WZ/NINYTLo
 zrew==
X-Gm-Message-State: APjAAAV9Fv+B2+q7x0GJ/jbCYv0PdKMAIQF1A36jpt6v15PrL1nU6TKo
 idDCHSbsc1Cgb/1uzWz+839vvmmzl+loH1Y3gFJOJjUv22s=
X-Google-Smtp-Source: APXvYqydkqVGAsZY/QfQUfncgiKmd2qGu81mlw7Lyn/j6hx/Zt8E9beVOYAmq795PN88N0QMg3qiHr5bP6gMpLIuoQw=
X-Received: by 2002:a1c:6405:: with SMTP id y5mr11626914wmb.175.1573770987981; 
 Thu, 14 Nov 2019 14:36:27 -0800 (PST)
MIME-Version: 1.0
References: <20191108084517.21617-1-peron.clem@gmail.com>
 <20191108084517.21617-4-peron.clem@gmail.com>
 <20191113083524.aqtf2ed4ltuiazjg@pengutronix.de>
In-Reply-To: <20191113083524.aqtf2ed4ltuiazjg@pengutronix.de>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Thu, 14 Nov 2019 23:36:16 +0100
Message-ID: <CAJiuCccqyPbxRLjv1NRy6eukMnma8OUJGKvVHHDSKwybNJgKrg@mail.gmail.com>
Subject: Re: [PATCH v4 3/7] pwm: sun4i: Add an optional probe for bus clock
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_143629_853503_95552C0B 
X-CRM114-Status: GOOD (  28.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <pza@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlLAoKT24gV2VkLCAxMyBOb3YgMjAxOSBhdCAwOTozNSwgVXdlIEtsZWluZS1Lw7ZuaWcK
PHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4KPiBPbiBGcmksIE5vdiAw
OCwgMjAxOSBhdCAwOTo0NToxM0FNICswMTAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBG
cm9tOiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4gPgo+ID4gSDYg
UFdNIGNvcmUgbmVlZHMgYnVzIGNsb2NrIHRvIGJlIGVuYWJsZWQgaW4gb3JkZXIgdG8gd29yay4K
PiA+Cj4gPiBBZGQgYW4gb3B0aW9uYWwgcHJvYmUgZm9yIGl0IGFuZCBhIGZhbGxiYWNrIGZvciBw
cmV2aW91cwo+ID4gYmluZGluZ3Mgd2l0aG91dCBuYW1lIG9uIG1vZHVsZSBjbG9jay4KPiA+Cj4g
PiBTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29t
Pgo+ID4gLS0tCj4gPiAgZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgfCA0OCArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKystLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0NiBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3B3
bS9wd20tc3VuNGkuYyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCj4gPiBpbmRleCAyYjlhMmE3
ODU5MWYuLmExMDAyMmQ2YzBmZCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40
aS5jCj4gPiArKysgYi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwo+ID4gQEAgLTc4LDYgKzc4LDcg
QEAgc3RydWN0IHN1bjRpX3B3bV9kYXRhIHsKPiA+Cj4gPiAgc3RydWN0IHN1bjRpX3B3bV9jaGlw
IHsKPiA+ICAgICAgIHN0cnVjdCBwd21fY2hpcCBjaGlwOwo+ID4gKyAgICAgc3RydWN0IGNsayAq
YnVzX2NsazsKPiA+ICAgICAgIHN0cnVjdCBjbGsgKmNsazsKPiA+ICAgICAgIHN0cnVjdCByZXNl
dF9jb250cm9sICpyc3Q7Cj4gPiAgICAgICB2b2lkIF9faW9tZW0gKmJhc2U7Cj4gPiBAQCAtMzYz
LDkgKzM2NCwzOCBAQCBzdGF0aWMgaW50IHN1bjRpX3B3bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQo+ID4gICAgICAgaWYgKElTX0VSUihwd20tPmJhc2UpKQo+ID4gICAgICAg
ICAgICAgICByZXR1cm4gUFRSX0VSUihwd20tPmJhc2UpOwo+ID4KPiA+IC0gICAgIHB3bS0+Y2xr
ID0gZGV2bV9jbGtfZ2V0KCZwZGV2LT5kZXYsIE5VTEwpOwo+ID4gLSAgICAgaWYgKElTX0VSUihw
d20tPmNsaykpCj4gPiArICAgICAvKiBHZXQgYWxsIGNsb2NrcyBhbmQgcmVzZXQgbGluZSAqLwo+
ID4gKyAgICAgcHdtLT5jbGsgPSBkZXZtX2Nsa19nZXRfb3B0aW9uYWwoJnBkZXYtPmRldiwgIm1v
ZCIpOwo+ID4gKyAgICAgaWYgKElTX0VSUihwd20tPmNsaykpIHsKPiA+ICsgICAgICAgICAgICAg
aWYgKFBUUl9FUlIocHdtLT5yc3QpICE9IC1FUFJPQkVfREVGRVIpCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgZGV2X2VycigmcGRldi0+ZGV2LCAiZ2V0IGNsb2NrIGZhaWxlZCAlcGVcbiIsCj4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwd20tPmNsayk7Cj4gPiAgICAgICAgICAg
ICAgIHJldHVybiBQVFJfRVJSKHB3bS0+Y2xrKTsKPiA+ICsgICAgIH0KPiA+ICsKPiA+ICsgICAg
IC8qCj4gPiArICAgICAgKiBGYWxsYmFjayBmb3Igb2xkIGR0YnMgd2l0aCBhIHNpbmdsZSBjbG9j
ayBhbmQgbm8gbmFtZS4KPiA+ICsgICAgICAqIElmIGEgcGFyZW50IGhhcyBhIGNsb2NrLW5hbWUg
Y2FsbGVkICJtb2QiIHdoZXJlYXMgdGhlCj4gPiArICAgICAgKiBjdXJyZW50IG5vZGUgaXMgdW5u
YW1lZCB0aGUgY2xvY2sgcmVmZXJlbmNlIHdpbGwgYmUKPiA+ICsgICAgICAqIGluY29ycmVjdGx5
IG9idGFpbmVkIGFuZCB3aWxsIG5vdCBnbyBpbnRvIHRoaXMgZmFsbGJhY2suCj4KPiBGb3IgbWUg
Im9sZCBkdGJzIiBzdWdnZXN0cyB0aGF0IHRvZGF5IGEgZGV2aWNlIHRyZWUgc2hvdWxkIGhhdmUg
YSAibW9kIgo+IGNsb2NrLiBJcyB0aGlzIHRydWUgYWxzbyBmb3IgbWFjaGluZXMgb3RoZXIgdGhh
biBINj8gQW5kIEknZCBwdXQgdGhlCj4gY29tbWVudCBiZWZvcmUgdGhlIGFjcXVpc2l0aW9uIG9m
IHRoZSAibW9kIiBjbG9jay4gU29tZXRoaW5nIGxpa2U6CgpBZ3JlZSB0byByZW1vdmUgdGhlICJv
bGQgZHRicyIgYnV0IHNwZWNpZnlpbmcgdGhlIFNvQyBpbnN0ZWFkCm9mIHRoZSByZWFzb24gaXMg
bGVzcyBjbGVhciBmb3IgbWUuCgpJIHdvdWxkIHByZWZlciB0byBoYXZlIHNvbWV0aGluZyBsaWtl
IHRoaXM6CgpBIGNsb2NrIGlzIGV4cGxpY2l0bHkgY2FsbGVkICJtb2QiIHdoZW4gc2V2ZXJhbCBj
bG9ja3MgYXJlIHJlZmVyZW5jZWQuCkhvd2V2ZXIsIHdoZW4gb25seSBvbmUgY2xvY2sgaXMgZGVj
bGFyZWQgdGhpcyBvbmUgaXMgdW5hbWVkLgpTbyB3ZSByZXF1ZXN0ICJtb2QiIGZpcnN0IChhbmQg
aWdub3JlIHRoZSBjb3JuZXIgY2FzZSB0aGF0IGEgcGFyZW50CnByb3ZpZGVzIGEgIm1vZCIgY2xv
Y2spCmFuZCBpZiB0aGlzIGlzIG5vdCBmb3VuZCB3ZSBmYWxsIGJhY2sgdG8gdGhlIGZpcnN0IGNs
b2NrIG9mIHRoZSBQV00uCgpXaGF0IGRvIHlvdSB0aGluaz8KCj4KPiAgICAgICAgIC8qCj4gICAg
ICAgICAgKiBBIGNsb2NrIGNhbGxlZCAibW9kIiBpcyBvbmx5IHJlcXVpcmVkIG9uIEg2IChmb3Ig
bm93KSBhbmQgb24KPiAgICAgICAgICAqIG90aGVyIFNvQ3Mgd2UgZXhwZWN0IGFuIHVubmFtZWQg
Y2xvY2suIFNvIHdlIHJlcXVlc3QgIm1vZCIKPiAgICAgICAgICAqIGZpcnN0IChhbmQgaWdub3Jl
IHRoZSBjb3JuZXIgY2FzZSB0aGF0IGEgcGFyZW50IHByb3ZpZGVzIGEKPiAgICAgICAgICAqICJt
b2QiIGNsb2NrKSBhbmQgaWYgdGhpcyBpcyBub3QgZm91bmQgd2UgZmFsbCBiYWNrIHRvIHRoZQo+
ICAgICAgICAgICogZmlyc3QgY2xvY2sgb2YgdGhlIFBXTS4KPiAgICAgICAgICAqLwo+Cj4gPiAr
ICAgICAgKi8KPiA+ICsgICAgIGlmICghcHdtLT5jbGspIHsKPiA+ICsgICAgICAgICAgICAgcHdt
LT5jbGsgPSBkZXZtX2Nsa19nZXQoJnBkZXYtPmRldiwgTlVMTCk7Cj4gPiArICAgICAgICAgICAg
IGlmIChJU19FUlIocHdtLT5jbGspKSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgaWYgKFBU
Ul9FUlIocHdtLT5yc3QpICE9IC1FUFJPQkVfREVGRVIpCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBkZXZfZXJyKCZwZGV2LT5kZXYsICJnZXQgY2xvY2sgZmFpbGVkICVwZVxuIiwK
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcHdtLT5jbGspOwo+ID4g
KyAgICAgICAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKHB3bS0+Y2xrKTsKPiA+ICsgICAg
ICAgICAgICAgfQo+ID4gKyAgICAgfQo+ID4gKwo+ID4gKyAgICAgcHdtLT5idXNfY2xrID0gZGV2
bV9jbGtfZ2V0X29wdGlvbmFsKCZwZGV2LT5kZXYsICJidXMiKTsKPiA+ICsgICAgIGlmIChJU19F
UlIocHdtLT5idXNfY2xrKSkgewo+ID4gKyAgICAgICAgICAgICBpZiAoUFRSX0VSUihwd20tPnJz
dCkgIT0gLUVQUk9CRV9ERUZFUikKPiA+ICsgICAgICAgICAgICAgICAgICAgICBkZXZfZXJyKCZw
ZGV2LT5kZXYsICJnZXQgYnVzX2Nsb2NrIGZhaWxlZCAlcGVcbiIsCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBwd20tPmJ1c19jbGspOwo+ID4gKyAgICAgICAgICAgICByZXR1cm4g
UFRSX0VSUihwd20tPmJ1c19jbGspOwo+ID4gKyAgICAgfQo+ID4KPiA+ICAgICAgIHB3bS0+cnN0
ID0gZGV2bV9yZXNldF9jb250cm9sX2dldF9vcHRpb25hbF9zaGFyZWQoJnBkZXYtPmRldiwgTlVM
TCk7Cj4gPiAgICAgICBpZiAoSVNfRVJSKHB3bS0+cnN0KSkgewo+ID4gQEAgLTM4Miw2ICs0MTIs
MTcgQEAgc3RhdGljIGludCBzdW40aV9wd21fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKPiA+ICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ICAgICAgIH0KPiA+Cj4gPiAr
ICAgICAvKgo+ID4gKyAgICAgICogV2UncmUga2VlcGluZyB0aGUgYnVzIGNsb2NrIG9uIGZvciB0
aGUgc2FrZSBvZiBzaW1wbGljaXR5Lgo+ID4gKyAgICAgICogQWN0dWFsbHkgaXQgb25seSBuZWVk
cyB0byBiZSBvbiBmb3IgaGFyZHdhcmUgcmVnaXN0ZXIKPiA+ICsgICAgICAqIGFjY2Vzc2VzLgo+
ID4gKyAgICAgICovCj4gPiArICAgICByZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUocHdtLT5idXNf
Y2xrKTsKPiA+ICsgICAgIGlmIChyZXQpIHsKPiA+ICsgICAgICAgICAgICAgZGV2X2VycigmcGRl
di0+ZGV2LCAiQ2Fubm90IHByZXBhcmUgYW5kIGVuYWJsZSBidXNfY2xrXG4iKTsKPiA+ICsgICAg
ICAgICAgICAgZ290byBlcnJfYnVzOwo+ID4gKyAgICAgfQo+ID4gKwo+Cj4gV291bGQgaXQgbWFr
ZSBzZW5zZSB0byBzcGxpdCB0aGlzIHBhdGNoIGludG8gIlByZWZlciAibW9kIiBjbG9jayB0bwo+
ICh1bm5hbWVkKSBjbG9jayIgYW5kICJJbnRyb2R1Y2Ugb3B0aW9uYWwgYnVzIGNsb2NrIj8KClll
cyBJIHdpbGwgZG8gaW4gdjUsCgpSZWdhcmRzLApDbMOpbWVudAo+Cj4gQmVzdCByZWdhcmRzCj4g
VXdlCj4KPiAtLQo+IFBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8
IFV3ZSBLbGVpbmUtS8O2bmlnICAgICAgICAgICAgfAo+IEluZHVzdHJpYWwgTGludXggU29sdXRp
b25zICAgICAgICAgICAgICAgICB8IGh0dHBzOi8vd3d3LnBlbmd1dHJvbml4LmRlLyB8CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
