Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9175036A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 09:30:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZndkcHVvf7ypxRcPsNnNp3PQUu0L2X6N53pkPjgfnM=; b=tgLOxqPYiqBy02
	NIMq+VlSKb3tHlz4pTOxwpvA11EZ+wD+1tW4HjBXCBDhaz1gAivMN+WeepM1Q7mp0JP0VT/TPWRe2
	qgf+g7kKoQCEepBe7lgULuaXpUjH4YapM70ge2W0YH0ujxQ4IpekUYfJqkAqzpa6In1xK1xSYRIZC
	e97pLbIiIzaAiyFGVsYWjRnXGGSwev79JXfLgw+8VAznPCCvxdAqz5E1ISiZn9C04/uFgnFalSLCH
	Vi5LrqdLU/T4Zuosi98f/E8VZDRskrEkTnLVRH3MLeh2Y87Nq9Lvw0lveRNv8Hw5Nzdu7pCxyhKUz
	EAe6VAXV4gGtuapDApRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJQi-0002EQ-Vv; Mon, 24 Jun 2019 07:30:21 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJQU-0001gv-6x
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 07:30:08 +0000
Received: by mail-wm1-x341.google.com with SMTP id 207so11716919wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 00:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LocBImSZmptFdXRaZ5AdtQJn9KgVIzUS2C1+aQJ3ImI=;
 b=kHN/6/HqM6W4XaTWtsZAmdTarcyTa99rx+qxOyJ4ikzat7VFMmYjPGI2zebtraCbvj
 2CqlkbfWVmZdwPI82QohYod1qib98+0rMZwbAUAOH7GcRysB1ErG2dSoSEw4K4S4gFYY
 3IjzQxFq6XmtU/7QF/B3XfR5hZ+3iadEn+uWud3HuhiHdZqTPXODII8JS0EBON91c4s/
 GafDxaD5GRYCz74onOeFigRLEINVyp3ZUWe/3xJSMayZw/FV9Of2LrS1OgwcVMHyWpN/
 M397uj4+Lk4zP5j52phtqQv3P3FiSWgj8MPrrDTi3TYO7qgj9/F2qTtK4rxgx1oyl8pQ
 yClg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=LocBImSZmptFdXRaZ5AdtQJn9KgVIzUS2C1+aQJ3ImI=;
 b=oD3fOlwakvduyp4C+SjcFvuv1aWCa2naVpy51uuE96t2y8pt04A5jpRk6w4yzlfS+p
 mNr6Xi7QJCkxK9lhMIrbd8M3pOOadZXturG8dzoI1pC+eK+51y+s0XbFyj1L67DcKIQT
 Fc6n7KRyobJRVIP5hygnZEgvGI7XSPGRU0pBTDCPr3P2LfYGaybp1Q74cc9Xe2K3uS+k
 iCAtyt13RNvX/2I7Me12FR3g5koAXlRQ6AJqjHoIxsBOrDQlufbTMUnUQC9PP7JqbG+R
 sCyVrLQX2TS/O/CSVTbwhJpluGiSr25/YR1WjT+JDtagvM1SlKrU5pJRjP9q59WcPtB0
 YTjA==
X-Gm-Message-State: APjAAAV3wGQcegTWm42LZoXOETrsr11MIrd8uaEqJJwKBmn7HIMW3A7+
 a8WSyllF235RYL6pvyaIshcIkw==
X-Google-Smtp-Source: APXvYqxuqcMirZskPad67aLaa8QZ6sb0bEZUvrxYAOEmXrPz0s6L6fGCJzTKgFFabnjaJKnXz1sIwQ==
X-Received: by 2002:a1c:cfc3:: with SMTP id
 f186mr13394363wmg.134.1561361402590; 
 Mon, 24 Jun 2019 00:30:02 -0700 (PDT)
Received: from [192.168.0.41] (209.94.129.77.rev.sfr.net. [77.129.94.209])
 by smtp.googlemail.com with ESMTPSA id j4sm8260327wrx.57.2019.06.24.00.30.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 00:30:01 -0700 (PDT)
Subject: Re: [PATCH 2/6] thermal/drivers/cpu_cooling: Unregister with the
 policy
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20190621132302.30414-1-daniel.lezcano@linaro.org>
 <20190621132302.30414-2-daniel.lezcano@linaro.org>
 <20190624060334.kak2mjuou4napi4x@vireshk-i7>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <3f324189-aa1e-ae78-1d69-61e00c5d033a@linaro.org>
