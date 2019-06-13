Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA86843643
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:09:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7deAGwe3X3Hn2cEJlVDi97nGQNxaYgSR5ONPTHt0XbU=; b=XfY2AgJLip88qB
	YY9JE3id4fq0FIAFhNAicLTdPnZaSwa3pY1EvVCzsHPFbiPI6sZv5ugvk/GKDQkPcgIBZWCoz3uXP
	jJBNkPy58t/Rd3GKZKFL7PrIBAoreV3uvdM7OvBvmBP4Yp7gseRRhQ5x5SW/X/y4nmZdpav/wvNzd
	RHL8D4wQcHvKJzr4C7PkhFS11n312XDREFDb+1orWJVuQ9lWtB4U7Pgq4xt/QlGl+eTVejGbAtjQ3
	BVdCYrKpMDcoqcplQyXsR8W1G7XUztM3FCZ0yrugtM17dnvZDq//zmkPLhKdybnbo2Cz95YzsGHtV
	LqT/dSAyGP7opyda6reg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPTZ-0003W1-GM; Thu, 13 Jun 2019 13:09:09 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPTM-0003VY-QS
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:08:58 +0000
Received: by mail-wm1-x343.google.com with SMTP id c66so10147651wmf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 06:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ilL23+X1miOheYnaAN5erQCIhv+4uPnrS9SFwRKjvVQ=;
 b=NlHWgvdQgbXHYzuQEmA7IPUFQ9AgekquMmB+eJgwYVpmj/ZYtKy80qLxjoHNk7G7md
 qfu7J1oy9PG6kvFub0VoYqG4XhbTi14rXhwkW7E/vWP2+61Q04B9ps82zTxAbvj2Jvzh
 QJtkRiVZoCbTtH+7Q7AcDwmPgw0MHXicxIPGxcow74uimJFHBrmhkhK8IR0U1hFU343V
 iPIbE5nM7+QDljtHZVAGv7guWjMq+AfCJzthxvcexo/BMXQEfMlcpgd5L5ERIu4bt49D
 iVCou1Uf+AuPDEiU9msakoywu1WlQTWSj8yjZAqfXNcmmttzPa0jeOSPtt+NLV6XiMo7
 OL5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=ilL23+X1miOheYnaAN5erQCIhv+4uPnrS9SFwRKjvVQ=;
 b=MZ2Dsi5koKoX2OmaQ6Ew94axYwIRmXEc4I0hybWU+6QTSh15D5sX9dwcwgY+2i968+
 effvR5ArireHmAcQfq3cwnYVUC5lLpBz5FlYCBaybohUvY/1ncTqlMhB9dXSCc4G18A9
 /OTDtbuZPXrRcdkBOUap8ZQ9eLeaWIxwbEv0mRAjoBMqOMqBViCGWoE0O6HJ0OW96aE1
 /6YcQ09foVkplv4HuxVDYekpqoL7O6XGr4rPX2Dh65qIJuQEHHYvSO3ur337KsnEzXM1
 XmJC4nl2QVuwA4QpSNCvYGvB9KZY/vdKIfGoiC4LDsacfbK0d+GEVWNVJE6QNdMpHffp
 VMtw==
X-Gm-Message-State: APjAAAXTeFwCfT/qT0/B6Fu4VhUZw4fcwl5rfAUWbQVUVCp1nb84eQEs
 sm7XxgtB+lzlmdLPZJ+KSNuTnZ/eqCA=
X-Google-Smtp-Source: APXvYqy/RMacgmrQt9bdf0F/LTItZep9O2zCOwHHp3S5e5p50evgRnuJkDcQjbGgOHmRjj3SWay2nA==
X-Received: by 2002:a1c:2004:: with SMTP id g4mr3467778wmg.173.1560431333062; 
 Thu, 13 Jun 2019 06:08:53 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id z14sm5347415wre.96.2019.06.13.06.08.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 06:08:52 -0700 (PDT)
