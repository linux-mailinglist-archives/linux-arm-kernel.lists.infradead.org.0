Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6395216D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 12:14:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kipt66bfa1Q+ckZJTkRgqDYhvTojNBK0PIwy/2xlDJM=; b=fU6SiWta5ErE9L
	za9pFGLV1xIhRWmGUwTTXzi7fTvGrG2CvOMMpIiRuyLhgaCDzlhh74yQDk1XE37+f4qJ0od5twld8
	OtTDZFBV8RvHPfKNYoxiPaYCA1Y7pmVJTuYLZCizmQWY4091IQTiVO0rO+Za+iPG2OAvzwXj8PWBS
	Ed0hhugAoFtqUWyRN+oKW5QhY1lzii1fwkx1zhyne2cqSKFnwm8r+XrVHPT6e4Q+LqUuczYt7DGrU
	23R8yK5P88rg1rHlSXfI3L9+IoIJsbMRm4O1DPGplnW/s33Tk0eyf6uFpRzVY/07NaTXlmAG5DzPH
	5l1tJbZ6XNWbi/gWggPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRZss-0002Ah-T3; Fri, 17 May 2019 10:14:38 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRZsj-000294-I5
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 10:14:31 +0000
Received: by mail-qk1-x742.google.com with SMTP id c14so4115937qke.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 03:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=c2AcJv21LbYCYD5C9Jjpp5BCKygW6luQM6iJ5dPZwlA=;
 b=lQncQYniggfzZ8LMfFNfPm8ZuE9Yt7gKDDYK2B1lpPhyV0V6lMzqpbaJnQQp9ken6D
 UviiUJLEW8Gn9oGUMRErMd2XDMk4cD2cIXOlUyk1MWyWe6ANmXrTTy4ouKnfbOXcG5uS
 +Hy1nXkwnLFxZFjtaTK4ro37s4NKGxt9bLqVgAfiW3Aa3k1qc/PsbbbOasjpV4v0oR2a
 pApLyVKvEFTZfCT8grgONhlyTFBToshHNZ4SxDANwweiL75sUBT/jtj909UDHI2KChbW
 xs9DFoJ+I3YDX1Gke7gHMGY5rKN7j/jTJHi+kY7D4GikXNTi+wQuwadOU9+JivSXorW5
 BUkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=c2AcJv21LbYCYD5C9Jjpp5BCKygW6luQM6iJ5dPZwlA=;
 b=Fjwq0N0gQCpwlX12XH4nXXxsSY6PrXTdaGxfXbQ+gW2WckBOARsQgsIfsstoxtUyfa
 j0R1gsAGRGxERJo2JOZSljfWUIVlzBOO6gYmb7rigJOYH51QsY0LzZ7qHoFByBA9aZde
 aStvNOOy/vhmMxWFAG3/ShOABvChveYmk6IpGNWO6QseBLDiFmIwfz2dMu9U2fcN6SGy
 131JizOdNIS11Prpv99PwxvXrw/XZPPWBPwmY8JeQ9Lt8tvjiC/A9JcQNAS7S7qLCgqW
 FskqCMrggqUM2EZukO0Ox10i4bCGFLRvBu0x9Emne7FXH6xYDvIJ5PaGXti1s0sVIA7Z
 o+TA==
X-Gm-Message-State: APjAAAV/vfeg9602xBCtmtv/1SNU/bMqkj2nbiSow95FCxBUgpMOpAZp
 dfqnT+PCR7BQtUSR27Ua6Nxg7CzjHsCEtKW2PFW45A==
X-Google-Smtp-Source: APXvYqxVWn2bvh4TLQU8hA7wU5xUDlGjdTmy4QhvkCVnfiI9qFaHAIv4QUUclL6iglzysUdQhZdbFUDPdGhnmrBs0bA=
X-Received: by 2002:a37:a555:: with SMTP id o82mr22147311qke.93.1558088068450; 
 Fri, 17 May 2019 03:14:28 -0700 (PDT)
MIME-Version: 1.0
References: <1557826556-10079-1-git-send-email-yannick.fertre@st.com>
 <1557826556-10079-3-git-send-email-yannick.fertre@st.com>
