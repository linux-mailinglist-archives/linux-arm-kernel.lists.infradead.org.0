Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F51FAA1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:39:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O0e1BBgIwn1Wuh87O87sbpoFtSxhd55cKwySjFJDzgo=; b=XFvKn33gt5h8+Y
	k4ZxdGIqg+oTvIDS3p1F01GvE5APxo1DYIUWh9fx8P461/L0LZiva/Glvqe0U8z8gPU5UY3PdZPZY
	UeEIDB0iv5QUQKCQR9U0SbfaoiarCPEZOLlrjRbvWEaMCBxTAqDMNi3c70i8Oq5a0fSFrCU/UIUsX
	sR7BfW7/93HE1mDTU/UrHH+xi5HwpebtqShWc6k053PaDvOvwvIhI5XnQ1zj7mssFyWcSQYp8z5lO
	fP1nLLIoZA2c1jpZ3zdDKMmK6p/2E/DK4LAi8KZQ27Ny9ap2pYQ9n1RV+YnT4fOwTahIgVQsgKLID
	PLluPNYFn/0wrzAmkC9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSyP-0003Dc-RD; Tue, 30 Apr 2019 13:39:05 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSyG-0003CN-OC
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:38:58 +0000
Received: by mail-wr1-x441.google.com with SMTP id l2so5412132wrb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 06:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=itopA/ItRE7ZMWfQuGvoXaTCudQHZDXEixDU5B3vzos=;
 b=hxATa+VEqQe59yueuVRTCPUR5y+WfuYh2iPbJElIGltimA4qVtAgZ6VonBKccZRolN
 b8x6WnqvTL10fcbLkvyFf33CSGh5Y/iGV/ifZQbpxOIXUq/PUc0A5f9uNJ/zW/nA1pL9
 Mf5mwGvlRaexP67OjHDNIAhFlsW0MQbxA5Z4OSZOjF4DAkoxN2/6w3S5Sqc2DNQI/jI0
 Y43MU6UBI7wg+m8590tAZbZdiMNM176Fe/nu4sW8fc5J9AA+nbyBYYHFSRXKvS/8JjK+
 DNYpv0ZPQRXVT2xT/9Uj27WwTqaIJd4Cv1hobBFYxf5dos6S3RgKrE+nztobtmwKG8mX
 Gewg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=itopA/ItRE7ZMWfQuGvoXaTCudQHZDXEixDU5B3vzos=;
 b=iHt81UShSDYEe7sYI7mJSU5RNzKB6VZ1ZPTr57EWHLfX/Rf4XZTGXn/TerYg/0flMZ
 9CSz6gUF4K0UziPVpGdq5elUMNiT/kVDqiz3u2T1WcSmbATU5emMUkNjOcu3mi2Xtxjl
 +c5iKBCz+DEm8XN5+WTKkWmRZ9Gc36jSxTE/+qJfalhcXY+1wtiiwqIWUlIEoHspq0cA
 eB9Zo3h6WoOGnVuB2gPwH00uDflkNFkXCMzDC6CwEyc5Zgy0nSnLTOi1mk5TB+QAjCmw
 9qn16OlrcNIp5K9NaMQkycaofdmEUOgX3/Xjmm13kepnF132uHXQ2oc5tQT05a0wWIV+
 Q5yA==
X-Gm-Message-State: APjAAAWMJFE1H+toTZqp6zUpV4q7JheHo3ceIvQETmvUXMRBUDrPOKye
 oWC7MNkdY8mCKG4cYvqSjHsPBA==
X-Google-Smtp-Source: APXvYqxJo6YyqwjGZPozpgX+q3kMxOob3HtcBfq/38IG6fntTQ3NVABFe5nH5Cv3beZjeSSkT9EwJQ==
X-Received: by 2002:a5d:5447:: with SMTP id w7mr1041635wrv.325.1556631533884; 
 Tue, 30 Apr 2019 06:38:53 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id o16sm25803167wro.63.2019.04.30.06.38.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 06:38:53 -0700 (PDT)
Subject: Re: [PATCH v3 1/3] thermal: rockchip: fix up the tsadc pinctrl
 setting error
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de
References: <1556618986-18923-1-git-send-email-zhangqing@rock-chips.com>
 <1556618986-18923-2-git-send-email-zhangqing@rock-chips.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <785392a0-282a-1e51-a4d6-a6d5ca478949@linaro.org>
