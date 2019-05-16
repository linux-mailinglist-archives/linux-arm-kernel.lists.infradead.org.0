Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0EE202B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 11:39:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BmTvJK16SKgfdsbxrlpiXxK/ZylBP1W+Nm+W+Js4OJQ=; b=OEQheyvofcGQxY
	pG6az0Y6dE9WSiV1VPjp1kxg6fEspZjYhyxvZPiFWE/8DQ6vbx6JOrHc1Hub8DUngrkyfiW+JPldJ
	KHMQM3A21pHmrvtMfOVwGfkqOyUcC879ID5AlpBnPPhTlktk4658p/murRZy5l9E4Q0UECkEO3hYy
	q6bLJG0dud1y6e7Y7CUjjIhmFxe4zKZdDasVWrk37bo46tA/IaR5rFpUpbYYA7amSF5a5COoxZzc/
	lLZmUAZJRoqf/wRQJXCKui5tVeEHb8CMgRf2Dp93x9qygfyByYwEHQ5pRz4FJvJfclpb7gUjIgrph
	apsVfrACCNxusV+YZUPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRCr2-0006Yx-UZ; Thu, 16 May 2019 09:39:12 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRCqt-0006Y0-4a
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 09:39:05 +0000
Received: by mail-wr1-x441.google.com with SMTP id l2so2567517wrb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 02:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=A/2P/+zpthD8J0bBsqle4/WtYky/qbKCN/ws/oEssuM=;
 b=m5u/91NgYcCMwqpp3FUYVvUI7FaWpb6lu8UoCA0mb3JgCJl2i5+yTfL4AAxWn7lDFG
 0OifT7JQoNjLpOVlUHhPQZMGosBoii6APenGN5yG7ND+t7Q6HK71OsaSViYYWw2J98Il
 SecRk90xPC+c9d2EcYbSfveytXBAx3ysX3jD54W1/QjxWqNWcRNfreroH9lEoUCsIW89
 HpSK2lOiP0PL1P07NIxW11iROCz40L6nBOyV7/VMjw+7HI0uqiKwGPXgIfA1qz3HFHJW
 P9alm1HiH+f5iMpaQzk/s7JN12bwUU3Ice6h4alGT3XOAlsOlmYr7xcZPSfjjgXZxg23
 y4wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=A/2P/+zpthD8J0bBsqle4/WtYky/qbKCN/ws/oEssuM=;
 b=ZNZtENxeK83ib8bncSA+WgTnIcBf0BkCSwuRel8JPS/itfoe0qrAlAiduhJMZY/9m9
 X5TdiC5bCkqQyOdJmZ2RBLMlUXVrC4H6C+XKbVyDAY37vYOYNNm0wa36DnC7okHOlFAn
 OfoBw4uHtgMVSI4s79bpL34WXHRzElQP1tv+wVcPa+RREuLUY6phaD5y4UxD/jXcT66e
 SrYja2x3ayipJzSsjmLL5Jyh+/ihChSet+FufsHqBpc7tIUbrC4leQ5jWFz0jxsL3QzA
 P6oIn3cs1Az7A/ohUfWLHVuAKc5sTKvVKbxmxlwdjzqSj07/hGWpj9BpcrqUb4popz0h
 ytxw==
X-Gm-Message-State: APjAAAU8L5neTTLgVvplKRNuRhHA8LXDclRimPPI106Rb1w8uFyct/ix
 r/+t+8Qs3lMilgODL7HksrIb5w==
X-Google-Smtp-Source: APXvYqwRaCbqpWbqY1SS++Z4UyGqEDPAtFw/ysX1kr1OflkcFMzeJf12oTV4FH5k51KjF8ADJbLCQA==
X-Received: by 2002:a5d:434c:: with SMTP id u12mr4360237wrr.92.1557999541416; 
 Thu, 16 May 2019 02:39:01 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id k184sm8586854wmk.0.2019.05.16.02.38.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 02:39:00 -0700 (PDT)
Subject: Re: [PATCH V12 2/5] thermal: of-thermal: add API for getting sensor
 ID from DT
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "edubezval@gmail.com" <edubezval@gmail.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "agross@kernel.org" <agross@kernel.org>, "olof@lixom.net" <olof@lixom.net>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>
References: <1555384609-7030-1-git-send-email-Anson.Huang@nxp.com>
 <1555384609-7030-2-git-send-email-Anson.Huang@nxp.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <d9c719c4-b5d1-580f-218e-0421126310e1@linaro.org>