In-Reply-To: <1557826556-10079-3-git-send-email-yannick.fertre@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Fri, 17 May 2019 12:14:17 +0200
Message-ID: <CA+M3ks5hQnqdLxefcCskmNJTw4FeXEgWp=8mUhm7y0JSR4vsKQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] drm/stm: dsi: add regulator support
To: =?UTF-8?Q?Yannick_Fertr=C3=A9?= <yannick.fertre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_031429_608465_9EB988F1 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Philippe Cornu <philippe.cornu@st.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgbWFyLiAxNCBtYWkgMjAxOSDDoCAxMTozNiwgWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZl
cnRyZUBzdC5jb20+IGEgw6ljcml0IDoKPgo+IEFkZCBzdXBwb3J0IG9mIHJlZ3VsYXRvciBmb3Ig
dGhlIHBoeSBwYXJ0IG9mIHRoZSBEU0kKPiBjb250cm9sbGVyLgo+Cj4gU2lnbmVkLW9mZi1ieTog
WWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBzdC5jb20+Cj4gQWNrZWQtYnk6IFBoaWxp
cHBlIENvcm51IDxwaGlsaXBwZS5jb3JudUBzdC5jb20+CkFwcGxpZWQgb24gZHJtLW1pc2MtbmV4
dCwKClRoYW5rcywKQmVuamFtaW4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9zdG0vZHdfbWlw
aV9kc2ktc3RtLmMgfCA2MCArKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLQo+ICAx
IGZpbGUgY2hhbmdlZCwgNDkgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3N0bS9kd19taXBpX2RzaS1zdG0uYyBiL2RyaXZlcnMv
Z3B1L2RybS9zdG0vZHdfbWlwaV9kc2ktc3RtLmMKPiBpbmRleCAxYmVmNzNlLi5kOGU0YTE0IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdG0vZHdfbWlwaV9kc2ktc3RtLmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vc3RtL2R3X21pcGlfZHNpLXN0bS5jCj4gQEAgLTksNiArOSw3IEBA
Cj4gICNpbmNsdWRlIDxsaW51eC9jbGsuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2lvcG9sbC5oPgo+
ICAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9yZWd1bGF0b3Iv
Y29uc3VtZXIuaD4KPiAgI2luY2x1ZGUgPGRybS9kcm1QLmg+Cj4gICNpbmNsdWRlIDxkcm0vZHJt
X21pcGlfZHNpLmg+Cj4gICNpbmNsdWRlIDxkcm0vYnJpZGdlL2R3X21pcGlfZHNpLmg+Cj4gQEAg
LTc2LDYgKzc3LDcgQEAgc3RydWN0IGR3X21pcGlfZHNpX3N0bSB7Cj4gICAgICAgICB1MzIgaHdf
dmVyc2lvbjsKPiAgICAgICAgIGludCBsYW5lX21pbl9rYnBzOwo+ICAgICAgICAgaW50IGxhbmVf
bWF4X2ticHM7Cj4gKyAgICAgICBzdHJ1Y3QgcmVndWxhdG9yICp2ZGRfc3VwcGx5Owo+ICB9Owo+
Cj4gIHN0YXRpYyBpbmxpbmUgdm9pZCBkc2lfd3JpdGUoc3RydWN0IGR3X21pcGlfZHNpX3N0bSAq
ZHNpLCB1MzIgcmVnLCB1MzIgdmFsKQo+IEBAIC0zMTQsMjEgKzMxNiwzNiBAQCBzdGF0aWMgaW50
IGR3X21pcGlfZHNpX3N0bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAg
ICAgICAgcmVzID0gcGxhdGZvcm1fZ2V0X3Jlc291cmNlKHBkZXYsIElPUkVTT1VSQ0VfTUVNLCAw
KTsKPiAgICAgICAgIGRzaS0+YmFzZSA9IGRldm1faW9yZW1hcF9yZXNvdXJjZShkZXYsIHJlcyk7
Cj4gICAgICAgICBpZiAoSVNfRVJSKGRzaS0+YmFzZSkpIHsKPiAtICAgICAgICAgICAgICAgRFJN
X0VSUk9SKCJVbmFibGUgdG8gZ2V0IGRzaSByZWdpc3RlcnNcbiIpOwo+IC0gICAgICAgICAgICAg
ICByZXR1cm4gUFRSX0VSUihkc2ktPmJhc2UpOwo+ICsgICAgICAgICAgICAgICByZXQgPSBQVFJf
RVJSKGRzaS0+YmFzZSk7Cj4gKyAgICAgICAgICAgICAgIERSTV9FUlJPUigiVW5hYmxlIHRvIGdl
dCBkc2kgcmVnaXN0ZXJzICVkXG4iLCByZXQpOwo+ICsgICAgICAgICAgICAgICByZXR1cm4gcmV0
Owo+ICsgICAgICAgfQo+ICsKPiArICAgICAgIGRzaS0+dmRkX3N1cHBseSA9IGRldm1fcmVndWxh
dG9yX2dldChkZXYsICJwaHktZHNpIik7Cj4gKyAgICAgICBpZiAoSVNfRVJSKGRzaS0+dmRkX3N1
cHBseSkpIHsKPiArICAgICAgICAgICAgICAgcmV0ID0gUFRSX0VSUihkc2ktPnZkZF9zdXBwbHkp
Owo+ICsgICAgICAgICAgICAgICBpZiAocmV0ICE9IC1FUFJPQkVfREVGRVIpCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgRFJNX0VSUk9SKCJGYWlsZWQgdG8gcmVxdWVzdCByZWd1bGF0b3I6ICVk
XG4iLCByZXQpOwo+ICsgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ICsgICAgICAgfQo+ICsK
PiArICAgICAgIHJldCA9IHJlZ3VsYXRvcl9lbmFibGUoZHNpLT52ZGRfc3VwcGx5KTsKPiArICAg
ICAgIGlmIChyZXQpIHsKPiArICAgICAgICAgICAgICAgRFJNX0VSUk9SKCJGYWlsZWQgdG8gZW5h
YmxlIHJlZ3VsYXRvcjogJWRcbiIsIHJldCk7Cj4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7
Cj4gICAgICAgICB9Cj4KPiAgICAgICAgIGRzaS0+cGxscmVmX2NsayA9IGRldm1fY2xrX2dldChk
ZXYsICJyZWYiKTsKPiAgICAgICAgIGlmIChJU19FUlIoZHNpLT5wbGxyZWZfY2xrKSkgewo+ICAg
ICAgICAgICAgICAgICByZXQgPSBQVFJfRVJSKGRzaS0+cGxscmVmX2Nsayk7Cj4gLSAgICAgICAg
ICAgICAgIGRldl9lcnIoZGV2LCAiVW5hYmxlIHRvIGdldCBwbGwgcmVmZXJlbmNlIGNsb2NrOiAl
ZFxuIiwgcmV0KTsKPiAtICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiArICAgICAgICAgICAg
ICAgRFJNX0VSUk9SKCJVbmFibGUgdG8gZ2V0IHBsbCByZWZlcmVuY2UgY2xvY2s6ICVkXG4iLCBy
ZXQpOwo+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9jbGtfZ2V0Owo+ICAgICAgICAgfQo+Cj4g
ICAgICAgICByZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUoZHNpLT5wbGxyZWZfY2xrKTsKPiAgICAg
ICAgIGlmIChyZXQpIHsKPiAtICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICIlczogRmFpbGVk
IHRvIGVuYWJsZSBwbGxyZWZfY2xrXG4iLCBfX2Z1bmNfXyk7Cj4gLSAgICAgICAgICAgICAgIHJl
dHVybiByZXQ7Cj4gKyAgICAgICAgICAgICAgIERSTV9FUlJPUigiRmFpbGVkIHRvIGVuYWJsZSBw
bGxyZWZfY2xrOiAlZFxuIiwgcmV0KTsKPiArICAgICAgICAgICAgICAgZ290byBlcnJfY2xrX2dl
dDsKPiAgICAgICAgIH0KPgo+ICAgICAgICAgZHdfbWlwaV9kc2lfc3RtX3BsYXRfZGF0YS5iYXNl
ID0gZHNpLT5iYXNlOwo+IEBAIC0zMzgsMjAgKzM1NSwyOCBAQCBzdGF0aWMgaW50IGR3X21pcGlf
ZHNpX3N0bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Cj4gICAgICAgICBk
c2ktPmRzaSA9IGR3X21pcGlfZHNpX3Byb2JlKHBkZXYsICZkd19taXBpX2RzaV9zdG1fcGxhdF9k
YXRhKTsKPiAgICAgICAgIGlmIChJU19FUlIoZHNpLT5kc2kpKSB7Cj4gLSAgICAgICAgICAgICAg
IERSTV9FUlJPUigiRmFpbGVkIHRvIGluaXRpYWxpemUgbWlwaSBkc2kgaG9zdFxuIik7Cj4gLSAg
ICAgICAgICAgICAgIGNsa19kaXNhYmxlX3VucHJlcGFyZShkc2ktPnBsbHJlZl9jbGspOwo+IC0g
ICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihkc2ktPmRzaSk7Cj4gKyAgICAgICAgICAgICAg
IHJldCA9IFBUUl9FUlIoZHNpLT5kc2kpOwo+ICsgICAgICAgICAgICAgICBEUk1fRVJST1IoIkZh
aWxlZCB0byBpbml0aWFsaXplIG1pcGkgZHNpIGhvc3Q6ICVkXG4iLCByZXQpOwo+ICsgICAgICAg
ICAgICAgICBnb3RvIGVycl9kc2lfcHJvYmU7Cj4gICAgICAgICB9Cj4KPiAgICAgICAgIHJldHVy
biAwOwo+ICsKPiArZXJyX2RzaV9wcm9iZToKPiArICAgICAgIGNsa19kaXNhYmxlX3VucHJlcGFy
ZShkc2ktPnBsbHJlZl9jbGspOwo+ICtlcnJfY2xrX2dldDoKPiArICAgICAgIHJlZ3VsYXRvcl9k
aXNhYmxlKGRzaS0+dmRkX3N1cHBseSk7Cj4gKwo+ICsgICAgICAgcmV0dXJuIHJldDsKPiAgfQo+
Cj4gIHN0YXRpYyBpbnQgZHdfbWlwaV9kc2lfc3RtX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgZHdfbWlwaV9kc2lfc3RtICpkc2kgPSBw
bGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsKPgo+IC0gICAgICAgY2xrX2Rpc2FibGVfdW5wcmVw
YXJlKGRzaS0+cGxscmVmX2Nsayk7Cj4gICAgICAgICBkd19taXBpX2RzaV9yZW1vdmUoZHNpLT5k
c2kpOwo+ICsgICAgICAgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGRzaS0+cGxscmVmX2Nsayk7Cj4g
KyAgICAgICByZWd1bGF0b3JfZGlzYWJsZShkc2ktPnZkZF9zdXBwbHkpOwo+Cj4gICAgICAgICBy
ZXR1cm4gMDsKPiAgfQo+IEBAIC0zNjMsNiArMzg4LDcgQEAgc3RhdGljIGludCBfX21heWJlX3Vu
dXNlZCBkd19taXBpX2RzaV9zdG1fc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gICAgICAg
ICBEUk1fREVCVUdfRFJJVkVSKCJcbiIpOwo+Cj4gICAgICAgICBjbGtfZGlzYWJsZV91bnByZXBh
cmUoZHNpLT5wbGxyZWZfY2xrKTsKPiArICAgICAgIHJlZ3VsYXRvcl9kaXNhYmxlKGRzaS0+dmRk
X3N1cHBseSk7Cj4KPiAgICAgICAgIHJldHVybiAwOwo+ICB9Cj4gQEAgLTM3MCwxMCArMzk2LDIy
IEBAIHN0YXRpYyBpbnQgX19tYXliZV91bnVzZWQgZHdfbWlwaV9kc2lfc3RtX3N1c3BlbmQoc3Ry
dWN0IGRldmljZSAqZGV2KQo+ICBzdGF0aWMgaW50IF9fbWF5YmVfdW51c2VkIGR3X21pcGlfZHNp
X3N0bV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgZHdf
bWlwaV9kc2lfc3RtICpkc2kgPSBkd19taXBpX2RzaV9zdG1fcGxhdF9kYXRhLnByaXZfZGF0YTsK
PiArICAgICAgIGludCByZXQ7Cj4KPiAgICAgICAgIERSTV9ERUJVR19EUklWRVIoIlxuIik7Cj4K
PiAtICAgICAgIGNsa19wcmVwYXJlX2VuYWJsZShkc2ktPnBsbHJlZl9jbGspOwo+ICsgICAgICAg
cmV0ID0gcmVndWxhdG9yX2VuYWJsZShkc2ktPnZkZF9zdXBwbHkpOwo+ICsgICAgICAgaWYgKHJl
dCkgewo+ICsgICAgICAgICAgICAgICBEUk1fRVJST1IoIkZhaWxlZCB0byBlbmFibGUgcmVndWxh
dG9yOiAlZFxuIiwgcmV0KTsKPiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiArICAgICAg
IH0KPiArCj4gKyAgICAgICByZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUoZHNpLT5wbGxyZWZfY2xr
KTsKPiArICAgICAgIGlmIChyZXQpIHsKPiArICAgICAgICAgICAgICAgcmVndWxhdG9yX2Rpc2Fi
bGUoZHNpLT52ZGRfc3VwcGx5KTsKPiArICAgICAgICAgICAgICAgRFJNX0VSUk9SKCJGYWlsZWQg
dG8gZW5hYmxlIHBsbHJlZl9jbGs6ICVkXG4iLCByZXQpOwo+ICsgICAgICAgICAgICAgICByZXR1
cm4gcmV0Owo+ICsgICAgICAgfQo+Cj4gICAgICAgICByZXR1cm4gMDsKPiAgfQo+IC0tCj4gMi43
LjQKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
ZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZl
bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
