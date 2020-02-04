Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1411C15190F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 11:57:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WxQUvd3OT+PmNTrfFutJJ8LCcyN1f5LQDXx18cQjhvM=; b=YPOQoFIqB34yLi
	HBAiRgkMYRviMn+QSRNl7Nq4XsrRN0SbzSr1joRWPTRo0WNG0z/SwdzVv/mYFBqcVTIkjmfRJPqmw
	nWpc6JQpUWgPOyrXvaYTSD82oYg8xlfaR0i4GdsLHqrlcQkRmfJkilqopv4YQJGYjAYPmc+n8gzUN
	+SCtXClmolwogDcopYGk1AQdOZbk73xAod2P92Dmr3XEegTJ3dQjLjKPYF+3R3YI+jYr2HTMM+q/8
	F5ZjOJGqPTJWuF+akpfMEBNIsYLlAagu/he+zNUbYftL9A8Zjy3pJmliQxzwWSZshB9iWT/VVAYna
	GZfljfIfjB+m9/d5gpBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyvtA-0000fM-6r; Tue, 04 Feb 2020 10:57:04 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyvt3-0000ex-FW
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 10:56:59 +0000
Received: by mail-qv1-xf42.google.com with SMTP id g6so8326559qvy.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 02:56:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/oUsrvLxDIg2kRTkRIDa+3f0CNVdXlRSCLiuyEtYa9c=;
 b=QBN3hZRqRJfvXM7KsldzN/Y7UB9nRf6fT56y9YAkEYDPA55hGUnbTbep8I6bfTbsdW
 m9Pwoqx4QhXDeO4XtwYSVmDPrWsWQOAo19+2PH+U9Ib5ANtLC8DwrcskFIYSaLHRm45h
 wLNqkjMwYOrCgjqSaai4YcdjOhwatJxCFjhvu8E89Kxo754pXUvKWDfKHhQxIbcwKFzj
 h/dQt17+28/5KKynnLEiKf8IZ/OdCSCJJKD1FhhadNOwhLKCLtBsQjUOMyr5LS94Be9/
 jR+tIGVKEm8A36MijR7kSUYjISnBxK4tA4/iPgmJoWnNId1zmePgSeO4W49pCkgbszTL
 EAtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/oUsrvLxDIg2kRTkRIDa+3f0CNVdXlRSCLiuyEtYa9c=;
 b=mKDHBbWmWLnlgzNLYLCVg5YBDTYs2tD3wKmAAidtM6uCnMBsrvXGCNpSpGVith2Iar
 SdA23UGsTLW1gmVQf5Grm+aKGG0nksUY39zqGoOyQVYNcoIbeJFPLQEHyXJ04+isp2+c
 sK53h/UyYgPb/YbK4OBXou+zyCqhgF4MxSBOeQaJjyTD0zERBUokYI1fKvEQ/Zmr0KgC
 UoljTLoYXWf2JOmVLuOoTGI3W/VxQRc5X1Rk8YNcrLCsr8pHjhhW2JH4rR1EUYYi/95p
 JRMlFq1vO0bxogFNQYMF4IXGwGBaOmdmomYDQwhY6vNfyAQqL4kMwrAwN507J+FBwbGj
 2vkQ==
X-Gm-Message-State: APjAAAX7aCLm9nAKEt6tuImtOSUYyf4wY+Yb2MosnI/Fmg8XpebK3oBY
 bZyvgiy152TMuSbdCAUcyEohorno5jNuzM0fmdxvfQ==
X-Google-Smtp-Source: APXvYqwHoNsb4va0mzD8ErAs5TLzl8MOKBkFKNiQum74YciVvwTDMrSJ6Tqrk1Jak8OGeSAYlPULUa93UHza4xbn1YQ=
X-Received: by 2002:a0c:ead1:: with SMTP id y17mr25795609qvp.210.1580813815924; 
 Tue, 04 Feb 2020 02:56:55 -0800 (PST)
MIME-Version: 1.0
References: <1579528013-28445-1-git-send-email-yannick.fertre@st.com>
 <69cced11-c30a-da6c-0465-79b632901b62@st.com>
In-Reply-To: <69cced11-c30a-da6c-0465-79b632901b62@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Tue, 4 Feb 2020 11:56:45 +0100
Message-ID: <CA+M3ks5dcQOcHAszgCP=XH5dQrO7OYqpHybeZOm2dXrLBeoJ+w@mail.gmail.com>
Subject: Re: [PATCH] drm/stm: ltdc: enable/disable depends on encoder
To: Philippe CORNU <philippe.cornu@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_025657_521430_B362F624 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

