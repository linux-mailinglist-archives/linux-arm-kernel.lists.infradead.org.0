Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 990B71A8EA1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 00:30:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5iL/DVY2EUAXCtVMPpDGejm7p9zejVcIGXdTllnCc4U=; b=hOwtfQlREORaFh
	WtCECbXa1sPpywpFXeNE1M1KnEjdcajJ35Kquq8q/h0JUIGBYJHYvrTkUskc3kpplY4mxeqsznDcr
	gQ2U7/xS71LMRZy/2UCPfVcsYtv3r1OjApnC4yhjUncAbgH9mgenvQriHKDwY+T3CqfASn0fFY/dr
	OozBTrHg0l1X5hKaJjNGAfWBmSVyRlcqydOWqbBkaCtW2KXX5XX8rWNv7S6AfWLP/U4XnI1xz06B3
	bulwr+Rc6aIBU61KdNeFuysKIysTguOIxTqCm5eNfQfMg/+4UdEzIzwquNSLGVvefSSFt6XQaKzXY
	T7bakn/4WkBH5iNu/+RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOU4q-0001Ii-DY; Tue, 14 Apr 2020 22:30:44 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOU4h-0001I6-Cn
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 22:30:37 +0000
Received: by mail-wm1-x342.google.com with SMTP id e26so14946799wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 15:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=okVUGJ3ikrrEbdgJgp1xfbeReFhs19fwarQOs8B1AZk=;
 b=FEbTmIVNW0JoSjYjr3F58Dza+Cb1Ac/sA7nNj8BJjD5avga0CHKNryFlZnyWoMT1E2
 na8aftYRyJNOnjaU94xdsOPIs71//+sqT+bELBHBZIbzI3nbi3kByYX15ybKGjV8hqN8
 PxohgfpVVFNtgIAZ8+2c5mP0p6CodDxUFWMY4O2jSjXsEBQJo7J8DK9ftSUKzLWke7nn
 oAeGy3RkG0ySkJTzFv/BokwJwPVpqQYV+DSF2MSBBYwES8cAPcLFhiyABwkrSKDt1/Xd
 zIbH9mjT61r1ANGVDNH0HBZbSuIrs3gfbCaJ63UJPyZrYL+Xj0hS9iZs1617fg7qMyP9
 Bgww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=okVUGJ3ikrrEbdgJgp1xfbeReFhs19fwarQOs8B1AZk=;
 b=ZNalCSp4i7TvyxQwUugknFQsG0bJtncfXOoDNhdpqAm1oSCjgs5Mb+dgfhl7WbViwN
 SdUgRifDWU1xH9YxMqK+OseYoqAU7CMN6SqVWi7pcup5SKL1fN9IAuWVaVslInpEix8+
 mZ6LcZ4EtgOpUaSr5tanh5D+C5mPOArZU0bC7UYVJEJNZwJ8Q3yPQMiCy2wV4BYQpuW8
 7JXkxi9v2+jGEbUsfSdGZsKTIgBOOxd4AtOYHIgF5llVw4AMWT/aI6S+5FnG4R/H6J84
 XvpDtc3uNSY8XCGPAIiZbeGdq2lmKMmhPPSiNoQd7XLB3Ht5MUyhYQXVZxyeDVy3t4s5
 L42w==
X-Gm-Message-State: AGi0Pub1zrsKyUj1e+ooiDOpNL5m4LK1dKeDc4NE8T9hL8xCkIObHEhr
 cl89zBCxur4g/p9bIolEGedVWw==
X-Google-Smtp-Source: APiQypIbVYGNGOComyaA0BUnVsxnNYsocIyXxHF8/fexB9IRx/uxZhOitPNh1Qfq4Q5sjQ8E/NKUGA==
X-Received: by 2002:a1c:bd08:: with SMTP id n8mr1947813wmf.23.1586903433566;
 Tue, 14 Apr 2020 15:30:33 -0700 (PDT)
Received: from [192.168.0.41] (lns-bzn-59-82-252-135-148.adsl.proxad.net.
 [82.252.135.148]) by smtp.googlemail.com with ESMTPSA id
 g186sm21701352wmg.36.2020.04.14.15.30.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2020 15:30:33 -0700 (PDT)