Date: Thu, 16 May 2019 11:38:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1555384609-7030-2-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_023903_203559_2F9A469B 
X-CRM114-Status: GOOD (  24.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

T24gMTYvMDQvMjAxOSAwNToyMiwgQW5zb24gSHVhbmcgd3JvdGU6Cj4gT24gc29tZSBwbGF0Zm9y
bXMgbGlrZSBpLk1YOFFYUCwgdGhlIHRoZXJtYWwgZHJpdmVyIG5lZWRzIGEKPiByZWFsIEhXIHNl
bnNvciBJRCBmcm9tIERUIHRoZXJtYWwgem9uZSwgdGhlIEhXIHNlbnNvciBJRCBpcwo+IHVzZWQg
dG8gZ2V0IHRlbXBlcmF0dXJlIGZyb20gU0NVIGZpcm13YXJlLCBhbmQgdGhlIHZpcnR1YWwKPiBz
ZW5zb3IgSUQgc3RhcnRpbmcgZnJvbSAwIHRvIE4gaXMgTk9UIHVzZWQgYXQgYWxsLCB0aGlzIHBh
dGNoCj4gYWRkcyBuZXcgQVBJIHRoZXJtYWxfem9uZV9vZl9nZXRfc2Vuc29yX2lkKCkgdG8gcHJv
dmlkZSB0aGUKPiBmZWF0dXJlIG9mIGdldHRpbmcgc2Vuc29yIElEIGZyb20gRFQgdGhlcm1hbCB6
b25lJ3Mgbm9kZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBbnNvbiBIdWFuZyA8QW5zb24uSHVhbmdA
bnhwLmNvbT4KCkVkdWFyZG8/CgpXaGF0IGRvIHlvdSB0aGluayBhYm91dCB0aGlzIHBhdGNoPwoK
PiAtLS0KPiBOZXcgcGF0Y2guCj4gLS0tCj4gIGRyaXZlcnMvdGhlcm1hbC9vZi10aGVybWFsLmMg
fCA1MyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLQo+ICBpbmNs
dWRlL2xpbnV4L3RoZXJtYWwuaCAgICAgIHwgMTAgKysrKysrKysrCj4gIDIgZmlsZXMgY2hhbmdl
ZCwgNTEgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvdGhlcm1hbC9vZi10aGVybWFsLmMgYi9kcml2ZXJzL3RoZXJtYWwvb2YtdGhlcm1hbC5j
Cj4gaW5kZXggMmRmMDU5Yy4uMmU0MzIwYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3RoZXJtYWwv
b2YtdGhlcm1hbC5jCj4gKysrIGIvZHJpdmVycy90aGVybWFsL29mLXRoZXJtYWwuYwo+IEBAIC00
NDYsNiArNDQ2LDQ2IEBAIHRoZXJtYWxfem9uZV9vZl9hZGRfc2Vuc29yKHN0cnVjdCBkZXZpY2Vf
bm9kZSAqem9uZSwKPiAgfQo+ICAKPiAgLyoqCj4gKyAqIHRoZXJtYWxfem9uZV9vZl9nZXRfc2Vu
c29yX2lkIC0gZ2V0IHNlbnNvciBJRCBmcm9tIGEgRFQgdGhlcm1hbCB6b25lCj4gKyAqIEB0el9u
cDogYSB2YWxpZCB0aGVybWFsIHpvbmUgZGV2aWNlIG5vZGUuCj4gKyAqIEBzZW5zb3Jfc3BlY3M6
IHBvaW50ZXIgdG8gb3V0cHV0IGFyZ3VtZW50cyBzdHJ1Y3R1cmUgd2lsbCBiZSBwYXNzZWQgYmFj
ay4KPiArICogQGlkOiBhIHNlbnNvciBJRCBwb2ludGVyIHdpbGwgYmUgcGFzc2VkIGJhY2suCj4g
KyAqCj4gKyAqIFRoaXMgZnVuY3Rpb24gd2lsbCBnZXQgc2Vuc29yIElEIGZyb20gYSBnaXZlbiB0
aGVybWFsIHpvbmUgbm9kZSwgdXNlCj4gKyAqICJ0aGVybWFsLXNlbnNvcnMiIGFzIGxpc3QgbmFt
ZSwgYW5kIGdldCBzZW5zb3IgSUQgZnJvbSBmaXJzdCBwaGFuZGxlJ3MKPiArICogYXJndW1lbnQu
Cj4gKyAqCj4gKyAqIFJldHVybjogMCBvbiBzdWNjZXNzLCBwcm9wZXIgZXJyb3IgY29kZSBvdGhl
cndpc2UuCj4gKyAqLwo+ICsKPiAraW50IHRoZXJtYWxfem9uZV9vZl9nZXRfc2Vuc29yX2lkKHN0
cnVjdCBkZXZpY2Vfbm9kZSAqdHpfbnAsCj4gKwkJCQkgIHN0cnVjdCBvZl9waGFuZGxlX2FyZ3Mg
KnNlbnNvcl9zcGVjcywKPiArCQkJCSAgdTMyICppZCkKPiArewo+ICsJaW50IHJldDsKPiArCj4g
KwlyZXQgPSBvZl9wYXJzZV9waGFuZGxlX3dpdGhfYXJncyh0el9ucCwKPiArCQkJCQkgInRoZXJt
YWwtc2Vuc29ycyIsCj4gKwkJCQkJICIjdGhlcm1hbC1zZW5zb3ItY2VsbHMiLAo+ICsJCQkJCSAw
LAo+ICsJCQkJCSBzZW5zb3Jfc3BlY3MpOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0Owo+
ICsKPiArCWlmIChzZW5zb3Jfc3BlY3MtPmFyZ3NfY291bnQgPj0gMSkgewo+ICsJCSppZCA9IHNl
bnNvcl9zcGVjcy0+YXJnc1swXTsKPiArCQlXQVJOKHNlbnNvcl9zcGVjcy0+YXJnc19jb3VudCA+
IDEsCj4gKwkJICAgICAiJXBPRm46IHRvbyBtYW55IGNlbGxzIGluIHNlbnNvciBzcGVjaWZpZXIg
JWRcbiIsCj4gKwkJICAgICBzZW5zb3Jfc3BlY3MtPm5wLCBzZW5zb3Jfc3BlY3MtPmFyZ3NfY291
bnQpOwo+ICsJfSBlbHNlIHsKPiArCQkqaWQgPSAwOwo+ICsJfQo+ICsKPiArCXJldHVybiAwOwo+
ICt9Cj4gK0VYUE9SVF9TWU1CT0xfR1BMKHRoZXJtYWxfem9uZV9vZl9nZXRfc2Vuc29yX2lkKTsK
PiArCj4gKy8qKgo+ICAgKiB0aGVybWFsX3pvbmVfb2Zfc2Vuc29yX3JlZ2lzdGVyIC0gcmVnaXN0
ZXJzIGEgc2Vuc29yIHRvIGEgRFQgdGhlcm1hbCB6b25lCj4gICAqIEBkZXY6IGEgdmFsaWQgc3Ry
dWN0IGRldmljZSBwb2ludGVyIG9mIGEgc2Vuc29yIGRldmljZS4gTXVzdCBjb250YWluCj4gICAq
ICAgICAgIGEgdmFsaWQgLm9mX25vZGUsIGZvciB0aGUgc2Vuc29yIG5vZGUuCj4gQEAgLTUwMCwy
MSArNTQwLDEwIEBAIHRoZXJtYWxfem9uZV9vZl9zZW5zb3JfcmVnaXN0ZXIoc3RydWN0IGRldmlj
ZSAqZGV2LCBpbnQgc2Vuc29yX2lkLCB2b2lkICpkYXRhLAo+ICAJCWludCByZXQsIGlkOwo+ICAK
PiAgCQkvKiBGb3Igbm93LCB0aGVybWFsIGZyYW1ld29yayBzdXBwb3J0cyBvbmx5IDEgc2Vuc29y
IHBlciB6b25lICovCj4gLQkJcmV0ID0gb2ZfcGFyc2VfcGhhbmRsZV93aXRoX2FyZ3MoY2hpbGQs
ICJ0aGVybWFsLXNlbnNvcnMiLAo+IC0JCQkJCQkgIiN0aGVybWFsLXNlbnNvci1jZWxscyIsCj4g
LQkJCQkJCSAwLCAmc2Vuc29yX3NwZWNzKTsKPiArCQlyZXQgPSB0aGVybWFsX3pvbmVfb2ZfZ2V0
X3NlbnNvcl9pZChjaGlsZCwgJnNlbnNvcl9zcGVjcywgJmlkKTsKPiAgCQlpZiAocmV0KQo+ICAJ
CQljb250aW51ZTsKPiAgCj4gLQkJaWYgKHNlbnNvcl9zcGVjcy5hcmdzX2NvdW50ID49IDEpIHsK
PiAtCQkJaWQgPSBzZW5zb3Jfc3BlY3MuYXJnc1swXTsKPiAtCQkJV0FSTihzZW5zb3Jfc3BlY3Mu
YXJnc19jb3VudCA+IDEsCj4gLQkJCSAgICAgIiVwT0ZuOiB0b28gbWFueSBjZWxscyBpbiBzZW5z
b3Igc3BlY2lmaWVyICVkXG4iLAo+IC0JCQkgICAgIHNlbnNvcl9zcGVjcy5ucCwgc2Vuc29yX3Nw
ZWNzLmFyZ3NfY291bnQpOwo+IC0JCX0gZWxzZSB7Cj4gLQkJCWlkID0gMDsKPiAtCQl9Cj4gLQo+
ICAJCWlmIChzZW5zb3Jfc3BlY3MubnAgPT0gc2Vuc29yX25wICYmIGlkID09IHNlbnNvcl9pZCkg
ewo+ICAJCQl0emQgPSB0aGVybWFsX3pvbmVfb2ZfYWRkX3NlbnNvcihjaGlsZCwgc2Vuc29yX25w
LAo+ICAJCQkJCQkJIGRhdGEsIG9wcyk7Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvdGhl
cm1hbC5oIGIvaW5jbHVkZS9saW51eC90aGVybWFsLmgKPiBpbmRleCA1ZjQ3MDVmLi45NzBmYjM3
IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbGludXgvdGhlcm1hbC5oCj4gKysrIGIvaW5jbHVkZS9s
aW51eC90aGVybWFsLmgKPiBAQCAtMzc1LDYgKzM3NSw5IEBAIHN0cnVjdCB0aGVybWFsX3RyaXAg
ewo+ICAKPiAgLyogRnVuY3Rpb24gZGVjbGFyYXRpb25zICovCj4gICNpZmRlZiBDT05GSUdfVEhF
Uk1BTF9PRgo+ICtpbnQgdGhlcm1hbF96b25lX29mX2dldF9zZW5zb3JfaWQoc3RydWN0IGRldmlj
ZV9ub2RlICp0el9ucCwKPiArCQkJCSAgc3RydWN0IG9mX3BoYW5kbGVfYXJncyAqc2Vuc29yX3Nw
ZWNzLAo+ICsJCQkJICB1MzIgKmlkKTsKPiAgc3RydWN0IHRoZXJtYWxfem9uZV9kZXZpY2UgKgo+
ICB0aGVybWFsX3pvbmVfb2Zfc2Vuc29yX3JlZ2lzdGVyKHN0cnVjdCBkZXZpY2UgKmRldiwgaW50
IGlkLCB2b2lkICpkYXRhLAo+ICAJCQkJY29uc3Qgc3RydWN0IHRoZXJtYWxfem9uZV9vZl9kZXZp
Y2Vfb3BzICpvcHMpOwo+IEBAIC0zODYsNiArMzg5LDEzIEBAIHN0cnVjdCB0aGVybWFsX3pvbmVf
ZGV2aWNlICpkZXZtX3RoZXJtYWxfem9uZV9vZl9zZW5zb3JfcmVnaXN0ZXIoCj4gIHZvaWQgZGV2
bV90aGVybWFsX3pvbmVfb2Zfc2Vuc29yX3VucmVnaXN0ZXIoc3RydWN0IGRldmljZSAqZGV2LAo+
ICAJCQkJCSAgICBzdHJ1Y3QgdGhlcm1hbF96b25lX2RldmljZSAqdHopOwo+ICAjZWxzZQo+ICsK
PiArc3RhdGljIGludCB0aGVybWFsX3pvbmVfb2ZfZ2V0X3NlbnNvcl9pZChzdHJ1Y3QgZGV2aWNl
X25vZGUgKnR6X25wLAo+ICsJCQkJCSBzdHJ1Y3Qgb2ZfcGhhbmRsZV9hcmdzICpzZW5zb3Jfc3Bl
Y3MsCj4gKwkJCQkJIHUzMiAqaWQpCj4gK3sKPiArCXJldHVybiAtRU5PRU5UOwo+ICt9Cj4gIHN0
YXRpYyBpbmxpbmUgc3RydWN0IHRoZXJtYWxfem9uZV9kZXZpY2UgKgo+ICB0aGVybWFsX3pvbmVf
b2Zfc2Vuc29yX3JlZ2lzdGVyKHN0cnVjdCBkZXZpY2UgKmRldiwgaW50IGlkLCB2b2lkICpkYXRh
LAo+ICAJCQkJY29uc3Qgc3RydWN0IHRoZXJtYWxfem9uZV9vZl9kZXZpY2Vfb3BzICpvcHMpCj4g
CgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3Vy
Y2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFj
ZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMh
L2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cv
PiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