Date: Mon, 24 Jun 2019 09:30:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190624060334.kak2mjuou4napi4x@vireshk-i7>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_003006_459777_B937D5C9 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keerthy <j-keerthy@ti.com>,
 "open list:CPU FREQUENCY DRIVERS - ARM BIG LITTLE"
 <linux-pm@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 edubezval@gmail.com,
 "open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Zhang Rui <rui.zhang@intel.com>,
 Javi Merino <javi.merino@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjQvMDYvMjAxOSAwODowMywgVmlyZXNoIEt1bWFyIHdyb3RlOgo+IE9uIDIxLTA2LTE5LCAx
NToyMiwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4+IEN1cnJlbnRseSB0aGUgZnVuY3Rpb24gY3B1
ZnJlcV9jb29saW5nX3JlZ2lzdGVyKCkgcmV0dXJucyBhIGNvb2xpbmcKPj4gZGV2aWNlIHBvaW50
ZXIgd2hpY2ggaXMgdXNlZCBiYWNrIGFzIGEgcG9pbnRlciB0byBjYWxsIHRoZSBmdW5jdGlvbgo+
PiBjcHVmcmVxX2Nvb2xpbmdfdW5yZWdpc3RlcigpLiBFdmVuIGlmIGl0IGlzIGNvcnJlY3QsIGl0
IHdvdWxkIG1ha2UKPj4gc2Vuc2UgdG8gbm90IGxlYWsgdGhlIHN0cnVjdHVyZSBpbnNpZGUgYSBj
cHVmcmVxIGRyaXZlciBhbmQga2VlcCB0aGUKPj4gY29kZSB0aGVybWFsIGNvZGUgc2VsZi1lbmNh
cHN1bGF0ZS4gTW9yZW92ZXIsIHRoYXQgZm9yY2VzIHRvIGFkZCBhbgo+PiBleHRyYSB2YXJpYWJs
ZSBpbiBlYWNoIGRyaXZlciB1c2luZyB0aGlzIGZ1bmN0aW9uLgo+Pgo+PiBJbnN0ZWFkIG9mIHBh
c3NpbmcgdGhlIGNvb2xpbmcgZGV2aWNlIHRvIHVucmVnaXN0ZXIsIHBhc3MgdGhlIHBvbGljeS4K
Pj4KPj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpjYW5vQGxpbmFy
by5vcmc+Cj4+IC0tLQo+PiAgZHJpdmVycy9jcHVmcmVxL2FybV9iaWdfbGl0dGxlLmMgICAgICAg
ICAgICAgICB8ICAyICstCj4+ICBkcml2ZXJzL2NwdWZyZXEvY3B1ZnJlcS5jICAgICAgICAgICAg
ICAgICAgICAgIHwgIDIgKy0KPj4gIGRyaXZlcnMvdGhlcm1hbC9jcHVfY29vbGluZy5jICAgICAg
ICAgICAgICAgICAgfCAxOCArKysrKysrKysrLS0tLS0tLS0KPj4gIGRyaXZlcnMvdGhlcm1hbC9p
bXhfdGhlcm1hbC5jICAgICAgICAgICAgICAgICAgfCAgNCArKy0tCj4+ICAuLi4vdGhlcm1hbC90
aS1zb2MtdGhlcm1hbC90aS10aGVybWFsLWNvbW1vbi5jIHwgIDIgKy0KPj4gIGluY2x1ZGUvbGlu
dXgvY3B1X2Nvb2xpbmcuaCAgICAgICAgICAgICAgICAgICAgfCAgNiArKystLS0KPj4gIDYgZmls
ZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCj4gCj4gQWNrZWQt
Ynk6IFZpcmVzaCBLdW1hciA8dmlyZXNoLmt1bWFyQGxpbmFyby5vcmc+CgpKdXN0IGEgc2lkZSBu
b3RlLCBkb2VzIGl0IG1ha2Ugc2Vuc2UgdG8gaGF2ZSB0aGUgZnVuY3Rpb24gY2FsbGVkIGZyb20K
aW14X3RoZXJtYWwuYyBhbmQgdGktdGhlcm1hbC1jb21tb24uYz8gU291bmRzIGxpa2UgYWxzbyBh
IGxlYWthZ2UgZnJvbQpjcHVmcmVxIHRvIHRoZXJtYWwgZHJpdmVycywgbm8/CgoKLS0gCiA8aHR0
cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUg
Zm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3Bh
Z2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4g
VHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
