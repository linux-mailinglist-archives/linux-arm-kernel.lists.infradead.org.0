Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A22651DEBE4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 17:32:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bt07nimCyqf5jtJN1Pungm2TTRk+9BC8f9wX3MjJXhg=; b=YyAKw9SoQympPx
	YCLiOeXUEYq7BVGoPa73laFpTSnRt9eNUc5CdImIRW+FNadZmLwxcu8/QjSTdwNRC8J/LUqcfwFZe
	UaLOisF6Nv2KkCuvhIJOGF3cbkguC40usHhi/GyfdcKeTqy3WJdpFSQnX7eOBQng8tNvcJu1AOuvI
	aPnUeXP9IMNpBvwH3i32OvpW0E+F2C7fneC9sm+ZFMbZM9xLGMtnUN81wjvQGBg9Msq2aPDk4g3hQ
	gE2PVfl/3L51l4wfcvkM+KkG52OrXlVe45rNTjuOCeIpk38nG0gW/uqt+cCY6ltiznVhUrpi7jVsT
	k+s6kV+bxiYbrLQYs8+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9en-0001o1-TT; Fri, 22 May 2020 15:32:21 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9ea-0001lt-4h
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 15:32:11 +0000
Received: by mail-wm1-x342.google.com with SMTP id u1so9023545wmn.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 08:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=otTjOhB3pQfb5rvNf3iE/1EF+uvqWUVNS9VHLDzOq6I=;
 b=YjORt36Ol5Z1zqcZJ9PdVDQlWbU2xMv+HuUp2H6cXcxLt9hXl7O4guMpdaJSCxMlk/
 F0ZgAw2FvlH34VcN4fni2/NgLuZkYmwMItA0MjVGnZ5p9uL6jvhBff0Q4CTl85Yw1pw3
 rvDo4oOuVmI951FS3NPpy9tLJaA5xxllVZY0spCqdqsRGD2+abdJquNCoJXQpWfgPgGu
 ZCn9yjxdzIlUYRfFPLW4aL2snRBCG82tP7948zBCVceR9ovXv0brb7+4rimzBnUS+lwv
 j8ylwDgWE60TyNowyMK8CQRJ2u9gxTZKcsVP1PX2qZIf9VY10WFDjw1Xh8dRTP1Yiq0I
 zC8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=otTjOhB3pQfb5rvNf3iE/1EF+uvqWUVNS9VHLDzOq6I=;
 b=q3QJasTHTYl5JfOqskoozS+ktRTg7ZKIXpMmenPJMSW55ThAAjpNu0tWcaA7nagNL7
 RRatS/cMBnNibIUN8xlT9e414/EmQSD5VACRoAhHq+3vwrokz9KOZpasC175zwXMADNq
 4JvQfaNOoWsAArjz4DVqoSdtgVWsZ5SUCCuSPGyNjqXQE2EjlP0y2XY8Lf3/qkb4p0Uw
 GtWj7hD5xgNysWUaOmTROnYlGRjVNBcj+yGQF32FyZo1N5mamw23H8frqeB4DpoKaWcf
 rnpx2njo/rnz33VcJojHvOkW/DLWFpVMVEwkZRK7rrMVJsMBJDt6qMh3FMiqGkCc0K7t
 nGxQ==
X-Gm-Message-State: AOAM532MLv5MesgvbKoK+NhOJIzeAFsu/+a0ZXmT4LrqYFTiJbfZ4f0g
 XgyZ/ZVPChuRBdMs8DjM1moG6g==
X-Google-Smtp-Source: ABdhPJxZhfb8FvGiHXbP4WIrzNxdJ9R0OJbYjAm99WLd9VjIJX2ehUsAjztVxh8MlTgphwpbBpEHEA==
X-Received: by 2002:a1c:1983:: with SMTP id 125mr13524236wmz.43.1590161526337; 
 Fri, 22 May 2020 08:32:06 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:a82f:eaec:3c49:875a?
 ([2a01:e34:ed2f:f020:a82f:eaec:3c49:875a])
 by smtp.googlemail.com with ESMTPSA id x17sm9694035wrp.71.2020.05.22.08.32.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 08:32:05 -0700 (PDT)
Subject: Re: [v4, 6/7] thermal: mediatek: add another get_temp ops for thermal
 sensors
To: Michael Kao <michael.kao@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, hsinyi@chromium.org,
 linux-pm@vger.kernel.org, srv_heupstream@mediatek.com
