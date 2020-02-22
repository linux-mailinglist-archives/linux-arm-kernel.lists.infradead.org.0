Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAC3168D46
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 08:40:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACdilqLEwOaARmw8f8PyiwoWhrfyIi2UIUzi1FxIMAI=; b=U5uE1ZYjrNpUx9
	BXsk5rl1t/qT7vGjXyFiK2NgFPlB4+XvVvHkamEtCG2FDND1SI8iKYD2oyqtuMnW0T+/hj6SUIIc5
	uju2TSKLlHAApsug1k5/wWNtZm8/Z2+EgrtRqjFhSVNjZ9KJkVl1mLWtDpdGwel6oXQXJNz52hj/X
	MWyvfS4MzdlkusA1+pvyPNzx/9euNpZCO7p4PlDvdEfeTcjudPf7p4Omgow9L8Zgm/e4XCIyNtgbN
	TXsAC3cZ3eSUB1bHAYt/hHlbwFZGqorcVwnuayNs0Ix7cwUpsnnCFzkEWBi9HFF1NEtKt6Uo+DCxv
	oj71HOoh+WKG4WF+Qv+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5PO6-0002BL-MK; Sat, 22 Feb 2020 07:39:46 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5PNs-0002AJ-Tq
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 07:39:37 +0000
Received: by mail-wm1-x341.google.com with SMTP id p17so4208534wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 23:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=P9t2Wd4NAlaQd0ZmuCGU4S49XeAYAORDzD+LvPV2h6k=;
 b=M80r+PDiPzVXoBoLSf+oTAiKoTnwYn55XiHqhTskfdbe4e86+5EWTS67LqO8HpfpD9
 VhlJkhh2Vd+MgkqpGsitj0zfffPiHrVjyWy6+qoyX09xrO6cHyZoMrlW2g+1KCT++ryi
 mYRU8RFsR1zQtXKMTH2VXrfaOil/oqv3fjbeIlXOSF91l5dbhYT/clpwU3t7e3iQN7kc
 U9YPrrMucrjQT7MxazmwViJu/exLq/HkAZVd3UKy5uTAYU9BwL89Ao11qtI0nUFI1kir
 9x83vDmAWUyfU8H64lVJ4fDCBbPKe9kVRk4aQMy8iCuvqwf2GucjeTWcaqiIS1AL3Zzq
 1sBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=P9t2Wd4NAlaQd0ZmuCGU4S49XeAYAORDzD+LvPV2h6k=;
 b=FffB3k/C1//uhCrs/+1mEnlLF7Nydwo2tXaWpfn0n4ITn4vuhIbQM/ODO3eqHKmxBq
 XWVJJTsbiqkYycawqBGJ/dYnTokf/cIOohFkMBiM38orKo4gC2Sg9VKgR8MvAv97dQe2
 eshDEOf/eroE8jQP2qMX0LTUtmBMLZxOMvxyhwqYE7iNCtLEmy8xxPrnslle5VvikepH
 oQlkE/46Ir5/NVc8Kp6uUF21hBF84lrrkNlwo0L6C/5XRhBMzqbKqNmiBP+H47GxnGVV
 UW7EKpoYZ/YuGRIYwKL5bBCf92Dx2CBhYDpxPwApXG3tcvP2hTj6qJo46YO7/CpCZarj
 2aUw==
X-Gm-Message-State: APjAAAXktKYiScwg+aodQehZzftj2DFjVyGfyd/JmkmHyQhT/OK+IFqx
 COh8PBY4rsdJtD+v8GrVaPHTIw==
X-Google-Smtp-Source: APXvYqyqNqfvOSii00tp9NMAPL+QpnOgiilbNi4/8kMHXUjMniO+/GbiGuvMG0sgxRwD5iYpaaGP4A==
X-Received: by 2002:a05:600c:248:: with SMTP id 8mr8548174wmj.1.1582357169598; 
 Fri, 21 Feb 2020 23:39:29 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:903b:a048:f296:e3ae?
 ([2a01:e34:ed2f:f020:903b:a048:f296:e3ae])
 by smtp.googlemail.com with ESMTPSA id p5sm7181582wrt.79.2020.02.21.23.39.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 21 Feb 2020 23:39:28 -0800 (PST)