Subject: Re: [RFC v2 4/9] thermal: core: Let thermal zone device's mode be
 stored in its struct
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>, linux-pm@vger.kernel.org
References: <2bc5a902-acde-526a-11a5-2357d899916c@linaro.org>
 <20200414180105.20042-1-andrzej.p@collabora.com>
 <20200414180105.20042-5-andrzej.p@collabora.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <c053480c-8279-2a51-7a55-252ff723b432@linaro.org>
Date: Wed, 15 Apr 2020 00:30:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200414180105.20042-5-andrzej.p@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_153035_446186_279CCC21 
X-CRM114-Status: GOOD (  23.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 platform-driver-x86@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com, Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>, linux-acpi@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Ido Schimmel <idosch@mellanox.com>, Jiri Pirko <jiri@mellanox.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>, netdev@vger.kernel.org,
 Peter Kaestle <peter@piie.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTQvMDQvMjAyMCAyMDowMSwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdyb3RlOgo+IEFsbCB0
aGUgZHJpdmVycyB3aGljaCBwcm92aWRlIC0+Z2V0X21vZGUoKS8tPnNldF9tb2RlKCkgbWV0aG9k
cyBzdG9yZSB0aGVpcgo+IG1vZGUgaW4gYSB0aGVybWFsX2RldmljZV9tb2RlIGVudW0sIHNvIGtl
ZXAgdGhpcyBpbmZvcm1hdGlvbiBpbiBzdHJ1Y3QKPiB0aGVybWFsX3pvbmVfZGV2aWNlIHJhdGhl
ciB0aGFuIHNjYXR0ZXJlZCBhbGwgb3ZlciB0aGUgcGxhY2UuCj4gCj4gU2lnbmVkLW9mZi1ieTog
QW5kcnplaiBQaWV0cmFzaWV3aWN6IDxhbmRyemVqLnBAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAg
ZHJpdmVycy90aGVybWFsL3RoZXJtYWxfY29yZS5jICB8IDI4ICsrKysrKysrKysrKysrKysrKysK
PiAgZHJpdmVycy90aGVybWFsL3RoZXJtYWxfc3lzZnMuYyB8ICA5ICsrKy0tLS0KPiAgaW5jbHVk
ZS9saW51eC90aGVybWFsLmggICAgICAgICB8IDQ4ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDc5IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC90aGVybWFsX2NvcmUuYyBiL2Ry
aXZlcnMvdGhlcm1hbC90aGVybWFsX2NvcmUuYwo+IGluZGV4IDlhMzIxZGM1NDhjOC4uY2IwZmY0
N2YwZGJlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC90aGVybWFsX2NvcmUuYwo+ICsr
KyBiL2RyaXZlcnMvdGhlcm1hbC90aGVybWFsX2NvcmUuYwo+IEBAIC00NjksNiArNDY5LDM0IEBA
IHN0YXRpYyB2b2lkIHRoZXJtYWxfem9uZV9kZXZpY2VfcmVzZXQoc3RydWN0IHRoZXJtYWxfem9u
ZV9kZXZpY2UgKnR6KQo+ICAJdGhlcm1hbF96b25lX2RldmljZV9pbml0KHR6KTsKPiAgfQo+ICAK
PiAraW50IHRoZXJtYWxfem9uZV9kZXZpY2VfZ2V0X21vZGUoc3RydWN0IHRoZXJtYWxfem9uZV9k
ZXZpY2UgKnR6LAo+ICsJCQkJIGVudW0gdGhlcm1hbF9kZXZpY2VfbW9kZSAqbW9kZSkKPiArewo+
ICsJaWYgKHR6LT5vcHMtPmdldF9tb2RlKQo+ICsJCXJldHVybiB0ei0+b3BzLT5nZXRfbW9kZSh0
eiwgbW9kZSk7CgpJIHRoaW5rIHdlIGNhbiBnZXQgcmlkIG9mIHRoZSBnZXRfbW9kZSBoZXJlLgoK
bG9ja3MgbWlzc2luZy4KCmFuZCBtb2RlID0gdHotPm1vZGUgbXVzdCBiZSBhbHdheXMgc2V0LgoK
PiArCSptb2RlID0gdHotPm1vZGU7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArRVhQT1JUX1NZ
TUJPTF9HUEwodGhlcm1hbF96b25lX2RldmljZV9nZXRfbW9kZSk7Cj4gKwo+ICtpbnQgdGhlcm1h
bF96b25lX2RldmljZV9zZXRfbW9kZShzdHJ1Y3QgdGhlcm1hbF96b25lX2RldmljZSAqdHosCj4g
KwkJCQkgZW51bSB0aGVybWFsX2RldmljZV9tb2RlIG1vZGUpCj4gK3sKPiArCWlmIChtb2RlICE9
IFRIRVJNQUxfREVWSUNFX0RJU0FCTEVEICYmCj4gKwkgICAgbW9kZSAhPSBUSEVSTUFMX0RFVklD
RV9FTkFCTEVEKQo+ICsJCXJldHVybiAtRUlOVkFMOwoKSSdtIG5vdCBzdXJlIHRoaXMgaXMgdXNl
ZnVsIGFzICdtb2RlJyBpcyBhbiBlbnVtIGFuZCB0aGlzIGNvbmRpdGlvbiB3aWxsCmJlIGFsd2F5
cyBjb3JyZWN0LgoKbG9ja3MgbWlzc2luZy4KCj4gKwlpZiAodHotPm9wcy0+c2V0X21vZGUpCj4g
KwkJcmV0dXJuIHR6LT5vcHMtPnNldF9tb2RlKHR6LCBtb2RlKTsKCj4gKwl0ei0+bW9kZSA9IG1v
ZGU7CgpJdCBzaG91bGQgYmUgbGlrZToKCglpbnQgcmV0ID0gMDsKCgltdXRleF9sb2NrKCZ0ei0+
bG9jayk7CgoJaWYgKHR6LT5vcHMtPnNldF9tb2RlKQoJCXJldCA9IHR6LT5vcHMtPnNldF9tb2Rl
KHR6LCBtb2RlKTsKCgkqbW9kZSA9IHR6LT5tb2RlOwoKCW11dGV4X3VubG9jaygmdHotPmxvY2sp
OwoKCXJldHVybiByZXQ7Cgo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gK0VYUE9SVF9TWU1CT0xf
R1BMKHRoZXJtYWxfem9uZV9kZXZpY2Vfc2V0X21vZGUpOwo+ICsKPiAgdm9pZCB0aGVybWFsX3pv
bmVfZGV2aWNlX3VwZGF0ZShzdHJ1Y3QgdGhlcm1hbF96b25lX2RldmljZSAqdHosCj4gIAkJCQll
bnVtIHRoZXJtYWxfbm90aWZ5X2V2ZW50IGV2ZW50KQo+ICB7Cj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvdGhlcm1hbC90aGVybWFsX3N5c2ZzLmMgYi9kcml2ZXJzL3RoZXJtYWwvdGhlcm1hbF9zeXNm
cy5jCj4gaW5kZXggYWE5OWVkYjRkZmY3Li42NmQ5NjkxYjhiZDYgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy90aGVybWFsL3RoZXJtYWxfc3lzZnMuYwo+ICsrKyBiL2RyaXZlcnMvdGhlcm1hbC90aGVy
bWFsX3N5c2ZzLmMKPiBAQCAtNTIsMTAgKzUyLDcgQEAgbW9kZV9zaG93KHN0cnVjdCBkZXZpY2Ug
KmRldiwgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsIGNoYXIgKmJ1ZikKPiAgCWVudW0g
dGhlcm1hbF9kZXZpY2VfbW9kZSBtb2RlOwo+ICAJaW50IHJlc3VsdDsKPiAgCj4gLQlpZiAoIXR6
LT5vcHMtPmdldF9tb2RlKQo+IC0JCXJldHVybiAtRVBFUk07Cj4gLQo+IC0JcmVzdWx0ID0gdHot
Pm9wcy0+Z2V0X21vZGUodHosICZtb2RlKTsKPiArCXJlc3VsdCA9IHRoZXJtYWxfem9uZV9kZXZp
Y2VfZ2V0X21vZGUodHosICZtb2RlKTsKPiAgCWlmIChyZXN1bHQpCj4gIAkJcmV0dXJuIHJlc3Vs
dDsKPiAgCj4gQEAgLTc0LDkgKzcxLDkgQEAgbW9kZV9zdG9yZShzdHJ1Y3QgZGV2aWNlICpkZXYs
IHN0cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAo+ICAJCXJldHVybiAtRVBFUk07Cj4gIAo+
ICAJaWYgKCFzdHJuY21wKGJ1ZiwgImVuYWJsZWQiLCBzaXplb2YoImVuYWJsZWQiKSAtIDEpKQo+
IC0JCXJlc3VsdCA9IHR6LT5vcHMtPnNldF9tb2RlKHR6LCBUSEVSTUFMX0RFVklDRV9FTkFCTEVE
KTsKPiArCQlyZXN1bHQgPSB0aGVybWFsX3pvbmVfZGV2aWNlX2VuYWJsZSh0eik7Cj4gIAllbHNl
IGlmICghc3RybmNtcChidWYsICJkaXNhYmxlZCIsIHNpemVvZigiZGlzYWJsZWQiKSAtIDEpKQo+
IC0JCXJlc3VsdCA9IHR6LT5vcHMtPnNldF9tb2RlKHR6LCBUSEVSTUFMX0RFVklDRV9ESVNBQkxF
RCk7Cj4gKwkJcmVzdWx0ID0gdGhlcm1hbF96b25lX2RldmljZV9kaXNhYmxlKHR6KTsKPiAgCWVs
c2UKPiAgCQlyZXN1bHQgPSAtRUlOVkFMOwo+ICAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51
eC90aGVybWFsLmggYi9pbmNsdWRlL2xpbnV4L3RoZXJtYWwuaAo+IGluZGV4IGM5MWIxZTM0NGQ1
Ni4uOWZmODU0MmI3ZTdkIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbGludXgvdGhlcm1hbC5oCj4g
KysrIGIvaW5jbHVkZS9saW51eC90aGVybWFsLmgKPiBAQCAtMTQzLDYgKzE0Myw3IEBAIHN0cnVj
dCB0aGVybWFsX2F0dHIgewo+ICAgKiBAdHJpcF90ZW1wX2F0dHJzOglhdHRyaWJ1dGVzIGZvciB0
cmlwIHBvaW50cyBmb3Igc3lzZnM6IHRyaXAgdGVtcGVyYXR1cmUKPiAgICogQHRyaXBfdHlwZV9h
dHRyczoJYXR0cmlidXRlcyBmb3IgdHJpcCBwb2ludHMgZm9yIHN5c2ZzOiB0cmlwIHR5cGUKPiAg
ICogQHRyaXBfaHlzdF9hdHRyczoJYXR0cmlidXRlcyBmb3IgdHJpcCBwb2ludHMgZm9yIHN5c2Zz
OiB0cmlwIGh5c3RlcmVzaXMKPiArICogQG1vZGU6CQljdXJyZW50IG1vZGUgb2YgdGhpcyB0aGVy
bWFsIHpvbmUKPiAgICogQGRldmRhdGE6CXByaXZhdGUgcG9pbnRlciBmb3IgZGV2aWNlIHByaXZh
dGUgZGF0YQo+ICAgKiBAdHJpcHM6CW51bWJlciBvZiB0cmlwIHBvaW50cyB0aGUgdGhlcm1hbCB6
b25lIHN1cHBvcnRzCj4gICAqIEB0cmlwc19kaXNhYmxlZDsJYml0bWFwIGZvciBkaXNhYmxlZCB0
cmlwcwo+IEBAIC0xODUsNiArMTg2LDcgQEAgc3RydWN0IHRoZXJtYWxfem9uZV9kZXZpY2Ugewo+
ICAJc3RydWN0IHRoZXJtYWxfYXR0ciAqdHJpcF90ZW1wX2F0dHJzOwo+ICAJc3RydWN0IHRoZXJt
YWxfYXR0ciAqdHJpcF90eXBlX2F0dHJzOwo+ICAJc3RydWN0IHRoZXJtYWxfYXR0ciAqdHJpcF9o
eXN0X2F0dHJzOwo+ICsJZW51bSB0aGVybWFsX2RldmljZV9tb2RlIG1vZGU7Cj4gIAl2b2lkICpk
ZXZkYXRhOwo+ICAJaW50IHRyaXBzOwo+ICAJdW5zaWduZWQgbG9uZyB0cmlwc19kaXNhYmxlZDsJ
LyogYml0bWFwIGZvciBkaXNhYmxlZCB0cmlwcyAqLwo+IEBAIC00MzcsNiArNDM5LDE5IEBAIGlu
dCB0aGVybWFsX3pvbmVfYmluZF9jb29saW5nX2RldmljZShzdHJ1Y3QgdGhlcm1hbF96b25lX2Rl
dmljZSAqLCBpbnQsCj4gIAkJCQkgICAgIHVuc2lnbmVkIGludCk7Cj4gIGludCB0aGVybWFsX3pv
bmVfdW5iaW5kX2Nvb2xpbmdfZGV2aWNlKHN0cnVjdCB0aGVybWFsX3pvbmVfZGV2aWNlICosIGlu
dCwKPiAgCQkJCSAgICAgICBzdHJ1Y3QgdGhlcm1hbF9jb29saW5nX2RldmljZSAqKTsKPiArCj4g
K2ludCB0aGVybWFsX3pvbmVfZGV2aWNlX2dldF9tb2RlKHN0cnVjdCB0aGVybWFsX3pvbmVfZGV2
aWNlICp0eiwKPiArCQkJCSBlbnVtIHRoZXJtYWxfZGV2aWNlX21vZGUgKm1vZGUpOwo+ICtpbnQg
dGhlcm1hbF96b25lX2RldmljZV9zZXRfbW9kZShzdHJ1Y3QgdGhlcm1hbF96b25lX2RldmljZSAq
dHosCj4gKwkJCQkgZW51bSB0aGVybWFsX2RldmljZV9tb2RlIG1vZGUpOwo+ICsKPiArc3RhdGlj
IGlubGluZSB2b2lkCj4gK3RoZXJtYWxfem9uZV9kZXZpY2Vfc3RvcmVfbW9kZShzdHJ1Y3QgdGhl
cm1hbF96b25lX2RldmljZSAqdHosCj4gKwkJCSAgICAgICBlbnVtIHRoZXJtYWxfZGV2aWNlX21v
ZGUgbW9kZSkKPiArewo+ICsJdHotPm1vZGUgPSBtb2RlOwo+ICt9Cj4gKwoKUGxlYXNlIHJlbW92
ZSB0aGlzIHN0b3JlX21vZGUgZnVuY3Rpb24sIGl0IGlzIG5vdCBuZWVkZWQuCgpKdXN0OgoKdGhl
cm1hbF96b25lX2RldmljZV9nZXRfbW9kZSgpCnRoZXJtYWxfem9uZV9kZXZpY2Vfc2V0X21vZGUo
KQp0aGVybWFsX3pvbmVfZGV2aWNlX2Rpc2FibGUoKQp0aGVybWFsX3pvbmVfZGV2aWNlX2VuYWJs
ZSgpCgpBbmQgYWxsIG9mIHRoZW0gaW4gZHJpdmVycy90aGVybWFsL3RoZXJtYWxfY29yZS5oCgo+
ICB2b2lkIHRoZXJtYWxfem9uZV9kZXZpY2VfdXBkYXRlKHN0cnVjdCB0aGVybWFsX3pvbmVfZGV2
aWNlICosCj4gIAkJCQllbnVtIHRoZXJtYWxfbm90aWZ5X2V2ZW50KTsKPiAgdm9pZCB0aGVybWFs
X3pvbmVfc2V0X3RyaXBzKHN0cnVjdCB0aGVybWFsX3pvbmVfZGV2aWNlICopOwo+IEBAIC00OTQs
NiArNTA5LDE3IEBAIHN0YXRpYyBpbmxpbmUgaW50IHRoZXJtYWxfem9uZV91bmJpbmRfY29vbGlu
Z19kZXZpY2UoCj4gIAlzdHJ1Y3QgdGhlcm1hbF96b25lX2RldmljZSAqdHosIGludCB0cmlwLAo+
ICAJc3RydWN0IHRoZXJtYWxfY29vbGluZ19kZXZpY2UgKmNkZXYpCj4gIHsgcmV0dXJuIC1FTk9E
RVY7IH0KPiArc3RhdGljIGlubGluZSBpbnQgdGhlcm1hbF96b25lX2RldmljZV9nZXRfbW9kZShz
dHJ1Y3QgdGhlcm1hbF96b25lX2RldmljZSAqdHosCj4gKwkJCQkJICAgICAgIGVudW0gdGhlcm1h
bF9kZXZpY2VfbW9kZSAqbW9kZSkKPiAreyByZXR1cm4gLUVOT0RFVjsgfQo+ICtzdGF0aWMgaW5s
aW5lIGludCB0aGVybWFsX3pvbmVfZGV2aWNlX3NldF9tb2RlKHN0cnVjdCB0aGVybWFsX3pvbmVf
ZGV2aWNlICp0eiwKPiArCQkJCQkgICAgICAgZW51bSB0aGVybWFsX2RldmljZV9tb2RlIG1vZGUp
Cj4gK3sgcmV0dXJuIC1FTk9ERVY7IH0KPiArc3RhdGljIGlubGluZSB2b2lkCj4gK3RoZXJtYWxf
em9uZV9kZXZpY2Vfc3RvcmVfbW9kZShzdHJ1Y3QgdGhlcm1hbF96b25lX2RldmljZSAqdHosCj4g
KwkJCSAgICAgICBlbnVtIHRoZXJtYWxfZGV2aWNlX21vZGUgbW9kZSkKPiAreyB9Cj4gKwo+ICBz
dGF0aWMgaW5saW5lIHZvaWQgdGhlcm1hbF96b25lX2RldmljZV91cGRhdGUoc3RydWN0IHRoZXJt
YWxfem9uZV9kZXZpY2UgKnR6LAo+ICAJCQkJCSAgICAgIGVudW0gdGhlcm1hbF9ub3RpZnlfZXZl
bnQgZXZlbnQpCj4gIHsgfQo+IEBAIC01NDMsNCArNTY5LDI2IEBAIHN0YXRpYyBpbmxpbmUgdm9p
ZCB0aGVybWFsX25vdGlmeV9mcmFtZXdvcmsoc3RydWN0IHRoZXJtYWxfem9uZV9kZXZpY2UgKnR6
LAo+ICB7IH0KPiAgI2VuZGlmIC8qIENPTkZJR19USEVSTUFMICovCj4gIAo+ICtzdGF0aWMgaW5s
aW5lIGludCB0aGVybWFsX3pvbmVfZGV2aWNlX2VuYWJsZShzdHJ1Y3QgdGhlcm1hbF96b25lX2Rl
dmljZSAqdHopCj4gK3sKPiArCXJldHVybiB0aGVybWFsX3pvbmVfZGV2aWNlX3NldF9tb2RlKHR6
LCBUSEVSTUFMX0RFVklDRV9FTkFCTEVEKTsKPiArfQo+ICsKPiArc3RhdGljIGlubGluZSBpbnQg
dGhlcm1hbF96b25lX2RldmljZV9kaXNhYmxlKHN0cnVjdCB0aGVybWFsX3pvbmVfZGV2aWNlICp0
eikKPiArewo+ICsJcmV0dXJuIHRoZXJtYWxfem9uZV9kZXZpY2Vfc2V0X21vZGUodHosIFRIRVJN
QUxfREVWSUNFX0RJU0FCTEVEKTsKPiArfQo+ICsKPiArc3RhdGljIGlubGluZSB2b2lkCj4gK3Ro
ZXJtYWxfem9uZV9kZXZpY2Vfc3RvcmVfZW5hYmxlZChzdHJ1Y3QgdGhlcm1hbF96b25lX2Rldmlj
ZSAqdHopCj4gK3sKPiArCXRoZXJtYWxfem9uZV9kZXZpY2Vfc3RvcmVfbW9kZSh0eiwgVEhFUk1B
TF9ERVZJQ0VfRU5BQkxFRCk7Cj4gK30KPiArCj4gK3N0YXRpYyBpbmxpbmUgdm9pZAo+ICt0aGVy
bWFsX3pvbmVfZGV2aWNlX3N0b3JlX2Rpc2FibGVkKHN0cnVjdCB0aGVybWFsX3pvbmVfZGV2aWNl
ICp0eikKPiArewo+ICsJdGhlcm1hbF96b25lX2RldmljZV9zdG9yZV9tb2RlKHR6LCBUSEVSTUFM
X0RFVklDRV9ESVNBQkxFRCk7Cj4gK30KPiArCj4gICNlbmRpZiAvKiBfX1RIRVJNQUxfSF9fICov
Cj4gCgoKLS0gCjxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNv
dXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5m
YWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20v
IyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxv
Zy8+IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
