Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB695CC67
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 11:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=javslQRukzjRirX9XRozr66d47m5NErwCklEiRaXGp4=; b=XkK2a17hRb+dsz
	leSzYmSr+GsHJj/BmIKokRJwYRl1IDy3hKht113HDIBTscnd9vXDyZ3xE14GwFyoqOnnd88odPhAJ
	MkE3gZhMEAXyqv6Zijyoo0cMGoR359V8bKPbSnwBsCOFhwPM0rq8Sahj0eGvBte0VkKGX94cIHqHy
	/vaVug3yUzF88BUMoBxMvbRjlbESPKH+Ind4y7J/juAGLXh7Im3YApHbJyj/aYrCXxYbjW9VSQU43
	PhyfXCMZbLKRe8jYVOKtKBWG/XvaTgXTF49/2mhcT6nvYG1O4iPZCJmlu+Hwvr5BgS1q0yUZfOW9L
	AxnKqu48qStTnDUwau8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiEla-0004eJ-LL; Tue, 02 Jul 2019 09:07:58 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiElN-0004dn-PA
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 09:07:47 +0000
Received: by mail-wm1-x342.google.com with SMTP id z23so80180wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 02:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=V4HxjVvwI55coPU+osq21qWtWbtvr2h0ZIAaAI4JjGc=;
 b=eacPMb3RtzXRp0MoZuWr+7eXy8QPTEQUq8PzIf4QEBQB6z/a9RyRz4oZQMpc8ucKbb
 8N/OCmMMFbtAStQng3VxWPIUI8ToXUBzNpWT0m4ldAx4DFUhpC/gujPXqTrx2W0hO500
 2Q911NwCnUViWlewXOykBBvnLyfnZQQf1axOcn5ggoVomi5YHcOvkQvohaaN+WSqpeem
 RY7525xh3th6HNIFxZMRkfozh5fGl+9pI9LGhzicDPoUDnqSjwJerulSv3n5mWeR1YUz
 MVCg+Q1nQLPqA58SV5IZbX+KN5aGux/PZkAIbbx3m1tEzBNadIwaMoF35DtReDLGAn04
 FVDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=V4HxjVvwI55coPU+osq21qWtWbtvr2h0ZIAaAI4JjGc=;
 b=Ihbg/n2iLtOhY7SzjEa7yWT3VEP5N08ISf31etNYZ5tWsE5rRAI1OsvaOI2sEPu969
 AIPXzmiNBpc5xxOcb/kctXY2kGTeHPqtX4c3KfO6QTREEq22o5sXs/VR7gRp+NDKT/Yr
 iwk/g4/1FO5yqY4wVYCpPUNaD6ImpnmvdXpcMVCrtcipr4EHKhXABwc2ai+5e8JHw5RT
 DCSKEmZea0oZd4S6ePAcdVEGIN/qULe04n0EFbKKevuq6c0dvr+PFy6d2SVsPqqCE03z
 kAiV8Pw+FcuTkeYJm7H63SWnflkIGEla3px7DWW6xUGAZy4Nrizu5uFUa+F7Cu9SwB2G
 x6Rw==
X-Gm-Message-State: APjAAAWcuVLpVBWIOFG2rrdYq9DQ1kI4t4nSItKkpVnZd2giDn6bcFl0
 cnn0aP8VybYREtkGz1XmN1Kmqg==
X-Google-Smtp-Source: APXvYqyn3uOazHwJTQdZXGCSxlU7zGJstVqFVi8qJ6rrSXzE+pfr7rjZWbLXpcnnEWduyGPZuMOtFw==
X-Received: by 2002:a1c:407:: with SMTP id 7mr2808751wme.113.1562058463367;
 Tue, 02 Jul 2019 02:07:43 -0700 (PDT)
Received: from [192.168.0.41] (132.97.130.77.rev.sfr.net. [77.130.97.132])
 by smtp.googlemail.com with ESMTPSA id u1sm2426957wml.14.2019.07.02.02.07.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 02:07:42 -0700 (PDT)
Subject: Re: [PATCH RESEND V4 1/5] clocksource: timer-of: Support getting
 clock frequency from DT
To: Anson Huang <anson.huang@nxp.com>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 Abel Vesa <abel.vesa@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "angus@akkea.ca" <angus@akkea.ca>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20190702075513.17451-1-Anson.Huang@nxp.com>
 <c7ff76e5-d73d-e71e-c3f4-445bdd2c5b93@linaro.org>
 <DB3PR0402MB39166F04BAF9BA9D6C75B3A8F5F80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <0540a255-93e5-d68f-5bf5-31f9043fb3ad@linaro.org>
