Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E35A52E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 11:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dk8HZh8XZmNE8XXWjcd4vD0sdklnRTOBroTKi45bWzo=; b=Slm4ai0esO8vNK
	nX7QjsorY40JYWQe9bdpPDFCRj1p60zKq0AS0Yxr5QgBzbdSIRiMVaMh/DircyW2ssE9/ud4rTaSc
	LtuAWS/D68NF3Yng5DEAqq9KekXvl+AApVduI0jIkaXYgOX5RxghaxhsUtNQOUmIhd8RezuE0QrxL
	zGnVe7qG9bNQI/twPCn8k+S3RXwPPclB9MjQ3b0ECeFSrv3FFcSF+as+4XUY+DOD1DSXYGgkCnJki
	s1qQHmhITPGTm6CXZaoJEn7eiVR6iVdAACm0vyxeIKB4pi3LTZQsb7ZYqN3k2sJLdz6kCb7PKxYix
	CigNG3uItTNAsVS4/YbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4ikM-0002nT-By; Mon, 02 Sep 2019 09:35:38 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4ik6-0002mR-A0
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 09:35:24 +0000
Received: by mail-qk1-x743.google.com with SMTP id g17so11953243qkk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 02:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=38YIQw9rYXVcXSnz01ylMn1XuQgT2tKgepHXTvRAlmI=;
 b=MrtEnvsPeKbpdEE6n4t+yRTgqlactOV8g1SI+5jk0ZIyXDWGDbTrfXIz12VxRvYixu
 SI8Ls/by2Tn0tT31+NYhrzpSyE5Qa9YGGnyhVIPRyvIcUhdZeF3bi3rdJehdc0tDmz98
 CTP/uleQTCSkAmNWdqVCC0BkzhNBysidHkm9VFiK2EhUzjY3+sHD3BjBFcGIETlSLr27
 i6Qiijo8rqb36DwmQYlzWbmf2lxeJ2FOYX04K4zDuxcziu8LoskVWRvp4bG8nMy1wfVs
 bPt6NY0feBStC430sECK7fDZ4b8hOSs4S7Lbxq8HXiYsTdy5BQedyRMgkTk2AqWIjazR
 8/Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=38YIQw9rYXVcXSnz01ylMn1XuQgT2tKgepHXTvRAlmI=;
 b=lGEeZFrMJxNMUfm3BSy4JBJB0eGmog7wXOcXu9qIixgqeNSklaLcbRKlSBthAPmhUg
 MczGt/jg5yPgjDpAUGSzRSisT43H1UMPT8kKhrhq4N0eV3cHygbjagtKGuueewhGqDMA
 fyI9Yg22U6pKERHVZcLuGLqaYaG1SpCx7yYqpQRzJYjjThLACUZ3Zao6NPSEACruPOP4
 ndjU3Nc1jcU9Re9fQs2p5K54c04X5YgzQdIo3HHqw1Vhh1JdaMjZzNdLgNDce/mx0TbM
 InDl3YCMEqNAva36rcgELHbYwksFHES39VDC2N/kEgjSShTJ/5GmufDyVkFU+0ilVPYN
 yUWw==
X-Gm-Message-State: APjAAAWN0rGbVrAsPNJ4flo4bsjndfPmhjPliMNdiKV9zgTglx0PQi0o
 zuViRsApQaqKtl7AzjFtLx5osFVJTVx+hyF5GTzOrw==
X-Google-Smtp-Source: APXvYqzstwtUHC+bSs9WdknmyMWA119lZrPIEt6ddRW8DWeESXgG8Thvv6/PsX8pItz2k9fLmDu/VaDOP/UcM6Gga/c=
X-Received: by 2002:a37:8547:: with SMTP id h68mr6152302qkd.219.1567416918785; 
 Mon, 02 Sep 2019 02:35:18 -0700 (PDT)
MIME-Version: 1.0
References: <1564757262-6166-1-git-send-email-yannick.fertre@st.com>
 <ada48bc2-ac6a-8732-9aa6-03ef1c104abf@st.com>
In-Reply-To: <ada48bc2-ac6a-8732-9aa6-03ef1c104abf@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Mon, 2 Sep 2019 11:35:07 +0200
Message-ID: <CA+M3ks6MurXFitY24Cm9jCVx8h+VxTDFARxKuqg7MmhUk58X7w@mail.gmail.com>
Subject: Re: [PATCH] drm/stm: ltdc: add pinctrl for DPI encoder mode
To: Philippe CORNU <philippe.cornu@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_023522_351498_BAE604C9 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Yannick FERTRE <yannick.fertre@st.com>, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Fabrice GASNIER <fabrice.gasnier@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

