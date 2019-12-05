Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9678311481C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 21:29:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vVEhwDnIOL/iT0LjiJdAd45Gz6bEO+VEz8wjLe2enWw=; b=e8DqVHskuM57fQ
	tMn72ioNMsI6J3RflFX6iY47D30kwcAeM6t0X1h+VuPXAPz5/+rqswbv9YxUW6hMK74gXDAoawrl3
	Rh2dD2geFRICjzipXl9HZNdGt7KmDF64YKLkkpqd6i1m5H6zHSfJKV98G0ynvbFL2nXRSw8yyVmeL
	19FTna3JUHpe6OV5Sqe65NNR3uQWv40hFBE9araKhpLxJLYSAe+ZteEo2u7Hj3zoVfcVe7g4STnQ3
	QSkRle/wTGYqIBWT9adORxkCFBEhYRmWXgjOHZNQrsIh7Na/VyY3R4jzhKxG33hA3B9IjWXr275Kg
	ji4tlmD66seFAIpIvQKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icxkx-0001zo-MJ; Thu, 05 Dec 2019 20:29:47 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icxkp-0001zT-Il
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 20:29:41 +0000
Received: by mail-wr1-x441.google.com with SMTP id q10so5173664wrm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 12:29:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=L3FLVs4CwZoSTxR74bZi4hZAWLW+7iwBIy8YH9Zfph8=;
 b=VOYNN5/vMtmDpTsgzfbZFgdqchMPRO4z+8059Bhmv0y3mMsBZXQT3opcBAyqnjjwBK
 u7t112oP5hMhApZywlBSiidzFdrYZyCnEHil6TVTLusC6dkxR5APXzmv0SInElCu8Mev
 o1gtNIys6b8tSvvXsztKAIcm6RIr/hL1Al3QUhxfc2Mjmas3zxLy3dearvsbKKFvPgbc
 YblIiNbC2EDVvW0K6H1qClxXLZBR/CYIIcvS/ZtunyUjACxEE6GVJTn01S9HlraCtoG4
 azE3QX29WYjOLkPvZEzIWmgtVouTfhb9UKmCj4BEflqiMelGp94fcp13WJu6VuFFSz73
 pFCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=L3FLVs4CwZoSTxR74bZi4hZAWLW+7iwBIy8YH9Zfph8=;
 b=a6EplYtm784P7yMzZPm6mUUQ2FPh0J1S9z3r9pTsZivJjFy7xWfsXd/6y1woZw88KQ
 kfsHAv9ra4Jur7J/pS6BfBYnmfgKHl0cnnqgSZt33zuG22ePfMixfZ6YFuHU9piPwPCU
 ued+V4g/yA7HfeB8+Z09s5URwDq9ouz4PxMkq3mq3E/1HuEur8WVs46LnFhfWnmuGFBg
 ng8/bKQyCeY4wklNT5eh2Fc8+7Z7X6F5XM20Y+uip0siP42ViQXxOL+258rjMbCnh6I6
 EaldxoTKHpx4Kzqukj7zQp5KU7Su2ysN5ZTO3rU7fdWzgLiFdyexju0XPjhf4M9CiGWu
 +Dcw==
X-Gm-Message-State: APjAAAUvILhSn2gq9J2hh3wXS5+ItmDi15CSOCK7gduk+vBdbEZav/uG
 UZ/sTf606aq/oqI6QoBh5Fx7fQ==
X-Google-Smtp-Source: APXvYqyIQacFXxJ2ZqBPuDAo1u0e41lPF0jchJlbMo3CG3tJIAWfVOaHgHkF3abCnYK/Ue5IktLlvA==
X-Received: by 2002:adf:f70b:: with SMTP id r11mr12844855wrp.388.1575577774944; 
 Thu, 05 Dec 2019 12:29:34 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:24c3:ebb3:9dd5:81c6?
 ([2a01:e34:ed2f:f020:24c3:ebb3:9dd5:81c6])
 by smtp.googlemail.com with ESMTPSA id b185sm1149964wme.36.2019.12.05.12.29.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Dec 2019 12:29:34 -0800 (PST)
Subject: Re: [PATCH] arm/twd: avoid waking deeply sleeping CPUs for rate
 change notifier
To: Lucas Stach <l.stach@pengutronix.de>, Russell King
 <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 John Stultz <john.stultz@linaro.org>