Date: Tue, 2 Jul 2019 11:07:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <DB3PR0402MB39166F04BAF9BA9D6C75B3A8F5F80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_020745_830390_FD5A4287 
X-CRM114-Status: GOOD (  23.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDIvMDcvMjAxOSAxMTowMywgQW5zb24gSHVhbmcgd3JvdGU6Cj4gSGksIERhbmllbAo+IAo+
PiBIaSBBbnNvbiwKPj4KPj4gd2h5IGRpZCB5b3UgcmVzZW5kIHRoZSBzZXJpZXM/Cj4gCj4gUHJl
dmlvdXMgcGF0Y2ggc2VyaWVzIGhhcyBidWlsZCB3YXJuaW5nIGFuZCBJIGRpZCBOT1Qgbm90aWNl
LCBzb3JyeSBmb3IgdGhhdCwKPiAKPiBkcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLW9mLmM6IElu
IGZ1bmN0aW9uIOKAmHRpbWVyX29mX2luaXTigJk6Cj4gZHJpdmVycy9jbG9ja3NvdXJjZS90aW1l
ci1vZi5jOjE4NTozMDogd2FybmluZzogc3VnZ2VzdCBwYXJlbnRoZXNlcyBhcm91bmQgY29tcGFy
aXNvbiBpbiBvcGVyYW5kIG9mIOKAmCbigJkgWy1XcGFyZW50aGVzZXNdCj4gICBpZiAodG8tPmZs
YWdzICYgY2xvY2tfZmxhZ3MgPT0gY2xvY2tfZmxhZ3MpCj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgXgo+IAo+IHNvIEkgcmVzZW5kIHRoZSBwYXRjaCBzZXJpZXMgd2l0aCBiZWxvdywg
c29ycnkgZm9yIG1pc3NpbmcgbWVudGlvbiBvZiB0aGUgY2hhbmdlcyBpbiByZXNlbnQgcGF0Y2gg
c2VyaWVzLgo+IAo+ICArCWlmICgodG8tPmZsYWdzICYgY2xvY2tfZmxhZ3MpID09IGNsb2NrX2Zs
YWdzKQo+IAo+IFNvcnJ5IGZvciBtYWlsIHN0b3JtLi4uCgpObyBwcm9ibGVtIGF0IGFsbCwgSSBw
cmVmZXIgdGhpcyBjYXVnaHQgYW5kIGZpeGVkIGVhcmx5IDopCgpOZXh0IHRpbWUganVzdCBzZW5k
IGEgVjUgYmVjYXVzZSAncmVzZW5kJyBtZWFucyB0aGVyZSBpcyBubyBjaGFuZ2UgYnV0CnRoZXJl
IHdhcyBhIHByb2JsZW0gd2l0aCB0aGUgZW1haWwgKGNvdWxkIGJlIGFsc28gaW50ZXJwcmV0ZWQg
YXMgYQpnZW50bGUgcGluZykuCgo+PiBPbiAwMi8wNy8yMDE5IDA5OjU1LCBBbnNvbi5IdWFuZ0Bu
eHAuY29tIHdyb3RlOgo+Pj4gRnJvbTogQW5zb24gSHVhbmcgPEFuc29uLkh1YW5nQG54cC5jb20+
Cj4+Pgo+Pj4gTW9yZSBhbmQgbW9yZSBwbGF0Zm9ybXMgdXNlIHBsYXRmb3JtIGRyaXZlciBtb2Rl
bCBmb3IgY2xvY2sgZHJpdmVyLCBzbwo+Pj4gdGhlIGNsb2NrIGRyaXZlciBpcyBOT1QgcmVhZHkg
ZHVyaW5nIHRpbWVyIGluaXRpYWxpemF0aW9uIHBoYXNlLCBpdAo+Pj4gd2lsbCBjYXVzZSB0aW1l
ciBpbml0aWFsaXphdGlvbiBmYWlsZWQuCj4+Pgo+Pj4gVG8gc3VwcG9ydCB0aG9zZSBwbGF0Zm9y
bXMgd2l0aCB1cHBlciBzY2VuYXJpbywgaW50cm9kdWNpbmcgYSBuZXcgZmxhZwo+Pj4gVElNRVJf
T0ZfQ0xPQ0tfRlJFUVVFTkNZIHdoaWNoIGlzIG11dHVhbGx5IGV4Y2x1c2l2ZSB3aXRoCj4+PiBU
SU1FUl9PRl9DTE9DSyBmbGFnIHRvIHN1cHBvcnQgZ2V0dGluZyB0aW1lciBjbG9jayBmcmVxdWVu
Y3kgZnJvbSBEVCdzCj4+PiB0aW1lciBub2RlLCB0aGUgcHJvcGVydHkgbmFtZSBzaG91bGQgYmUg
ImNsb2NrLWZyZXF1ZW5jeSIsIHRoZW4gb2ZfY2xrCj4+PiBvcGVyYXRpb25zIGNhbiBiZSBza2lw
cGVkLgo+Pj4KPj4+IFVzZXIgbmVlZHMgdG8gc2VsZWN0IGVpdGhlciBUSU1FUl9PRl9DTE9DS19G
UkVRVUVOQ1kgb3IKPj4gVElNRVJfT0ZfQ0xPQ0sKPj4+IGZsYWcgaWYgd2FudCB0byB1c2UgdGlt
ZXItb2YgZHJpdmVyIHRvIGluaXRpYWxpemUgdGhlIGNsb2NrIHJhdGUuCj4+Pgo+Pj4gU2lnbmVk
LW9mZi1ieTogQW5zb24gSHVhbmcgPEFuc29uLkh1YW5nQG54cC5jb20+Cj4+PiAtLS0KPj4+IENo
YW5nZXMgc2luY2UgVjM6Cj4+PiAJLSB1c2UgaGFyZGNvZGVkICJjbG9jay1mcmVxdWVuY3kiIGlu
c3RlYWQgb2YgYWRkaW5nIG5ldyB2YXJpYWJsZQo+PiBwcm9wX25hbWU7Cj4+PiAJLSBhZGQgcHJl
LWNvbmRpdGlvbiBjaGVjayBmb3IgVElNRVJfT0ZfQ0xPQ0sgYW5kCj4+IFRJTUVSX09GX0NMT0NL
X0ZSRVFVRU5DWSwgdGhleSBNVVNUIGJlIGV4Y2x1c2l2ZS4KPj4+IC0tLQo+Pj4gIGRyaXZlcnMv
Y2xvY2tzb3VyY2UvdGltZXItb2YuYyB8IDI5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Cj4+PiBkcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLW9mLmggfCAgNyArKysrLS0tCj4+PiAgMiBm
aWxlcyBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLW9mLmMKPj4+IGIvZHJpdmVycy9j
bG9ja3NvdXJjZS90aW1lci1vZi5jIGluZGV4IDgwNTQyMjguLjg1OGY2ODQgMTAwNjQ0Cj4+PiAt
LS0gYS9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLW9mLmMKPj4+ICsrKyBiL2RyaXZlcnMvY2xv
Y2tzb3VyY2UvdGltZXItb2YuYwo+Pj4gQEAgLTE2MSwxMSArMTYxLDMwIEBAIHN0YXRpYyBfX2lu
aXQgaW50IHRpbWVyX29mX2Jhc2VfaW5pdChzdHJ1Y3QKPj4gZGV2aWNlX25vZGUgKm5wLAo+Pj4g
IAlyZXR1cm4gMDsKPj4+ICB9Cj4+Pgo+Pj4gK3N0YXRpYyBfX2luaXQgaW50IHRpbWVyX29mX2Ns
a19mcmVxdWVuY3lfaW5pdChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAo+Pj4gKwkJCQkJICAgICAg
c3RydWN0IG9mX3RpbWVyX2NsayAqb2ZfY2xrKSB7Cj4+PiArCWludCByZXQ7Cj4+PiArCXUzMiBy
YXRlOwo+Pj4gKwo+Pj4gKwlyZXQgPSBvZl9wcm9wZXJ0eV9yZWFkX3UzMihucCwgImNsb2NrLWZy
ZXF1ZW5jeSIsICZyYXRlKTsKPj4+ICsJaWYgKCFyZXQpIHsKPj4+ICsJCW9mX2Nsay0+cmF0ZSA9
IHJhdGU7Cj4+PiArCQlvZl9jbGstPnBlcmlvZCA9IERJVl9ST1VORF9VUChyYXRlLCBIWik7Cj4+
PiArCX0KPj4+ICsKPj4+ICsJcmV0dXJuIHJldDsKPj4+ICt9Cj4+PiArCj4+PiAgaW50IF9faW5p
dCB0aW1lcl9vZl9pbml0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsIHN0cnVjdCB0aW1lcl9vZiAq
dG8pCj4+PiB7Cj4+PiArCXVuc2lnbmVkIGxvbmcgY2xvY2tfZmxhZ3MgPSBUSU1FUl9PRl9DTE9D
SyB8Cj4+PiArVElNRVJfT0ZfQ0xPQ0tfRlJFUVVFTkNZOwo+Pj4gIAlpbnQgcmV0ID0gLUVJTlZB
TDsKPj4+ICAJaW50IGZsYWdzID0gMDsKPj4+Cj4+PiArCWlmICgodG8tPmZsYWdzICYgY2xvY2tf
ZmxhZ3MpID09IGNsb2NrX2ZsYWdzKQo+Pj4gKwkJcmV0dXJuIHJldDsKPj4+ICsKPj4+ICAJaWYg
KHRvLT5mbGFncyAmIFRJTUVSX09GX0JBU0UpIHsKPj4+ICAJCXJldCA9IHRpbWVyX29mX2Jhc2Vf
aW5pdChucCwgJnRvLT5vZl9iYXNlKTsKPj4+ICAJCWlmIChyZXQpCj4+PiBAQCAtMTgwLDYgKzE5
OSwxMyBAQCBpbnQgX19pbml0IHRpbWVyX29mX2luaXQoc3RydWN0IGRldmljZV9ub2RlICpucCwK
Pj4gc3RydWN0IHRpbWVyX29mICp0bykKPj4+ICAJCWZsYWdzIHw9IFRJTUVSX09GX0NMT0NLOwo+
Pj4gIAl9Cj4+Pgo+Pj4gKwlpZiAodG8tPmZsYWdzICYgVElNRVJfT0ZfQ0xPQ0tfRlJFUVVFTkNZ
KSB7Cj4+PiArCQlyZXQgPSB0aW1lcl9vZl9jbGtfZnJlcXVlbmN5X2luaXQobnAsICZ0by0+b2Zf
Y2xrKTsKPj4+ICsJCWlmIChyZXQpCj4+PiArCQkJZ290byBvdXRfZmFpbDsKPj4+ICsJCWZsYWdz
IHw9IFRJTUVSX09GX0NMT0NLX0ZSRVFVRU5DWTsKPj4+ICsJfQo+Pj4gKwo+Pj4gIAlpZiAodG8t
PmZsYWdzICYgVElNRVJfT0ZfSVJRKSB7Cj4+PiAgCQlyZXQgPSB0aW1lcl9vZl9pcnFfaW5pdChu
cCwgJnRvLT5vZl9pcnEpOwo+Pj4gIAkJaWYgKHJldCkKPj4+IEBAIC0yMDEsNiArMjI3LDkgQEAg
aW50IF9faW5pdCB0aW1lcl9vZl9pbml0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCj4+IHN0cnVj
dCB0aW1lcl9vZiAqdG8pCj4+PiAgCWlmIChmbGFncyAmIFRJTUVSX09GX0NMT0NLKQo+Pj4gIAkJ
dGltZXJfb2ZfY2xrX2V4aXQoJnRvLT5vZl9jbGspOwo+Pj4KPj4+ICsJaWYgKGZsYWdzICYgVElN
RVJfT0ZfQ0xPQ0tfRlJFUVVFTkNZKQo+Pj4gKwkJdG8tPm9mX2Nsay5yYXRlID0gMDsKPj4+ICsK
Pj4+ICAJaWYgKGZsYWdzICYgVElNRVJfT0ZfQkFTRSkKPj4+ICAJCXRpbWVyX29mX2Jhc2VfZXhp
dCgmdG8tPm9mX2Jhc2UpOwo+Pj4gIAlyZXR1cm4gcmV0Owo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvY2xvY2tzb3VyY2UvdGltZXItb2YuaAo+Pj4gYi9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVy
LW9mLmggaW5kZXggYTU0NzhmMy4uYTA4ZTEwOCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvY2xv
Y2tzb3VyY2UvdGltZXItb2YuaAo+Pj4gKysrIGIvZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1v
Zi5oCj4+PiBAQCAtNCw5ICs0LDEwIEBACj4+Pgo+Pj4gICNpbmNsdWRlIDxsaW51eC9jbG9ja2No
aXBzLmg+Cj4+Pgo+Pj4gLSNkZWZpbmUgVElNRVJfT0ZfQkFTRQkweDEKPj4+IC0jZGVmaW5lIFRJ
TUVSX09GX0NMT0NLCTB4Mgo+Pj4gLSNkZWZpbmUgVElNRVJfT0ZfSVJRCTB4NAo+Pj4gKyNkZWZp
bmUgVElNRVJfT0ZfQkFTRQkJCTB4MQo+Pj4gKyNkZWZpbmUgVElNRVJfT0ZfQ0xPQ0sJCQkweDIK
Pj4+ICsjZGVmaW5lIFRJTUVSX09GX0lSUQkJCTB4NAo+Pj4gKyNkZWZpbmUgVElNRVJfT0ZfQ0xP
Q0tfRlJFUVVFTkNZCTB4OAo+Pj4KPj4+ICBzdHJ1Y3Qgb2ZfdGltZXJfaXJxIHsKPj4+ICAJaW50
IGlycTsKCgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVu
IHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3
dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5j
b20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8t
YmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
