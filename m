Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CAA1D24C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 03:34:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HVS4aM0olMmS36qjcSV7zlmlpack8AgJd4k/Kt/ax2c=; b=sQilmDlSzQ1prt
	4gFOtHWmNSdmtyUKzfHeT52F9ZKlk4BNpQt90OSpzYrU2EstcB6yIi/Nt7YoLhxzO52+jBL2wV45H
	eHHVsCKuDllgnHH8P8+viDcVu7/mLALM8qgZlJPyunkwkd4i2VLSsjkC5AEM5VPCe/E4nYHmVPeNl
	aIF912jkdIkZLH7at72Txt9Xd552RVPW+ZfKYj+WXh0Po1JXAdSqwnmHwQVoPttJvnKXQ14ke4hE+
	B4r1emku9EaAjtcd6bw7EAtIDe/IvmPF5M3fJjiaDDA1dw1PPi3/yUmu3HOr6KRekuy4LmanWrThE
	85PM6WKCv52Gr21YP5JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ2lI-0004nB-Ql; Thu, 14 May 2020 01:34:12 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ2l9-0004lT-Kc
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 01:34:05 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id E609F51F;
 Thu, 14 May 2020 03:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1589420030;
 bh=olQV28hHjT1F61ZHVAQssh78DJKqK0EnKPb7hDTWAyo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ybw7ObeyyX/UNvvYt4wKZezmzBQzYsqj2vRlhUvw92687B6loPRys5DSv681ADazU
 3UnM7OWps7atkCZ6hJ0W9VJ0LjemDIBNEogAF+Ux66QkZ5ywsHUQAh7vDWCFCjVYpr
 QDFZvydxMkVstz26Qyj413pdXGN4OkyKFw3ceMY4=
Date: Thu, 14 May 2020 04:33:43 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
Subject: Re: [PATCH v2 1/6] arm64: dts: renesas: make hdmi encoder nodes
 compliant with DT bindings
Message-ID: <20200514013343.GA7425@pendragon.ideasonboard.com>
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
 <20200511110611.3142-2-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511110611.3142-2-ricardo.canuelo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_183403_829914_10704904 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, geert+renesas@glider.be, xuwei5@hisilicon.com,
 robh+dt@kernel.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUmljYXJkbywKClRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgoKT24gTW9uLCBNYXkgMTEsIDIw
