Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB14418A3D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 21:36:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYkdhFTOPmUU7EW3OboLzFWhDEqlCVD7J6bbfTwL8/w=; b=Q6z35OMQR2kQD8
	T6IAWAr7lylHgtN5KbwsDBNiO1U9eXf0bhr8BmyI2La57pU1NuDQl4pNIUViu1Zdp+CBKJCaYfDOg
	hQSI5YETynNtv3Bu61XH0QyV0kGVSs+7NPMeDMYTiRVW7Tzdf3T4eLZlwcsmoaSWPvgdj52RIuiWP
	v+a2xNd73tP6EpNPw8lnH9p+0uERmvEP+IcovJylMGeQZjYB6zrbqs/qPRjC6fjolJB61XZYQNIkS
	BFIBg9cN2E9KgN5WectIDbmwq1gUne4Y6Tr/kXj25Mk11ocSlj//P5AwPK6Hh7sOccbtKhjEQGN4r
	Sa9uovImc+HcWXRa547w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEfQ5-00075u-06; Wed, 18 Mar 2020 20:36:05 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEfPw-00075T-Al
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 20:35:58 +0000
Received: by mail-pg1-x544.google.com with SMTP id m15so14307374pgv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 13:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Iw9AuzL3JiFUgv3pCgPoZimqsHWInrI+wutYJ2aQyaY=;
 b=qag0mCWIQqfaRMoBtcLT75wTit+rIMHWY1AntpYo8Pg8RIrcumtEKnEUKaL1Q1Zg/B
 Cl2dsTNW7hIdy6FGNBQ9C5/S4kiph3Q4zjSyFHqFXUAwZyoJzaPcvYOjZSpoUUxZ4gqv
 h/LVUotg4QTg/4JcEx31oqQE14EBsiuaDUwYKDU+SRnyXbKtK+bveEVMEBPJuVTdBCq9
 zL8eO1ybhNleKXPusICZLyH48QXrp4sWMgGgddBgXw16FrDC9s7Coh/edUimllfEzA6A
 G8tj30JziM3sPXQCAnG1xnFFW+c7LR3goZKk1G/lI9TjXAPyg7k/5x4ruCAshUeRjhi5
 /kFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Iw9AuzL3JiFUgv3pCgPoZimqsHWInrI+wutYJ2aQyaY=;
 b=klZcx6C7sYTfEHeHbWUf/Sdgb8oROFILif2GOum2/uHrpDCbs1d7hAMGGUuPi0Ymyl
 /8BiN0XoYZtDuUVCqNFwRC5MloqGBRabZbiuCDOf6GIGhSpHJqAxukKoKVEMezHOwVUA
 aXojxJTTZ99ltGLnL9QYPNaT34uTg69FxP2G1ut+mnBwrYP0TS5v//UnkG+6tEICmVvd
 Myh5ii2yxCoELaD+tY4LxQBJQdOSH6hSZehMiwBTsGs1E6p0uPb+ncDYQOBy+kjEqLi+
 /xSK04fkxEjDjzqpBgghSu1q/jNmtUPEVr36KBdrXgjFx7D2hiwD9wSfNNiSQSxWWjcU
 ZnIA==
X-Gm-Message-State: ANhLgQ0UUaC5ePshgGN6SX0QXJ0gRO1COj1kb+0uS3jmaK5Chfdt9oEv
 eqQC1hK8YBJcArRBAvKc1dI=
X-Google-Smtp-Source: ADFU+vv5ehuIyGfBV1LYTmRWND8Upq6vGmZisEO7B+JJAhL3mQWWcHDTXj37YoKKtHzDPHep0ZkIOA==
X-Received: by 2002:a63:4e01:: with SMTP id c1mr6191676pgb.435.1584563754337; 
 Wed, 18 Mar 2020 13:35:54 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 e189sm7432741pfa.139.2020.03.18.13.35.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Mar 2020 13:35:53 -0700 (PDT)
