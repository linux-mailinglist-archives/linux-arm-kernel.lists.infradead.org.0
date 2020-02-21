Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A20CA167916
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 10:11:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/f4Tnxp4kwhTNFmfJTQbp30v1PK3qxvEhwnVApnmoY=; b=DwJ+8VolOvcdUp
	2TFO0X53mrGofjHNzsOXZbqCVrwAsMF7uCKK9a5YvrbyIbyKBfCRup0W1M4ys1N4clqIydexNwyWk
	P9ZIDtmjNfCt/1DWtVQ4n6hgWyYQtawJwl+rniCbkexZHhKCxbfol5wNjqMcPVTXgU+Cvz1oISM2E
	+si9PRhhRVKMbsPl+hU9o7hme5jz2kypX0XGvKZqok7akWD8jatVpa5Elq6iIKjE+Ac0eoIBCmrQ2
	9W4ge/Quxi2XrZLMckjMcD+Nosfbfnw9r+FUDLAqcZOcsN1tH9dAsXEBEOSzkgzmDrFCtY8xHPJBC
	EzVNucfPEr8FdeFbNLeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j54LS-00017I-Dy; Fri, 21 Feb 2020 09:11:38 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j54L7-00011f-Oi
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 09:11:19 +0000
Received: by mail-wm1-x342.google.com with SMTP id q9so856141wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 01:11:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=azk1Q7pvujWav83kMuWej4FskuG4+RLdHCFFEc4Heqw=;
 b=z2T3cugDBfcE9X09MGRjd1QXuGNe3k89XEsa3u0eDeWOjb3aCWK7Ft/FfZK/LaBp5S
 mzIVECOghk4NpHUsInWmKqapwZC/g4y0SeeaJRHeXOhBNDJbuLJz+Nyc7jvkzsLPKiii
 FuFaEvWrnG8eDMWl3EKLJrSY2eoIeqEaDiZzR5HMvECjyYnN1bjVGuTMPjIJWvypDWH6
 8M+ghap0Yu9P8fqWKEC2v3RavqEHHLRV4CxBb3p8tpN7PblBBfBHF/qC89Xr1rU3UZjk
 7cXlSzm2/U6bWYXYtYr/47MqGjJlaD9W/zyzzhgE5xO3NSUNm1WRL8SwIFIH8V6tAsZ1
 O1bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=azk1Q7pvujWav83kMuWej4FskuG4+RLdHCFFEc4Heqw=;
 b=CIXvODSnaXuhJZgp6TsxioYFmWoXtJRHaKHgeSOh4jI7VzLRkCl9ovPy6lUh3l6he1
 kRtZeXPE+uR3oFGj7x9LKqulxd0SbIn5ehcR1UtovW4yUt0QeWL7rl3LeS64wOLJNzbh
 MqETBTRW6xdXa44QPnNhpUIeCegAkTmGeVz62CTewBN5BLLuRQkXzkgtKhUFEra4S2j2
 BCGPUFuo2e98FyHtOBGJPSvbcBTwmpotG/LWOoCZH4JvUFFTngRJ3jgCOPvdBJ1byNa2
 2o2OYxC8oTyM7JBnHGTEJ0ZCEhzPrSrRFCmFfxH/K9XG1DkQC2TDlPBnlSEJfRJ1tVdg
 CcOg==
X-Gm-Message-State: APjAAAWzHKMwSRh5KKzNjYvD9CqyPUHM/WMXpDjadenNi5rD/hD+rkWs
 KISVn/YjhQLLArQdjLgiwBHVJQ==
X-Google-Smtp-Source: APXvYqyS0hUOw4p2ui00nsj3c5MOAkh4BV79wy3Sn7j7GPpD+1H3vzOFdO/cs7FwCSTWi1sGit46/w==
X-Received: by 2002:a7b:c14d:: with SMTP id z13mr2534616wmi.71.1582276276286; 
 Fri, 21 Feb 2020 01:11:16 -0800 (PST)
Received: from linaro.org ([2a01:e34:ed2f:f020:2dfb:b5ce:9043:4adb])
 by smtp.gmail.com with ESMTPSA id u23sm3032858wmu.14.2020.02.21.01.11.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 21 Feb 2020 01:11:15 -0800 (PST)
