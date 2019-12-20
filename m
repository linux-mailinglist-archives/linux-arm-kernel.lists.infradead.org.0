Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 906A4127B1B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 13:34:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LyBOvJqcN6SIVTEVTR6xk3+fvY2yD21Cox/9JXbSwqY=; b=DmHk21QgwVYNUk
	hg6eKc5HdCy/z/i598UwjPkuQoBxtvFkWMwK1gVcFuXO3c71/y81ProbdVqZLEigJcWQTPa+hf0NY
	vLX+m/EayDtL8ziAOUsDQjj9nIcboEZZ9G3euj9wGb4bKtB4AIjrb/AgpkWnNFRN9IaezBiwTdlf3
	2NtI7ExVs75vCofdx9w2neKpA9Fud7hVddkHWv4w7IkluVidW5PxTHcb3SRWS094X54XQqlaQl037
	VZx53I7+WOezKW3IozsyZB0U0zsOjw/btWbnCgSmgKbPjnem1YH9trbOdZwLh6OHf2W6QkeucKOay
	WasPojVn9PaX+Kig6sSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiHU8-0001z2-H5; Fri, 20 Dec 2019 12:34:24 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiHTv-0001y5-Bz
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 12:34:13 +0000
Received: by mail-qv1-xf43.google.com with SMTP id dc14so3531584qvb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 04:34:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=OM+8DC58J3a1Ql31mcDf8DJoUej0i6n4zpuo/9t+noM=;
 b=Teeb0IyvGBgEsXC2FUlY9Jj8vaOWfLiTgSTFn2BvkRD5ZneA6TfW521uY8dyShqNmq
 kOrZnE+CrofE8hYE9gtEigmbo/3NSu3GYRTZNnzSoUB9+/tSxfmdSEHJxy3dI/yV3r+w
 vxzYMowRH3yiGAp0vJIs36MzTdgudugCMcS6nHxqNdW1vUuBSFmqQPHDx4cSYSwBiKUL
 qD+p6esS0BXk8YMffgOC9OfbCjl/Jxzhy3qS8oI9xO14xBxICze1vSxaMMqSiNQrdVBo
 GW3Y7L6dPSEg+7bQrFzoPg11otBGNXUy7zqWY991NzHmvUPAPRmmXS/JV4BqMFBM6ueF
 8itg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=OM+8DC58J3a1Ql31mcDf8DJoUej0i6n4zpuo/9t+noM=;
 b=mAtRrRNtL3zUeHFJOdA7vFp98vmOeLdR95Z55/Ez38fMEaUtnhZbgFzabt6EGdgfUu
 wc29XOteETqqXqZ3qFsSVZSVSc1USDeGZ99ebZ9EtveGYOzplOsboy8afVFwIGwlKeLQ
 tT2QwUw+grU/dqDYMqO65WEAhqoXREKF5d6Zx7xOvyE4KHSbVHFK/FysbVl3dcxvFgUy
 tivQ9RO+/0zu1ngqnV+mQFFryWs4rpXYIZrUYmhkH0qymREEHQ+Zo8PLYbmAc1IdvORP
 dS7QFZclnQKLXA4rpxFnsPHvwL82x8IqaL5lcT2oODTfwmQrFcmSdKILjV+sQwcX0/7n
 E7ZQ==
X-Gm-Message-State: APjAAAXQKSb4rnv1teDi7FMq7RJcgo6LxKvRegJiuXBPMvcR+mfkr8+g
 ryMhYiGbdGoUJ2ts0+269Y8OpcUhkjb3XLl47BhdJA==
X-Google-Smtp-Source: APXvYqyKI5y4pA6tV7V4WabZMrtDehFiaFukF68PpW0zRcn+eFsKt3hAK4ZqwXgE6QO/xNOP1AtOUW3XIb6X2q62uSg=
X-Received: by 2002:a0c:ead1:: with SMTP id y17mr11501073qvp.210.1576845250032; 
 Fri, 20 Dec 2019 04:34:10 -0800 (PST)
MIME-Version: 1.0
References: <1574850218-13257-1-git-send-email-yannick.fertre@st.com>
 <90e15f5b-0b65-1de7-229d-c8e0470071b5@st.com>
