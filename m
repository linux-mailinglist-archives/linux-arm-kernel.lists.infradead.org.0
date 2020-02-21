Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DFA167DC4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 13:53:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y77crurK7SXqoIU5G7AoDMQI/20Fa/UoouAxUg1R0Tw=; b=QLyRucNWUrgyRz
	S0srAx2naT/zCzlPLz5wbp5rRvs/bsj9KdfIwkrNlTrxzDRkKhgcrKdIMcAirztARg9XYONXmlSRT
	nNkghfaRIj7VmJQW7PIshGBsZFInQplO0C5NnMhpWvmZ3X6OOFUB9VHlTzMdOzqDE3Vbmjypo55NT
	pcAIc1PECZile1qaEbZLfHmG509/smpzHOcntc0mlr2FC7fCwbWJpif4oBnZ8oSvHQh5TSvpS3jp6
	ONVVrglS1gGmQTilPbOb3g8arV0C4Edd0hsn60JxQ4mJe/tywHFYPEmKouw9uRZ4ZU6khqQje9lLF
	bsFAmmvnf8gdHdjDh2+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j57nz-0002IL-6u; Fri, 21 Feb 2020 12:53:19 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j57nn-0002Hb-9w
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 12:53:10 +0000
Received: by mail-wr1-x441.google.com with SMTP id k11so1925862wrd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 04:53:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=1Ecw0TwcU7uRxX0RbgoPbcukxSNyerj4Gg5H+/7jGU4=;
 b=Is97m+zF/OlL47unjgTyrlN2h5LOz7b+bCuBXaZ7I4NfCKXkYB+eEn9tr8HWToU5hS
 LcgaMH98pZ8E1XJVjarNN4j5rDbOg0TvWZqonAeorXDYmylpc5/p3a6zdZo0+OViPxVf
 vjaBs1HwK+d066WsYLlvTd/cfgCUGAocMJZCBxAbIYOmchE4hYYwfT2fgcgtO/lDa6n+
 s46hilc6kKO54iNjcQIKiz/zMeNqSx8RMh2L/6aFfRv62MCyYyw9TIi26wXy7zkiHsnO
 0qJx6mpEC9etxLhetlmYRb+0QZ7ItHTVG67ZgyBXOa2HCHtlIL/DA/fAs1ZuOWKYzTqv
 60OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=1Ecw0TwcU7uRxX0RbgoPbcukxSNyerj4Gg5H+/7jGU4=;
 b=BIYahquoBA/EQK7u02vBtZB3NSe6nP/MiGxdv3IS9SyfRYRFcwxlRoPovASIVF8/u+
 YHdHqPRiDfyfDZ/Xuns2Ak2X+KGThBX3Fp7TQ26ngnZvQKwq7uWAPrAFQ+SddZ3JIoUn
 jVeWk8K7y/Qpq/RbpE9HfmPRQa09sDvsTxsQ/EDTLM8VBoyKRoM+XQfrdQU11if+EfKw
 a5SgVFts3MLAjAgPnnybYeocI0tHlvhO1e91vD+VFS9lyQ+EMdybM68/pbVaGMcrExaH
 9+zWmM7ju+MlQesFm42akrHcQimLOIirx+YrxN2u65phWQVx8Z9ajjo69EUflnKAMHKb
 aZ4Q==
X-Gm-Message-State: APjAAAWfc2hizkFOYEnlK/L4+bm/N/4UXB0QXRgh0F7g/HFcoaLwh87e
 60ksS4iYKOeX+Ddts7gII6GjrQ==
X-Google-Smtp-Source: APXvYqxlFnvz5Oqlv3ZiF1S9hXG57kU+AY4Dg2xiBGuM31y83G3pczXUHHnhoRpdAgUpGaKfUCxWBQ==
X-Received: by 2002:a05:6000:124b:: with SMTP id
 j11mr45114087wrx.285.1582289584497; 
 Fri, 21 Feb 2020 04:53:04 -0800 (PST)
Received: from linaro.org ([2a01:e34:ed2f:f020:2dfb:b5ce:9043:4adb])
 by smtp.gmail.com with ESMTPSA id k10sm3781715wrd.68.2020.02.21.04.53.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 21 Feb 2020 04:53:03 -0800 (PST)
Date: Fri, 21 Feb 2020 13:53:00 +0100
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V15 RESEND 3/5] thermal: imx_sc: add i.MX system
 controller thermal support
