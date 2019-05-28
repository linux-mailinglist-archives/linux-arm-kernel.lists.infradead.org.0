Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DCF2C01B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 09:30:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+TncWU+kr+qi5tcUsvqpMQDrvhqmLdtAZLpmdqesdxw=; b=HXK8we4jz6cOQo
	HoGVgzWnUTt/GboEo9DdiDWCg5IsqadQ4SMWnQngLimtIC8GnNCh0v1xauHlnwFm59UKLtHRWfp7M
	RZ4GlrHGF8MtxueOPKc/3cbL2/rUG3aZrKudtsOoDEnbrHV7AEU7JxnuDfJLvSWDVaClASTEpuYZR
	jsv/b79zuBAHRViUVR9zFtr/YKR4zuvXbqIF0e7dbQIFIUM9RPFiqWbEUWDLHJtJ+dysAdBzqHsLl
	FfiYebBrqAtYx4gnKFy5+jl5uxCwbjm8vwzJG8+FC4JNGOrRK9NYEYmggmt5W+HgwdZ91MqwE0/I+
	Z1DVoGfUN7/zAjWNXL3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVWZO-0002z7-1J; Tue, 28 May 2019 07:30:50 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVWZF-0002vv-60
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 07:30:43 +0000
Received: by mail-qk1-x742.google.com with SMTP id l128so8251249qke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 00:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=liX278HTgn3dzodp7H0O3yv5Xch4o5IxEkhO3Idcuvw=;
 b=Xof57xMef9rhMVvwdzWqgl8c8PWB/Qq5WaAyj1db7xil+fDCj2i2m2YnoW8pKwTFyW
 2fV5WVtAWhMVaj64Iuj3Xg8EqCSIHF9C1lbxhu3ktohEZLkh788n0+WGOtLwsRx5rSSB
 idqXNx8jf21nLRjVkPZziJlecnNAnwLPmW96STeBbUTLipuKTqsP7RhQL0Ob3lS65mkx
 UfHomb1WgXBlgs+mcjx1y7MMHVGLMi62Y+rgLWH1eZYzKN7d8r65fCXeTVeX7ZVuzXCK
 RD9+LjBiqfsMx6BBjE4DmFkIMgoU4pUkbXkfAC55Nl4lss1Qn+wXSgeO8/o6OXFjcjzP
 qjew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=liX278HTgn3dzodp7H0O3yv5Xch4o5IxEkhO3Idcuvw=;
 b=lPIHGfFN2u+lJclH8jrGD0vXQ1ZUKDPxM6s2d2gLNV6KkLbhzZ5JrxEnbNOgcurGlF
 Ui/k4f37xGKY8ONwT9uc6tUepseS1w6D88gOVLOPsvJuHe05FtFyK+u1ui8ACMtq85iN
 arR58E1pTTbRuHi8uUg3WPzl7duEiAJRO8Llbl9ea2oqBW7A4GXPdGDNryXo0/jAsOE8
 wR3nNu+vth1cYDWoeJQMsW9/1eA3OxCGEwpPsS2l4PeYeI8mxk/Kr5glIwQ3VeQAHqjb
 Cga9S2DDN88A9iYniQtxM0PmnQuRUv5QyaptlNppi/xRYomfUh0P8guw8TsPIHGC/5K5
 JKvA==
X-Gm-Message-State: APjAAAUUZ+F08+oT+U2+ZsqgKjEEoKevnlEMIVQwWGm/fPEOKi+fStFx
 VJXBSfTL3OIGitngQE5MXtafaSPO8JlQns7/+FjL/A==
X-Google-Smtp-Source: APXvYqw/o9g3j0+8QuWo1gdBVqYhqsgNj/cyEh5sq/3CNJ6H80Oh+b9UbNvS2HHUMZy5yppiywgVa8gezanxUHTOGjg=
X-Received: by 2002:a37:502:: with SMTP id 2mr3621845qkf.93.1559028639303;
 Tue, 28 May 2019 00:30:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190527115830.15836-1-benjamin.gaignard@st.com>
 <1e4c4cbf-869e-8b6a-a1d6-cc7dccb2515a@st.com>