References: <20191202164506.28845-1-l.stach@pengutronix.de>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <8c033c2f-41e4-9e22-8c5e-1d41bdaf6b83@linaro.org>
Date: Thu, 5 Dec 2019 21:29:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191202164506.28845-1-l.stach@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_122939_749333_CCE1C471 
X-CRM114-Status: GOOD (  25.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDIvMTIvMjAxOSAxNzo0NSwgTHVjYXMgU3RhY2ggd3JvdGU6Cj4gVGhlIGN1cnJlbnQgY2xv
Y2sgbm90aWZpZXIgc2VuZHMgYW4gSVBJIHRvIGFsbCBDUFVzLCBldmVuIGlmIHRoZXkgYXJlIGlu
Cj4gZGVlcCBzbGVlcCBzdGF0ZSB3aXRoIHRoZSBsb2NhbCB0aW1lciBkaXNhYmxlZCBhbmQgc3dp
dGNoZWQgdG8gdGljawo+IGJyb2FkY2FzdC4gVGhpcyBuZWVkbGVzc2x5IGN1dHMgdGhlIENQVSBz
bGVlcCB0aW1lcywgYXMgbm90aGluZyBpcyBnYWluZWQKPiBmcm9tIHVwZGF0aW5nIGEgZGlzYWJs
ZWQgVFdEcyByYXRlLgo+IAo+IEtlZXAgdHJhY2sgb2YgdGhlIGVuYWJsZWQgVFdEcyBhbmQgb25s
eSBzZW5kIGFuIElQSSB0byB0aG9zZSBDUFVzIHdpdGggYW4KPiBhY3RpdmUgbG9jYWwgdGltZXIu
IEFzIGRpc2FibGVkIFRXRHMgbWF5IG5vdyBtaXNzIGEgQ1BVIGZyZXF1ZW5jeSB1cGRhdGUKPiB3
ZSBuZWVkIHRvIG1ha2Ugc3VyZSB0byByZWZyZXNoIHRoZSByYXRlIG9uIHJlLWVuYWJsaW5nIG9m
IHRoZSB0aW1lci4KClNvdW5kcyBsaWtlIGEgbmljZSBvcHRpbWl6YXRpb24uIEhvd2V2ZXIgSSdt
IG5vdCBzdXJlIGFib3V0IHRoZSBzb2xpZGl0eQpvZiB0aGUgc29sdXRpb24gcmVnYXJkaW5nIHRo
ZSBleGlzdGluZy4KClRoZSB0d2RfdXBkYXRlX2ZyZXF1ZW5jeSgpIGZ1bmN0aW9uIGlzIGNhbGxl
ZCBpbiBwYXJhbGxlbCBvbiBlYWNoIGNwdQphbmQgdGhleSBhbGwgY2hhbmdlIHRoZSBnbG9iYWwg
dmFyaWFibGUgdHdkX3RpbWVyX3JhdGUuIFRoZSBwcm9wb3NlZApzb2x1dGlvbiByZWxpZXMgb24g
dGhlIGV4aXN0aW5nIG1lY2hhbmlzbSB3aGVyZSB3ZSBjYW4gYmUgY2FsbGluZwpjbG9ja2V2ZW50
c191cGRhdGVfZnJlcSgpIHdoaWxlIHR3ZF91cGRhdGVfZnJlcXVlbmN5KCkgaXMgY2FsbGVkIG9u
CmFub3RoZXIgQ1BVLgoKSW4gYWRkaXRpb24sIHRoZSBmcmVxdWVuY3kgdXBkYXRlIG1heSBiZSBu
ZWVkZWQgaW4gb3RoZXIgZHJpdmVycywgbGlrZQp0aGUgbWlwcy1naWMtdGltZXIuYy4gTWF5IGJl
IGEgZ2VuZXJpYyBzb2x1dGlvbiB3b3VsZCBiZSBhcHByb3ByaWF0ZS4KCj4gU2lnbmVkLW9mZi1i
eTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4gLS0tCj4gIGFyY2gvYXJt
L2tlcm5lbC9zbXBfdHdkLmMgfCAzMSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybS9rZXJuZWwvc21wX3R3ZC5jIGIvYXJjaC9hcm0va2VybmVsL3Nt
cF90d2QuYwo+IGluZGV4IDlhMTRmNzIxYTJiMC4uMzA1NWMyNjIzZDRkIDEwMDY0NAo+IC0tLSBh
L2FyY2gvYXJtL2tlcm5lbC9zbXBfdHdkLmMKPiArKysgYi9hcmNoL2FybS9rZXJuZWwvc21wX3R3
ZC5jCj4gQEAgLTI5LDYgKzI5LDggQEAgc3RhdGljIHN0cnVjdCBjbGsgKnR3ZF9jbGs7Cj4gIHN0
YXRpYyB1bnNpZ25lZCBsb25nIHR3ZF90aW1lcl9yYXRlOwo+ICBzdGF0aWMgREVGSU5FX1BFUl9D
UFUoYm9vbCwgcGVyY3B1X3NldHVwX2NhbGxlZCk7Cj4gIAo+ICtzdGF0aWMgY3B1bWFza192YXJf
dCBhY3RpdmVfdHdkX21hc2s7Cj4gKwo+ICBzdGF0aWMgc3RydWN0IGNsb2NrX2V2ZW50X2Rldmlj
ZSBfX3BlcmNwdSAqdHdkX2V2dDsKPiAgc3RhdGljIHVuc2lnbmVkIGludCB0d2RfZmVhdHVyZXMg
PQo+ICAJCUNMT0NLX0VWVF9GRUFUX1BFUklPRElDIHwgQ0xPQ0tfRVZUX0ZFQVRfT05FU0hPVDsK
PiBAQCAtMzYsMTIgKzM4LDI0IEBAIHN0YXRpYyBpbnQgdHdkX3BwaTsKPiAgCj4gIHN0YXRpYyBp
bnQgdHdkX3NodXRkb3duKHN0cnVjdCBjbG9ja19ldmVudF9kZXZpY2UgKmNsaykKPiAgewo+ICsJ
Y3B1bWFza19jbGVhcl9jcHUoc21wX3Byb2Nlc3Nvcl9pZCgpLCBhY3RpdmVfdHdkX21hc2spOwo+
ICsKPiAgCXdyaXRlbF9yZWxheGVkKDAsIHR3ZF9iYXNlICsgVFdEX1RJTUVSX0NPTlRST0wpOwo+
ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gIHN0YXRpYyBpbnQgdHdkX3NldF9vbmVzaG90KHN0cnVj
dCBjbG9ja19ldmVudF9kZXZpY2UgKmNsaykKPiAgewo+ICsJY3B1bWFza19zZXRfY3B1KHNtcF9w
cm9jZXNzb3JfaWQoKSwgYWN0aXZlX3R3ZF9tYXNrKTsKPiArCj4gKwkvKgo+ICsJICogV2hlbiBn
b2luZyBmcm9tIHNodXRkb3duIHRvIG9uZXNob3Qgd2UgbWlnaHQgaGF2ZSBtaXNzZWQgc29tZQo+
ICsJICogZnJlcXVlbmN5IHVwZGF0ZXMgaWYgdGhlIENQVSB3YXMgc2xlZXBpbmcuIE1ha2Ugc3Vy
ZSB0byB1cGRhdGUKPiArCSAqIHRoZSB0aW1lciBmcmVxdWVuY3kgd2l0aCB0aGUgY3VycmVudCBy
YXRlLgo+ICsJICovCj4gKwlpZiAoY2xvY2tldmVudF9zdGF0ZV9zaHV0ZG93bihjbGspKQo+ICsJ
CWNsb2NrZXZlbnRzX3VwZGF0ZV9mcmVxKGNsaywgdHdkX3RpbWVyX3JhdGUpOwo+ICsKPiAgCS8q
IHBlcmlvZCBzZXQsIGFuZCB0aW1lciBlbmFibGVkIGluICduZXh0X2V2ZW50JyBob29rICovCj4g
IAl3cml0ZWxfcmVsYXhlZChUV0RfVElNRVJfQ09OVFJPTF9JVF9FTkFCTEUgfCBUV0RfVElNRVJf
Q09OVFJPTF9PTkVTSE9ULAo+ICAJCSAgICAgICB0d2RfYmFzZSArIFRXRF9USU1FUl9DT05UUk9M
KTsKPiBAQCAtNTQsNiArNjgsMTYgQEAgc3RhdGljIGludCB0d2Rfc2V0X3BlcmlvZGljKHN0cnVj
dCBjbG9ja19ldmVudF9kZXZpY2UgKmNsaykKPiAgCQkJICAgICBUV0RfVElNRVJfQ09OVFJPTF9J
VF9FTkFCTEUgfAo+ICAJCQkgICAgIFRXRF9USU1FUl9DT05UUk9MX1BFUklPRElDOwo+ICAKPiAr
CWNwdW1hc2tfc2V0X2NwdShzbXBfcHJvY2Vzc29yX2lkKCksIGFjdGl2ZV90d2RfbWFzayk7Cj4g
Kwo+ICsJLyoKPiArCSAqIFdoZW4gZ29pbmcgZnJvbSBzaHV0ZG93biB0byBwZXJpb2RpYyB3ZSBt
aWdodCBoYXZlIG1pc3NlZCBzb21lCj4gKwkgKiBmcmVxdWVuY3kgdXBkYXRlcyBpZiB0aGUgQ1BV
IHdhcyBzbGVlcGluZy4gTWFrZSBzdXJlIHRvIHVwZGF0ZQo+ICsJICogdGhlIHRpbWVyIGZyZXF1
ZW5jeSB3aXRoIHRoZSBjdXJyZW50IHJhdGUuCj4gKwkgKi8KPiArCWlmIChjbG9ja2V2ZW50X3N0
YXRlX3NodXRkb3duKGNsaykpCj4gKwkJY2xvY2tldmVudHNfdXBkYXRlX2ZyZXEoY2xrLCB0d2Rf
dGltZXJfcmF0ZSk7Cj4gKwo+ICAJd3JpdGVsX3JlbGF4ZWQoRElWX1JPVU5EX0NMT1NFU1QodHdk
X3RpbWVyX3JhdGUsIEhaKSwKPiAgCQkgICAgICAgdHdkX2Jhc2UgKyBUV0RfVElNRVJfTE9BRCk7
Cj4gIAl3cml0ZWxfcmVsYXhlZChjdHJsLCB0d2RfYmFzZSArIFRXRF9USU1FUl9DT05UUk9MKTsK
PiBAQCAtMTE5LDggKzE0Myw4IEBAIHN0YXRpYyBpbnQgdHdkX3JhdGVfY2hhbmdlKHN0cnVjdCBu
b3RpZmllcl9ibG9jayAqbmIsCj4gIAkgKiBjaGFuZ2luZyBjcHUuCj4gIAkgKi8KPiAgCWlmIChm
bGFncyA9PSBQT1NUX1JBVEVfQ0hBTkdFKQo+IC0JCW9uX2VhY2hfY3B1KHR3ZF91cGRhdGVfZnJl
cXVlbmN5LAo+IC0JCQkJICAodm9pZCAqKSZjbmQtPm5ld19yYXRlLCAxKTsKPiArCQlvbl9lYWNo
X2NwdV9tYXNrKGFjdGl2ZV90d2RfbWFzaywgdHdkX3VwZGF0ZV9mcmVxdWVuY3ksCj4gKwkJCQkg
KHZvaWQgKikmY25kLT5uZXdfcmF0ZSwgMSk7Cj4gIAo+ICAJcmV0dXJuIE5PVElGWV9PSzsKPiAg
fQo+IEBAIC0yNzMsNiArMjk3LDkgQEAgc3RhdGljIGludCBfX2luaXQgdHdkX2xvY2FsX3RpbWVy
X2NvbW1vbl9yZWdpc3RlcihzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQo+ICB7Cj4gIAlpbnQgZXJy
Owo+ICAKPiArCWlmICghemFsbG9jX2NwdW1hc2tfdmFyKCZhY3RpdmVfdHdkX21hc2ssIEdGUF9L
RVJORUwpKQo+ICsJCXJldHVybiAtRU5PTUVNOwo+ICsKPiAgCXR3ZF9ldnQgPSBhbGxvY19wZXJj
cHUoc3RydWN0IGNsb2NrX2V2ZW50X2RldmljZSk7Cj4gIAlpZiAoIXR3ZF9ldnQpIHsKPiAgCQll
cnIgPSAtRU5PTUVNOwo+IAoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5v
cmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzog
IDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6
Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8u
b3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
