Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DECCC38A9E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 14:49:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l33LcKNTnOJJx5uJtH/GZMLvHWiSIRYS4HattrXrCbA=; b=KHLKUmPj0TtEu+
	pMsK3HYiFkY91Epl+pa4kXT4AjEcoCJwTRftRPBQb4yXk2qKeKBSStLCYzKqRsPI0aC75uYx7CBOk
	fpTv3ltqlEB51NpaeeT3Av+PYJkpWhvEO5SkxgFdUBrIn+O10O1cy61q+mq5KdapYgHSLNCakBvNW
	ykd8H2DLMFvjJ5mOxRzAaT278bJujb4mDBJCU+wWpcgmmczMz7b8K1FILMfG9Gj8Yxh/9XOVV4GEF
	wpy21YFtsg003fpwbfNUQb+1BvIE5rt3m+3Tk3f/a0Xkb0llI6/2oKpM1fFTVzrA50NJWxSA8pTx0
	XOy+lYOkABSPGqGafpeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZEIt-0004Hv-RA; Fri, 07 Jun 2019 12:49:07 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZEIi-0004HQ-Ul
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 12:48:58 +0000
Received: by mail-qk1-x744.google.com with SMTP id l128so1141652qke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 05:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dYAnPJ618ZNlHVYVCO5fYAE+fci+l9fnhn/c36/XLCw=;
 b=WacQlm3bQvBfM+EIlriRzhlehMTLBuyeNLsvmJ6snBuBT+LX5MF6nplisZwdZtEF7p
 rI5auG7ZYVYFKtZ3EqwsgZWjsrXBx1fHIMbHLvPpS5FXyTs1VCWPwqakhL326+9tzZfM
 tCqrAHPKlGDuclNDBWyMwdCnOq7bqltjGLZaSwhQVGZl5fXERNBRY0EhQPBs3E/HmH7B
 hzLYkO2OhrLcpjnG9FZ2mBcdm1LeQ1aGL5mzc3S3GI7mgIo1xFh1B3PV112Fz2eS5O4E
 TanAEJ/XFSBb2dSlrOxBQRWMmsDXuXiJ34JK2P/go/jFEBopvnshj0OTd0od1pW1u0aN
 tDMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dYAnPJ618ZNlHVYVCO5fYAE+fci+l9fnhn/c36/XLCw=;
 b=Vr40K6jpRNetdCsCDriNen65q3Wn140W1oqs+qs5VtIw8cPto2VC2P0kh7E2gmX6fY
 Jc89JOpmr3JRRCM/I6XJ/TBDVq6Elb3ZojKHvuZXgX02r+zw3PWJ9Bl8bS0uKOBNu61e
 KrxcNNgrXhkncFG0LXVlsQQcnifqtVoFsQSbegAtxUuOFTS1rhI8ynlyAhkAVlFJKFy3
 9l9mVnUuI2k5wFAulCqUtv+CBpFnXnbq9ZnWG1aEQtY3S95QOs7VgjCntUDpQZxizTjS
 rcfPHzE3f2OWfdfLocuCWKONLyp9bTvnuKF4u8uyRyxgNlzdD9vSzGynlkIr/ttJqC1G
 u/Zw==
X-Gm-Message-State: APjAAAVvB+Hll8b0HxqhOYHowEIiI8TRppji/g7fmZA4shCYdK1sbdLo
 LkAXtT/NHOMVx9PcpNoLKmYaYCQVaaj1shyKf9dqWg==
X-Google-Smtp-Source: APXvYqwUU48WBatmv6D8pl//FuXWECj474GYcJuX2tDvxT5etPKeLvAMMepQ6NVfTDo8qsuh7E7LdEC4+0XhmJAR/Kk=
X-Received: by 2002:ae9:e40f:: with SMTP id q15mr14992240qkc.241.1559911735396; 
 Fri, 07 Jun 2019 05:48:55 -0700 (PDT)
MIME-Version: 1.0
References: <1559550722-14091-1-git-send-email-yannick.fertre@st.com>
 <abc976d8-9867-335c-1cb1-6f5c0dd1586c@st.com>