In-Reply-To: <1e4c4cbf-869e-8b6a-a1d6-cc7dccb2515a@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Tue, 28 May 2019 09:30:28 +0200
Message-ID: <CA+M3ks5UxZ0iugtR_zJPshtC=HAjoAzTPmu6oxt7BQWTuj203Q@mail.gmail.com>
Subject: Re: [PATCH] drm/stm: ltdc: restore calls to clk_{enable/disable}
To: Philippe CORNU <philippe.cornu@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_003041_366303_5792DF3D 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
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
Cc: Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Yannick FERTRE <yannick.fertre@st.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgbHVuLiAyNyBtYWkgMjAxOSDDoCAxNDoyOCwgUGhpbGlwcGUgQ09STlUgPHBoaWxpcHBlLmNv
cm51QHN0LmNvbT4gYSDDqWNyaXQgOgo+Cj4gSGkgQmVuamFtaW4sCj4KPiBNYW55IHRoYW5rcyBm
b3IgdGhpcyBmaXggKGFuZCBtb3JlIGdlbmVyYWxseSBmb3IgcHVzaGluZyBTVE0gcGF0Y2hlcyBv
bgo+IG1pc2MgOi0pCj4KPiBBY2tlZC1ieTogUGhpbGlwcGUgQ29ybnUgPHBoaWxpcHBlLmNvcm51
QHN0LmNvbT4KCkFwcGxpZWQgb24gZHJtLW1pc2MtbmV4dCwKc29ycnkgZm9yIHRoZSBtaXN0YWtl
LgoKQmVuamFtaW4KPgo+IFBoaWxpcHBlIDotKQo+Cj4gT24gNS8yNy8xOSAxOjU4IFBNLCBCZW5q
YW1pbiBHYWlnbmFyZCB3cm90ZToKPiA+IEZyb206IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1p
bi5nYWlnbmFyZEBsaW5hcm8ub3JnPgo+ID4KPiA+IFJlc3RvcmUgY2FsbHMgdG8gY2xrX3tlbmFi
bGUvZGlzYWJsZX0gZGVsZXRlZCBhZnRlciBhcHBseWluZyB0aGUgd3JvbmcKPiA+IHZlcnNpb24g
b2YgdGhlIHBhdGNoCj4gPgo+ID4gRml4ZXM6IGZkNjkwNWZjYTRmMCAoImRybS9zdG06IGx0ZGM6
IHJlbW92ZSBjbGtfcm91bmRfcmF0ZSBjb21tZW50IikKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBC
ZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAbGluYXJvLm9yZz4KPiA+IC0tLQo+
ID4gICBkcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYyB8IDIgKysKPiA+ICAgMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
c3RtL2x0ZGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jCj4gPiBpbmRleCBhZTJhYWYy
YTYyZWUuLmFjMjk4OTBlZGViNiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdG0v
bHRkYy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYwo+ID4gQEAgLTUwNywx
MCArNTA3LDEyIEBAIHN0YXRpYyBib29sIGx0ZGNfY3J0Y19tb2RlX2ZpeHVwKHN0cnVjdCBkcm1f
Y3J0YyAqY3J0YywKPiA+ICAgICAgIHN0cnVjdCBsdGRjX2RldmljZSAqbGRldiA9IGNydGNfdG9f
bHRkYyhjcnRjKTsKPiA+ICAgICAgIGludCByYXRlID0gbW9kZS0+Y2xvY2sgKiAxMDAwOwo+ID4K
PiA+ICsgICAgIGNsa19kaXNhYmxlKGxkZXYtPnBpeGVsX2Nsayk7Cj4gPiAgICAgICBpZiAoY2xr
X3NldF9yYXRlKGxkZXYtPnBpeGVsX2NsaywgcmF0ZSkgPCAwKSB7Cj4gPiAgICAgICAgICAgICAg
IERSTV9FUlJPUigiQ2Fubm90IHNldCByYXRlICglZEh6KSBmb3IgcGl4ZWwgY2xrXG4iLCByYXRl
KTsKPiA+ICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOwo+ID4gICAgICAgfQo+ID4gKyAgICAg
Y2xrX2VuYWJsZShsZGV2LT5waXhlbF9jbGspOwo+ID4KPiA+ICAgICAgIGFkanVzdGVkX21vZGUt
PmNsb2NrID0gY2xrX2dldF9yYXRlKGxkZXYtPnBpeGVsX2NsaykgLyAxMDAwOwo+ID4KPiA+Cj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