Date: Fri, 21 Feb 2020 10:11:12 +0100
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V15 RESEND 2/5] thermal: of-thermal: add API for getting
 sensor ID from DT
Message-ID: <20200221091112.GA10516@linaro.org>
References: <1582161028-2844-1-git-send-email-Anson.Huang@nxp.com>
 <1582161028-2844-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582161028-2844-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_011117_859045_1BF04462 
X-CRM114-Status: GOOD (  23.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

SGksCgpPbiBUaHUsIEZlYiAyMCwgMjAyMCBhdCAwOToxMDoyNUFNICswODAwLCBBbnNvbiBIdWFu
ZyB3cm90ZToKPiBUaGlzIHBhdGNoIGFkZHMgbmV3IEFQSSB0aGVybWFsX3pvbmVfb2ZfZ2V0X3Nl
bnNvcl9pZCgpIHRvCj4gcHJvdmlkZSB0aGUgZmVhdHVyZSBvZiBnZXR0aW5nIHNlbnNvciBJRCBm
cm9tIERUIHRoZXJtYWwKPiB6b25lJ3Mgbm9kZS4gSXQncyB1c2VmdWwgZm9yIHRoZXJtYWwgZHJp
dmVyIHRvIHJlZ2lzdGVyIHRoZQo+IHNwZWNpZmljIHRoZXJtYWwgem9uZSBkZXZpY2VzIGZyb20g
RFQgaW4gYSBjb21tb24gd2F5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuc29uIEh1YW5nIDxBbnNv
bi5IdWFuZ0BueHAuY29tPgo+IFJldmlld2VkLWJ5OiBEb25nIEFpc2hlbmcgPGFpc2hlbmcuZG9u
Z0BueHAuY29tPgo+IC0tLQo+IENoYW5nZXMgc2luY2UgVjE0Ogo+IAktIGltcHJvdmUgdGhlIGNv
bW1pdCBtZXNzYWdlIGFuZCBjb21tZW50LCBubyBjb2RlIGNoYW5nZS4KPiAtLS0KPiAgZHJpdmVy
cy90aGVybWFsL29mLXRoZXJtYWwuYyB8IDY1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKy0tLS0tLS0tLS0tCj4gIGluY2x1ZGUvbGludXgvdGhlcm1hbC5oICAgICAgfCAxMCArKysr
KysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgNTkgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9vZi10aGVybWFsLmMgYi9kcml2ZXJz
L3RoZXJtYWwvb2YtdGhlcm1hbC5jCj4gaW5kZXggZWYwYmFhOS4uMGY1NzEwOCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3RoZXJtYWwvb2YtdGhlcm1hbC5jCj4gKysrIGIvZHJpdmVycy90aGVybWFs
L29mLXRoZXJtYWwuYwo+IEBAIC00NDksNiArNDQ5LDUzIEBAIHRoZXJtYWxfem9uZV9vZl9hZGRf
c2Vuc29yKHN0cnVjdCBkZXZpY2Vfbm9kZSAqem9uZSwKPiAgfQo+ICAKPiAgLyoqCj4gKyAqIHRo
ZXJtYWxfem9uZV9vZl9nZXRfc2Vuc29yX2lkIC0gZ2V0IHNlbnNvciBJRCBmcm9tIGEgRFQgdGhl
cm1hbCB6b25lCj4gKyAqIEB0el9ucDogYSB2YWxpZCB0aGVybWFsIHpvbmUgZGV2aWNlIG5vZGUu
Cj4gKyAqIEBzZW5zb3JfbnA6IGEgc2Vuc29yIG5vZGUgb2YgYSB2YWxpZCBzZW5zb3IgZGV2aWNl
Lgo+ICsgKiBAaWQ6IHRoZSBzZW5zb3IgSUQgcmV0dXJuZWQgaWYgc3VjY2Vzcy4KPiArICoKPiAr
ICogVGhpcyBmdW5jdGlvbiB3aWxsIGdldCBzZW5zb3IgSUQgZnJvbSBhIGdpdmVuIHRoZXJtYWwg
em9uZSBub2RlIGFuZAo+ICsgKiB0aGUgc2Vuc29yIG5vZGUgbXVzdCBtYXRjaCB0aGUgdGVtcGVy
YXR1cmUgcHJvdmlkZXIgQHNlbnNvcl9ucC4KPiArICoKPiArICogUmV0dXJuOiAwIG9uIHN1Y2Nl
c3MsIHByb3BlciBlcnJvciBjb2RlIG90aGVyd2lzZS4KPiArICovCj4gKwo+ICtpbnQgdGhlcm1h
bF96b25lX29mX2dldF9zZW5zb3JfaWQoc3RydWN0IGRldmljZV9ub2RlICp0el9ucCwKPiArCQkJ
CSAgc3RydWN0IGRldmljZV9ub2RlICpzZW5zb3JfbnAsCj4gKwkJCQkgIHUzMiAqaWQpCj4gK3sK
PiArCXN0cnVjdCBvZl9waGFuZGxlX2FyZ3Mgc2Vuc29yX3NwZWNzOwo+ICsJaW50IHJldDsKPiAr
Cj4gKwlyZXQgPSBvZl9wYXJzZV9waGFuZGxlX3dpdGhfYXJncyh0el9ucCwKPiArCQkJCQkgInRo
ZXJtYWwtc2Vuc29ycyIsCj4gKwkJCQkJICIjdGhlcm1hbC1zZW5zb3ItY2VsbHMiLAo+ICsJCQkJ
CSAwLAo+ICsJCQkJCSAmc2Vuc29yX3NwZWNzKTsKPiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIHJl
dDsKPiArCj4gKwlpZiAoc2Vuc29yX3NwZWNzLm5wICE9IHNlbnNvcl9ucCkgewo+ICsJCW9mX25v
ZGVfcHV0KHNlbnNvcl9zcGVjcy5ucCk7Cj4gKwkJcmV0dXJuIC1FTk9ERVY7Cj4gKwl9Cj4gKwo+
ICsJaWYgKHNlbnNvcl9zcGVjcy5hcmdzX2NvdW50ID49IDEpIHsKCkZvciB0aGUgc2FrZSBvZiBj
bGFyaXR5LCBtb3ZlIHRoZSBzYW5pdHkgdGVzdHMgYmVmb3JlOgoKCWlmIChzZW5zb3Jfc3BlY3Mu
YXJnc19jb3VudCA+IDEpCgkJcHJfd2FybigiLi4uIik7CgoJKmlkID0gc2Vuc29yX3NwZWNzLmFy
Z3NfY291bnQgPyBzZW5zb3Jfc3BlY3MuYXJnc1swXSA6IDA7Cgo+ICsJCSppZCA9IHNlbnNvcl9z
cGVjcy5hcmdzWzBdOwo+ICsJCVdBUk4oc2Vuc29yX3NwZWNzLmFyZ3NfY291bnQgPiAxLAo+ICsJ
CSAgICAgIiVwT0ZuOiB0b28gbWFueSBjZWxscyBpbiBzZW5zb3Igc3BlY2lmaWVyICVkXG4iLAo+
ICsJCSAgICAgc2Vuc29yX3NwZWNzLm5wLCBzZW5zb3Jfc3BlY3MuYXJnc19jb3VudCk7Cj4gKwl9
IGVsc2Ugewo+ICsJCSppZCA9IDA7Cj4gKwl9Cj4gKwo+ICsJb2Zfbm9kZV9wdXQoc2Vuc29yX3Nw
ZWNzLm5wKTsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICtFWFBPUlRfU1lNQk9MX0dQTCh0aGVy
bWFsX3pvbmVfb2ZfZ2V0X3NlbnNvcl9pZCk7Cj4gKwo+ICsvKioKPiAgICogdGhlcm1hbF96b25l
X29mX3NlbnNvcl9yZWdpc3RlciAtIHJlZ2lzdGVycyBhIHNlbnNvciB0byBhIERUIHRoZXJtYWwg
em9uZQo+ICAgKiBAZGV2OiBhIHZhbGlkIHN0cnVjdCBkZXZpY2UgcG9pbnRlciBvZiBhIHNlbnNv
ciBkZXZpY2UuIE11c3QgY29udGFpbgo+ICAgKiAgICAgICBhIHZhbGlkIC5vZl9ub2RlLCBmb3Ig
dGhlIHNlbnNvciBub2RlLgo+IEBAIC00OTksMzYgKzU0NiwyMiBAQCB0aGVybWFsX3pvbmVfb2Zf
c2Vuc29yX3JlZ2lzdGVyKHN0cnVjdCBkZXZpY2UgKmRldiwgaW50IHNlbnNvcl9pZCwgdm9pZCAq
ZGF0YSwKPiAgCXNlbnNvcl9ucCA9IG9mX25vZGVfZ2V0KGRldi0+b2Zfbm9kZSk7Cj4gIAo+ICAJ
Zm9yX2VhY2hfYXZhaWxhYmxlX2NoaWxkX29mX25vZGUobnAsIGNoaWxkKSB7Cj4gLQkJc3RydWN0
IG9mX3BoYW5kbGVfYXJncyBzZW5zb3Jfc3BlY3M7Cj4gIAkJaW50IHJldCwgaWQ7Cj4gIAo+ICAJ
CS8qIEZvciBub3csIHRoZXJtYWwgZnJhbWV3b3JrIHN1cHBvcnRzIG9ubHkgMSBzZW5zb3IgcGVy
IHpvbmUgKi8KPiAtCQlyZXQgPSBvZl9wYXJzZV9waGFuZGxlX3dpdGhfYXJncyhjaGlsZCwgInRo
ZXJtYWwtc2Vuc29ycyIsCj4gLQkJCQkJCSAiI3RoZXJtYWwtc2Vuc29yLWNlbGxzIiwKPiAtCQkJ
CQkJIDAsICZzZW5zb3Jfc3BlY3MpOwo+ICsJCXJldCA9IHRoZXJtYWxfem9uZV9vZl9nZXRfc2Vu
c29yX2lkKGNoaWxkLCBzZW5zb3JfbnAsICZpZCk7Cj4gIAkJaWYgKHJldCkKPiAgCQkJY29udGlu
dWU7Cj4gIAo+IC0JCWlmIChzZW5zb3Jfc3BlY3MuYXJnc19jb3VudCA+PSAxKSB7Cj4gLQkJCWlk
ID0gc2Vuc29yX3NwZWNzLmFyZ3NbMF07Cj4gLQkJCVdBUk4oc2Vuc29yX3NwZWNzLmFyZ3NfY291
bnQgPiAxLAo+IC0JCQkgICAgICIlcE9GbjogdG9vIG1hbnkgY2VsbHMgaW4gc2Vuc29yIHNwZWNp
ZmllciAlZFxuIiwKPiAtCQkJICAgICBzZW5zb3Jfc3BlY3MubnAsIHNlbnNvcl9zcGVjcy5hcmdz
X2NvdW50KTsKPiAtCQl9IGVsc2Ugewo+IC0JCQlpZCA9IDA7Cj4gLQkJfQoKUGxlYXNlIHRha2Ug
YWxzbyB0aGUgb3Bwb3J0dW5pdHkgdG8gZmFjdG9yIG91dCB0aGUgZnVuY3Rpb24KdGhlcm1hbF96
b25lX29mX3NlbnNvcl9yZWdpc3RlcigpLgoKPiAtCQlpZiAoc2Vuc29yX3NwZWNzLm5wID09IHNl
bnNvcl9ucCAmJiBpZCA9PSBzZW5zb3JfaWQpIHsKPiArCQlpZiAoaWQgPT0gc2Vuc29yX2lkKSB7
Cj4gIAkJCXR6ZCA9IHRoZXJtYWxfem9uZV9vZl9hZGRfc2Vuc29yKGNoaWxkLCBzZW5zb3JfbnAs
Cj4gIAkJCQkJCQkgZGF0YSwgb3BzKTsKPiAgCQkJaWYgKCFJU19FUlIodHpkKSkKPiAgCQkJCXR6
ZC0+b3BzLT5zZXRfbW9kZSh0emQsIFRIRVJNQUxfREVWSUNFX0VOQUJMRUQpOwo+ICAKPiAtCQkJ
b2Zfbm9kZV9wdXQoc2Vuc29yX3NwZWNzLm5wKTsKPiAgCQkJb2Zfbm9kZV9wdXQoY2hpbGQpOwo+
ICAJCQlnb3RvIGV4aXQ7Cj4gIAkJfQo+IC0JCW9mX25vZGVfcHV0KHNlbnNvcl9zcGVjcy5ucCk7
Cj4gIAl9Cj4gIGV4aXQ6Cj4gIAlvZl9ub2RlX3B1dChzZW5zb3JfbnApOwo+IGRpZmYgLS1naXQg
YS9pbmNsdWRlL2xpbnV4L3RoZXJtYWwuaCBiL2luY2x1ZGUvbGludXgvdGhlcm1hbC5oCj4gaW5k
ZXggMTI2OTEzYzYuLjUzZTZmNjcgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC90aGVybWFs
LmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L3RoZXJtYWwuaAo+IEBAIC0zNjQsNiArMzY0LDkgQEAg
c3RydWN0IHRoZXJtYWxfdHJpcCB7Cj4gIAo+ICAvKiBGdW5jdGlvbiBkZWNsYXJhdGlvbnMgKi8K
PiAgI2lmZGVmIENPTkZJR19USEVSTUFMX09GCj4gK2ludCB0aGVybWFsX3pvbmVfb2ZfZ2V0X3Nl
bnNvcl9pZChzdHJ1Y3QgZGV2aWNlX25vZGUgKnR6X25wLAo+ICsJCQkJICBzdHJ1Y3QgZGV2aWNl
X25vZGUgKnNlbnNvcl9ucCwKPiArCQkJCSAgdTMyICppZCk7Cj4gIHN0cnVjdCB0aGVybWFsX3pv
bmVfZGV2aWNlICoKPiAgdGhlcm1hbF96b25lX29mX3NlbnNvcl9yZWdpc3RlcihzdHJ1Y3QgZGV2
aWNlICpkZXYsIGludCBpZCwgdm9pZCAqZGF0YSwKPiAgCQkJCWNvbnN0IHN0cnVjdCB0aGVybWFs
X3pvbmVfb2ZfZGV2aWNlX29wcyAqb3BzKTsKPiBAQCAtMzc1LDYgKzM3OCwxMyBAQCBzdHJ1Y3Qg
dGhlcm1hbF96b25lX2RldmljZSAqZGV2bV90aGVybWFsX3pvbmVfb2Zfc2Vuc29yX3JlZ2lzdGVy
KAo+ICB2b2lkIGRldm1fdGhlcm1hbF96b25lX29mX3NlbnNvcl91bnJlZ2lzdGVyKHN0cnVjdCBk
ZXZpY2UgKmRldiwKPiAgCQkJCQkgICAgc3RydWN0IHRoZXJtYWxfem9uZV9kZXZpY2UgKnR6KTsK
PiAgI2Vsc2UKPiArCj4gK3N0YXRpYyBpbnQgdGhlcm1hbF96b25lX29mX2dldF9zZW5zb3JfaWQo
c3RydWN0IGRldmljZV9ub2RlICp0el9ucCwKPiArCQkJCQkgc3RydWN0IGRldmljZV9ub2RlICpz
ZW5zb3JfbnAsCj4gKwkJCQkJIHUzMiAqaWQpCj4gK3sKPiArCXJldHVybiAtRU5PRU5UOwo+ICt9
Cj4gIHN0YXRpYyBpbmxpbmUgc3RydWN0IHRoZXJtYWxfem9uZV9kZXZpY2UgKgo+ICB0aGVybWFs
X3pvbmVfb2Zfc2Vuc29yX3JlZ2lzdGVyKHN0cnVjdCBkZXZpY2UgKmRldiwgaW50IGlkLCB2b2lk
ICpkYXRhLAo+ICAJCQkJY29uc3Qgc3RydWN0IHRoZXJtYWxfem9uZV9vZl9kZXZpY2Vfb3BzICpv
cHMpCj4gLS0gCj4gMi43LjQKPiAKCi0tIAoKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5h
cm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5h
cm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8Cjxo
dHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGlu
YXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
