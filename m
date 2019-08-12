Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BA789C2A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 13:00:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cv8QGVxNkpn6WK6qY8bQ3AxAiSA9zDYek31aW52Nhzk=; b=OOpB3b2Ly/HDt7
	SsfumupSUIoZny2rrkUEAh50cAZh7C2BpVqTxwkBijMiyVOjKsO1OYw+dLDP/ad25sTlkQNP8jLlT
	2CZCRrnmBqtp0TXjhu0uz+N91SNWRMULPg0f4wd/3+gTRzugyciix9ojtKo50Rk720hLuHCYLoGKO
	tf4j1AFu/NbaIfmtmAt1RvFTi2Y1sS+1RHTvNeH1Pl/uiHZ6giax85PG/CqY1Y6rtr/H2LelntN+T
	seeb1wi8WV6He2kT4W6O1xMupb/wmmyWJREdo6f5wt8ebSheh7/T3tTBKmL2nLPYR+tQ4FjuDjgtr
	9XklsmYtl5taZ0JdDEhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx83y-0004in-Jq; Mon, 12 Aug 2019 11:00:30 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx837-0004bc-Mv
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:59:39 +0000
Received: by mail-wm1-x343.google.com with SMTP id 10so11733940wmp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 03:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=L3QDldUNKawRROwPoifWuojCk4A/opVfl24XOrd2D7A=;
 b=obSlPtmAMxsNOfVblv1rcLth1tU1YkoOq/0WsTxm0q0uFxpqHtR77NtUQ+rl03ecjl
 WkoobEX1p04hFOFoObYL3iULEGiERZ6FlpX5EujGVaDmLku+GdXft+03MhQgxDVgrr14
 sCL/ithC+ZDs+9yBSpOSxCUlc/2Pn2ewjwy4ZPyjZ0wthxAZ8ico9frp/ttcYKD6VyId
 iKx3kyMmKVGEJDBtt1GU9ByQdWMJXoQhvRZiRTwklE+jNOb+4mZl42tPsQTP+hdmHnnD
 0NMd0XuWjT+YitJyNjUdq+o3a5ihmsG5e3VfFBSYDn4QlbTghhFoD4eEMF1Y+HRl16cl
 GGUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=L3QDldUNKawRROwPoifWuojCk4A/opVfl24XOrd2D7A=;
 b=a8SCp3hJUUnMe+nlO6hSXZ7q8a8vnnHxwOrkEmvFe7lnrOBOfIplkCF4T07pOkKBZW
 Asc44fmHXDNmcG2KqBBWNZs2ufR/P8+mu+V4KemRMnUsVjcSL+g5zfcwFyvy1RKBjRAb
 TMSDmg5m+6G/H0IRnU4b+AiJZnNyqnVuMy5BqHuemRjWKkiwShAfShNWhp5Y0wNFpFGN
 7t32qypkdJI4Z42m9CPIM2MHTMKMK9nLQvtmXHJU6Fi6SlnhEWwVKV5489cHupqu3UAU
 sEgB/Oq+6YluohGv20Cvm+qfRohufz8Jovn1clCXD4Zx6SWSt/NssbY/Kc4MT352+Erw
 Uzig==
X-Gm-Message-State: APjAAAUQMo6aaf1Vui05HeYJ3leJCxEi/ONNuqRpPWHnfx9Lmj48STCw
 PS0pavBZtFA7bX+KfUyk668h6A==
X-Google-Smtp-Source: APXvYqywqTqWPVgMZmVrzbCZt88p0+kSGz4htkEKRS3xHptkYpO7UA20whgKvePyENz44HvhOZ+enQ==
X-Received: by 2002:a1c:20c8:: with SMTP id g191mr26698891wmg.55.1565607575988; 
 Mon, 12 Aug 2019 03:59:35 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id g26sm1600973wmh.32.2019.08.12.03.59.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 03:59:35 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:59:33 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v4 06/10] mfd: Add support for the MediaTek MT6358 PMIC