In-Reply-To: <90e15f5b-0b65-1de7-229d-c8e0470071b5@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Fri, 20 Dec 2019 13:33:59 +0100
Message-ID: <CA+M3ks663uFr-fpTXoKXd--yKi6q4o525H-eYM9ZsO4dpFS6yg@mail.gmail.com>
Subject: Re: [PATCH] drm/stm: ltdc: move pinctrl to encoder mode set
To: Philippe CORNU <philippe.cornu@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_043411_456128_6365D8A4 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Yannick FERTRE <yannick.fertre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgbHVuLiAyIGTDqWMuIDIwMTkgw6AgMTg6MTksIFBoaWxpcHBlIENPUk5VIDxwaGlsaXBwZS5j
b3JudUBzdC5jb20+IGEgw6ljcml0IDoKPgo+IERlYXIgWWFubmljaywKPiBUaGFuayB5b3UgZm9y
IHlvdXIgcGF0Y2gsCj4KPiBBY2tlZC1ieTogUGhpbGlwcGUgQ29ybnUgPHBoaWxpcHBlLmNvcm51
QHN0LmNvbT4KPgoKQXBwbGllZCBvbiBkcm0tbWlzYy1uZXh0LAoKVGhhbmtzLApCZW5qYW1pbgoK
PiBQaGlsaXBwZSA6LSkKPgo+IE9uIDExLzI3LzE5IDExOjIzIEFNLCBZYW5uaWNrIEZlcnRyZSB3
cm90ZToKPiA+IEZyb206IFlhbm5pY2sgRmVydHLDqSA8eWFubmljay5mZXJ0cmVAc3QuY29tPgo+
ID4KPiA+IFRoZSBwaW4gY29udHJvbCBtdXN0IGJlIHNldCB0byBkZWZhdWx0IGFzIHNvb24gYXMg
cG9zc2libGUgdG8KPiA+IGVzdGFibGlzaCBhIGdvb2QgdmlkZW8gbGluayBiZXR3ZWVuIHR2ICYg
YnJpZGdlIGhkbWkKPiA+IChlbmNvZGVyIG1vZGUgc2V0IGlzIGNhbGwgYmVmb3JlIGVuY29kZXIg
ZW5hYmxlKS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBZYW5uaWNrIEZlcnRyZSA8eWFubmljay5m
ZXJ0cmVAc3QuY29tPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jIHwg
MjQgKysrKysrKysrKysrKysrKysrLS0tLS0tCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNl
cnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vc3RtL2x0ZGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jCj4gPiBpbmRleCA0
OWVmNDA2Li5kYmE4ZTdmIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRj
LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jCj4gPiBAQCAtNDM1LDkgKzQz
NSw2IEBAIHN0YXRpYyB2b2lkIGx0ZGNfY3J0Y19hdG9taWNfZW5hYmxlKHN0cnVjdCBkcm1fY3J0
YyAqY3J0YywKPiA+ICAgICAgIC8qIENvbW1pdCBzaGFkb3cgcmVnaXN0ZXJzID0gdXBkYXRlIHBs
YW5lcyBhdCBuZXh0IHZibGFuayAqLwo+ID4gICAgICAgcmVnX3NldChsZGV2LT5yZWdzLCBMVERD
X1NSQ1IsIFNSQ1JfVkJSKTsKPiA+Cj4gPiAtICAgICAvKiBFbmFibGUgTFREQyAqLwo+ID4gLSAg
ICAgcmVnX3NldChsZGV2LT5yZWdzLCBMVERDX0dDUiwgR0NSX0xURENFTik7Cj4gPiAtCj4gPiAg
ICAgICBkcm1fY3J0Y192Ymxhbmtfb24oY3J0Yyk7Cj4gPiAgIH0KPiA+Cj4gPiBAQCAtNDUxLDkg
KzQ0OCw2IEBAIHN0YXRpYyB2b2lkIGx0ZGNfY3J0Y19hdG9taWNfZGlzYWJsZShzdHJ1Y3QgZHJt
X2NydGMgKmNydGMsCj4gPgo+ID4gICAgICAgZHJtX2NydGNfdmJsYW5rX29mZihjcnRjKTsKPiA+
Cj4gPiAtICAgICAvKiBkaXNhYmxlIExUREMgKi8KPiA+IC0gICAgIHJlZ19jbGVhcihsZGV2LT5y
ZWdzLCBMVERDX0dDUiwgR0NSX0xURENFTik7Cj4gPiAtCj4gPiAgICAgICAvKiBkaXNhYmxlIElS
USAqLwo+ID4gICAgICAgcmVnX2NsZWFyKGxkZXYtPnJlZ3MsIExURENfSUVSLCBJRVJfUlJJRSB8
IElFUl9GVUlFIHwgSUVSX1RFUlJJRSk7Cj4gPgo+ID4gQEAgLTEwNDIsOSArMTAzNiwxMyBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IGRybV9lbmNvZGVyX2Z1bmNzIGx0ZGNfZW5jb2Rlcl9mdW5jcyA9
IHsKPiA+ICAgc3RhdGljIHZvaWQgbHRkY19lbmNvZGVyX2Rpc2FibGUoc3RydWN0IGRybV9lbmNv
ZGVyICplbmNvZGVyKQo+ID4gICB7Cj4gPiAgICAgICBzdHJ1Y3QgZHJtX2RldmljZSAqZGRldiA9
IGVuY29kZXItPmRldjsKPiA+ICsgICAgIHN0cnVjdCBsdGRjX2RldmljZSAqbGRldiA9IGRkZXYt
PmRldl9wcml2YXRlOwo+ID4KPiA+ICAgICAgIERSTV9ERUJVR19EUklWRVIoIlxuIik7Cj4gPgo+
ID4gKyAgICAgLyogRGlzYWJsZSBMVERDICovCj4gPiArICAgICByZWdfY2xlYXIobGRldi0+cmVn
cywgTFREQ19HQ1IsIEdDUl9MVERDRU4pOwo+ID4gKwo+ID4gICAgICAgLyogU2V0IHRvIHNsZWVw
IHN0YXRlIHRoZSBwaW5jdHJsIHdoYXRldmVyIHR5cGUgb2YgZW5jb2RlciAqLwo+ID4gICAgICAg
cGluY3RybF9wbV9zZWxlY3Rfc2xlZXBfc3RhdGUoZGRldi0+ZGV2KTsKPiA+ICAgfQo+ID4gQEAg
LTEwNTIsNiArMTA1MCwxOSBAQCBzdGF0aWMgdm9pZCBsdGRjX2VuY29kZXJfZGlzYWJsZShzdHJ1
Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIpCj4gPiAgIHN0YXRpYyB2b2lkIGx0ZGNfZW5jb2Rlcl9l
bmFibGUoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyKQo+ID4gICB7Cj4gPiAgICAgICBzdHJ1
Y3QgZHJtX2RldmljZSAqZGRldiA9IGVuY29kZXItPmRldjsKPiA+ICsgICAgIHN0cnVjdCBsdGRj
X2RldmljZSAqbGRldiA9IGRkZXYtPmRldl9wcml2YXRlOwo+ID4gKwo+ID4gKyAgICAgRFJNX0RF
QlVHX0RSSVZFUigiXG4iKTsKPiA+ICsKPiA+ICsgICAgIC8qIEVuYWJsZSBMVERDICovCj4gPiAr
ICAgICByZWdfc2V0KGxkZXYtPnJlZ3MsIExURENfR0NSLCBHQ1JfTFREQ0VOKTsKPiA+ICt9Cj4g
PiArCj4gPiArc3RhdGljIHZvaWQgbHRkY19lbmNvZGVyX21vZGVfc2V0KHN0cnVjdCBkcm1fZW5j
b2RlciAqZW5jb2RlciwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0
IGRybV9kaXNwbGF5X21vZGUgKm1vZGUsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlKQo+ID4gK3sKPiA+ICsg
ICAgIHN0cnVjdCBkcm1fZGV2aWNlICpkZGV2ID0gZW5jb2Rlci0+ZGV2Owo+ID4KPiA+ICAgICAg
IERSTV9ERUJVR19EUklWRVIoIlxuIik7Cj4gPgo+ID4gQEAgLTEwNjcsNiArMTA3OCw3IEBAIHN0
YXRpYyB2b2lkIGx0ZGNfZW5jb2Rlcl9lbmFibGUoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVy
KQo+ID4gICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9lbmNvZGVyX2hlbHBlcl9mdW5jcyBsdGRj
X2VuY29kZXJfaGVscGVyX2Z1bmNzID0gewo+ID4gICAgICAgLmRpc2FibGUgPSBsdGRjX2VuY29k
ZXJfZGlzYWJsZSwKPiA+ICAgICAgIC5lbmFibGUgPSBsdGRjX2VuY29kZXJfZW5hYmxlLAo+ID4g
KyAgICAgLm1vZGVfc2V0ID0gbHRkY19lbmNvZGVyX21vZGVfc2V0LAo+ID4gICB9Owo+ID4KPiA+
ICAgc3RhdGljIGludCBsdGRjX2VuY29kZXJfaW5pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGRldiwg
c3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSkKPiA+Cj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