In-Reply-To: <abc976d8-9867-335c-1cb1-6f5c0dd1586c@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Fri, 7 Jun 2019 14:48:44 +0200
Message-ID: <CA+M3ks4ZJtHfDkJoGx7yyck+teRsmzhkBt_LonS9Z9awOnurzA@mail.gmail.com>
Subject: Re: [PATCH] drm/stm: support runtime power management
To: Philippe CORNU <philippe.cornu@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_054856_998804_3CCF8D87 
X-CRM114-Status: GOOD (  24.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Yannick FERTRE <yannick.fertre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Vincent ABRIOU <vincent.abriou@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgdmVuLiA3IGp1aW4gMjAxOSDDoCAxMzoxOSwgUGhpbGlwcGUgQ09STlUgPHBoaWxpcHBlLmNv
cm51QHN0LmNvbT4gYSDDqWNyaXQgOgo+Cj4gSGkgWWFubmljaywKPgo+IFRoYW5rIHlvdSBmb3Ig
eW91ciBwYXRjaAo+Cj4gQWNrZWQtYnk6IFBoaWxpcHBlIENvcm51IDxwaGlsaXBwZS5jb3JudUBz
dC5jb20+CgpBcHBsaWVkIG9uIGRybS1taXNjLW5leHQKClRoYW5rcywKQmVuamFtaW4KPgo+IFBo
aWxpcHBlIDotKQo+Cj4gT24gNi8zLzE5IDEwOjMyIEFNLCBZYW5uaWNrIEZlcnRyw6kgd3JvdGU6
Cj4gPiBUaGlzIHBhdGNoIGVuYWJsZXMgcnVudGltZSBwb3dlciBtYW5hZ2VtZW50IChydW50aW1l
IFBNKSBzdXBwb3J0IGZvcgo+ID4gdGhlIGRpc3BsYXkgY29udHJvbGxlci4gcG1fcnVudGltZV9l
bmFibGUoKSBhbmQgcG1fcnVudGltZV9kaXNhYmxlKCkKPiA+IGFyZSBhZGRlZCBkdXJpbmcgbHRk
YyBsb2FkIGFuZCB1bmxvYWQgcmVzcGVjdGl2ZWx5Lgo+ID4gcG1fcnVudGltZV9nZXRfc3luYygp
IGFuZCBwbV9ydW50aW1lX3B1dF9zeW5jKCkgYXJlIGFkZGVkIGZvciBsdGRjCj4gPiByZWdpc3Rl
ciBhY2Nlc3MuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNr
LmZlcnRyZUBzdC5jb20+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL3N0bS9kcnYuYyAg
fCA0MyArKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0v
c3RtL2x0ZGMuYyB8IDY3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0t
LS0tLS0KPiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCA4NiBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlv
bnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3N0bS9kcnYuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9zdG0vZHJ2LmMKPiA+IGluZGV4IDU4MzRlZjUuLjU2NTk1NzIgMTAwNjQ0
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc3RtL2Rydi5jCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vc3RtL2Rydi5jCj4gPiBAQCAtMTIsNiArMTIsNyBAQAo+ID4gICAjaW5jbHVkZSA8bGlu
dXgvZG1hLW1hcHBpbmcuaD4KPiA+ICAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+ID4gICAj
aW5jbHVkZSA8bGludXgvb2ZfcGxhdGZvcm0uaD4KPiA+ICsjaW5jbHVkZSA8bGludXgvcG1fcnVu
dGltZS5oPgo+ID4KPiA+ICAgI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljLmg+Cj4gPiAgICNpbmNs
dWRlIDxkcm0vZHJtX2F0b21pY19oZWxwZXIuaD4KPiA+IEBAIC0xMzUsMTQgKzEzNiwxNSBAQCBz
dGF0aWMgX19tYXliZV91bnVzZWQgaW50IGRydl9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikK
PiA+ICAgICAgIHN0cnVjdCBsdGRjX2RldmljZSAqbGRldiA9IGRkZXYtPmRldl9wcml2YXRlOwo+
ID4gICAgICAgc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlOwo+ID4KPiA+IC0gICAgIGRy
bV9rbXNfaGVscGVyX3BvbGxfZGlzYWJsZShkZGV2KTsKPiA+ICsgICAgIGlmIChXQVJOX09OKCFs
ZGV2LT5zdXNwZW5kX3N0YXRlKSkKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIC1FTk9FTlQ7Cj4g
PiArCj4gPiAgICAgICBzdGF0ZSA9IGRybV9hdG9taWNfaGVscGVyX3N1c3BlbmQoZGRldik7Cj4g
PiAtICAgICBpZiAoSVNfRVJSKHN0YXRlKSkgewo+ID4gLSAgICAgICAgICAgICBkcm1fa21zX2hl
bHBlcl9wb2xsX2VuYWJsZShkZGV2KTsKPiA+ICsgICAgIGlmIChJU19FUlIoc3RhdGUpKQo+ID4g
ICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihzdGF0ZSk7Cj4gPiAtICAgICB9Cj4gPiArCj4g
PiAgICAgICBsZGV2LT5zdXNwZW5kX3N0YXRlID0gc3RhdGU7Cj4gPiAtICAgICBsdGRjX3N1c3Bl
bmQoZGRldik7Cj4gPiArICAgICBwbV9ydW50aW1lX2ZvcmNlX3N1c3BlbmQoZGV2KTsKPiA+Cj4g
PiAgICAgICByZXR1cm4gMDsKPiA+ICAgfQo+ID4gQEAgLTE1MSwxNiArMTUzLDQxIEBAIHN0YXRp
YyBfX21heWJlX3VudXNlZCBpbnQgZHJ2X3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gPiAg
IHsKPiA+ICAgICAgIHN0cnVjdCBkcm1fZGV2aWNlICpkZGV2ID0gZGV2X2dldF9kcnZkYXRhKGRl
dik7Cj4gPiAgICAgICBzdHJ1Y3QgbHRkY19kZXZpY2UgKmxkZXYgPSBkZGV2LT5kZXZfcHJpdmF0
ZTsKPiA+ICsgICAgIGludCByZXQ7Cj4gPgo+ID4gLSAgICAgbHRkY19yZXN1bWUoZGRldik7Cj4g
PiAtICAgICBkcm1fYXRvbWljX2hlbHBlcl9yZXN1bWUoZGRldiwgbGRldi0+c3VzcGVuZF9zdGF0
ZSk7Cj4gPiAtICAgICBkcm1fa21zX2hlbHBlcl9wb2xsX2VuYWJsZShkZGV2KTsKPiA+ICsgICAg
IHBtX3J1bnRpbWVfZm9yY2VfcmVzdW1lKGRldik7Cj4gPiArICAgICByZXQgPSBkcm1fYXRvbWlj
X2hlbHBlcl9yZXN1bWUoZGRldiwgbGRldi0+c3VzcGVuZF9zdGF0ZSk7Cj4gPiArICAgICBpZiAo
cmV0KSB7Cj4gPiArICAgICAgICAgICAgIHBtX3J1bnRpbWVfZm9yY2Vfc3VzcGVuZChkZXYpOwo+
ID4gKyAgICAgICAgICAgICBsZGV2LT5zdXNwZW5kX3N0YXRlID0gTlVMTDsKPiA+ICsgICAgICAg
ICAgICAgcmV0dXJuIHJldDsKPiA+ICsgICAgIH0KPiA+Cj4gPiAgICAgICByZXR1cm4gMDsKPiA+
ICAgfQo+ID4KPiA+ICtzdGF0aWMgX19tYXliZV91bnVzZWQgaW50IGRydl9ydW50aW1lX3N1c3Bl
bmQoc3RydWN0IGRldmljZSAqZGV2KQo+ID4gK3sKPiA+ICsgICAgIHN0cnVjdCBkcm1fZGV2aWNl
ICpkZGV2ID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gPiArCj4gPiArICAgICBEUk1fREVCVUdf
RFJJVkVSKCJcbiIpOwo+ID4gKyAgICAgbHRkY19zdXNwZW5kKGRkZXYpOwo+ID4gKwo+ID4gKyAg
ICAgcmV0dXJuIDA7Cj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyBfX21heWJlX3VudXNlZCBpbnQg
ZHJ2X3J1bnRpbWVfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikKPiA+ICt7Cj4gPiArICAgICBz
dHJ1Y3QgZHJtX2RldmljZSAqZGRldiA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+ID4gKwo+ID4g
KyAgICAgRFJNX0RFQlVHX0RSSVZFUigiXG4iKTsKPiA+ICsgICAgIHJldHVybiBsdGRjX3Jlc3Vt
ZShkZGV2KTsKPiA+ICt9Cj4gPiArCj4gPiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZGV2X3BtX29w
cyBkcnZfcG1fb3BzID0gewo+ID4gICAgICAgU0VUX1NZU1RFTV9TTEVFUF9QTV9PUFMoZHJ2X3N1
c3BlbmQsIGRydl9yZXN1bWUpCj4gPiArICAgICBTRVRfUlVOVElNRV9QTV9PUFMoZHJ2X3J1bnRp
bWVfc3VzcGVuZCwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICBkcnZfcnVudGltZV9yZXN1
bWUsIE5VTEwpCj4gPiAgIH07Cj4gPgo+ID4gICBzdGF0aWMgaW50IHN0bV9kcm1fcGxhdGZvcm1f
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jCj4gPiBp
bmRleCBhYzI5ODkwLi5hNDA4NzBiIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3N0
bS9sdGRjLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jCj4gPiBAQCAtMTYs
NiArMTYsNyBAQAo+ID4gICAjaW5jbHVkZSA8bGludXgvb2ZfYWRkcmVzcy5oPgo+ID4gICAjaW5j
bHVkZSA8bGludXgvb2ZfZ3JhcGguaD4KPiA+ICAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2Rl
dmljZS5oPgo+ID4gKyNpbmNsdWRlIDxsaW51eC9wbV9ydW50aW1lLmg+Cj4gPiAgICNpbmNsdWRl
IDxsaW51eC9yZXNldC5oPgo+ID4KPiA+ICAgI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljLmg+Cj4g
PiBAQCAtNDQ0LDYgKzQ0NSw3IEBAIHN0YXRpYyB2b2lkIGx0ZGNfY3J0Y19hdG9taWNfZGlzYWJs
ZShzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqb2xkX3N0YXRlKQo+ID4gICB7Cj4gPiAgICAg
ICBzdHJ1Y3QgbHRkY19kZXZpY2UgKmxkZXYgPSBjcnRjX3RvX2x0ZGMoY3J0Yyk7Cj4gPiArICAg
ICBzdHJ1Y3QgZHJtX2RldmljZSAqZGRldiA9IGNydGMtPmRldjsKPiA+Cj4gPiAgICAgICBEUk1f
REVCVUdfRFJJVkVSKCJcbiIpOwo+ID4KPiA+IEBAIC00NTcsNiArNDU5LDggQEAgc3RhdGljIHZv
aWQgbHRkY19jcnRjX2F0b21pY19kaXNhYmxlKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKPiA+Cj4g
PiAgICAgICAvKiBpbW1lZGlhdGVseSBjb21taXQgZGlzYWJsZSBvZiBsYXllcnMgYmVmb3JlIHN3
aXRjaGluZyBvZmYgTFREQyAqLwo+ID4gICAgICAgcmVnX3NldChsZGV2LT5yZWdzLCBMVERDX1NS
Q1IsIFNSQ1JfSU1SKTsKPiA+ICsKPiA+ICsgICAgIHBtX3J1bnRpbWVfcHV0X3N5bmMoZGRldi0+
ZGV2KTsKPiA+ICAgfQo+ID4KPiA+ICAgI2RlZmluZSBDTEtfVE9MRVJBTkNFX0haIDUwCj4gPiBA
QCAtNTA1LDE3ICs1MDksMzEgQEAgc3RhdGljIGJvb2wgbHRkY19jcnRjX21vZGVfZml4dXAoc3Ry
dWN0IGRybV9jcnRjICpjcnRjLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0
cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlKQo+ID4gICB7Cj4gPiAgICAgICBz
dHJ1Y3QgbHRkY19kZXZpY2UgKmxkZXYgPSBjcnRjX3RvX2x0ZGMoY3J0Yyk7Cj4gPiArICAgICBz
dHJ1Y3QgZHJtX2RldmljZSAqZGRldiA9IGNydGMtPmRldjsKPiA+ICAgICAgIGludCByYXRlID0g
bW9kZS0+Y2xvY2sgKiAxMDAwOwo+ID4gKyAgICAgYm9vbCBydW50aW1lX2FjdGl2ZTsKPiA+ICsg
ICAgIGludCByZXQ7Cj4gPiArCj4gPiArICAgICBydW50aW1lX2FjdGl2ZSA9IHBtX3J1bnRpbWVf
YWN0aXZlKGRkZXYtPmRldik7Cj4gPiArCj4gPiArICAgICBpZiAocnVudGltZV9hY3RpdmUpCj4g
PiArICAgICAgICAgICAgIHBtX3J1bnRpbWVfcHV0X3N5bmMoZGRldi0+ZGV2KTsKPiA+Cj4gPiAt
ICAgICBjbGtfZGlzYWJsZShsZGV2LT5waXhlbF9jbGspOwo+ID4gICAgICAgaWYgKGNsa19zZXRf
cmF0ZShsZGV2LT5waXhlbF9jbGssIHJhdGUpIDwgMCkgewo+ID4gICAgICAgICAgICAgICBEUk1f
RVJST1IoIkNhbm5vdCBzZXQgcmF0ZSAoJWRIeikgZm9yIHBpeGVsIGNsa1xuIiwgcmF0ZSk7Cj4g
PiAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKPiA+ICAgICAgIH0KPiA+IC0gICAgIGNsa19l
bmFibGUobGRldi0+cGl4ZWxfY2xrKTsKPiA+Cj4gPiAgICAgICBhZGp1c3RlZF9tb2RlLT5jbG9j
ayA9IGNsa19nZXRfcmF0ZShsZGV2LT5waXhlbF9jbGspIC8gMTAwMDsKPiA+Cj4gPiArICAgICBp
ZiAocnVudGltZV9hY3RpdmUpIHsKPiA+ICsgICAgICAgICAgICAgcmV0ID0gcG1fcnVudGltZV9n
ZXRfc3luYyhkZGV2LT5kZXYpOwo+ID4gKyAgICAgICAgICAgICBpZiAocmV0KSB7Cj4gPiArICAg
ICAgICAgICAgICAgICAgICAgRFJNX0VSUk9SKCJGYWlsZWQgdG8gZml4dXAgbW9kZSwgY2Fubm90
IGdldCBzeW5jXG4iKTsKPiA+ICsgICAgICAgICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7Cj4g
PiArICAgICAgICAgICAgIH0KPiA+ICsgICAgIH0KPiA+ICsKPiA+ICAgICAgIERSTV9ERUJVR19E
UklWRVIoInJlcXVlc3RlZCBjbG9jayAlZGtIeiwgYWRqdXN0ZWQgY2xvY2sgJWRrSHpcbiIsCj4g
PiAgICAgICAgICAgICAgICAgICAgICAgIG1vZGUtPmNsb2NrLCBhZGp1c3RlZF9tb2RlLT5jbG9j
ayk7Cj4gPgo+ID4gQEAgLTUyNSwxMSArNTQzLDIxIEBAIHN0YXRpYyBib29sIGx0ZGNfY3J0Y19t
b2RlX2ZpeHVwKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKPiA+ICAgc3RhdGljIHZvaWQgbHRkY19j
cnRjX21vZGVfc2V0X25vZmIoc3RydWN0IGRybV9jcnRjICpjcnRjKQo+ID4gICB7Cj4gPiAgICAg
ICBzdHJ1Y3QgbHRkY19kZXZpY2UgKmxkZXYgPSBjcnRjX3RvX2x0ZGMoY3J0Yyk7Cj4gPiArICAg
ICBzdHJ1Y3QgZHJtX2RldmljZSAqZGRldiA9IGNydGMtPmRldjsKPiA+ICAgICAgIHN0cnVjdCBk
cm1fZGlzcGxheV9tb2RlICptb2RlID0gJmNydGMtPnN0YXRlLT5hZGp1c3RlZF9tb2RlOwo+ID4g
ICAgICAgc3RydWN0IHZpZGVvbW9kZSB2bTsKPiA+ICAgICAgIHUzMiBoc3luYywgdnN5bmMsIGFj
Y3VtX2hicCwgYWNjdW1fdmJwLCBhY2N1bV9hY3RfdywgYWNjdW1fYWN0X2g7Cj4gPiAgICAgICB1
MzIgdG90YWxfd2lkdGgsIHRvdGFsX2hlaWdodDsKPiA+ICAgICAgIHUzMiB2YWw7Cj4gPiArICAg
ICBpbnQgcmV0Owo+ID4gKwo+ID4gKyAgICAgaWYgKCFwbV9ydW50aW1lX2FjdGl2ZShkZGV2LT5k
ZXYpKSB7Cj4gPiArICAgICAgICAgICAgIHJldCA9IHBtX3J1bnRpbWVfZ2V0X3N5bmMoZGRldi0+
ZGV2KTsKPiA+ICsgICAgICAgICAgICAgaWYgKHJldCkgewo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIERSTV9FUlJPUigiRmFpbGVkIHRvIHNldCBtb2RlLCBjYW5ub3QgZ2V0IHN5bmNcbiIpOwo+
ID4gKyAgICAgICAgICAgICAgICAgICAgIHJldHVybjsKPiA+ICsgICAgICAgICAgICAgfQo+ID4g
KyAgICAgfQo+ID4KPiA+ICAgICAgIGRybV9kaXNwbGF5X21vZGVfdG9fdmlkZW9tb2RlKG1vZGUs
ICZ2bSk7Cj4gPgo+ID4gQEAgLTU5MCw2ICs2MTgsNyBAQCBzdGF0aWMgdm9pZCBsdGRjX2NydGNf
YXRvbWljX2ZsdXNoKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUpCj4g
PiAgIHsKPiA+ICAgICAgIHN0cnVjdCBsdGRjX2RldmljZSAqbGRldiA9IGNydGNfdG9fbHRkYyhj
cnRjKTsKPiA+ICsgICAgIHN0cnVjdCBkcm1fZGV2aWNlICpkZGV2ID0gY3J0Yy0+ZGV2Owo+ID4g
ICAgICAgc3RydWN0IGRybV9wZW5kaW5nX3ZibGFua19ldmVudCAqZXZlbnQgPSBjcnRjLT5zdGF0
ZS0+ZXZlbnQ7Cj4gPgo+ID4gICAgICAgRFJNX0RFQlVHX0FUT01JQygiXG4iKTsKPiA+IEBAIC02
MDIsMTIgKzYzMSwxMiBAQCBzdGF0aWMgdm9pZCBsdGRjX2NydGNfYXRvbWljX2ZsdXNoKHN0cnVj
dCBkcm1fY3J0YyAqY3J0YywKPiA+ICAgICAgIGlmIChldmVudCkgewo+ID4gICAgICAgICAgICAg
ICBjcnRjLT5zdGF0ZS0+ZXZlbnQgPSBOVUxMOwo+ID4KPiA+IC0gICAgICAgICAgICAgc3Bpbl9s
b2NrX2lycSgmY3J0Yy0+ZGV2LT5ldmVudF9sb2NrKTsKPiA+ICsgICAgICAgICAgICAgc3Bpbl9s
b2NrX2lycSgmZGRldi0+ZXZlbnRfbG9jayk7Cj4gPiAgICAgICAgICAgICAgIGlmIChkcm1fY3J0
Y192YmxhbmtfZ2V0KGNydGMpID09IDApCj4gPiAgICAgICAgICAgICAgICAgICAgICAgZHJtX2Ny
dGNfYXJtX3ZibGFua19ldmVudChjcnRjLCBldmVudCk7Cj4gPiAgICAgICAgICAgICAgIGVsc2UK
PiA+ICAgICAgICAgICAgICAgICAgICAgICBkcm1fY3J0Y19zZW5kX3ZibGFua19ldmVudChjcnRj
LCBldmVudCk7Cj4gPiAtICAgICAgICAgICAgIHNwaW5fdW5sb2NrX2lycSgmY3J0Yy0+ZGV2LT5l
dmVudF9sb2NrKTsKPiA+ICsgICAgICAgICAgICAgc3Bpbl91bmxvY2tfaXJxKCZkZGV2LT5ldmVu
dF9sb2NrKTsKPiA+ICAgICAgIH0KPiA+ICAgfQo+ID4KPiA+IEBAIC02NjMsMTUgKzY5MiwxOSBA
QCBib29sIGx0ZGNfY3J0Y19zY2Fub3V0cG9zKHN0cnVjdCBkcm1fZGV2aWNlICpkZGV2LCB1bnNp
Z25lZCBpbnQgcGlwZSwKPiA+ICAgICAgICAqIENvbXB1dGF0aW9uIGZvciB0aGUgdHdvIGZpcnN0
IGNhc2VzIGFyZSBpZGVudGljYWwgc28gd2UgY2FuCj4gPiAgICAgICAgKiBzaW1wbGlmeSB0aGUg
Y29kZSBhbmQgb25seSB0ZXN0IGlmIGxpbmUgPiB2YWN0aXZlX2VuZAo+ID4gICAgICAgICovCj4g
PiAtICAgICBsaW5lID0gcmVnX3JlYWQobGRldi0+cmVncywgTFREQ19DUFNSKSAmIENQU1JfQ1lQ
T1M7Cj4gPiAtICAgICB2YWN0aXZlX3N0YXJ0ID0gcmVnX3JlYWQobGRldi0+cmVncywgTFREQ19C
UENSKSAmIEJQQ1JfQVZCUDsKPiA+IC0gICAgIHZhY3RpdmVfZW5kID0gcmVnX3JlYWQobGRldi0+
cmVncywgTFREQ19BV0NSKSAmIEFXQ1JfQUFIOwo+ID4gLSAgICAgdnRvdGFsID0gcmVnX3JlYWQo
bGRldi0+cmVncywgTFREQ19UV0NSKSAmIFRXQ1JfVE9UQUxIOwo+ID4gLQo+ID4gLSAgICAgaWYg
KGxpbmUgPiB2YWN0aXZlX2VuZCkKPiA+IC0gICAgICAgICAgICAgKnZwb3MgPSBsaW5lIC0gdnRv
dGFsIC0gdmFjdGl2ZV9zdGFydDsKPiA+IC0gICAgIGVsc2UKPiA+IC0gICAgICAgICAgICAgKnZw
b3MgPSBsaW5lIC0gdmFjdGl2ZV9zdGFydDsKPiA+ICsgICAgIGlmIChwbV9ydW50aW1lX2FjdGl2
ZShkZGV2LT5kZXYpKSB7Cj4gPiArICAgICAgICAgICAgIGxpbmUgPSByZWdfcmVhZChsZGV2LT5y
ZWdzLCBMVERDX0NQU1IpICYgQ1BTUl9DWVBPUzsKPiA+ICsgICAgICAgICAgICAgdmFjdGl2ZV9z
dGFydCA9IHJlZ19yZWFkKGxkZXYtPnJlZ3MsIExURENfQlBDUikgJiBCUENSX0FWQlA7Cj4gPiAr
ICAgICAgICAgICAgIHZhY3RpdmVfZW5kID0gcmVnX3JlYWQobGRldi0+cmVncywgTFREQ19BV0NS
KSAmIEFXQ1JfQUFIOwo+ID4gKyAgICAgICAgICAgICB2dG90YWwgPSByZWdfcmVhZChsZGV2LT5y
ZWdzLCBMVERDX1RXQ1IpICYgVFdDUl9UT1RBTEg7Cj4gPiArCj4gPiArICAgICAgICAgICAgIGlm
IChsaW5lID4gdmFjdGl2ZV9lbmQpCj4gPiArICAgICAgICAgICAgICAgICAgICAgKnZwb3MgPSBs
aW5lIC0gdnRvdGFsIC0gdmFjdGl2ZV9zdGFydDsKPiA+ICsgICAgICAgICAgICAgZWxzZQo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICp2cG9zID0gbGluZSAtIHZhY3RpdmVfc3RhcnQ7Cj4gPiAr
ICAgICB9IGVsc2Ugewo+ID4gKyAgICAgICAgICAgICAqdnBvcyA9IDA7Cj4gPiArICAgICB9Cj4g
Pgo+ID4gICAgICAgKmhwb3MgPSAwOwo+ID4KPiA+IEBAIC0xMjQzLDggKzEyNzYsMTEgQEAgaW50
IGx0ZGNfbG9hZChzdHJ1Y3QgZHJtX2RldmljZSAqZGRldikKPiA+ICAgICAgIC8qIEFsbG93IHVz
YWdlIG9mIHZibGFuayB3aXRob3V0IGhhdmluZyB0byBjYWxsIGRybV9pcnFfaW5zdGFsbCAqLwo+
ID4gICAgICAgZGRldi0+aXJxX2VuYWJsZWQgPSAxOwo+ID4KPiA+IC0gICAgIHJldHVybiAwOwo+
ID4gKyAgICAgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGxkZXYtPnBpeGVsX2Nsayk7Cj4gPiArCj4g
PiArICAgICBwbV9ydW50aW1lX2VuYWJsZShkZGV2LT5kZXYpOwo+ID4KPiA+ICsgICAgIHJldHVy
biAwOwo+ID4gICBlcnI6Cj4gPiAgICAgICBmb3IgKGkgPSAwOyBpIDwgTUFYX0VORFBPSU5UUzsg
aSsrKQo+ID4gICAgICAgICAgICAgICBkcm1fcGFuZWxfYnJpZGdlX3JlbW92ZShicmlkZ2VbaV0p
Owo+ID4gQEAgLTEyNTYsNyArMTI5Miw2IEBAIGludCBsdGRjX2xvYWQoc3RydWN0IGRybV9kZXZp
Y2UgKmRkZXYpCj4gPgo+ID4gICB2b2lkIGx0ZGNfdW5sb2FkKHN0cnVjdCBkcm1fZGV2aWNlICpk
ZGV2KQo+ID4gICB7Cj4gPiAtICAgICBzdHJ1Y3QgbHRkY19kZXZpY2UgKmxkZXYgPSBkZGV2LT5k
ZXZfcHJpdmF0ZTsKPiA+ICAgICAgIGludCBpOwo+ID4KPiA+ICAgICAgIERSTV9ERUJVR19EUklW
RVIoIlxuIik7Cj4gPiBAQCAtMTI2NCw3ICsxMjk5LDcgQEAgdm9pZCBsdGRjX3VubG9hZChzdHJ1
Y3QgZHJtX2RldmljZSAqZGRldikKPiA+ICAgICAgIGZvciAoaSA9IDA7IGkgPCBNQVhfRU5EUE9J
TlRTOyBpKyspCj4gPiAgICAgICAgICAgICAgIGRybV9vZl9wYW5lbF9icmlkZ2VfcmVtb3ZlKGRk
ZXYtPmRldi0+b2Zfbm9kZSwgMCwgaSk7Cj4gPgo+ID4gLSAgICAgY2xrX2Rpc2FibGVfdW5wcmVw
YXJlKGxkZXYtPnBpeGVsX2Nsayk7Cj4gPiArICAgICBwbV9ydW50aW1lX2Rpc2FibGUoZGRldi0+
ZGV2KTsKPiA+ICAgfQo+ID4KPiA+ICAgTU9EVUxFX0FVVEhPUigiUGhpbGlwcGUgQ29ybnUgPHBo
aWxpcHBlLmNvcm51QHN0LmNvbT4iKTsKPiA+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