References: <20200323121537.22697-1-michael.kao@mediatek.com>
 <20200323121537.22697-7-michael.kao@mediatek.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <fa43c55b-96c2-30c8-eb7e-983177dad13d@linaro.org>
Date: Fri, 22 May 2020 17:32:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200323121537.22697-7-michael.kao@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_083208_180403_995585AC 
X-CRM114-Status: GOOD (  24.82  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjMvMDMvMjAyMCAxMzoxNSwgTWljaGFlbCBLYW8gd3JvdGU6Cj4gUHJvdmlkZSB0aGVybWFs
IHpvbmUgdG8gcmVhZCB0aGVybWFsIHNlbnNvcgo+IGluIHRoZSBTb0MuIFdlIGNhbiByZWFkIGFs
bCB0aGUgdGhlcm1hbCBzZW5zb3JzCj4gdmFsdWUgaW4gdGhlIFNvQyBieSB0aGUgbm9kZSAvc3lz
L2NsYXNzL3RoZXJtYWwvCj4gCj4gSW4gbXRrX3RoZXJtYWxfYmFua190ZW1wZXJhdHVyZSwgcmV0
dXJuIC1FQUdBSU4gaW5zdGVhZCBvZiAtRUFDQ0VTUwo+IG9uIHRoZSBmaXJzdCByZWFkIG9mIHNl
bnNvciB0aGF0IG9mdGVuIGFyZSBib2d1cyB2YWx1ZXMuCj4gVGhpcyBjYW4gYXZvaWQgZm9sbG93
aW5nIHdhcm5pbmcgb24gYm9vdDoKPiAKPiAgIHRoZXJtYWwgdGhlcm1hbF96b25lNjogZmFpbGVk
IHRvIHJlYWQgb3V0IHRoZXJtYWwgem9uZSAoLTEzKQoKV2hhdCB0aGUgc291cmNlIHByb2JsZW0g
b2YgdGhlIHNlbnNvciByZXR1cm5pbmcgYm9ndXMgdmFsdWVzPwoKCgo+IFNpZ25lZC1vZmYtYnk6
IE1pY2hhZWwgS2FvIDxtaWNoYWVsLmthb0BtZWRpYXRlay5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
SHNpbi1ZaSBXYW5nIDxoc2lueWlAY2hyb21pdW0ub3JnPgo+IC0tLQo+ICBkcml2ZXJzL3RoZXJt
YWwvbXRrX3RoZXJtYWwuYyB8IDc0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA2NyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3RoZXJtYWwvbXRrX3RoZXJtYWwuYyBiL2RyaXZlcnMvdGhl
cm1hbC9tdGtfdGhlcm1hbC5jCj4gaW5kZXggNmI3ZWYxOTkzZDdlLi45ZWFjYTQzMjkyMGUgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy90aGVybWFsL210a190aGVybWFsLmMKPiArKysgYi9kcml2ZXJz
L3RoZXJtYWwvbXRrX3RoZXJtYWwuYwo+IEBAIC0yMjUsNiArMjI1LDExIEBAIGVudW0gewo+ICAK
PiAgc3RydWN0IG10a190aGVybWFsOwo+ICAKPiArc3RydWN0IG10a190aGVybWFsX3pvbmUgewo+
ICsJc3RydWN0IG10a190aGVybWFsICptdDsKPiArCWludCBpZDsKPiArfTsKPiArCj4gIHN0cnVj
dCB0aGVybWFsX2JhbmtfY2ZnIHsKPiAgCXVuc2lnbmVkIGludCBudW1fc2Vuc29yczsKPiAgCWNv
bnN0IGludCAqc2Vuc29yczsKPiBAQCAtNjA3LDcgKzYxMiw3IEBAIHN0YXRpYyBpbnQgbXRrX3Ro
ZXJtYWxfYmFua190ZW1wZXJhdHVyZShzdHJ1Y3QgbXRrX3RoZXJtYWxfYmFuayAqYmFuaykKPiAg
CQkgKiBub3QgaW1tZWRpYXRlbHkgc2h1dCBkb3duLgo+ICAJCSAqLwo+ICAJCWlmICh0ZW1wID4g
MjAwMDAwKQo+IC0JCQl0ZW1wID0gMDsKPiArCQkJdGVtcCA9IC1FQUdBSU47Cj4gIAo+ICAJCWlm
ICh0ZW1wID4gbWF4KQo+ICAJCQltYXggPSB0ZW1wOwo+IEBAIC02MTgsNyArNjIzLDggQEAgc3Rh
dGljIGludCBtdGtfdGhlcm1hbF9iYW5rX3RlbXBlcmF0dXJlKHN0cnVjdCBtdGtfdGhlcm1hbF9i
YW5rICpiYW5rKQo+ICAKPiAgc3RhdGljIGludCBtdGtfcmVhZF90ZW1wKHZvaWQgKmRhdGEsIGlu
dCAqdGVtcGVyYXR1cmUpCj4gIHsKPiAtCXN0cnVjdCBtdGtfdGhlcm1hbCAqbXQgPSBkYXRhOwo+
ICsJc3RydWN0IG10a190aGVybWFsX3pvbmUgKnR6ID0gZGF0YTsKPiArCXN0cnVjdCBtdGtfdGhl
cm1hbCAqbXQgPSB0ei0+bXQ7Cj4gIAlpbnQgaTsKPiAgCWludCB0ZW1wbWF4ID0gSU5UX01JTjsK
PiAgCj4gQEAgLTYzNywxMCArNjQzLDQ0IEBAIHN0YXRpYyBpbnQgbXRrX3JlYWRfdGVtcCh2b2lk
ICpkYXRhLCBpbnQgKnRlbXBlcmF0dXJlKQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gK3N0YXRp
YyBpbnQgbXRrX3JlYWRfc2Vuc29yX3RlbXAodm9pZCAqZGF0YSwgaW50ICp0ZW1wZXJhdHVyZSkK
PiArewo+ICsJc3RydWN0IG10a190aGVybWFsX3pvbmUgKnR6ID0gZGF0YTsKPiArCXN0cnVjdCBt
dGtfdGhlcm1hbCAqbXQgPSB0ei0+bXQ7Cj4gKwljb25zdCBzdHJ1Y3QgbXRrX3RoZXJtYWxfZGF0
YSAqY29uZiA9IG10LT5jb25mOwo+ICsJaW50IGlkID0gdHotPmlkIC0gMTsKPiArCWludCB0ZW1w
ID0gSU5UX01JTjsKPiArCXUzMiByYXc7Cj4gKwo+ICsJaWYgKGlkIDwgMCkKPiArCQlyZXR1cm4g
IC1FQUNDRVM7Cj4gKwo+ICsJcmF3ID0gcmVhZGwobXQtPnRoZXJtYWxfYmFzZSArIGNvbmYtPm1z
cltpZF0pOwo+ICsKPiArCXRlbXAgPSByYXdfdG9fbWNlbHNpdXMobXQsIGlkLCByYXcpOwo+ICsK
PiArCS8qCj4gKwkgKiBUaGUgZmlyc3QgcmVhZCBvZiBhIHNlbnNvciBvZnRlbiBjb250YWlucyB2
ZXJ5IGhpZ2ggYm9ndXMKPiArCSAqIHRlbXBlcmF0dXJlIHZhbHVlLiBGaWx0ZXIgdGhlc2Ugb3V0
IHNvIHRoYXQgdGhlIHN5c3RlbSBkb2VzCj4gKwkgKiBub3QgaW1tZWRpYXRlbHkgc2h1dCBkb3du
Lgo+ICsJICovCj4gKwo+ICsJaWYgKHRlbXAgPiAyMDAwMDApCj4gKwkJcmV0dXJuICAtRUFHQUlO
Owo+ICsKPiArCSp0ZW1wZXJhdHVyZSA9IHRlbXA7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiAr
Cj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgdGhlcm1hbF96b25lX29mX2RldmljZV9vcHMgbXRrX3Ro
ZXJtYWxfb3BzID0gewo+ICAJLmdldF90ZW1wID0gbXRrX3JlYWRfdGVtcCwKPiAgfTsKPiAgCj4g
K3N0YXRpYyBjb25zdCBzdHJ1Y3QgdGhlcm1hbF96b25lX29mX2RldmljZV9vcHMgbXRrX3RoZXJt
YWxfc2Vuc29yX29wcyA9IHsKPiArCS5nZXRfdGVtcCA9IG10a19yZWFkX3NlbnNvcl90ZW1wLAo+
ICt9Owo+ICsKPiAgc3RhdGljIHZvaWQgbXRrX3RoZXJtYWxfaW5pdF9iYW5rKHN0cnVjdCBtdGtf
dGhlcm1hbCAqbXQsIGludCBudW0sCj4gIAkJCQkgIHUzMiBhcG1peGVkX3BoeXNfYmFzZSwgdTMy
IGF1eGFkY19waHlzX2Jhc2UsCj4gIAkJCQkgIGludCBjdHJsX2lkKQo+IEBAIC04NzMsNiArOTEz
LDcgQEAgc3RhdGljIGludCBtdGtfdGhlcm1hbF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+ICAJc3RydWN0IHJlc291cmNlICpyZXM7Cj4gIAl1NjQgYXV4YWRjX3BoeXNfYmFz
ZSwgYXBtaXhlZF9waHlzX2Jhc2U7Cj4gIAlzdHJ1Y3QgdGhlcm1hbF96b25lX2RldmljZSAqdHpk
ZXY7Cj4gKwlzdHJ1Y3QgbXRrX3RoZXJtYWxfem9uZSAqdHo7Cj4gIAo+ICAJbXQgPSBkZXZtX2t6
YWxsb2MoJnBkZXYtPmRldiwgc2l6ZW9mKCptdCksIEdGUF9LRVJORUwpOwo+ICAJaWYgKCFtdCkK
PiBAQCAtOTU0LDExICs5OTUsMzAgQEAgc3RhdGljIGludCBtdGtfdGhlcm1hbF9wcm9iZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAKPiAgCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBk
ZXYsIG10KTsKPiAgCj4gLQl0emRldiA9IGRldm1fdGhlcm1hbF96b25lX29mX3NlbnNvcl9yZWdp
c3RlcigmcGRldi0+ZGV2LCAwLCBtdCwKPiAtCQkJCQkJICAgICAmbXRrX3RoZXJtYWxfb3BzKTsK
PiAtCWlmIChJU19FUlIodHpkZXYpKSB7Cj4gLQkJcmV0ID0gUFRSX0VSUih0emRldik7Cj4gLQkJ
Z290byBlcnJfZGlzYWJsZV9jbGtfcGVyaV90aGVybTsKPiArCWZvciAoaSA9IDA7IGkgPCBtdC0+
Y29uZi0+bnVtX3NlbnNvcnMgKyAxOyBpKyspIHsKPiArCQl0eiA9IGttYWxsb2Moc2l6ZW9mKCp0
eiksIEdGUF9LRVJORUwpOwo+ICsJCWlmICghdHopCj4gKwkJCXJldHVybiAtRU5PTUVNOwo+ICsK
PiArCQl0ei0+bXQgPSBtdDsKPiArCQl0ei0+aWQgPSBpOwo+ICsKPiArCQl0emRldiA9IGRldm1f
dGhlcm1hbF96b25lX29mX3NlbnNvcl9yZWdpc3RlcigmcGRldi0+ZGV2LCBpLAo+ICsJCQkJCQkJ
ICAgICB0eiwgKGkgPT0gMCkgPwo+ICsJCQkJJm10a190aGVybWFsX29wcyA6ICZtdGtfdGhlcm1h
bF9zZW5zb3Jfb3BzKTsKPiArCj4gKwkJaWYgKElTX0VSUih0emRldikpIHsKPiArCQkJaWYgKFBU
Ul9FUlIodHpkZXYpID09IC1FTk9ERVYpIHsKPiArCQkJCWRldl93YXJuKCZwZGV2LT5kZXYsCj4g
KwkJCQkJICJzZW5zb3IgJWQgbm90IHJlZ2lzdGVyZWQgaW4gdGhlcm1hbCB6b25lIGluIGR0XG4i
LAo+ICsJCQkJCSBpKTsKPiArCQkJCWNvbnRpbnVlOwo+ICsJCQl9Cj4gKwkJCWlmIChQVFJfRVJS
KHR6ZGV2KSA9PSAtRUFDQ0VTKSB7Cj4gKwkJCQlyZXQgPSBQVFJfRVJSKHR6ZGV2KTsKPiArCQkJ
CWdvdG8gZXJyX2Rpc2FibGVfY2xrX3BlcmlfdGhlcm07Cj4gKwkJCX0KPiArCQl9Cj4gIAl9Cj4g
IAo+ICAJcmV0dXJuIDA7Cj4gCgoKLS0gCjxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8u
b3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86
ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRw
Oi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJv
Lm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