K2RyaS1kZXZlbCBtYWlsaW5nIGxpc3QKCkxlIGx1bi4gMiBzZXB0LiAyMDE5IMOgIDEwOjQ3LCBQ
aGlsaXBwZSBDT1JOVSA8cGhpbGlwcGUuY29ybnVAc3QuY29tPiBhIMOpY3JpdCA6Cj4KPiBIaSBZ
YW5uaWNrLAo+Cj4gT24gOC8yLzE5IDQ6NDcgUE0sIFlhbm5pY2sgRmVydHLDqSB3cm90ZToKPiA+
IFRoZSBpbXBsZW1lbnRhdGlvbiBvZiBmdW5jdGlvbnMgZW5jb2Rlcl9lbmFibGUgYW5kIGVuY29k
ZXJfZGlzYWJsZQo+ID4gbWFrZSBwb3NzaWJsZSB0byBjb250cm9sIHRoZSBwaW5jdHJsIGFjY29y
ZGluZyB0byB0aGUgZW5jb2RlciB0eXBlLgo+ID4gVGhlIHBpbmN0cmwgbXVzdCBiZSBhY3RpdmF0
ZWQgb25seSBpZiB0aGUgZW5jb2RlciB0eXBlIGlzIERQSS4KPiA+IFRoaXMgaGVscHMgdG8gbW92
ZSB0aGUgRFBJLXJlbGF0ZWQgcGluY3RybCBjb25maWd1cmF0aW9uIGZyb20KPiA+IGFsbCB0aGUg
cGFuZWwgb3IgYnJpZGdlIHRvIHRoZSBMVERDIGR0IG5vZGUuCj4gPgo+ID4gU2lnbmVkLW9mZi1i
eTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBzdC5jb20+Cj4gPiAtLS0KPiA+ICAg
ZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRjLmMgfCAzNSArKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKwo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMzUgaW5zZXJ0aW9ucygrKQo+ID4KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9zdG0vbHRkYy5jCj4gPiBpbmRleCAzYWI0ZmJmLi4xYzRmZGUwIDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRjLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0v
bHRkYy5jCj4gPiBAQCAtMTUsNiArMTUsNyBAQAo+ID4gICAjaW5jbHVkZSA8bGludXgvbW9kdWxl
Lmg+Cj4gPiAgICNpbmNsdWRlIDxsaW51eC9vZl9hZGRyZXNzLmg+Cj4gPiAgICNpbmNsdWRlIDxs
aW51eC9vZl9ncmFwaC5oPgo+ID4gKyNpbmNsdWRlIDxsaW51eC9waW5jdHJsL2NvbnN1bWVyLmg+
Cj4gPiAgICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiA+ICAgI2luY2x1ZGUg
PGxpbnV4L3BtX3J1bnRpbWUuaD4KPiA+ICAgI2luY2x1ZGUgPGxpbnV4L3Jlc2V0Lmg+Cj4gPiBA
QCAtMTA0MCw2ICsxMDQxLDM2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2VuY29kZXJfZnVu
Y3MgbHRkY19lbmNvZGVyX2Z1bmNzID0gewo+ID4gICAgICAgLmRlc3Ryb3kgPSBkcm1fZW5jb2Rl
cl9jbGVhbnVwLAo+ID4gICB9Owo+ID4KPiA+ICtzdGF0aWMgdm9pZCBsdGRjX2VuY29kZXJfZGlz
YWJsZShzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIpCj4gPiArewo+ID4gKyAgICAgc3RydWN0
IGRybV9kZXZpY2UgKmRkZXYgPSBlbmNvZGVyLT5kZXY7Cj4gPiArCj4gPiArICAgICBEUk1fREVC
VUdfRFJJVkVSKCJcbiIpOwo+ID4gKwo+ID4gKyAgICAgLyogU2V0IHRvIHNsZWVwIHN0YXRlIHRo
ZSBwaW5jdHJsIHdoYXRldmVyIHR5cGUgb2YgZW5jb2RlciAqLwo+ID4gKyAgICAgcGluY3RybF9w
bV9zZWxlY3Rfc2xlZXBfc3RhdGUoZGRldi0+ZGV2KTsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGlj
IHZvaWQgbHRkY19lbmNvZGVyX2VuYWJsZShzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIpCj4g
PiArewo+ID4gKyAgICAgc3RydWN0IGRybV9kZXZpY2UgKmRkZXYgPSBlbmNvZGVyLT5kZXY7Cj4g
PiArCj4gPiArICAgICBEUk1fREVCVUdfRFJJVkVSKCJcbiIpOwo+ID4gKwo+ID4gKyAgICAgLyoK
PiA+ICsgICAgICAqIFNldCB0byBkZWZhdWx0IHN0YXRlIHRoZSBwaW5jdHJsIG9ubHkgd2l0aCBE
UEkgdHlwZS4KPiA+ICsgICAgICAqIE90aGVycyB0eXBlcyBsaWtlIERTSSwgZG9uJ3QgbmVlZCBw
aW5jdHJsIGR1ZSB0bwo+ID4gKyAgICAgICogaW50ZXJuYWwgYnJpZGdlICh0aGUgc2lnbmFscyBk
byBub3QgY29tZSBvdXQgb2YgdGhlIGNoaXBzZXQpLgo+ID4gKyAgICAgICovCj4gPiArICAgICBp
ZiAoZW5jb2Rlci0+ZW5jb2Rlcl90eXBlID09IERSTV9NT0RFX0VOQ09ERVJfRFBJKQo+ID4gKyAg
ICAgICAgICAgICBwaW5jdHJsX3BtX3NlbGVjdF9kZWZhdWx0X3N0YXRlKGRkZXYtPmRldik7Cj4g
PiArfQo+ID4gKwo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2VuY29kZXJfaGVscGVyX2Z1
bmNzIGx0ZGNfZW5jb2Rlcl9oZWxwZXJfZnVuY3MgPSB7Cj4gPiArICAgICAuZGlzYWJsZSA9IGx0
ZGNfZW5jb2Rlcl9kaXNhYmxlLAo+ID4gKyAgICAgLmVuYWJsZSA9IGx0ZGNfZW5jb2Rlcl9lbmFi
bGUsCj4gPiArfTsKPiA+ICsKPiA+ICAgc3RhdGljIGludCBsdGRjX2VuY29kZXJfaW5pdChzdHJ1
Y3QgZHJtX2RldmljZSAqZGRldiwgc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSkKPiA+ICAgewo+
ID4gICAgICAgc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyOwo+ID4gQEAgLTEwNTUsNiArMTA4
Niw4IEBAIHN0YXRpYyBpbnQgbHRkY19lbmNvZGVyX2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRk
ZXYsIHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UpCj4gPiAgICAgICBkcm1fZW5jb2Rlcl9pbml0
KGRkZXYsIGVuY29kZXIsICZsdGRjX2VuY29kZXJfZnVuY3MsCj4gPiAgICAgICAgICAgICAgICAg
ICAgICAgIERSTV9NT0RFX0VOQ09ERVJfRFBJLCBOVUxMKTsKPiA+Cj4gPiArICAgICBkcm1fZW5j
b2Rlcl9oZWxwZXJfYWRkKGVuY29kZXIsICZsdGRjX2VuY29kZXJfaGVscGVyX2Z1bmNzKTsKPiA+
ICsKPiA+ICAgICAgIHJldCA9IGRybV9icmlkZ2VfYXR0YWNoKGVuY29kZXIsIGJyaWRnZSwgTlVM
TCk7Cj4gPiAgICAgICBpZiAocmV0KSB7Cj4gPiAgICAgICAgICAgICAgIGRybV9lbmNvZGVyX2Ns
ZWFudXAoZW5jb2Rlcik7Cj4gPiBAQCAtMTI4MCw2ICsxMzEzLDggQEAgaW50IGx0ZGNfbG9hZChz
dHJ1Y3QgZHJtX2RldmljZSAqZGRldikKPiA+Cj4gPiAgICAgICBjbGtfZGlzYWJsZV91bnByZXBh
cmUobGRldi0+cGl4ZWxfY2xrKTsKPiA+Cj4gPiArICAgICBwaW5jdHJsX3BtX3NlbGVjdF9zbGVl
cF9zdGF0ZShkZGV2LT5kZXYpOwo+ID4gKwo+Cj4gUmV2aWV3ZWQtYnk6IFBoaWxpcHBlIENvcm51
IDxwaGlsaXBwZS5jb3JudUBzdC5jb20+Cj4KPiBUaGFua3MKPiBQaGlsaXBwZSA6KQo+Cj4gPiAg
ICAgICBwbV9ydW50aW1lX2VuYWJsZShkZGV2LT5kZXYpOwo+ID4KPiA+ICAgICAgIHJldHVybiAw
Owo+ID4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