Subject: Re: [PATCH v2] clocksource/arm_arch_timer: extract elf_hwcap use to
 arch-helper
To: Marc Zyngier <marc.zyngier@arm.com>, Andrew Murray <andrew.murray@arm.com>
References: <20190613125102.23879-1-andrew.murray@arm.com>
 <86imt9bps6.wl-marc.zyngier@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <684f92dc-ab5a-c48b-17f5-6cf91f0081b9@linaro.org>
Date: Thu, 13 Jun 2019 15:08:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <86imt9bps6.wl-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_060856_871915_57DB1B69 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTMvMDYvMjAxOSAxNTowMywgTWFyYyBaeW5naWVyIHdyb3RlOgo+ICsgRGFuaWVsCj4gCj4g
T24gVGh1LCAxMyBKdW4gMjAxOSAxMzo1MTowMiArMDEwMCwKPiBBbmRyZXcgTXVycmF5IDxhbmRy
ZXcubXVycmF5QGFybS5jb20+IHdyb3RlOgo+Pgo+PiBEaWZmZXJlbnQgbWVjaGFuaXNtcyBhcmUg
dXNlZCB0byB0ZXN0IGFuZCBzZXQgZWxmX2h3Y2FwcyBiZXR3ZWVuIEFSTQo+PiBhbmQgQVJNNjQs
IHRoaXMgcmVzdWx0cyBpbiB0aGUgdXNlIG9mIGlmZGVmZXJyeSBpbiB0aGlzIGZpbGUgd2hlbgo+
PiBzZXR0aW5nL3Rlc3RpbmcgZm9yIHRoZSBFVlRTVFJNIGh3Y2FwLgo+Pgo+PiBMZXQncyBpbXBy
b3ZlIHJlYWRhYmlsaXR5IGJ5IGV4dHJhY3RpbmcgdGhpcyB0byBhbiBhcmNoIGhlbHBlci4KPj4K
Pj4gU2lnbmVkLW9mZi1ieTogQW5kcmV3IE11cnJheSA8YW5kcmV3Lm11cnJheUBhcm0uY29tPgo+
PiBBY2tlZC1ieTogTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KPj4gQWNrZWQt
Ynk6IFdpbGwgRGVhY29uIDx3aWxsLmRlYWNvbkBhcm0uY29tPgo+IAo+IEFja2VkLWJ5OiBNYXJj
IFp5bmdpZXIgPG1hcmMuenluZ2llckBhcm0uY29tPgo+IAo+IERhbmllbCwgY2FuIHlvdSBwbGVh
c2UgdGFrZSB0aGlzIHRob3VnaCB0aGUgY2xvY2tzb3VyY2UgdHJlZT8KCkFwcGxpZWQsIHRoYW5r
cwoKICAtLSBEYW5pZWwKCj4+IC0tLQo+PiAgYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaF90aW1l
ci5oICAgIHwgMTAgKysrKysrKysrKwo+PiAgYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9hcmNoX3Rp
bWVyLmggIHwgMTMgKysrKysrKysrKysrKwo+PiAgZHJpdmVycy9jbG9ja3NvdXJjZS9hcm1fYXJj
aF90aW1lci5jIHwgMTUgKystLS0tLS0tLS0tLS0tCj4+ICAzIGZpbGVzIGNoYW5nZWQsIDI1IGlu
c2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0v
aW5jbHVkZS9hc20vYXJjaF90aW1lci5oIGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaF90aW1l
ci5oCj4+IGluZGV4IDRiNjZlY2Q2YmU5OS4uYWU1MzNjYWVjMWU5IDEwMDY0NAo+PiAtLS0gYS9h
cmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoX3RpbWVyLmgKPj4gKysrIGIvYXJjaC9hcm0vaW5jbHVk
ZS9hc20vYXJjaF90aW1lci5oCj4+IEBAIC00LDYgKzQsNyBAQAo+PiAgCj4+ICAjaW5jbHVkZSA8
YXNtL2JhcnJpZXIuaD4KPj4gICNpbmNsdWRlIDxhc20vZXJybm8uaD4KPj4gKyNpbmNsdWRlIDxh
c20vaHdjYXAuaD4KPj4gICNpbmNsdWRlIDxsaW51eC9jbG9ja3NvdXJjZS5oPgo+PiAgI2luY2x1
ZGUgPGxpbnV4L2luaXQuaD4KPj4gICNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgo+PiBAQCAtMTI0
LDYgKzEyNSwxNSBAQCBzdGF0aWMgaW5saW5lIHZvaWQgYXJjaF90aW1lcl9zZXRfY250a2N0bCh1
MzIgY250a2N0bCkKPj4gIAlpc2IoKTsKPj4gIH0KPj4gIAo+PiArc3RhdGljIGlubGluZSBib29s
IGFyY2hfdGltZXJfc2V0X2V2dHN0cm1fZmVhdHVyZSh2b2lkKQo+PiArewo+PiArCWVsZl9od2Nh
cCB8PSBIV0NBUF9FVlRTVFJNOwo+PiArfQo+PiArCj4+ICtzdGF0aWMgaW5saW5lIGJvb2wgYXJj
aF90aW1lcl9oYXZlX2V2dHN0cm1fZmVhdHVyZSh2b2lkKQo+PiArewo+PiArCXJldHVybiBlbGZf
aHdjYXAgJiBIV0NBUF9FVlRTVFJNOwo+PiArfQo+PiAgI2VuZGlmCj4+ICAKPj4gICNlbmRpZgo+
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9hcmNoX3RpbWVyLmggYi9hcmNo
L2FybTY0L2luY2x1ZGUvYXNtL2FyY2hfdGltZXIuaAo+PiBpbmRleCA1MGIzYWI3ZGVkNGYuLmE4
NDdhM2VlNmNhYiAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9hcmNoX3Rp
bWVyLmgKPj4gKysrIGIvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9hcmNoX3RpbWVyLmgKPj4gQEAg
LTIwLDYgKzIwLDcgQEAKPj4gICNkZWZpbmUgX19BU01fQVJDSF9USU1FUl9ICj4+ICAKPj4gICNp
bmNsdWRlIDxhc20vYmFycmllci5oPgo+PiArI2luY2x1ZGUgPGFzbS9od2NhcC5oPgo+PiAgI2lu
Y2x1ZGUgPGFzbS9zeXNyZWcuaD4KPj4gIAo+PiAgI2luY2x1ZGUgPGxpbnV4L2J1Zy5oPgo+PiBA
QCAtMjQwLDQgKzI0MSwxNiBAQCBzdGF0aWMgaW5saW5lIGludCBhcmNoX3RpbWVyX2FyY2hfaW5p
dCh2b2lkKQo+PiAgCXJldHVybiAwOwo+PiAgfQo+PiAgCj4+ICtzdGF0aWMgaW5saW5lIHZvaWQg
YXJjaF90aW1lcl9zZXRfZXZ0c3RybV9mZWF0dXJlKHZvaWQpCj4+ICt7Cj4+ICsJY3B1X3NldF9u
YW1lZF9mZWF0dXJlKEVWVFNUUk0pOwo+PiArI2lmZGVmIENPTkZJR19DT01QQVQKPj4gKwljb21w
YXRfZWxmX2h3Y2FwIHw9IENPTVBBVF9IV0NBUF9FVlRTVFJNOwo+PiArI2VuZGlmCj4+ICt9Cj4+
ICsKPj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBhcmNoX3RpbWVyX2hhdmVfZXZ0c3RybV9mZWF0dXJl
KHZvaWQpCj4+ICt7Cj4+ICsJcmV0dXJuIGNwdV9oYXZlX25hbWVkX2ZlYXR1cmUoRVZUU1RSTSk7
Cj4+ICt9Cj4+ICAjZW5kaWYKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xvY2tzb3VyY2UvYXJt
X2FyY2hfdGltZXIuYyBiL2RyaXZlcnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hfdGltZXIuYwo+PiBp
bmRleCBiMmE5NTFhNzk4ZTIuLjM1ODNhOTJhZDk2MCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9j
bG9ja3NvdXJjZS9hcm1fYXJjaF90aW1lci5jCj4+ICsrKyBiL2RyaXZlcnMvY2xvY2tzb3VyY2Uv
YXJtX2FyY2hfdGltZXIuYwo+PiBAQCAtODA0LDE0ICs4MDQsNyBAQCBzdGF0aWMgdm9pZCBhcmNo
X3RpbWVyX2V2dHN0cm1fZW5hYmxlKGludCBkaXZpZGVyKQo+PiAgCWNudGtjdGwgfD0gKGRpdmlk
ZXIgPDwgQVJDSF9USU1FUl9FVlRfVFJJR0dFUl9TSElGVCkKPj4gIAkJCXwgQVJDSF9USU1FUl9W
SVJUX0VWVF9FTjsKPj4gIAlhcmNoX3RpbWVyX3NldF9jbnRrY3RsKGNudGtjdGwpOwo+PiAtI2lm
ZGVmIENPTkZJR19BUk02NAo+PiAtCWNwdV9zZXRfbmFtZWRfZmVhdHVyZShFVlRTVFJNKTsKPj4g
LSNlbHNlCj4+IC0JZWxmX2h3Y2FwIHw9IEhXQ0FQX0VWVFNUUk07Cj4+IC0jZW5kaWYKPj4gLSNp
ZmRlZiBDT05GSUdfQ09NUEFUCj4+IC0JY29tcGF0X2VsZl9od2NhcCB8PSBDT01QQVRfSFdDQVBf
RVZUU1RSTTsKPj4gLSNlbmRpZgo+PiArCWFyY2hfdGltZXJfc2V0X2V2dHN0cm1fZmVhdHVyZSgp
Owo+PiAgCWNwdW1hc2tfc2V0X2NwdShzbXBfcHJvY2Vzc29yX2lkKCksICZldnRzdHJtX2F2YWls
YWJsZSk7Cj4+ICB9Cj4+ICAKPj4gQEAgLTEwNDAsMTEgKzEwMzMsNyBAQCBzdGF0aWMgaW50IGFy
Y2hfdGltZXJfY3B1X3BtX25vdGlmeShzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKnNlbGYsCj4+ICAJ
fSBlbHNlIGlmIChhY3Rpb24gPT0gQ1BVX1BNX0VOVEVSX0ZBSUxFRCB8fCBhY3Rpb24gPT0gQ1BV
X1BNX0VYSVQpIHsKPj4gIAkJYXJjaF90aW1lcl9zZXRfY250a2N0bChfX3RoaXNfY3B1X3JlYWQo
c2F2ZWRfY250a2N0bCkpOwo+PiAgCj4+IC0jaWZkZWYgQ09ORklHX0FSTTY0Cj4+IC0JCWlmIChj
cHVfaGF2ZV9uYW1lZF9mZWF0dXJlKEVWVFNUUk0pKQo+PiAtI2Vsc2UKPj4gLQkJaWYgKGVsZl9o
d2NhcCAmIEhXQ0FQX0VWVFNUUk0pCj4+IC0jZW5kaWYKPj4gKwkJaWYgKGFyY2hfdGltZXJfaGF2
ZV9ldnRzdHJtX2ZlYXR1cmUoKSkKPj4gIAkJCWNwdW1hc2tfc2V0X2NwdShzbXBfcHJvY2Vzc29y
X2lkKCksICZldnRzdHJtX2F2YWlsYWJsZSk7Cj4+ICAJfQo+PiAgCXJldHVybiBOT1RJRllfT0s7
Cj4+IC0tIAo+PiAyLjIxLjAKPj4KPiAKCgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBM
aW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBM
aW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8
CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cu
bGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