Message-ID: <20190812105933.GO26727@dell>
References: <1564982518-32163-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1564982518-32163-7-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564982518-32163-7-git-send-email-hsin-hsiung.wang@mediatek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_035937_962294_6BE1200A 
X-CRM114-Status: GOOD (  27.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Allison Randal <allison@lohutok.net>, linux-rtc@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAwNSBBdWcgMjAxOSwgSHNpbi1Ic2l1bmcgV2FuZyB3cm90ZToKCj4gVGhpcyBhZGRz
IHN1cHBvcnQgZm9yIHRoZSBNZWRpYVRlayBNVDYzNTggUE1JQy4gVGhpcyBpcyBhCj4gbXVsdGlm
dW5jdGlvbiBkZXZpY2Ugd2l0aCB0aGUgZm9sbG93aW5nIHN1YiBtb2R1bGVzOgo+IAo+IC0gUmVn
dWxhdG9yCj4gLSBSVEMKPiAtIENvZGVjCj4gLSBJbnRlcnJ1cHQKPiAKPiBJdCBpcyBpbnRlcmZh
Y2VkIHRvIHRoZSBob3N0IGNvbnRyb2xsZXIgdXNpbmcgU1BJIGludGVyZmFjZQo+IGJ5IGEgcHJv
cHJpZXRhcnkgaGFyZHdhcmUgY2FsbGVkIFBNSUMgd3JhcHBlciBvciBwd3JhcC4KPiBNVDYzNTgg
TUZEIGlzIGEgY2hpbGQgZGV2aWNlIG9mIHRoZSBwd3JhcC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBI
c2luLUhzaXVuZyBXYW5nIDxoc2luLWhzaXVuZy53YW5nQG1lZGlhdGVrLmNvbT4KPiAtLS0KPiAg
ZHJpdmVycy9tZmQvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgICAzICstCj4gIGRyaXZlcnMv
bWZkL210NjM1OC1pcnEuYyAgICAgICAgICAgICB8IDIyOSArKysrKysrKysrKysrKysrKysrKysr
KysrKysrCj4gIGRyaXZlcnMvbWZkL210NjM5Ny1jb3JlLmMgICAgICAgICAgICB8ICA1MiArKysr
KystCj4gIGluY2x1ZGUvbGludXgvbWZkL210NjM1OC9jb3JlLmggICAgICB8IDE1OCArKysrKysr
KysrKysrKysrKysrKwo+ICBpbmNsdWRlL2xpbnV4L21mZC9tdDYzNTgvcmVnaXN0ZXJzLmggfCAy
ODIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgaW5jbHVkZS9saW51eC9t
ZmQvbXQ2Mzk3L2NvcmUuaCAgICAgIHwgICAzICsKPiAgNiBmaWxlcyBjaGFuZ2VkLCA3MjUgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMv
bWZkL210NjM1OC1pcnEuYwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC9tZmQv
bXQ2MzU4L2NvcmUuaAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC9tZmQvbXQ2
MzU4L3JlZ2lzdGVycy5oCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL01ha2VmaWxlIGIv
ZHJpdmVycy9tZmQvTWFrZWZpbGUKPiBpbmRleCA5YTk2MzI1Li4zNmQwODhiIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbWZkL01ha2VmaWxlCj4gKysrIGIvZHJpdmVycy9tZmQvTWFrZWZpbGUKPiBA
QCAtMjQxLDcgKzI0MSw4IEBAIG9iai0kKENPTkZJR19JTlRFTF9TT0NfUE1JQykJKz0gaW50ZWwt
c29jLXBtaWMubwo+ICBvYmotJChDT05GSUdfSU5URUxfU09DX1BNSUNfQlhUV0MpCSs9IGludGVs
X3NvY19wbWljX2J4dHdjLm8KPiAgb2JqLSQoQ09ORklHX0lOVEVMX1NPQ19QTUlDX0NIVFdDKQkr
PSBpbnRlbF9zb2NfcG1pY19jaHR3Yy5vCj4gIG9iai0kKENPTkZJR19JTlRFTF9TT0NfUE1JQ19D
SFREQ19USSkJKz0gaW50ZWxfc29jX3BtaWNfY2h0ZGNfdGkubwo+IC1tdDYzOTctb2Jqcwk6PSBt
dDYzOTctY29yZS5vIG10NjM5Ny1pcnEubwo+ICsKPiArbXQ2Mzk3LW9ianMJCQk6PSBtdDYzOTct
Y29yZS5vIG10NjM5Ny1pcnEubyBtdDYzNTgtaXJxLm8KPiAgb2JqLSQoQ09ORklHX01GRF9NVDYz
OTcpCSs9IG10NjM5Ny5vCj4gIAo+ICBvYmotJChDT05GSUdfTUZEX0FMVEVSQV9BMTBTUikJKz0g
YWx0ZXJhLWExMHNyLm8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZmQvbXQ2MzU4LWlycS5jIGIv
ZHJpdmVycy9tZmQvbXQ2MzU4LWlycS5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAw
MDAwMDAwLi4yZjU1MDc5Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvbWZkL210NjM1
OC1pcnEuYwo+IEBAIC0wLDAgKzEsMjI5IEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBHUEwtMi4wCj4gKy8vCj4gKy8vIENvcHlyaWdodCAoYykgMjAxOSBNZWRpYVRlayBJbmMuCj4g
Kwo+ICsjaW5jbHVkZSA8bGludXgvaW50ZXJydXB0Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9tZmQv
bXQ2MzU4L2NvcmUuaD4KPiArI2luY2x1ZGUgPGxpbnV4L21mZC9tdDYzNTgvcmVnaXN0ZXJzLmg+
Cj4gKyNpbmNsdWRlIDxsaW51eC9tZmQvbXQ2Mzk3L2NvcmUuaD4KPiArI2luY2x1ZGUgPGxpbnV4
L21vZHVsZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvb2YuaD4KPiArI2luY2x1ZGUgPGxpbnV4L29m
X2RldmljZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvb2ZfaXJxLmg+Cj4gKyNpbmNsdWRlIDxsaW51
eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgoKWy4uLl0K
Cj4gK3N0YXRpYyB2b2lkIHBtaWNfaXJxX3N5bmNfdW5sb2NrKHN0cnVjdCBpcnFfZGF0YSAqZGF0
YSkKPiArewo+ICsJdW5zaWduZWQgaW50IGksIHRvcF9ncCwgZW5fcmVnLCBpbnRfcmVncywgc2hp
ZnQ7Cj4gKwlzdHJ1Y3QgbXQ2Mzk3X2NoaXAgKmNoaXAgPSBpcnFfZGF0YV9nZXRfaXJxX2NoaXBf
ZGF0YShkYXRhKTsKPiArCXN0cnVjdCBwbWljX2lycV9kYXRhICppcnFkID0gY2hpcC0+aXJxX2Rh
dGE7Cj4gKwo+ICsJZm9yIChpID0gMDsgaSA8IGlycWQtPm51bV9wbWljX2lycXM7IGkrKykgewo+
ICsJCWlmIChpcnFkLT5lbmFibGVfaHdpcnFbaV0gPT0gaXJxZC0+Y2FjaGVfaHdpcnFbaV0pCj4g
KwkJCWNvbnRpbnVlOwo+ICsKPiArCQl0b3BfZ3AgPSAwOwo+ICsJCXdoaWxlICgodG9wX2dwICsg
MSkgPCBBUlJBWV9TSVpFKG10NjM1OF9pbnRzKSAmJgo+ICsJCSAgICAgICBpID49IG10NjM1OF9p
bnRzW3RvcF9ncCArIDFdLmh3aXJxX2Jhc2UpCj4gKwkJCXRvcF9ncCsrOwoKQSBjb21tZW50IGhl
cmUgd291bGQgbWFrZSB0aGlzIGVhc2llciB0byBmb2xsb3cuCgo+ICsJCWlmICh0b3BfZ3AgPj0g
QVJSQVlfU0laRShtdDYzNThfaW50cykpIHsKPiArCQkJbXV0ZXhfdW5sb2NrKCZjaGlwLT5pcnFs
b2NrKTsKPiArCQkJZGV2X2VycihjaGlwLT5kZXYsCj4gKwkJCQkiRmFpbGVkIHRvIGdldCB0b3Bf
Z3JvdXA6ICVkXG4iLCB0b3BfZ3ApOwo+ICsJCQlyZXR1cm47Cj4gKwkJfQo+ICsKPiArCQlpbnRf
cmVncyA9IChpIC0gbXQ2MzU4X2ludHNbdG9wX2dwXS5od2lycV9iYXNlKSAvCj4gKwkJCSAgICBN
VDYzNThfUkVHX1dJRFRIOwo+ICsJCWVuX3JlZyA9IG10NjM1OF9pbnRzW3RvcF9ncF0uZW5fcmVn
ICsKPiArCQkJbXQ2MzU4X2ludHNbdG9wX2dwXS5lbl9yZWdfc2hpZnQgKiBpbnRfcmVnczsKPiAr
CQlzaGlmdCA9IChpIC0gbXQ2MzU4X2ludHNbdG9wX2dwXS5od2lycV9iYXNlKSAlIE1UNjM1OF9S
RUdfV0lEVEg7Cj4gKwkJcmVnbWFwX3VwZGF0ZV9iaXRzKGNoaXAtPnJlZ21hcCwgZW5fcmVnLCBC
SVQoc2hpZnQpLAo+ICsJCQkJICAgaXJxZC0+ZW5hYmxlX2h3aXJxW2ldIDw8IHNoaWZ0KTsKPiAr
CQlpcnFkLT5jYWNoZV9od2lycVtpXSA9IGlycWQtPmVuYWJsZV9od2lycVtpXTsKPiArCX0KPiAr
CW11dGV4X3VubG9jaygmY2hpcC0+aXJxbG9jayk7Cj4gK30KClsuLi5dCgo+ICtpbnQgbXQ2MzU4
X2lycV9pbml0KHN0cnVjdCBtdDYzOTdfY2hpcCAqY2hpcCkKPiArewo+ICsJaW50IGksIGosIHJl
dDsKPiArCXN0cnVjdCBwbWljX2lycV9kYXRhICppcnFkOwo+ICsKPiArCWlycWQgPSBkZXZtX2t6
YWxsb2MoY2hpcC0+ZGV2LCBzaXplb2Yoc3RydWN0IHBtaWNfaXJxX2RhdGEgKiksCj4gKwkJCSAg
ICBHRlBfS0VSTkVMKTsKPiArCWlmICghaXJxZCkKPiArCQlyZXR1cm4gLUVOT01FTTsKPiArCj4g
KwljaGlwLT5pcnFfZGF0YSA9IGlycWQ7Cj4gKwo+ICsJbXV0ZXhfaW5pdCgmY2hpcC0+aXJxbG9j
ayk7Cj4gKwlpcnFkLT50b3BfaW50X3N0YXR1c19yZWcgPSBNVDYzNThfVE9QX0lOVF9TVEFUVVMw
Owo+ICsJaXJxZC0+bnVtX3BtaWNfaXJxcyA9IE1UNjM1OF9JUlFfTlI7Cj4gKwlpcnFkLT5udW1f
dG9wID0gQVJSQVlfU0laRShtdDYzNThfaW50cyk7Cj4gKwo+ICsJaXJxZC0+ZW5hYmxlX2h3aXJx
ID0gZGV2bV9rY2FsbG9jKGNoaXAtPmRldiwKPiArCQkJCQkgIGlycWQtPm51bV9wbWljX2lycXMs
Cj4gKwkJCQkJICBzaXplb2YoYm9vbCksCj4gKwkJCQkJICBHRlBfS0VSTkVMKTsKPiArCWlmICgh
aXJxZC0+ZW5hYmxlX2h3aXJxKQo+ICsJCXJldHVybiAtRU5PTUVNOwo+ICsKPiArCWlycWQtPmNh
Y2hlX2h3aXJxID0gZGV2bV9rY2FsbG9jKGNoaXAtPmRldiwKPiArCQkJCQkgaXJxZC0+bnVtX3Bt
aWNfaXJxcywKPiArCQkJCQkgc2l6ZW9mKGJvb2wpLAo+ICsJCQkJCSBHRlBfS0VSTkVMKTsKPiAr
CWlmICghaXJxZC0+Y2FjaGVfaHdpcnEpCj4gKwkJcmV0dXJuIC1FTk9NRU07Cj4gKwo+ICsJLyog
RGlzYWJsZSBhbGwgaW50ZXJydXB0IGZvciBpbml0aWFsaXppbmcgKi8KCnMvaW50ZXJydXB0L2lu
dGVycnVwdHMvCgo+ICsJZm9yIChpID0gMDsgaSA8IGlycWQtPm51bV90b3A7IGkrKykgewo+ICsJ
CWZvciAoaiA9IDA7IGogPCBtdDYzNThfaW50c1tpXS5udW1faW50X3JlZ3M7IGorKykKPiArCQkJ
cmVnbWFwX3dyaXRlKGNoaXAtPnJlZ21hcCwKPiArCQkJCSAgICAgbXQ2MzU4X2ludHNbaV0uZW5f
cmVnICsKPiArCQkJCSAgICAgbXQ2MzU4X2ludHNbaV0uZW5fcmVnX3NoaWZ0ICogaiwgMCk7Cj4g
Kwl9Cj4gKwo+ICsJY2hpcC0+aXJxX2RvbWFpbiA9IGlycV9kb21haW5fYWRkX2xpbmVhcihjaGlw
LT5kZXYtPm9mX25vZGUsCj4gKwkJCQkJCSBpcnFkLT5udW1fcG1pY19pcnFzLAo+ICsJCQkJCQkg
Jm10NjM1OF9pcnFfZG9tYWluX29wcywgY2hpcCk7Cj4gKwlpZiAoIWNoaXAtPmlycV9kb21haW4p
IHsKPiArCQlkZXZfZXJyKGNoaXAtPmRldiwgImNvdWxkIG5vdCBjcmVhdGUgaXJxIGRvbWFpblxu
Iik7CgpzL2lycS9JUlEvCgo+ICsJCXJldHVybiAtRU5PREVWOwo+ICsJfQo+ICsKPiArCXJldCA9
IGRldm1fcmVxdWVzdF90aHJlYWRlZF9pcnEoY2hpcC0+ZGV2LCBjaGlwLT5pcnEsIE5VTEwsCj4g
KwkJCQkJbXQ2MzU4X2lycV9oYW5kbGVyLCBJUlFGX09ORVNIT1QsCj4gKwkJCQkJbXQ2MzU4X2ly
cV9jaGlwLm5hbWUsIGNoaXApOwo+ICsJaWYgKHJldCkgewo+ICsJCWRldl9lcnIoY2hpcC0+ZGV2
LCAiZmFpbGVkIHRvIHJlZ2lzdGVyIGlycT0lZDsgZXJyOiAlZFxuIiwKPiArCQkJY2hpcC0+aXJx
LCByZXQpOwo+ICsJCXJldHVybiByZXQ7Cj4gKwl9Cj4gKwo+ICsJZW5hYmxlX2lycV93YWtlKGNo
aXAtPmlycSk7Cj4gKwlyZXR1cm4gcmV0Owo+ICt9CgpbLi4uXQoKPiAgc3RhdGljIGNvbnN0IHN0
cnVjdCBjaGlwX2RhdGEgbXQ2Mzk3X2NvcmUgPSB7Cj4gIAkuY2lkX2FkZHIgPSBNVDYzOTdfQ0lE
LAo+ICAJLmNpZF9zaGlmdCA9IDAsCj4gQEAgLTEzNSw3ICsxNzIsMTEgQEAgc3RhdGljIGludCBt
dDYzOTdfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCWlmIChwbWljLT5p
cnEgPD0gMCkKPiAgCQlyZXR1cm4gcG1pYy0+aXJxOwo+ICAKPiAtCXJldCA9IG10NjM5N19pcnFf
aW5pdChwbWljKTsKPiArCWlmIChwbWljLT5jaGlwX2lkID09IE1UNjM1OF9DSElQX0lEKQo+ICsJ
CXJldCA9IG10NjM1OF9pcnFfaW5pdChwbWljKTsKPiArCWVsc2UKPiArCQlyZXQgPSBtdDYzOTdf
aXJxX2luaXQocG1pYyk7Cj4gKwoKWW91IG1heSB3aXRoIHNvIHRvIGNoZWNrIGZvciBib3RoIGFu
ZCBlcnJvciBvdXQgb24gYW4gdW5zdXBwb3J0ZWQgY2hpcApJRC4KCj4gIAlpZiAocmV0KQo+ICAJ
CXJldHVybiByZXQ7Cj4gIAo+IEBAIC0xNDYsNiArMTg3LDEyIEBAIHN0YXRpYyBpbnQgbXQ2Mzk3
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAkJCQkJICAgMCwgcG1pYy0+
aXJxX2RvbWFpbik7Cj4gIAkJYnJlYWs7Cj4gIAo+ICsJY2FzZSBNVDYzNThfQ0hJUF9JRDoKPiAr
CQlyZXQgPSBkZXZtX21mZF9hZGRfZGV2aWNlcygmcGRldi0+ZGV2LCAtMSwgbXQ2MzU4X2RldnMs
CgpOb3QgLTEuICBQbGVhc2UgdXNlIHRoZSBkZWZpbmVzLgoKPiArCQkJCQkgICBBUlJBWV9TSVpF
KG10NjM1OF9kZXZzKSwgTlVMTCwKPiArCQkJCQkgICAwLCBwbWljLT5pcnFfZG9tYWluKTsKPiAr
CQlicmVhazsKPiArCj4gIAljYXNlIE1UNjM5MV9DSElQX0lEOgo+ICAJY2FzZSBNVDYzOTdfQ0hJ
UF9JRDoKPiAgCQlyZXQgPSBkZXZtX21mZF9hZGRfZGV2aWNlcygmcGRldi0+ZGV2LCAtMSwgbXQ2
Mzk3X2RldnMsCj4gQEAgLTE3MSw2ICsyMTgsOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2Rl
dmljZV9pZCBtdDYzOTdfb2ZfbWF0Y2hbXSA9IHsKPiAgCQkuY29tcGF0aWJsZSA9ICJtZWRpYXRl
ayxtdDYzMjMiLAo+ICAJCS5kYXRhID0gJm10NjMyM19jb3JlLAo+ICAJfSwgewo+ICsJCS5jb21w
YXRpYmxlID0gIm1lZGlhdGVrLG10NjM1OCIsCj4gKwkJLmRhdGEgPSAmbXQ2MzU4X2NvcmUsCj4g
Kwl9LCB7Cj4gIAkJLmNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQ2Mzk3IiwKPiAgCQkuZGF0YSA9
ICZtdDYzOTdfY29yZSwKPiAgCX0sIHsKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9tZmQv
bXQ2MzU4L2NvcmUuaCBiL2luY2x1ZGUvbGludXgvbWZkL210NjM1OC9jb3JlLmgKPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAuLjA1MTA4NjE3Cj4gLS0tIC9kZXYvbnVsbAo+
ICsrKyBiL2luY2x1ZGUvbGludXgvbWZkL210NjM1OC9jb3JlLmgKPiBAQCAtMCwwICsxLDE1OCBA
QAo+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCAqLwo+ICsvKgo+ICsgKiBD
b3B5cmlnaHQgKGMpIDIwMTkgTWVkaWFUZWsgSW5jLgo+ICsgKi8KPiArCj4gKyNpZm5kZWYgX19N
RkRfTVQ2MzU4X0NPUkVfSF9fCj4gKyNkZWZpbmUgX19NRkRfTVQ2MzU4X0NPUkVfSF9fCj4gKwo+
ICsjZGVmaW5lIE1UNjM1OF9SRUdfV0lEVEggMTYKClsuLi5dCgo+ICsjZGVmaW5lIE1UNjM1OF9U
T1BfR0VOKHNwKQlcCj4gK3sJXAo+ICsJLmh3aXJxX2Jhc2UgPSBNVDYzNThfSVJRXyMjc3AjI19C
QVNFLAlcCj4gKwkubnVtX2ludF9yZWdzID0JXAo+ICsJCSgoTVQ2MzU4X0lSUV8jI3NwIyNfQklU
UyAtIDEpIC8gTVQ2MzU4X1JFR19XSURUSCkgKyAxLAlcCj4gKwkubnVtX2ludF9iaXRzID0gTVQ2
MzU4X0lSUV8jI3NwIyNfQklUUywgXAo+ICsJLmVuX3JlZyA9IE1UNjM1OF8jI3NwIyNfVE9QX0lO
VF9DT04wLAkJXAo+ICsJLmVuX3JlZ19zaGlmdCA9IDB4NiwJXAo+ICsJLnN0YV9yZWcgPSBNVDYz
NThfIyNzcCMjX1RPUF9JTlRfU1RBVFVTMCwJCVwKPiArCS5zdGFfcmVnX3NoaWZ0ID0gMHgyLAlc
Cj4gKwkudG9wX29mZnNldCA9IE1UNjM1OF8jI3NwIyNfVE9QLAlcCj4gK30KClBsZWFzZSB0YWIg
b3V0IHRoZSAnXCdzLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMg
VGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFS
TSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