TGUgamV1LiAyMyBqYW52LiAyMDIwIMOgIDEwOjQ3LCBQaGlsaXBwZSBDT1JOVSA8cGhpbGlwcGUu
Y29ybnVAc3QuY29tPiBhIMOpY3JpdCA6Cj4KPiBEZWFyIFlhbm5pY2ssCj4gVGhhbmsgeW91IGZv
ciB5b3VyIHBhdGNoLAo+Cj4gQWNrZWQtYnk6IFBoaWxpcHBlIENvcm51IDxwaGlsaXBwZS5jb3Ju
dUBzdC5jb20+Cj4KPiBQaGlsaXBwZSA6LSkKPgo+IE9uIDEvMjAvMjAgMjo0NiBQTSwgWWFubmlj
ayBGZXJ0cmUgd3JvdGU6Cj4gPiBGcm9tOiBZYW5uaWNrIEZlcnRyw6kgPHlhbm5pY2suZmVydHJl
QHN0LmNvbT4KPiA+Cj4gPiBXaGVuIGNvbm5lY3RlZCB0byBhIGRzaSBob3N0LCB0aGUgbHRkYyBk
aXNwbGF5IGNvbnRyb2xsZXIKPiA+IG11c3Qgc2VuZCBmcmFtZXMgb25seSBhZnRlciB0aGUgZW5k
IG9mIHRoZSBkc2kgcGFuZWwKPiA+IGluaXRpYWxpemF0aW9uIHRvIGF2b2lkIGVycm9ycyB3aGVu
IHRoZSBkc2kgaG9zdCBzZW5kcwo+ID4gY29tbWFuZHMgdG8gdGhlIGRzaSBwYW5lbCAoZHNpIHB4
IGZpZm8gZnVsbCkuCj4gPiBUbyBhdm9pZCB0aGlzIGlzc3VlLCB0aGUgZGlzcGxheSBjb250cm9s
bGVyIG11c3QgYmUKPiA+IGVuYWJsZWQvZGlzYWJsZWQgd2hlbiB0aGUgZW5jb2RlciBpcyBlbmFi
bGVkL2Rpc2FibGVkLgo+ID4KCkFwcGxpZWQgb24gZHJtLW1pc2MtbmV4dC4KClRoYW5rcwpCZW5q
YW1pbgoKPiA+IFNpZ25lZC1vZmYtYnk6IFlhbm5pY2sgRmVydHLDqSA8eWFubmljay5mZXJ0cmVA
c3QuY29tPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jIHwgMTQgKysr
KysrKystLS0tLS0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNiBkZWxl
dGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRjLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYwo+ID4gaW5kZXggNzE5ZGZjNS4uOWVmMTI1ZCAx
MDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYwo+ID4gQEAgLTQzNyw5ICs0MzcsNiBAQCBzdGF0aWMgdm9p
ZCBsdGRjX2NydGNfYXRvbWljX2VuYWJsZShzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCj4gPiAgICAg
ICAvKiBDb21taXQgc2hhZG93IHJlZ2lzdGVycyA9IHVwZGF0ZSBwbGFuZXMgYXQgbmV4dCB2Ymxh
bmsgKi8KPiA+ICAgICAgIHJlZ19zZXQobGRldi0+cmVncywgTFREQ19TUkNSLCBTUkNSX1ZCUik7
Cj4gPgo+ID4gLSAgICAgLyogRW5hYmxlIExUREMgKi8KPiA+IC0gICAgIHJlZ19zZXQobGRldi0+
cmVncywgTFREQ19HQ1IsIEdDUl9MVERDRU4pOwo+ID4gLQo+ID4gICAgICAgZHJtX2NydGNfdmJs
YW5rX29uKGNydGMpOwo+ID4gICB9Cj4gPgo+ID4gQEAgLTQ1Myw5ICs0NTAsNiBAQCBzdGF0aWMg
dm9pZCBsdGRjX2NydGNfYXRvbWljX2Rpc2FibGUoc3RydWN0IGRybV9jcnRjICpjcnRjLAo+ID4K
PiA+ICAgICAgIGRybV9jcnRjX3ZibGFua19vZmYoY3J0Yyk7Cj4gPgo+ID4gLSAgICAgLyogZGlz
YWJsZSBMVERDICovCj4gPiAtICAgICByZWdfY2xlYXIobGRldi0+cmVncywgTFREQ19HQ1IsIEdD
Ul9MVERDRU4pOwo+ID4gLQo+ID4gICAgICAgLyogZGlzYWJsZSBJUlEgKi8KPiA+ICAgICAgIHJl
Z19jbGVhcihsZGV2LT5yZWdzLCBMVERDX0lFUiwgSUVSX1JSSUUgfCBJRVJfRlVJRSB8IElFUl9U
RVJSSUUpOwo+ID4KPiA+IEBAIC0xMDU4LDkgKzEwNTIsMTMgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBkcm1fZW5jb2Rlcl9mdW5jcyBsdGRjX2VuY29kZXJfZnVuY3MgPSB7Cj4gPiAgIHN0YXRpYyB2
b2lkIGx0ZGNfZW5jb2Rlcl9kaXNhYmxlKHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlcikKPiA+
ICAgewo+ID4gICAgICAgc3RydWN0IGRybV9kZXZpY2UgKmRkZXYgPSBlbmNvZGVyLT5kZXY7Cj4g
PiArICAgICBzdHJ1Y3QgbHRkY19kZXZpY2UgKmxkZXYgPSBkZGV2LT5kZXZfcHJpdmF0ZTsKPiA+
Cj4gPiAgICAgICBEUk1fREVCVUdfRFJJVkVSKCJcbiIpOwo+ID4KPiA+ICsgICAgIC8qIERpc2Fi
bGUgTFREQyAqLwo+ID4gKyAgICAgcmVnX2NsZWFyKGxkZXYtPnJlZ3MsIExURENfR0NSLCBHQ1Jf
TFREQ0VOKTsKPiA+ICsKPiA+ICAgICAgIC8qIFNldCB0byBzbGVlcCBzdGF0ZSB0aGUgcGluY3Ry
bCB3aGF0ZXZlciB0eXBlIG9mIGVuY29kZXIgKi8KPiA+ICAgICAgIHBpbmN0cmxfcG1fc2VsZWN0
X3NsZWVwX3N0YXRlKGRkZXYtPmRldik7Cj4gPiAgIH0KPiA+IEBAIC0xMDY4LDYgKzEwNjYsNyBA
QCBzdGF0aWMgdm9pZCBsdGRjX2VuY29kZXJfZGlzYWJsZShzdHJ1Y3QgZHJtX2VuY29kZXIgKmVu
Y29kZXIpCj4gPiAgIHN0YXRpYyB2b2lkIGx0ZGNfZW5jb2Rlcl9lbmFibGUoc3RydWN0IGRybV9l
bmNvZGVyICplbmNvZGVyKQo+ID4gICB7Cj4gPiAgICAgICBzdHJ1Y3QgZHJtX2RldmljZSAqZGRl
diA9IGVuY29kZXItPmRldjsKPiA+ICsgICAgIHN0cnVjdCBsdGRjX2RldmljZSAqbGRldiA9IGRk
ZXYtPmRldl9wcml2YXRlOwo+ID4KPiA+ICAgICAgIERSTV9ERUJVR19EUklWRVIoIlxuIik7Cj4g
Pgo+ID4gQEAgLTEwNzgsNiArMTA3Nyw5IEBAIHN0YXRpYyB2b2lkIGx0ZGNfZW5jb2Rlcl9lbmFi
bGUoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyKQo+ID4gICAgICAgICovCj4gPiAgICAgICBp
ZiAoZW5jb2Rlci0+ZW5jb2Rlcl90eXBlID09IERSTV9NT0RFX0VOQ09ERVJfRFBJKQo+ID4gICAg
ICAgICAgICAgICBwaW5jdHJsX3BtX3NlbGVjdF9kZWZhdWx0X3N0YXRlKGRkZXYtPmRldik7Cj4g
PiArCj4gPiArICAgICAvKiBFbmFibGUgTFREQyAqLwo+ID4gKyAgICAgcmVnX3NldChsZGV2LT5y
ZWdzLCBMVERDX0dDUiwgR0NSX0xURENFTik7Cj4gPiAgIH0KPiA+Cj4gPiAgIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgZHJtX2VuY29kZXJfaGVscGVyX2Z1bmNzIGx0ZGNfZW5jb2Rlcl9oZWxwZXJfZnVu
Y3MgPSB7Cj4gPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