Message-ID: <20200221125300.GB10516@linaro.org>
References: <1582161028-2844-1-git-send-email-Anson.Huang@nxp.com>
 <1582161028-2844-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582161028-2844-3-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_045307_377566_DE4AB1A2 
X-CRM114-Status: GOOD (  23.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, peng.fan@nxp.com, catalin.marinas@arm.com,
 bjorn.andersson@linaro.org, srinivas.kandagatla@linaro.org,
 leonard.crestez@nxp.com, will@kernel.org, amit.kucheria@verdurent.com,
 festevam@gmail.com, krzk@kernel.org, marcin.juszkiewicz@linaro.org,
 Linux-imx@nxp.com, rui.zhang@intel.com, linux@roeck-us.net,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org, s.hauer@pengutronix.de,
 robh+dt@kernel.org, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 fugang.duan@nxp.com, linux-kernel@vger.kernel.org, dinguyen@kernel.org,
 kernel@pengutronix.de, olof@lixom.net, shawnguo@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5zb24sCgpzb3JyeSBmb3IgdGhlIGRlbGF5IHdpdGggdGhpcyByZXZpZXcsIGhvcGVmdWxs
eSB0aGUgdXBzdHJlYW1pbmcgd2lsbCBiZSBub3cgYQpiaXQgbW9yZSBzbW9vdGguCgpBcGFydCB0
aGUgY29tbWVudHMgYmVsb3csIHRoZSBkcml2ZXIgbG9va3MgZ29vZCB0byBtZS4KCk9uIFRodSwg
RmViIDIwLCAyMDIwIGF0IDA5OjEwOjI2QU0gKzA4MDAsIEFuc29uIEh1YW5nIHdyb3RlOgo+IGku
TVg4UVhQIGlzIGFuIEFSTXY4IFNvQyB3aGljaCBoYXMgYSBDb3J0ZXgtTTQgc3lzdGVtIGNvbnRy
b2xsZXIKPiBpbnNpZGUsIHRoZSBzeXN0ZW0gY29udHJvbGxlciBpcyBpbiBjaGFyZ2Ugb2YgY29u
dHJvbGxpbmcgcG93ZXIsCj4gY2xvY2sgYW5kIHRoZXJtYWwgc2Vuc29ycyBldGMuLgo+IAo+IFRo
aXMgcGF0Y2ggYWRkcyBpLk1YIHN5c3RlbSBjb250cm9sbGVyIHRoZXJtYWwgZHJpdmVyIHN1cHBv
cnQsCj4gTGludXgga2VybmVsIGhhcyB0byBjb21tdW5pY2F0ZSB3aXRoIHN5c3RlbSBjb250cm9s
bGVyIHZpYSBNVQo+IChtZXNzYWdlIHVuaXQpIElQQyB0byBnZXQgZWFjaCB0aGVybWFsIHNlbnNv
cidzIHRlbXBlcmF0dXJlLAo+IGl0IHN1cHBvcnRzIG11bHRpcGxlIHNlbnNvcnMgd2hpY2ggYXJl
IHBhc3NlZCBmcm9tIGRldmljZSB0cmVlLAo+IHBsZWFzZSBzZWUgdGhlIGJpbmRpbmcgZG9jIGZv
ciBkZXRhaWxzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuc29uIEh1YW5nIDxBbnNvbi5IdWFuZ0Bu
eHAuY29tPgo+IC0tLQo+IE5vIGNoYW5nZS4KPiAtLS0KPiAgZHJpdmVycy90aGVybWFsL0tjb25m
aWcgICAgICAgICAgfCAgMTEgKysrCj4gIGRyaXZlcnMvdGhlcm1hbC9NYWtlZmlsZSAgICAgICAg
IHwgICAxICsKPiAgZHJpdmVycy90aGVybWFsL2lteF9zY190aGVybWFsLmMgfCAxNDIgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTU0
IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvdGhlcm1hbC9pbXhf
c2NfdGhlcm1hbC5jCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9LY29uZmlnIGIv
ZHJpdmVycy90aGVybWFsL0tjb25maWcKPiBpbmRleCA1YTA1ZGI1Li5kMWNiOGRjIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC9LY29uZmlnCj4gKysrIGIvZHJpdmVycy90aGVybWFsL0tj
b25maWcKPiBAQCAtMjUxLDYgKzI1MSwxNyBAQCBjb25maWcgSU1YX1RIRVJNQUwKPiAgCSAgY3B1
ZnJlcSBpcyB1c2VkIGFzIHRoZSBjb29saW5nIGRldmljZSB0byB0aHJvdHRsZSBDUFVzIHdoZW4g
dGhlCj4gIAkgIHBhc3NpdmUgdHJpcCBpcyBjcm9zc2VkLgo+ICAKPiArY29uZmlnIElNWF9TQ19U
SEVSTUFMCj4gKwl0cmlzdGF0ZSAiVGVtcGVyYXR1cmUgc2Vuc29yIGRyaXZlciBmb3IgTlhQIGku
TVggU29DcyB3aXRoIFN5c3RlbSBDb250cm9sbGVyIgo+ICsJZGVwZW5kcyBvbiBBUkNIX01YQyAm
JiBJTVhfU0NVCgpJTVhfU0NVIGRlcGVuZHMgb24gSU1YX01CT1ggd2hpY2ggZGVwZW5kcyBvbiBB
UkNIX01YQy4gVGhpcyBkZXBlbmRlbmN5IGNvdWxkIGJlCnNpbXBsaWZpZWQuCgpBbHNvIGFkZCB0
aGUgQ09NUElMRV9URVNUIG9wdGlvbiB0byBpbXByb3ZlIGNvbXBpbGF0aW9uIHRlc3QgY292ZXJh
Z2UuCgo+ICsJZGVwZW5kcyBvbiBPRgo+ICsJaGVscAo+ICsJICBTdXBwb3J0IGZvciBUZW1wZXJh
dHVyZSBNb25pdG9yIChURU1QTU9OKSBmb3VuZCBvbiBOWFAgaS5NWCBTb0NzIHdpdGgKPiArCSAg
c3lzdGVtIGNvbnRyb2xsZXIgaW5zaWRlLCBMaW51eCBrZXJuZWwgaGFzIHRvIGNvbW11bmljYXRl
IHdpdGggc3lzdGVtCj4gKwkgIGNvbnRyb2xsZXIgdmlhIE1VIChtZXNzYWdlIHVuaXQpIElQQyB0
byBnZXQgdGVtcGVyYXR1cmUgZnJvbSB0aGVybWFsCj4gKwkgIHNlbnNvci4gSXQgc3VwcG9ydHMg
b25lIGNyaXRpY2FsIHRyaXAgcG9pbnQgYW5kIG9uZQo+ICsJICBwYXNzaXZlIHRyaXAgcG9pbnQg
Zm9yIGVhY2ggdGhlcm1hbCBzZW5zb3IuCj4gKwo+ICBjb25maWcgTUFYNzc2MjBfVEhFUk1BTAo+
ICAJdHJpc3RhdGUgIlRlbXBlcmF0dXJlIHNlbnNvciBkcml2ZXIgZm9yIE1heGltIE1BWDc3NjIw
IFBNSUMiCj4gIAlkZXBlbmRzIG9uIE1GRF9NQVg3NzYyMAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3RoZXJtYWwvTWFrZWZpbGUgYi9kcml2ZXJzL3RoZXJtYWwvTWFrZWZpbGUKPiBpbmRleCA5ZmI4
OGUyLi5hMTFhNmQ4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC9NYWtlZmlsZQo+ICsr
KyBiL2RyaXZlcnMvdGhlcm1hbC9NYWtlZmlsZQo+IEBAIC00Myw2ICs0Myw3IEBAIG9iai0kKENP
TkZJR19EQjg1MDBfVEhFUk1BTCkJKz0gZGI4NTAwX3RoZXJtYWwubwo+ICBvYmotJChDT05GSUdf
QVJNQURBX1RIRVJNQUwpCSs9IGFybWFkYV90aGVybWFsLm8KPiAgb2JqLSQoQ09ORklHX1RBTkdP
X1RIRVJNQUwpCSs9IHRhbmdvX3RoZXJtYWwubwo+ICBvYmotJChDT05GSUdfSU1YX1RIRVJNQUwp
CSs9IGlteF90aGVybWFsLm8KPiArb2JqLSQoQ09ORklHX0lNWF9TQ19USEVSTUFMKQkrPSBpbXhf
c2NfdGhlcm1hbC5vCj4gIG9iai0kKENPTkZJR19NQVg3NzYyMF9USEVSTUFMKQkrPSBtYXg3NzYy
MF90aGVybWFsLm8KPiAgb2JqLSQoQ09ORklHX1FPUklRX1RIRVJNQUwpCSs9IHFvcmlxX3RoZXJt
YWwubwo+ICBvYmotJChDT05GSUdfREE5MDYyX1RIRVJNQUwpCSs9IGRhOTA2Mi10aGVybWFsLm8K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL2lteF9zY190aGVybWFsLmMgYi9kcml2ZXJz
L3RoZXJtYWwvaW14X3NjX3RoZXJtYWwuYwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXgg
MDAwMDAwMC4uZDQwNmVjYgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL3RoZXJtYWwv
aW14X3NjX3RoZXJtYWwuYwo+IEBAIC0wLDAgKzEsMTQyIEBACj4gKy8vIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiBHUEwtMi4wKwo+ICsvKgo+ICsgKiBDb3B5cmlnaHQgMjAxOC0yMDE5IE5YUC4K
CipzaWdoKiAyMDIwIG5vdyAuLi4KClsgLi4uIF0KCj4gK3N0YXRpYyBpbnQgaW14X3NjX3RoZXJt
YWxfZ2V0X3RlbXAodm9pZCAqZGF0YSwgaW50ICp0ZW1wKQo+ICt7Cj4gKwlzdHJ1Y3QgaW14X3Nj
X21zZ19taXNjX2dldF90ZW1wIG1zZzsKPiArCXN0cnVjdCBpbXhfc2NfcnBjX21zZyAqaGRyID0g
Jm1zZy5oZHI7Cj4gKwlzdHJ1Y3QgaW14X3NjX3NlbnNvciAqc2Vuc29yID0gZGF0YTsKPiArCWlu
dCByZXQ7Cj4gKwo+ICsJbXNnLmRhdGEucmVxLnJlc291cmNlX2lkID0gc2Vuc29yLT5yZXNvdXJj
ZV9pZDsKPiArCW1zZy5kYXRhLnJlcS50eXBlID0gSU1YX1NDX0NfVEVNUDsKPiArCj4gKwloZHIt
PnZlciA9IElNWF9TQ19SUENfVkVSU0lPTjsKPiArCWhkci0+c3ZjID0gSU1YX1NDX1JQQ19TVkNf
TUlTQzsKPiArCWhkci0+ZnVuYyA9IElNWF9TQ19NSVNDX0ZVTkNfR0VUX1RFTVA7Cj4gKwloZHIt
PnNpemUgPSAyOwoKQ2FuIHlvdSBleHBsYWluIHRoaXMgJ3NpemUnIHZhbHVlPwoKWyAuLi4gXQoK
PiArTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgaW14X3NjX3RoZXJtYWxfdGFibGUpOwo+ICsKPiAr
c3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgaW14X3NjX3RoZXJtYWxfZHJpdmVyID0gewo+
ICsJCS5wcm9iZSA9IGlteF9zY190aGVybWFsX3Byb2JlLAoKVGhlIGRyaXZlciBjYW4gYmUgY29t
cGlsZWQgYXMgbW9kdWxlIGJ1dCB0aGVyZSBpcyBubyAncmVtb3ZlJyBjYWxsYmFjawoKPiArCQku
ZHJpdmVyID0gewo+ICsJCQkubmFtZSA9ICJpbXgtc2MtdGhlcm1hbCIsCj4gKwkJCS5vZl9tYXRj
aF90YWJsZSA9IGlteF9zY190aGVybWFsX3RhYmxlLAo+ICsJCX0sCj4gK307Cj4gK21vZHVsZV9w
bGF0Zm9ybV9kcml2ZXIoaW14X3NjX3RoZXJtYWxfZHJpdmVyKTsKPiArCj4gK01PRFVMRV9BVVRI
T1IoIkFuc29uIEh1YW5nIDxBbnNvbi5IdWFuZ0BueHAuY29tPiIpOwo+ICtNT0RVTEVfREVTQ1JJ
UFRJT04oIlRoZXJtYWwgZHJpdmVyIGZvciBOWFAgaS5NWCBTb0NzIHdpdGggc3lzdGVtIGNvbnRy
b2xsZXIiKTsKPiArTU9EVUxFX0xJQ0VOU0UoIkdQTCB2MiIpOwoKCgotLSAKCiA8aHR0cDovL3d3
dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFS
TSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xp
bmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRl
ciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