MjAgYXQgMDE6MDY6MDZQTSArMDIwMCwgUmljYXJkbyBDYcOxdWVsbyB3cm90ZToKPiBTbWFsbCBm
aXhlcyB0byBtYWtlIHRoZXNlIERUcyBjb21wbGlhbnQgd2l0aCB0aGUgYWRpLGFkdjc1MTF3IGJp
bmRpbmcuCj4gCj4gcjhhNzc5NzAtZWFnbGUuZHRzLAo+IHI4YTc3OTcwLXYzbXNrLmR0cywKPiBy
OGE3Nzk4MC1jb25kb3IuZHRzLAo+IHI4YTc3OTgwLXYzaHNrLmR0cywKPiByOGE3Nzk5MC1lYmlz
dS5kdHM6Cj4gICByZW1vdmUgdGhlIGFkaSxpbnB1dC1zdHlsZSBhbmQgYWRpLGlucHV0LWp1c3Rp
ZmljYXRpb24gcHJvcGVydGllcy4KPiAKPiByOGE3Nzk5NS1kcmFhay5kdHM6Cj4gICBSZW9yZGVy
IHRoZSBJMkMgc2xhdmUgYWRkcmVzc2VzIG9mIHRoZSBoZG1pLWVuY29kZXJAMzkgbm9kZSBhbmQg
cmVtb3ZlCj4gICB0aGUgYWRpLGlucHV0LXN0eWxlIGFuZCBhZGksaW5wdXQtanVzdGlmaWNhdGlv
biBwcm9wZXJ0aWVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFJpY2FyZG8gQ2HDsXVlbG8gPHJpY2Fy
ZG8uY2FudWVsb0Bjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IExhdXJlbnQgUGluY2hhcnQg
PGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KCj4gLS0tCj4gIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcmVuZXNhcy9yOGE3Nzk3MC1lYWdsZS5kdHMgIHwgMiAtLQo+ICBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5NzAtdjNtc2suZHRzICB8IDIgLS0KPiAgYXJjaC9hcm02
NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OTgwLWNvbmRvci5kdHMgfCAyIC0tCj4gIGFyY2gvYXJt
NjQvYm9vdC9kdHMvcmVuZXNhcy9yOGE3Nzk4MC12M2hzay5kdHMgIHwgMiAtLQo+ICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5OTAtZWJpc3UuZHRzICB8IDIgLS0KPiAgYXJjaC9h
cm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OTk1LWRyYWFrLmR0cyAgfCA2ICsrLS0tLQo+ICA2
IGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy9yOGE3Nzk3MC1lYWdsZS5kdHMg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5NzAtZWFnbGUuZHRzCj4gaW5kZXgg
MmFmYjkxZWM5YzhkLi5hYzIxNTZhYjNlNjIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9yZW5lc2FzL3I4YTc3OTcwLWVhZ2xlLmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcmVuZXNhcy9yOGE3Nzk3MC1lYWdsZS5kdHMKPiBAQCAtMTM3LDggKzEzNyw2IEBACj4gIAkJ
YWRpLGlucHV0LWRlcHRoID0gPDg+Owo+ICAJCWFkaSxpbnB1dC1jb2xvcnNwYWNlID0gInJnYiI7
Cj4gIAkJYWRpLGlucHV0LWNsb2NrID0gIjF4IjsKPiAtCQlhZGksaW5wdXQtc3R5bGUgPSA8MT47
Cj4gLQkJYWRpLGlucHV0LWp1c3RpZmljYXRpb24gPSAiZXZlbmx5IjsKPiAgCj4gIAkJcG9ydHMg
ewo+ICAJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yZW5lc2FzL3I4YTc3OTcwLXYzbXNrLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cmVuZXNhcy9yOGE3Nzk3MC12M21zay5kdHMKPiBpbmRleCBkN2M3YjkxNTZlMDguLjAxYzRiYTBm
N2JlMSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5NzAt
djNtc2suZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OTcwLXYz
bXNrLmR0cwo+IEBAIC0xNTAsOCArMTUwLDYgQEAKPiAgCQlhZGksaW5wdXQtZGVwdGggPSA8OD47
Cj4gIAkJYWRpLGlucHV0LWNvbG9yc3BhY2UgPSAicmdiIjsKPiAgCQlhZGksaW5wdXQtY2xvY2sg
PSAiMXgiOwo+IC0JCWFkaSxpbnB1dC1zdHlsZSA9IDwxPjsKPiAtCQlhZGksaW5wdXQtanVzdGlm
aWNhdGlvbiA9ICJldmVubHkiOwo+ICAKPiAgCQlwb3J0cyB7Cj4gIAkJCSNhZGRyZXNzLWNlbGxz
ID0gPDE+Owo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5
ODAtY29uZG9yLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy9yOGE3Nzk4MC1jb25k
b3IuZHRzCj4gaW5kZXggM2RkZTAyOGUyMmE2Li5lZjgzNTBhMDYyYWYgMTAwNjQ0Cj4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OTgwLWNvbmRvci5kdHMKPiArKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5ODAtY29uZG9yLmR0cwo+IEBAIC0xNzQs
OCArMTc0LDYgQEAKPiAgCQlhZGksaW5wdXQtZGVwdGggPSA8OD47Cj4gIAkJYWRpLGlucHV0LWNv
bG9yc3BhY2UgPSAicmdiIjsKPiAgCQlhZGksaW5wdXQtY2xvY2sgPSAiMXgiOwo+IC0JCWFkaSxp
bnB1dC1zdHlsZSA9IDwxPjsKPiAtCQlhZGksaW5wdXQtanVzdGlmaWNhdGlvbiA9ICJldmVubHki
Owo+ICAKPiAgCQlwb3J0cyB7Cj4gIAkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5ODAtdjNoc2suZHRzIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OTgwLXYzaHNrLmR0cwo+IGluZGV4IGFkYmZk
OGYwN2QwNi4uNmRmZjA0NjkzMjIzIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cmVuZXNhcy9yOGE3Nzk4MC12M2hzay5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jl
bmVzYXMvcjhhNzc5ODAtdjNoc2suZHRzCj4gQEAgLTE0MSw4ICsxNDEsNiBAQAo+ICAJCWFkaSxp
bnB1dC1kZXB0aCA9IDw4PjsKPiAgCQlhZGksaW5wdXQtY29sb3JzcGFjZSA9ICJyZ2IiOwo+ICAJ
CWFkaSxpbnB1dC1jbG9jayA9ICIxeCI7Cj4gLQkJYWRpLGlucHV0LXN0eWxlID0gPDE+Owo+IC0J
CWFkaSxpbnB1dC1qdXN0aWZpY2F0aW9uID0gImV2ZW5seSI7Cj4gIAo+ICAJCXBvcnRzIHsKPiAg
CQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcmVuZXNhcy9yOGE3Nzk5MC1lYmlzdS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVz
YXMvcjhhNzc5OTAtZWJpc3UuZHRzCj4gaW5kZXggNGZkMmIxNGZiYjhiLi5kYzI0Y2VjNDZhZTEg
MTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OTkwLWViaXN1
LmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy9yOGE3Nzk5MC1lYmlzdS5k
dHMKPiBAQCAtMzYwLDggKzM2MCw2IEBACj4gIAkJYWRpLGlucHV0LWRlcHRoID0gPDg+Owo+ICAJ
CWFkaSxpbnB1dC1jb2xvcnNwYWNlID0gInJnYiI7Cj4gIAkJYWRpLGlucHV0LWNsb2NrID0gIjF4
IjsKPiAtCQlhZGksaW5wdXQtc3R5bGUgPSA8MT47Cj4gLQkJYWRpLGlucHV0LWp1c3RpZmljYXRp
b24gPSAiZXZlbmx5IjsKPiAgCj4gIAkJcG9ydHMgewo+ICAJCQkjYWRkcmVzcy1jZWxscyA9IDwx
PjsKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OTk1LWRy
YWFrLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy9yOGE3Nzk5NS1kcmFhay5kdHMK
PiBpbmRleCA2NzYzNGNiMDFkNmIuLjc5YzczYTk5ZDJmZSAxMDA2NDQKPiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5OTUtZHJhYWsuZHRzCj4gKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OTk1LWRyYWFrLmR0cwo+IEBAIC0yNzIsOCArMjcyLDgg
QEAKPiAgCj4gIAloZG1pLWVuY29kZXJAMzkgewo+ICAJCWNvbXBhdGlibGUgPSAiYWRpLGFkdjc1
MTF3IjsKPiAtCQlyZWcgPSA8MHgzOT4sIDwweDNmPiwgPDB4Mzg+LCA8MHgzYz47Cj4gLQkJcmVn
LW5hbWVzID0gIm1haW4iLCAiZWRpZCIsICJwYWNrZXQiLCAiY2VjIjsKPiArCQlyZWcgPSA8MHgz
OT4sIDwweDNmPiwgPDB4M2M+LCA8MHgzOD47Cj4gKwkJcmVnLW5hbWVzID0gIm1haW4iLCAiZWRp
ZCIsICJjZWMiLCAicGFja2V0IjsKPiAgCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZncGlvMT47Cj4g
IAkJaW50ZXJydXB0cyA9IDwyOCBJUlFfVFlQRV9MRVZFTF9MT1c+Owo+ICAKPiBAQCAtMjg0LDgg
KzI4NCw2IEBACj4gIAkJYWRpLGlucHV0LWRlcHRoID0gPDg+Owo+ICAJCWFkaSxpbnB1dC1jb2xv
cnNwYWNlID0gInJnYiI7Cj4gIAkJYWRpLGlucHV0LWNsb2NrID0gIjF4IjsKPiAtCQlhZGksaW5w
dXQtc3R5bGUgPSA8MT47Cj4gLQkJYWRpLGlucHV0LWp1c3RpZmljYXRpb24gPSAiZXZlbmx5IjsK
PiAgCj4gIAkJcG9ydHMgewo+ICAJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKCi0tIApSZWdhcmRz
LAoKTGF1cmVudCBQaW5jaGFydAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
