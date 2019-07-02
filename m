Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF9A5CABD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 10:07:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeUSqjdo+dnquepk6BaAh88gFqnhwpgZw01YX4SAa6Q=; b=G8BUuE+HflwBzl
	t8s12+njLo+YX56ljca9u8xh/+SH3xNwf1G9mp5mLh6AOB3C51tHTo7n9EcOpbeNq4wuFefSChiCJ
	P5oCo+eCt2MkR5v0rrQ1U1183YwDCikyzdC+NnpT5h0YqJ6bSVPoPsWzkzCigMHzm+bUmWEzxBnag
	LWkKs45rpa+lEjS5nsDYkXfohBaXRa352itX97CIOTjbHQBC73YonUb+GBrC+sQEkPJUd+fhqtt3T
	tJixHgbmJiZZMZHu2uyn/v53ocAsqnScKksbygR73muWww0iUxtNW0JlDcIZdFURFSmplm/QFFpNS
	bXMazjFiYg+SbIiAifKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiDoy-0008Gn-Qa; Tue, 02 Jul 2019 08:07:24 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiDoP-00081j-Vw
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 08:06:51 +0000
Received: by mail-wr1-x442.google.com with SMTP id x17so16612879wrl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 01:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3Uf+doeO5VtjdYVajvd6K1kZS8kG10W1FFm+PhtOBRg=;
 b=gnEFc1YtN21E7WYDMG8pTDp6oCGt2jPIS3ZMtgDDYPm48OAHD2ZhMajQAsRwk7CZxn
 jeQkIjU08B/AJuKHubmRUTtoB+8uHgRe7y77cuVyKLvxf3/TqHxk+d3PBmV4NnFolUCL
 2DQQ3Cs8sNv94OyZZvZ/Ey0mU4PzuiWEpZSfCBMlekkOWwUqKA+ul+wkVkq3x7GQUqiC
 pOaoLxusEfLn5Iuykn4MUmhC6VjYwcWXxWRaQy3p/hFF0yqOh6RVrwmkSZ6mWNFv84iu
 zpIaBynXnOMnLlomqNpm4zauTeorutV8cx5VwaoyyoOVB847Cv8l2irNdaOol4pMGqzr
 GrBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=3Uf+doeO5VtjdYVajvd6K1kZS8kG10W1FFm+PhtOBRg=;
 b=eZs0pA7WT0eAJg+FzfRrGFOTAppV4J4R/Pq9DjG9lllYkVeZ5OAw9WM3Xh/XqxkjbW
 N983ij8lTyNgVSXUvsG5irpeOmPQTd5nTW7YxIFK9QK+gTH5SP/Kysd2ppPjwCE4tJNV
 hHhiTv1lER4vPq5HeWjjbjGMjOEpbrGd0XaC178r7g9egwEJBeKSZrlT6SlRExiv47MR
 d02vU0lqCtdduJNI387ve011n2vXTvv2h5GzhVm8yuzd2UYuIatd4h3gGA7/+PySbkiZ
 H9cywUjsV8d18V9SyhOnvVvJC4EBJHK+DBEJ5RRLX1lNE53IEK/eaa0L8zZOV7eDTTOh
 3HIw==
X-Gm-Message-State: APjAAAXu0teqawYy2iA+SznzByNIKuqIp5FaoddpiM4KjED4r/rjm3Hx
 gmXcaYjFZNhapJSNm16gjmLkYg==
X-Google-Smtp-Source: APXvYqzdZ545A3N7T9K2xF2eUZix4M/zpqfeQzEl2jnLUgzNiOHY7TU3bxPID739k8UGfyVsl6CdJg==
X-Received: by 2002:a5d:498a:: with SMTP id r10mr22916612wrq.28.1562054808004; 
 Tue, 02 Jul 2019 01:06:48 -0700 (PDT)
Received: from [192.168.0.41] (132.97.130.77.rev.sfr.net. [77.130.97.132])
 by smtp.googlemail.com with ESMTPSA id o14sm10152987wrp.77.2019.07.02.01.06.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 01:06:47 -0700 (PDT)
Subject: Re: [PATCH RESEND V4 1/5] clocksource: timer-of: Support getting
 clock frequency from DT
To: Anson.Huang@nxp.com, tglx@linutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, leonard.crestez@nxp.com,
 viresh.kumar@linaro.org, daniel.baluta@nxp.com, ping.bai@nxp.com,
 l.stach@pengutronix.de, abel.vesa@nxp.com, andrew.smirnov@gmail.com,
 ccaione@baylibre.com, angus@akkea.ca, agx@sigxcpu.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20190702075513.17451-1-Anson.Huang@nxp.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <c7ff76e5-d73d-e71e-c3f4-445bdd2c5b93@linaro.org>