Date: Tue, 30 Apr 2019 15:38:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1556618986-18923-2-git-send-email-zhangqing@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_063856_804762_EFDD67D2 
X-CRM114-Status: GOOD (  23.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, huangtao@rock-chips.com,
 linux-pm@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com,
 linux-kernel@vger.kernel.org, edubezval@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, rui.zhang@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzAvMDQvMjAxOSAxMjowOSwgRWxhaW5lIFpoYW5nIHdyb3RlOgo+IEV4cGxpY2l0bHkgdXNl
IHRoZSBwaW5jdHJsIHRvIHNldC91bnNldCB0aGUgcmlnaHQgbW9kZQo+IGluc3RlYWQgb2YgcmVs
eWluZyBvbiB0aGUgcGluY3RybCBpbml0IG1vZGUuCj4gQW5kIGl0IHJlcXVpcmVzIHNldHRpbmcg
dGhlIHRzaHV0IHBvbGFyaXR5IGJlZm9yZSBzZWxlY3QgcGluY3RybC4KPiAKPiBXaGVuIHRoZSB0
ZW1wZXJhdHVyZSBzZW5zb3IgbW9kZSBpcyBzZXQgdG8gMCwgaXQgd2lsbCBhdXRvbWF0aWNhbGx5
Cj4gcmVzZXQgdGhlIGJvYXJkIHZpYSB0aGUgQ2xvY2stUmVzZXQtVW5pdCAoQ1JVKSBpZiB0aGUg
b3ZlciB0ZW1wZXJhdHVyZQo+IHRocmVzaG9sZCBpcyByZWFjaGVkLiBIb3dldmVyLCB3aGVuIHRo
ZSBwaW5jdHJsIGluaXRpYWxpemVzLCBpdCBkb2VzIGEKPiB0cmFuc2l0aW9uIHRvICJvdHBfb3V0
IiB3aGljaCBtYXkgbGVhZCB0aGUgU29DIHJlc3RhcnQgYWxsIHRoZSB0aW1lLgo+IAo+ICJvdHBf
b3V0IiBJTyBtYXkgYmUgY29ubmVjdGVkIHRvIHRoZSBSRVNFVCBjaXJjdWl0IG9uIHRoZSBoYXJk
d2FyZS4KPiBJZiB0aGUgSU8gaXMgaW4gdGhlIHdyb25nIHN0YXRlLCBpdCB3aWxsIHRyaWdnZXIg
UkVTRVQuCj4gKHNpbWlsYXIgdG8gdGhlIGVmZmVjdCBvZiBwcmVzc2luZyB0aGUgUkVTRVQgYnV0
dG9uKQo+IHdoaWNoIHdpbGwgY2F1c2UgdGhlIHNvYyB0byByZXN0YXJ0IGFsbCB0aGUgdGltZS4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBFbGFpbmUgWmhhbmcgPHpoYW5ncWluZ0Byb2NrLWNoaXBzLmNv
bT4KClJldmlld2VkLWJ5OiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9y
Zz4KCgoKPiAtLS0KPiAgZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYyB8IDM2ICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMzMg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90
aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYyBiL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVy
bWFsLmMKPiBpbmRleCA5Yzc2NDNkNjJlZDcuLjZkYzdmYzUxNmFiZiAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4gKysrIGIvZHJpdmVycy90aGVybWFs
L3JvY2tjaGlwX3RoZXJtYWwuYwo+IEBAIC0xNzIsNiArMTcyLDkgQEAgc3RydWN0IHJvY2tjaGlw
X3RoZXJtYWxfZGF0YSB7Cj4gIAlpbnQgdHNodXRfdGVtcDsKPiAgCWVudW0gdHNodXRfbW9kZSB0
c2h1dF9tb2RlOwo+ICAJZW51bSB0c2h1dF9wb2xhcml0eSB0c2h1dF9wb2xhcml0eTsKPiArCXN0
cnVjdCBwaW5jdHJsICpwaW5jdHJsOwo+ICsJc3RydWN0IHBpbmN0cmxfc3RhdGUgKmdwaW9fc3Rh
dGU7Cj4gKwlzdHJ1Y3QgcGluY3RybF9zdGF0ZSAqb3RwX3N0YXRlOwo+ICB9Owo+ICAKPiAgLyoq
Cj4gQEAgLTEyNDIsNiArMTI0NSw4IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfdGhlcm1hbF9wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJCXJldHVybiBlcnJvcjsKPiAgCX0K
PiAgCj4gKwl0aGVybWFsLT5jaGlwLT5jb250cm9sKHRoZXJtYWwtPnJlZ3MsIGZhbHNlKTsKPiAr
Cj4gIAllcnJvciA9IGNsa19wcmVwYXJlX2VuYWJsZSh0aGVybWFsLT5jbGspOwo+ICAJaWYgKGVy
cm9yKSB7Cj4gIAkJZGV2X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRvIGVuYWJsZSBjb252ZXJ0
ZXIgY2xvY2s6ICVkXG4iLAo+IEBAIC0xMjY3LDYgKzEyNzIsMzAgQEAgc3RhdGljIGludCByb2Nr
Y2hpcF90aGVybWFsX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAl0aGVy
bWFsLT5jaGlwLT5pbml0aWFsaXplKHRoZXJtYWwtPmdyZiwgdGhlcm1hbC0+cmVncywKPiAgCQkJ
CSAgdGhlcm1hbC0+dHNodXRfcG9sYXJpdHkpOwo+ICAKPiArCWlmICh0aGVybWFsLT50c2h1dF9t
b2RlID09IFRTSFVUX01PREVfR1BJTykgewo+ICsJCXRoZXJtYWwtPnBpbmN0cmwgPSBkZXZtX3Bp
bmN0cmxfZ2V0KCZwZGV2LT5kZXYpOwo+ICsJCWlmIChJU19FUlIodGhlcm1hbC0+cGluY3RybCkp
IHsKPiArCQkJZGV2X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRvIGZpbmQgdGhlcm1hbCBwaW5j
dHJsXG4iKTsKPiArCQkJcmV0dXJuIFBUUl9FUlIodGhlcm1hbC0+cGluY3RybCk7Cj4gKwkJfQo+
ICsKPiArCQl0aGVybWFsLT5ncGlvX3N0YXRlID0gcGluY3RybF9sb29rdXBfc3RhdGUodGhlcm1h
bC0+cGluY3RybCwKPiArCQkJCQkJCSAgICJncGlvIik7Cj4gKwkJaWYgKElTX0VSUl9PUl9OVUxM
KHRoZXJtYWwtPmdwaW9fc3RhdGUpKSB7Cj4gKwkJCWRldl9lcnIoJnBkZXYtPmRldiwgImZhaWxl
ZCB0byBmaW5kIHRoZXJtYWwgZ3BpbyBzdGF0ZVxuIik7Cj4gKwkJCXJldHVybiAtRUlOVkFMOwo+
ICsJCX0KPiArCj4gKwkJdGhlcm1hbC0+b3RwX3N0YXRlID0gcGluY3RybF9sb29rdXBfc3RhdGUo
dGhlcm1hbC0+cGluY3RybCwKPiArCQkJCQkJCSAgIm90cG91dCIpOwo+ICsJCWlmIChJU19FUlJf
T1JfTlVMTCh0aGVybWFsLT5vdHBfc3RhdGUpKSB7Cj4gKwkJCWRldl9lcnIoJnBkZXYtPmRldiwg
ImZhaWxlZCB0byBmaW5kIHRoZXJtYWwgb3Rwb3V0IHN0YXRlXG4iKTsKPiArCQkJcmV0dXJuIC1F
SU5WQUw7Cj4gKwkJfQo+ICsKPiArCQlwaW5jdHJsX3NlbGVjdF9zdGF0ZSh0aGVybWFsLT5waW5j
dHJsLCB0aGVybWFsLT5vdHBfc3RhdGUpOwo+ICsJfQo+ICsKPiAgCWZvciAoaSA9IDA7IGkgPCB0
aGVybWFsLT5jaGlwLT5jaG5fbnVtOyBpKyspIHsKPiAgCQllcnJvciA9IHJvY2tjaGlwX3RoZXJt
YWxfcmVnaXN0ZXJfc2Vuc29yKHBkZXYsIHRoZXJtYWwsCj4gIAkJCQkJCSZ0aGVybWFsLT5zZW5z
b3JzW2ldLAo+IEBAIC0xMzM3LDggKzEzNjYsOCBAQCBzdGF0aWMgaW50IF9fbWF5YmVfdW51c2Vk
IHJvY2tjaGlwX3RoZXJtYWxfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gIAo+ICAJY2xr
X2Rpc2FibGUodGhlcm1hbC0+cGNsayk7Cj4gIAljbGtfZGlzYWJsZSh0aGVybWFsLT5jbGspOwo+
IC0KPiAtCXBpbmN0cmxfcG1fc2VsZWN0X3NsZWVwX3N0YXRlKGRldik7Cj4gKwlpZiAodGhlcm1h
bC0+dHNodXRfbW9kZSA9PSBUU0hVVF9NT0RFX0dQSU8pCj4gKwkJcGluY3RybF9zZWxlY3Rfc3Rh
dGUodGhlcm1hbC0+cGluY3RybCwgdGhlcm1hbC0+Z3Bpb19zdGF0ZSk7Cj4gIAo+ICAJcmV0dXJu
IDA7Cj4gIH0KPiBAQCAtMTM4Myw3ICsxNDEyLDggQEAgc3RhdGljIGludCBfX21heWJlX3VudXNl
ZCByb2NrY2hpcF90aGVybWFsX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gIAlmb3IgKGkg
PSAwOyBpIDwgdGhlcm1hbC0+Y2hpcC0+Y2huX251bTsgaSsrKQo+ICAJCXJvY2tjaGlwX3RoZXJt
YWxfdG9nZ2xlX3NlbnNvcigmdGhlcm1hbC0+c2Vuc29yc1tpXSwgdHJ1ZSk7Cj4gIAo+IC0JcGlu
Y3RybF9wbV9zZWxlY3RfZGVmYXVsdF9zdGF0ZShkZXYpOwo+ICsJaWYgKHRoZXJtYWwtPnRzaHV0
X21vZGUgPT0gVFNIVVRfTU9ERV9HUElPKQo+ICsJCXBpbmN0cmxfc2VsZWN0X3N0YXRlKHRoZXJt
YWwtPnBpbmN0cmwsIHRoZXJtYWwtPm90cF9zdGF0ZSk7Cj4gIAo+ICAJcmV0dXJuIDA7Cj4gIH0K
PiAKCgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNv
dXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5m
YWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20v
IyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxv
Zy8+IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