Subject: Re: [PATCH 06/18] irqchip: add sl28cpld interrupt controller support
To: Michael Walle <michael@walle.cc>
References: <20200317205017.28280-1-michael@walle.cc>
 <20200317205017.28280-7-michael@walle.cc>
 <d204c3b0-c3d0-0422-75d9-07718ba2134e@roeck-us.net>
 <b9661afeda9fc6413b2fe392f254c685@walle.cc>
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
Message-ID: <d2ede8b3-75ab-36f3-bc7e-8f7169977fb7@roeck-us.net>
Date: Wed, 18 Mar 2020 13:35:51 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <b9661afeda9fc6413b2fe392f254c685@walle.cc>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_133556_398988_6B84B40F 
X-CRM114-Status: GOOD (  25.93  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-hwmon@vger.kernel.org, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Marc Zyngier <maz@kernel.org>,
 linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Guenter Roeck <groeck7@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMy8xOC8yMCAxMDowNiBBTSwgTWljaGFlbCBXYWxsZSB3cm90ZToKPiBBbSAyMDIwLTAzLTE4
IDE3OjUzLCBzY2hyaWViIEd1ZW50ZXIgUm9lY2s6Cj4+IE9uIDMvMTcvMjAgMTo1MCBQTSwgTWlj
aGFlbCBXYWxsZSB3cm90ZToKPj4+IFRoaXMgcGF0Y2ggYWRkcyBzdXBwb3J0IGZvciB0aGUgaW50
ZXJydXB0IGNvbnRyb2xsZXIgaW5zaWRlIHRoZSBzbDI4Cj4+PiBDUExEIG1hbmFnZW1lbnQgY29u
dHJvbGxlci4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWVsIFdhbGxlIDxtaWNoYWVsQHdh
bGxlLmNjPgo+Pj4gLS0tCj4+PiDCoGRyaXZlcnMvaXJxY2hpcC9LY29uZmlnwqDCoMKgwqDCoMKg
wqAgfMKgIDMgKysKPj4+IMKgZHJpdmVycy9pcnFjaGlwL01ha2VmaWxlwqDCoMKgwqDCoMKgIHzC
oCAxICsKPj4+IMKgZHJpdmVycy9pcnFjaGlwL2lycS1zbDI4Y3BsZC5jIHwgOTIgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4gwqBkcml2ZXJzL21mZC9LY29uZmlnwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB8wqAgNCArLQo+Pj4gwqA0IGZpbGVzIGNoYW5nZWQsIDk4IGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+PiDCoGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L2lycWNoaXAvaXJxLXNsMjhjcGxkLmMKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pcnFj
aGlwL0tjb25maWcgYi9kcml2ZXJzL2lycWNoaXAvS2NvbmZpZwo+Pj4gaW5kZXggMjRmZTA4NzAy
ZWY3Li4zZmQ3NDE1YzhiNTUgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2lycWNoaXAvS2NvbmZp
Zwo+Pj4gKysrIGIvZHJpdmVycy9pcnFjaGlwL0tjb25maWcKPj4+IEBAIC0yNDYsNiArMjQ2LDkg
QEAgY29uZmlnIFJFTkVTQVNfUlpBMV9JUlFDCj4+PiDCoMKgwqDCoMKgwqAgRW5hYmxlIHN1cHBv
cnQgZm9yIHRoZSBSZW5lc2FzIFJaL0ExIEludGVycnVwdCBDb250cm9sbGVyLCB0byB1c2UgdXAK
Pj4+IMKgwqDCoMKgwqDCoCB0byA4IGV4dGVybmFsIGludGVycnVwdHMgd2l0aCBjb25maWd1cmFi
bGUgc2Vuc2Ugc2VsZWN0Lgo+Pj4KPj4+ICtjb25maWcgU0wyOENQTERfSU5UQwo+Pj4gK8KgwqDC
oCBib29sCj4+PiArCj4+PiDCoGNvbmZpZyBTVF9JUlFDSElQCj4+PiDCoMKgwqDCoCBib29sCj4+
PiDCoMKgwqDCoCBzZWxlY3QgUkVHTUFQCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pcnFjaGlw
L01ha2VmaWxlIGIvZHJpdmVycy9pcnFjaGlwL01ha2VmaWxlCj4+PiBpbmRleCBlYWUwZDc4Y2Jm
MjIuLjBmNGEzNzc4MjYwOSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvaXJxY2hpcC9NYWtlZmls
ZQo+Pj4gKysrIGIvZHJpdmVycy9pcnFjaGlwL01ha2VmaWxlCj4+PiBAQCAtMTA1LDMgKzEwNSw0
IEBAIG9iai0kKENPTkZJR19NQURFUkFfSVJRKcKgwqDCoMKgwqDCoMKgICs9IGlycS1tYWRlcmEu
bwo+Pj4gwqBvYmotJChDT05GSUdfTFMxWF9JUlEpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCArPSBp
cnEtbHMxeC5vCj4+PiDCoG9iai0kKENPTkZJR19USV9TQ0lfSU5UUl9JUlFDSElQKcKgwqDCoCAr
PSBpcnEtdGktc2NpLWludHIubwo+Pj4gwqBvYmotJChDT05GSUdfVElfU0NJX0lOVEFfSVJRQ0hJ
UCnCoMKgwqAgKz0gaXJxLXRpLXNjaS1pbnRhLm8KPj4+ICtvYmotJChDT05GSUdfU0wyOENQTERf
SU5UQynCoMKgwqDCoMKgwqDCoCArPSBpcnEtc2wyOGNwbGQubwo+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvaXJxY2hpcC9pcnEtc2wyOGNwbGQuYyBiL2RyaXZlcnMvaXJxY2hpcC9pcnEtc2wyOGNw
bGQuYwo+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uZmE1
MmVkNzkxMzdiCj4+PiAtLS0gL2Rldi9udWxsCj4+PiArKysgYi9kcml2ZXJzL2lycWNoaXAvaXJx
LXNsMjhjcGxkLmMKPj4+IEBAIC0wLDAgKzEsOTIgQEAKPj4+ICsvLyBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogR1BMLTIuMC1vbmx5Cj4+PiArLyoKPj4+ICsgKiBTTUFSQy1zQUwyOCBJbnRlcnJ1
cHQgY29yZSBkcml2ZXIuCj4+PiArICoKPj4+ICsgKiBDb3B5cmlnaHQgMjAxOSBLb250cm9uIEV1
cm9wZSBHbWJICj4+PiArICovCj4+PiArCj4+PiArI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgo+
Pj4gKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPj4+ICsjaW5jbHVkZSA8bGludXgvb2YuaD4K
Pj4+ICsjaW5jbHVkZSA8bGludXgvb2ZfYWRkcmVzcy5oPgo+Pj4gKyNpbmNsdWRlIDxsaW51eC9v
Zl9wbGF0Zm9ybS5oPgo+Pj4gKyNpbmNsdWRlIDxsaW51eC9pMmMuaD4KPj4+ICsjaW5jbHVkZSA8
bGludXgvcmVnbWFwLmg+Cj4+PiArI2luY2x1ZGUgPGxpbnV4L2ludGVycnVwdC5oPgo+Pj4gKyNp
bmNsdWRlIDxsaW51eC9tZmQvY29yZS5oPgo+Pj4gKwo+Pj4gKyNkZWZpbmUgSU5UQ19JRSAwCj4+
PiArI2RlZmluZSBJTlRDX0lQIDEKPj4+ICsKPj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHJlZ21h
cF9pcnEgc2wyOGNwbGRfaXJxc1tdID0gewo+Pj4gK8KgwqDCoCBSRUdNQVBfSVJRX1JFR19MSU5F
KDAsIDgpLAo+Pj4gK8KgwqDCoCBSRUdNQVBfSVJRX1JFR19MSU5FKDEsIDgpLAo+Pj4gK8KgwqDC
oCBSRUdNQVBfSVJRX1JFR19MSU5FKDIsIDgpLAo+Pj4gK8KgwqDCoCBSRUdNQVBfSVJRX1JFR19M
SU5FKDMsIDgpLAo+Pj4gK8KgwqDCoCBSRUdNQVBfSVJRX1JFR19MSU5FKDQsIDgpLAo+Pj4gK8Kg
wqDCoCBSRUdNQVBfSVJRX1JFR19MSU5FKDUsIDgpLAo+Pj4gK8KgwqDCoCBSRUdNQVBfSVJRX1JF
R19MSU5FKDYsIDgpLAo+Pj4gK8KgwqDCoCBSRUdNQVBfSVJRX1JFR19MSU5FKDcsIDgpLAo+Pj4g
K307Cj4+PiArCj4+PiArc3RydWN0IHNsMjhjcGxkX2ludGMgewo+Pj4gK8KgwqDCoCBzdHJ1Y3Qg
cmVnbWFwICpyZWdtYXA7Cj4+PiArwqDCoMKgIHN0cnVjdCByZWdtYXBfaXJxX2NoaXAgY2hpcDsK
Pj4+ICvCoMKgwqAgc3RydWN0IHJlZ21hcF9pcnFfY2hpcF9kYXRhICppcnFfZGF0YTsKPj4+ICt9
Owo+Pj4gKwo+Pj4gK3N0YXRpYyBpbnQgc2wyOGNwbGRfaW50Y19wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQo+Pj4gK3sKPj4+ICvCoMKgwqAgc3RydWN0IHNsMjhjcGxkX2ludGMg
KmlycWNoaXA7Cj4+PiArwqDCoMKgIHN0cnVjdCByZXNvdXJjZSAqcmVzOwo+Pj4gK8KgwqDCoCB1
bnNpZ25lZCBpbnQgaXJxOwo+Pj4gK8KgwqDCoCBpbnQgcmV0Owo+Pj4gKwo+Pj4gK8KgwqDCoCBp
cnFjaGlwID0gZGV2bV9remFsbG9jKCZwZGV2LT5kZXYsIHNpemVvZigqaXJxY2hpcCksIEdGUF9L
RVJORUwpOwo+Pj4gK8KgwqDCoCBpZiAoIWlycWNoaXApCj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIC1FTk9NRU07Cj4+PiArCj4+PiArwqDCoMKgIGlmICghcGRldi0+ZGV2LnBhcmVudCkKPj4+
ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOT0RFVjsKPj4+ICsKPj4+ICvCoMKgwqAgaXJxY2hp
cC0+cmVnbWFwID0gZGV2X2dldF9yZWdtYXAocGRldi0+ZGV2LnBhcmVudCwgTlVMTCk7Cj4+PiAr
wqDCoMKgIGlmICghaXJxY2hpcC0+cmVnbWFwKQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAt
RU5PREVWOwo+Pj4gKwo+Pj4gK8KgwqDCoCBpcnEgPSBwbGF0Zm9ybV9nZXRfaXJxKHBkZXYsIDAp
Owo+Pj4gK8KgwqDCoCBpZiAoaXJxIDwgMCkKPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gaXJx
Owo+Pj4gKwo+Pj4gK8KgwqDCoCByZXMgPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2UocGRldiwgSU9S
RVNPVVJDRV9SRUcsIDApOwo+Pj4gK8KgwqDCoCBpZiAoIXJlcykKPj4+ICvCoMKgwqDCoMKgwqDC
oCByZXR1cm4gLUVJTlZBTDsKPj4+ICsKPj4+ICvCoMKgwqAgaXJxY2hpcC0+Y2hpcC5uYW1lID0g
InNsMjhjcGxkLWludGMiOwo+Pj4gK8KgwqDCoCBpcnFjaGlwLT5jaGlwLmlycXMgPSBzbDI4Y3Bs
ZF9pcnFzOwo+Pj4gK8KgwqDCoCBpcnFjaGlwLT5jaGlwLm51bV9pcnFzID0gQVJSQVlfU0laRShz
bDI4Y3BsZF9pcnFzKTsKPj4+ICvCoMKgwqAgaXJxY2hpcC0+Y2hpcC5udW1fcmVncyA9IDE7Cj4+
PiArwqDCoMKgIGlycWNoaXAtPmNoaXAuc3RhdHVzX2Jhc2UgPSByZXMtPnN0YXJ0ICsgSU5UQ19J
UDsKPj4+ICvCoMKgwqAgaXJxY2hpcC0+Y2hpcC5tYXNrX2Jhc2UgPSByZXMtPnN0YXJ0ICsgSU5U
Q19JRTsKPj4+ICvCoMKgwqAgaXJxY2hpcC0+Y2hpcC5tYXNrX2ludmVydCA9IHRydWUsCj4+PiAr
wqDCoMKgIGlycWNoaXAtPmNoaXAuYWNrX2Jhc2UgPSByZXMtPnN0YXJ0ICsgSU5UQ19JUDsKPj4+
ICsKPj4+ICvCoMKgwqAgcmV0ID0gZGV2bV9yZWdtYXBfYWRkX2lycV9jaGlwKCZwZGV2LT5kZXYs
IGlycWNoaXAtPnJlZ21hcCwgaXJxLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIElSUUZfU0hBUkVEIHwgSVJRRl9PTkVTSE9ULCAwLAo+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZpcnFjaGlwLT5jaGlwLCAm
aXJxY2hpcC0+aXJxX2RhdGEpOwo+Pj4gK8KgwqDCoCBpZiAocmV0KQo+Pj4gK8KgwqDCoMKgwqDC
oMKgIHJldHVybiByZXQ7Cj4+PiArwqDCoMKgIGRldl9pbmZvKCZwZGV2LT5kZXYsICJyZWdpc3Rl
cmVkIElSUSAlZFxuIiwgaXJxKTsKPj4+ICsKPj4+ICvCoMKgwqAgcmV0dXJuIDA7Cj4+PiArfQo+
Pj4gKwo+Pj4gK3N0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHNsMjhjcGxkX2ludGNfZHJp
dmVyID0gewo+Pj4gK8KgwqDCoCAucHJvYmXCoMKgwqAgPSBzbDI4Y3BsZF9pbnRjX3Byb2JlLAo+
Pj4gK8KgwqDCoCAuZHJpdmVyID0gewo+Pj4gK8KgwqDCoMKgwqDCoMKgIC5uYW1lID0gInNsMjhj
cGxkLWludGMiLAo+Pj4gK8KgwqDCoCB9Cj4+PiArfTsKPj4+ICttb2R1bGVfcGxhdGZvcm1fZHJp
dmVyKHNsMjhjcGxkX2ludGNfZHJpdmVyKTsKPj4+ICsKPj4+ICtNT0RVTEVfREVTQ1JJUFRJT04o
InNsMjhjcGxkIEludGVycnVwdCBDb250cm9sbGVyIERyaXZlciIpOwo+Pj4gK01PRFVMRV9MSUNF
TlNFKCJHUEwiKTsKPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21mZC9LY29uZmlnIGIvZHJpdmVy
cy9tZmQvS2NvbmZpZwo+Pj4gaW5kZXggMDE1ODhjMzY2NDc2Li40Zjc0MWQ2NDA3MDUgMTAwNjQ0
Cj4+PiAtLS0gYS9kcml2ZXJzL21mZC9LY29uZmlnCj4+PiArKysgYi9kcml2ZXJzL21mZC9LY29u
ZmlnCj4+PiBAQCAtMjA2MCwxMiArMjA2MCwxMiBAQCBjb25maWcgU0dJX01GRF9JT0MzCj4+PiDC
oMKgwqDCoMKgwqAgdGhlbiBzYXkgWS4gT3RoZXJ3aXNlIHNheSBOLgo+Pj4KPj4+IMKgY29uZmln
IE1GRF9TTDI4Q1BMRAo+Pj4gLcKgwqDCoCB0cmlzdGF0ZSAiS29udHJvbiBzbDI4IGNvcmUgZHJp
dmVyIgo+Pj4gK8KgwqDCoCBib29sICJLb250cm9uIHNsMjggY29yZSBkcml2ZXIiCj4+Cj4+IFRo
aXMgaXMgLi4uLiB1bnVzdWFsLiBXaHkgZGVjbGFyZSBpdCB0cmlzdGF0ZSBvbmx5IHRvIHJlLWRl
Y2xhcmUgaXQKPj4gYm9vbCBpbiB0aGUgbmV4dCBwYXRjaCA/Cj4gCj4gSSB0aG91Z2ggaXQgd2Fz
IGEgZ29vZCBpZGVhIHRvIGhhdmUgdGhhdCBncmFkdWFsbHkgYnVpbGQgdXAsIGVzcC4gc2luY2UK
PiB0aGVzZSBwYXRjaGVzIG1pZ2h0IGdvIHRocm91Z2ggZGlmZmVyZW50IHJldmlld2Vycy90cmVl
cy4gVGhhdCBiZWluZyBzYWlkLAo+IEknbGwgY2hhbmdlIGl0IHRob3VnaC4KPiAKCkdyYWR1YWxs
eSBidWlsZCB1cCBpcyBmaW5lLCBidXQgdGhhdCBkb2Vzbid0IG1lYW4gdG8gZG8gaXQgb25lIHdh
eSBmaXJzdCBhbmQKY2hhbmdlIGl0IGxhdGVyLiBUaGlzIG9ubHkgcmVzdWx0cyBpbiBmZWVkYmFj
ayBsaWtlIG1pbmUgLSBJMkM9eSBqdXN0CmRpZG4ndCBtYWtlIHNlbnNlIGluIHRoZSBwcmV2aW91
cyBwYXRjaC4gUGxlYXNlIGtlZXAgaW4gbWluZCB0aGF0IGRvaW5nCnRoaW5ncyBvbmUgd2F5IGZp
cnN0IGFuZCB0aGVuIGNoYW5naW5nIHRoZW0gbGF0ZXIgb25seSB3YXN0ZXMgcGVvcGxlJ3MgdGlt
ZS4KSXQgd291bGQgYmUgbXVjaCBiZXR0ZXIgdG8gbWVudGlvbiBpbiB0aGUgcHJldmlvdXMgcGF0
Y2ggdGhhdCB0aGUgc3ltYm9sIGlzCmRlY2xhcmVkIGJvb2wgYmVjYXVzZSBhIHN1YnNlcXVlbnQg
cGF0Y2ggaW50cm9kdWNlcyBhbiBpbnRlcnJ1cHQgY29udHJvbGxlcgpkcml2ZXIgd2hpY2ggbmVl
ZHMgdG8gYmUgYnVpbHQtaW4uCgpUaGFua3MsCkd1ZW50ZXIKCj4+IEl0IGRvZXMgZXhwbGFpbiB0
aGUgSTJDPXksIGJ1dCBJIHJlYWxseSB0aGluayBpdCBzaG91bGQgYmUgYm9vbCBmcm9tCj4+IHRo
ZSBzdGFydCBpZiBpdCBlbmRzIHVwCj4+IHRoZXJlLgo+IAo+IE9rLgo+IAo+Pgo+Pj4gwqDCoMKg
wqAgZGVwZW5kcyBvbiBJMkM9eQo+Pj4gwqDCoMKgwqAgZGVwZW5kcyBvbiBPRgo+Pj4gwqDCoMKg
wqAgc2VsZWN0IFJFR01BUF9JMkMKPj4+IMKgwqDCoMKgIHNlbGVjdCBSRUdNQVBfSVJRCj4+PiAt
wqDCoMKgIHNlbGVjdCBTTDI4Q1BMRF9JUlEKPj4+ICvCoMKgwqAgc2VsZWN0IFNMMjhDUExEX0lO
VEMKPj4KPj4gV2hhdCBpcyB0aGUgcG9pbnQgb2YgaW50cm9kdWNpbmcgU0wyOENQTERfSVJRIGlu
IHRoZSBmaXJzdCBwbGFjZSA/Cj4gCj4gb2ggZGFtbi4gdGhpcyBpcyBhIGxlZnQtb3ZlciB3aGlj
aCBzbGlwcGVkIHRocm91Z2guIFRoZXJlIHNob3VsZCBqdXN0Cj4gYmUgYSBTTDI4Q1BMRF9JTlRD
Lgo+IAo+IC1taWNoYWVsCj4gCj4+Cj4+PiDCoMKgwqDCoCBzZWxlY3QgTUZEX0NPUkUKPj4+IMKg
wqDCoMKgIGhlbHAKPj4+IMKgwqDCoMKgwqDCoCBUaGlzIG9wdGlvbiBlbmFibGVzIHN1cHBvcnQg
Zm9yIHRoZSBib2FyZCBtYW5hZ2VtZW50IGNvbnRyb2xsZXIKPj4+CgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