Date: Tue, 2 Jul 2019 10:06:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190702075513.17451-1-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_010650_117470_3F59E048 
X-CRM114-Status: GOOD (  24.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5zb24sCgp3aHkgZGlkIHlvdSByZXNlbmQgdGhlIHNlcmllcz8KCgpPbiAwMi8wNy8yMDE5
IDA5OjU1LCBBbnNvbi5IdWFuZ0BueHAuY29tIHdyb3RlOgo+IEZyb206IEFuc29uIEh1YW5nIDxB
bnNvbi5IdWFuZ0BueHAuY29tPgo+IAo+IE1vcmUgYW5kIG1vcmUgcGxhdGZvcm1zIHVzZSBwbGF0
Zm9ybSBkcml2ZXIgbW9kZWwgZm9yIGNsb2NrIGRyaXZlciwKPiBzbyB0aGUgY2xvY2sgZHJpdmVy
IGlzIE5PVCByZWFkeSBkdXJpbmcgdGltZXIgaW5pdGlhbGl6YXRpb24gcGhhc2UsCj4gaXQgd2ls
bCBjYXVzZSB0aW1lciBpbml0aWFsaXphdGlvbiBmYWlsZWQuCj4gCj4gVG8gc3VwcG9ydCB0aG9z
ZSBwbGF0Zm9ybXMgd2l0aCB1cHBlciBzY2VuYXJpbywgaW50cm9kdWNpbmcgYSBuZXcKPiBmbGFn
IFRJTUVSX09GX0NMT0NLX0ZSRVFVRU5DWSB3aGljaCBpcyBtdXR1YWxseSBleGNsdXNpdmUgd2l0
aAo+IFRJTUVSX09GX0NMT0NLIGZsYWcgdG8gc3VwcG9ydCBnZXR0aW5nIHRpbWVyIGNsb2NrIGZy
ZXF1ZW5jeSBmcm9tCj4gRFQncyB0aW1lciBub2RlLCB0aGUgcHJvcGVydHkgbmFtZSBzaG91bGQg
YmUgImNsb2NrLWZyZXF1ZW5jeSIsCj4gdGhlbiBvZl9jbGsgb3BlcmF0aW9ucyBjYW4gYmUgc2tp
cHBlZC4KPiAKPiBVc2VyIG5lZWRzIHRvIHNlbGVjdCBlaXRoZXIgVElNRVJfT0ZfQ0xPQ0tfRlJF
UVVFTkNZIG9yIFRJTUVSX09GX0NMT0NLCj4gZmxhZyBpZiB3YW50IHRvIHVzZSB0aW1lci1vZiBk
cml2ZXIgdG8gaW5pdGlhbGl6ZSB0aGUgY2xvY2sgcmF0ZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBB
bnNvbiBIdWFuZyA8QW5zb24uSHVhbmdAbnhwLmNvbT4KPiAtLS0KPiBDaGFuZ2VzIHNpbmNlIFYz
Ogo+IAktIHVzZSBoYXJkY29kZWQgImNsb2NrLWZyZXF1ZW5jeSIgaW5zdGVhZCBvZiBhZGRpbmcg
bmV3IHZhcmlhYmxlIHByb3BfbmFtZTsKPiAJLSBhZGQgcHJlLWNvbmRpdGlvbiBjaGVjayBmb3Ig
VElNRVJfT0ZfQ0xPQ0sgYW5kIFRJTUVSX09GX0NMT0NLX0ZSRVFVRU5DWSwgdGhleSBNVVNUIGJl
IGV4Y2x1c2l2ZS4KPiAtLS0KPiAgZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1vZi5jIHwgMjkg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgZHJpdmVycy9jbG9ja3NvdXJjZS90aW1l
ci1vZi5oIHwgIDcgKysrKy0tLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xvY2tzb3VyY2UvdGlt
ZXItb2YuYyBiL2RyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItb2YuYwo+IGluZGV4IDgwNTQyMjgu
Ljg1OGY2ODQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1vZi5jCj4g
KysrIGIvZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1vZi5jCj4gQEAgLTE2MSwxMSArMTYxLDMw
IEBAIHN0YXRpYyBfX2luaXQgaW50IHRpbWVyX29mX2Jhc2VfaW5pdChzdHJ1Y3QgZGV2aWNlX25v
ZGUgKm5wLAo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gK3N0YXRpYyBfX2luaXQgaW50IHRpbWVy
X29mX2Nsa19mcmVxdWVuY3lfaW5pdChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAo+ICsJCQkJCSAg
ICAgIHN0cnVjdCBvZl90aW1lcl9jbGsgKm9mX2NsaykKPiArewo+ICsJaW50IHJldDsKPiArCXUz
MiByYXRlOwo+ICsKPiArCXJldCA9IG9mX3Byb3BlcnR5X3JlYWRfdTMyKG5wLCAiY2xvY2stZnJl
cXVlbmN5IiwgJnJhdGUpOwo+ICsJaWYgKCFyZXQpIHsKPiArCQlvZl9jbGstPnJhdGUgPSByYXRl
Owo+ICsJCW9mX2Nsay0+cGVyaW9kID0gRElWX1JPVU5EX1VQKHJhdGUsIEhaKTsKPiArCX0KPiAr
Cj4gKwlyZXR1cm4gcmV0Owo+ICt9Cj4gKwo+ICBpbnQgX19pbml0IHRpbWVyX29mX2luaXQoc3Ry
dWN0IGRldmljZV9ub2RlICpucCwgc3RydWN0IHRpbWVyX29mICp0bykKPiAgewo+ICsJdW5zaWdu
ZWQgbG9uZyBjbG9ja19mbGFncyA9IFRJTUVSX09GX0NMT0NLIHwgVElNRVJfT0ZfQ0xPQ0tfRlJF
UVVFTkNZOwo+ICAJaW50IHJldCA9IC1FSU5WQUw7Cj4gIAlpbnQgZmxhZ3MgPSAwOwo+ICAKPiAr
CWlmICgodG8tPmZsYWdzICYgY2xvY2tfZmxhZ3MpID09IGNsb2NrX2ZsYWdzKQo+ICsJCXJldHVy
biByZXQ7Cj4gKwo+ICAJaWYgKHRvLT5mbGFncyAmIFRJTUVSX09GX0JBU0UpIHsKPiAgCQlyZXQg
PSB0aW1lcl9vZl9iYXNlX2luaXQobnAsICZ0by0+b2ZfYmFzZSk7Cj4gIAkJaWYgKHJldCkKPiBA
QCAtMTgwLDYgKzE5OSwxMyBAQCBpbnQgX19pbml0IHRpbWVyX29mX2luaXQoc3RydWN0IGRldmlj
ZV9ub2RlICpucCwgc3RydWN0IHRpbWVyX29mICp0bykKPiAgCQlmbGFncyB8PSBUSU1FUl9PRl9D
TE9DSzsKPiAgCX0KPiAgCj4gKwlpZiAodG8tPmZsYWdzICYgVElNRVJfT0ZfQ0xPQ0tfRlJFUVVF
TkNZKSB7Cj4gKwkJcmV0ID0gdGltZXJfb2ZfY2xrX2ZyZXF1ZW5jeV9pbml0KG5wLCAmdG8tPm9m
X2Nsayk7Cj4gKwkJaWYgKHJldCkKPiArCQkJZ290byBvdXRfZmFpbDsKPiArCQlmbGFncyB8PSBU
SU1FUl9PRl9DTE9DS19GUkVRVUVOQ1k7Cj4gKwl9Cj4gKwo+ICAJaWYgKHRvLT5mbGFncyAmIFRJ
TUVSX09GX0lSUSkgewo+ICAJCXJldCA9IHRpbWVyX29mX2lycV9pbml0KG5wLCAmdG8tPm9mX2ly
cSk7Cj4gIAkJaWYgKHJldCkKPiBAQCAtMjAxLDYgKzIyNyw5IEBAIGludCBfX2luaXQgdGltZXJf
b2ZfaW5pdChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLCBzdHJ1Y3QgdGltZXJfb2YgKnRvKQo+ICAJ
aWYgKGZsYWdzICYgVElNRVJfT0ZfQ0xPQ0spCj4gIAkJdGltZXJfb2ZfY2xrX2V4aXQoJnRvLT5v
Zl9jbGspOwo+ICAKPiArCWlmIChmbGFncyAmIFRJTUVSX09GX0NMT0NLX0ZSRVFVRU5DWSkKPiAr
CQl0by0+b2ZfY2xrLnJhdGUgPSAwOwo+ICsKPiAgCWlmIChmbGFncyAmIFRJTUVSX09GX0JBU0Up
Cj4gIAkJdGltZXJfb2ZfYmFzZV9leGl0KCZ0by0+b2ZfYmFzZSk7Cj4gIAlyZXR1cm4gcmV0Owo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLW9mLmggYi9kcml2ZXJzL2Ns
b2Nrc291cmNlL3RpbWVyLW9mLmgKPiBpbmRleCBhNTQ3OGYzLi5hMDhlMTA4IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItb2YuaAo+ICsrKyBiL2RyaXZlcnMvY2xvY2tz
b3VyY2UvdGltZXItb2YuaAo+IEBAIC00LDkgKzQsMTAgQEAKPiAgCj4gICNpbmNsdWRlIDxsaW51
eC9jbG9ja2NoaXBzLmg+Cj4gIAo+IC0jZGVmaW5lIFRJTUVSX09GX0JBU0UJMHgxCj4gLSNkZWZp
bmUgVElNRVJfT0ZfQ0xPQ0sJMHgyCj4gLSNkZWZpbmUgVElNRVJfT0ZfSVJRCTB4NAo+ICsjZGVm
aW5lIFRJTUVSX09GX0JBU0UJCQkweDEKPiArI2RlZmluZSBUSU1FUl9PRl9DTE9DSwkJCTB4Mgo+
ICsjZGVmaW5lIFRJTUVSX09GX0lSUQkJCTB4NAo+ICsjZGVmaW5lIFRJTUVSX09GX0NMT0NLX0ZS
RVFVRU5DWQkweDgKPiAgCj4gIHN0cnVjdCBvZl90aW1lcl9pcnEgewo+ICAJaW50IGlycTsKPiAK
CgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJj
ZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNl
Ym9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEv
bGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+
IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