Subject: Re: [PATCH V15 RESEND 3/5] thermal: imx_sc: add i.MX system
 controller thermal support
To: Anson Huang <anson.huang@nxp.com>
References: <1582161028-2844-1-git-send-email-Anson.Huang@nxp.com>
 <1582161028-2844-3-git-send-email-Anson.Huang@nxp.com>
 <20200221125300.GB10516@linaro.org>
 <DB3PR0402MB3916CCBD8F36161B6F9EA45FF5120@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <aed6c4ab-59e2-ebcb-be91-4b7e909419d9@linaro.org>
Date: Sat, 22 Feb 2020 08:39:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <DB3PR0402MB3916CCBD8F36161B6F9EA45FF5120@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_233932_972555_3D7807FC 
X-CRM114-Status: GOOD (  27.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "festevam@gmail.com" <festevam@gmail.com>, "krzk@kernel.org" <krzk@kernel.org>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>, "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjIvMDIvMjAyMCAwMDo0NiwgQW5zb24gSHVhbmcgd3JvdGU6Cj4gSGksIERhbmllbAo+IAo+
PiBTdWJqZWN0OiBSZTogW1BBVENIIFYxNSBSRVNFTkQgMy81XSB0aGVybWFsOiBpbXhfc2M6IGFk
ZCBpLk1YIHN5c3RlbQo+PiBjb250cm9sbGVyIHRoZXJtYWwgc3VwcG9ydAo+Pgo+PiBIaSBBbnNv
biwKPj4KPj4gc29ycnkgZm9yIHRoZSBkZWxheSB3aXRoIHRoaXMgcmV2aWV3LCBob3BlZnVsbHkg
dGhlIHVwc3RyZWFtaW5nIHdpbGwgYmUgbm93IGEKPj4gYml0IG1vcmUgc21vb3RoLgo+IAo+IFRo
YW5rcyB2ZXJ5IG11Y2ggZm9yIHJldmlld/CfmIoKPiAKPj4KPj4gQXBhcnQgdGhlIGNvbW1lbnRz
IGJlbG93LCB0aGUgZHJpdmVyIGxvb2tzIGdvb2QgdG8gbWUuCj4+Cj4+IE9uIFRodSwgRmViIDIw
LCAyMDIwIGF0IDA5OjEwOjI2QU0gKzA4MDAsIEFuc29uIEh1YW5nIHdyb3RlOgo+Pj4gaS5NWDhR
WFAgaXMgYW4gQVJNdjggU29DIHdoaWNoIGhhcyBhIENvcnRleC1NNCBzeXN0ZW0gY29udHJvbGxl
cgo+Pj4gaW5zaWRlLCB0aGUgc3lzdGVtIGNvbnRyb2xsZXIgaXMgaW4gY2hhcmdlIG9mIGNvbnRy
b2xsaW5nIHBvd2VyLCBjbG9jawo+Pj4gYW5kIHRoZXJtYWwgc2Vuc29ycyBldGMuLgo+Pj4KPj4+
IFRoaXMgcGF0Y2ggYWRkcyBpLk1YIHN5c3RlbSBjb250cm9sbGVyIHRoZXJtYWwgZHJpdmVyIHN1
cHBvcnQsIExpbnV4Cj4+PiBrZXJuZWwgaGFzIHRvIGNvbW11bmljYXRlIHdpdGggc3lzdGVtIGNv
bnRyb2xsZXIgdmlhIE1VIChtZXNzYWdlIHVuaXQpCj4+PiBJUEMgdG8gZ2V0IGVhY2ggdGhlcm1h
bCBzZW5zb3IncyB0ZW1wZXJhdHVyZSwgaXQgc3VwcG9ydHMgbXVsdGlwbGUKPj4+IHNlbnNvcnMg
d2hpY2ggYXJlIHBhc3NlZCBmcm9tIGRldmljZSB0cmVlLCBwbGVhc2Ugc2VlIHRoZSBiaW5kaW5n
IGRvYwo+Pj4gZm9yIGRldGFpbHMuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQW5zb24gSHVhbmcg
PEFuc29uLkh1YW5nQG54cC5jb20+Cj4+PiAtLS0KPj4+IE5vIGNoYW5nZS4KPj4+IC0tLQo+Pj4g
IGRyaXZlcnMvdGhlcm1hbC9LY29uZmlnICAgICAgICAgIHwgIDExICsrKwo+Pj4gIGRyaXZlcnMv
dGhlcm1hbC9NYWtlZmlsZSAgICAgICAgIHwgICAxICsKPj4+ICBkcml2ZXJzL3RoZXJtYWwvaW14
X3NjX3RoZXJtYWwuYyB8IDE0Mgo+Pj4gKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrCj4+PiAgMyBmaWxlcyBjaGFuZ2VkLCAxNTQgaW5zZXJ0aW9ucygrKQo+Pj4gIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3RoZXJtYWwvaW14X3NjX3RoZXJtYWwuYwo+Pj4KPj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3RoZXJtYWwvS2NvbmZpZyBiL2RyaXZlcnMvdGhlcm1hbC9LY29u
ZmlnIGluZGV4Cj4+PiA1YTA1ZGI1Li5kMWNiOGRjIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy90
aGVybWFsL0tjb25maWcKPj4+ICsrKyBiL2RyaXZlcnMvdGhlcm1hbC9LY29uZmlnCj4+PiBAQCAt
MjUxLDYgKzI1MSwxNyBAQCBjb25maWcgSU1YX1RIRVJNQUwKPj4+ICAJICBjcHVmcmVxIGlzIHVz
ZWQgYXMgdGhlIGNvb2xpbmcgZGV2aWNlIHRvIHRocm90dGxlIENQVXMgd2hlbiB0aGUKPj4+ICAJ
ICBwYXNzaXZlIHRyaXAgaXMgY3Jvc3NlZC4KPj4+Cj4+PiArY29uZmlnIElNWF9TQ19USEVSTUFM
Cj4+PiArCXRyaXN0YXRlICJUZW1wZXJhdHVyZSBzZW5zb3IgZHJpdmVyIGZvciBOWFAgaS5NWCBT
b0NzIHdpdGggU3lzdGVtCj4+IENvbnRyb2xsZXIiCj4+PiArCWRlcGVuZHMgb24gQVJDSF9NWEMg
JiYgSU1YX1NDVQo+Pgo+PiBJTVhfU0NVIGRlcGVuZHMgb24gSU1YX01CT1ggd2hpY2ggZGVwZW5k
cyBvbiBBUkNIX01YQy4gVGhpcwo+PiBkZXBlbmRlbmN5IGNvdWxkIGJlIHNpbXBsaWZpZWQuCj4+
Cj4+IEFsc28gYWRkIHRoZSBDT01QSUxFX1RFU1Qgb3B0aW9uIHRvIGltcHJvdmUgY29tcGlsYXRp
b24gdGVzdCBjb3ZlcmFnZS4KPiAKPiBXaWxsIG1ha2UgaXQgZGVwZW5kcyBvbiBJTVhfU0NVIGFu
ZCBDT01QSUxFX1RFU1QKPiAKPj4KPj4+ICsJZGVwZW5kcyBvbiBPRgo+Pj4gKwloZWxwCj4+PiAr
CSAgU3VwcG9ydCBmb3IgVGVtcGVyYXR1cmUgTW9uaXRvciAoVEVNUE1PTikgZm91bmQgb24gTlhQ
IGkuTVgKPj4gU29DcyB3aXRoCj4+PiArCSAgc3lzdGVtIGNvbnRyb2xsZXIgaW5zaWRlLCBMaW51
eCBrZXJuZWwgaGFzIHRvIGNvbW11bmljYXRlIHdpdGgKPj4gc3lzdGVtCj4+PiArCSAgY29udHJv
bGxlciB2aWEgTVUgKG1lc3NhZ2UgdW5pdCkgSVBDIHRvIGdldCB0ZW1wZXJhdHVyZSBmcm9tCj4+
IHRoZXJtYWwKPj4+ICsJICBzZW5zb3IuIEl0IHN1cHBvcnRzIG9uZSBjcml0aWNhbCB0cmlwIHBv
aW50IGFuZCBvbmUKPj4+ICsJICBwYXNzaXZlIHRyaXAgcG9pbnQgZm9yIGVhY2ggdGhlcm1hbCBz
ZW5zb3IuCj4+PiArCj4+PiAgY29uZmlnIE1BWDc3NjIwX1RIRVJNQUwKPj4+ICAJdHJpc3RhdGUg
IlRlbXBlcmF0dXJlIHNlbnNvciBkcml2ZXIgZm9yIE1heGltIE1BWDc3NjIwIFBNSUMiCj4+PiAg
CWRlcGVuZHMgb24gTUZEX01BWDc3NjIwCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFs
L01ha2VmaWxlIGIvZHJpdmVycy90aGVybWFsL01ha2VmaWxlIGluZGV4Cj4+PiA5ZmI4OGUyLi5h
MTFhNmQ4IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy90aGVybWFsL01ha2VmaWxlCj4+PiArKysg
Yi9kcml2ZXJzL3RoZXJtYWwvTWFrZWZpbGUKPj4+IEBAIC00Myw2ICs0Myw3IEBAIG9iai0kKENP
TkZJR19EQjg1MDBfVEhFUk1BTCkJKz0KPj4gZGI4NTAwX3RoZXJtYWwubwo+Pj4gIG9iai0kKENP
TkZJR19BUk1BREFfVEhFUk1BTCkJKz0gYXJtYWRhX3RoZXJtYWwubwo+Pj4gIG9iai0kKENPTkZJ
R19UQU5HT19USEVSTUFMKQkrPSB0YW5nb190aGVybWFsLm8KPj4+ICBvYmotJChDT05GSUdfSU1Y
X1RIRVJNQUwpCSs9IGlteF90aGVybWFsLm8KPj4+ICtvYmotJChDT05GSUdfSU1YX1NDX1RIRVJN
QUwpCSs9IGlteF9zY190aGVybWFsLm8KPj4+ICBvYmotJChDT05GSUdfTUFYNzc2MjBfVEhFUk1B
TCkJKz0gbWF4Nzc2MjBfdGhlcm1hbC5vCj4+PiAgb2JqLSQoQ09ORklHX1FPUklRX1RIRVJNQUwp
CSs9IHFvcmlxX3RoZXJtYWwubwo+Pj4gIG9iai0kKENPTkZJR19EQTkwNjJfVEhFUk1BTCkJKz0g
ZGE5MDYyLXRoZXJtYWwubwo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9pbXhfc2Nf
dGhlcm1hbC5jCj4+PiBiL2RyaXZlcnMvdGhlcm1hbC9pbXhfc2NfdGhlcm1hbC5jCj4+PiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NAo+Pj4gaW5kZXggMDAwMDAwMC4uZDQwNmVjYgo+Pj4gLS0tIC9kZXYv
bnVsbAo+Pj4gKysrIGIvZHJpdmVycy90aGVybWFsL2lteF9zY190aGVybWFsLmMKPj4+IEBAIC0w
LDAgKzEsMTQyIEBACj4+PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjArCj4+
PiArLyoKPj4+ICsgKiBDb3B5cmlnaHQgMjAxOC0yMDE5IE5YUC4KPj4KPj4gKnNpZ2gqIDIwMjAg
bm93IC4uLgo+IAo+IFllcywgc2hvdWxkIGJlIDIwMTgtMjAyMAo+IAo+Pgo+PiBbIC4uLiBdCj4+
Cj4+PiArc3RhdGljIGludCBpbXhfc2NfdGhlcm1hbF9nZXRfdGVtcCh2b2lkICpkYXRhLCBpbnQg
KnRlbXApIHsKPj4+ICsJc3RydWN0IGlteF9zY19tc2dfbWlzY19nZXRfdGVtcCBtc2c7Cj4+PiAr
CXN0cnVjdCBpbXhfc2NfcnBjX21zZyAqaGRyID0gJm1zZy5oZHI7Cj4+PiArCXN0cnVjdCBpbXhf
c2Nfc2Vuc29yICpzZW5zb3IgPSBkYXRhOwo+Pj4gKwlpbnQgcmV0Owo+Pj4gKwo+Pj4gKwltc2cu
ZGF0YS5yZXEucmVzb3VyY2VfaWQgPSBzZW5zb3ItPnJlc291cmNlX2lkOwo+Pj4gKwltc2cuZGF0
YS5yZXEudHlwZSA9IElNWF9TQ19DX1RFTVA7Cj4+PiArCj4+PiArCWhkci0+dmVyID0gSU1YX1ND
X1JQQ19WRVJTSU9OOwo+Pj4gKwloZHItPnN2YyA9IElNWF9TQ19SUENfU1ZDX01JU0M7Cj4+PiAr
CWhkci0+ZnVuYyA9IElNWF9TQ19NSVNDX0ZVTkNfR0VUX1RFTVA7Cj4+PiArCWhkci0+c2l6ZSA9
IDI7Cj4+Cj4+IENhbiB5b3UgZXhwbGFpbiB0aGlzICdzaXplJyB2YWx1ZT8KPiAKPiBUaGUgc2l6
ZSBtZWFucyB0aGUgU0NVIG1lc3NhZ2Ugc2l6ZSwgaW5jbHVkaW5nIHRoZSBoZWFkZXIgYW5kIHRo
ZSBkYXRhLCBpdHMgdW5pdAo+IGlzIHdvcmQoNCBieXRlcyksIGluIHRoZXJtYWwgZ2V0IHRlbXBl
cmF0dXJlIG1lc3NhZ2UsIHRoZSBoZWFkZXIgdGFrZXMgMSB3b3JkIGFuZAo+IHRoZSBkYXRhIHRh
a2VzIGFub3RoZXIgMSwgc28gaXQgaXMgMiwgd2UgYWxsIHBhc3MgdGhlIHNpemUgaW4gdGhpcyB3
YXkgdG8gU0NVIGluIGkuTVg4Cj4gU29DcywgdGhlIFNDVSBrbm93IGhvdyBsb25nIG1lc3NhZ2Ug
aXQgd2lsbCBuZWVkIHRvIHJlY2VpdmUgZnJvbSBBUC4KClRoYW5rcyBmb3IgdGhlIGNsYXJpZmlj
YXRpb24uCgo+PiBbIC4uLiBdCj4+Cj4+PiArTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgaW14X3Nj
X3RoZXJtYWxfdGFibGUpOwo+Pj4gKwo+Pj4gK3N0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVy
IGlteF9zY190aGVybWFsX2RyaXZlciA9IHsKPj4+ICsJCS5wcm9iZSA9IGlteF9zY190aGVybWFs
X3Byb2JlLAo+Pgo+PiBUaGUgZHJpdmVyIGNhbiBiZSBjb21waWxlZCBhcyBtb2R1bGUgYnV0IHRo
ZXJlIGlzIG5vICdyZW1vdmUnIGNhbGxiYWNrCj4gCj4gQXMgdGhlcmUgaXMgbm90aGluZyBuZWVk
cyB0byBiZSBkb25lIGluIC5yZW1vdmUgY2FsbGJhY2ssIHNvIEkgc2tpcCBpdC4gQnV0Cj4gSSB0
aGluayBJIGNhbiBhZGQgYSBibGFuayAucmVtb3ZlIGNhbGxiYWNrIHRvIG1ha2UgaXQgbW9yZSBj
b21wbGV0ZS4KCkFoLCByaWdodC4gRXZlcnl0aGluZyBpcyBoYW5kbGVkIGJ5ICJkZXZtXyIKCgo+
Pj4gKwkJLmRyaXZlciA9IHsKPj4+ICsJCQkubmFtZSA9ICJpbXgtc2MtdGhlcm1hbCIsCj4+PiAr
CQkJLm9mX21hdGNoX3RhYmxlID0gaW14X3NjX3RoZXJtYWxfdGFibGUsCj4+PiArCQl9LAo+Pj4g
K307Cj4+PiArbW9kdWxlX3BsYXRmb3JtX2RyaXZlcihpbXhfc2NfdGhlcm1hbF9kcml2ZXIpOwo+
Pj4gKwo+Pj4gK01PRFVMRV9BVVRIT1IoIkFuc29uIEh1YW5nIDxBbnNvbi5IdWFuZ0BueHAuY29t
PiIpOwo+Pj4gK01PRFVMRV9ERVNDUklQVElPTigiVGhlcm1hbCBkcml2ZXIgZm9yIE5YUCBpLk1Y
IFNvQ3Mgd2l0aCBzeXN0ZW0KPj4+ICtjb250cm9sbGVyIik7IE1PRFVMRV9MSUNFTlNFKCJHUEwg
djIiKTsKPgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93
d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIu
Y29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJv
LWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
