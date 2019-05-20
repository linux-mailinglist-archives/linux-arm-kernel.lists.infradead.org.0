Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 569C322E1F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:14:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWMx0pgiPWSIMQn07kXenApMAXbRxfZM4wMN0WqKS9E=; b=sD8+uaXgO7qmsh
	zCKAZxZgGRrZsr48/6BQISBxhMv6aU72WGInsJ2tWSkMRz4nWEQbah4X4wjH3R445rELZ4I/yWWIt
	HxUTe7fvCQUAbTC9Vwru28bJZH2oaVrPAn47QzgZqWJGtlMqKTZCwinJoqcJQGaMyLn+IYmrh3eRF
	rBz8Bk9iEXWdCLPY21RPmfRgamg/5OTQvcSSM3MyV8P+Nme1Lbol6ZsX2jxtRoamKwGYJrCrGRnok
	MVMf4av0QkzXZW0sF1wY3f5ZjWUyDLOzSgJsN41tLZjesXfrLMjD8UfTX4W2avEyBMyj3xK+Qt9qQ
	621w50gdHq7Mks7KGOeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdRI-0001hE-FC; Mon, 20 May 2019 08:14:32 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdR9-0001ga-BO
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 08:14:24 +0000
Received: by mail-yb1-xb43.google.com with SMTP id n145so727020ybg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 01:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=b1Nie3BHb8c5BThPo1teBTJYFUp/LwJ6jQaWfDHPCns=;
 b=orGKLIROZ7tGEQuodcexsNLM/J7Eloft4Fij9jIp16hMPAhZ/+C44L3zyBKn3OBND7
 rFWx1HZgVkLm1nv2wVExi1d65uJd1Dj/1xW8fhhncmsLJNb/32cM/afhGqy80DCctZdi
 vHoM569tfWfq+9yliuVCVdrgF8b7MtVPfFEv1HRZ4WQZBL2Mq4Rv+t6KTswgzh7zNT4B
 z4IUQ7aFfppvp3suIYgI8jxrllUNpDaVEBp/wYa/HZqQBVeRcMSXPS4E9kE9sp23ICM1
 BJz5oSRwzpmxzvC8HsX0sRq8jTJhK/UBkZS9E3bkgRDcJ/PNrN8coDtyP/RnAWL027p5
 oHBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=b1Nie3BHb8c5BThPo1teBTJYFUp/LwJ6jQaWfDHPCns=;
 b=GSAb2eiO7QLhS3n3/nK+uZKcNzz347hyQbKd4pouVVQe9AJOfpzuLEr8T7WaEViFly
 QGvJyMNuZYQ722SFcWHI+/IfnsQjyZL8ipeTfe6XQfqveE4q8Ioho1UEBVD8UBcrMFni
 R5VkTRoX1ir8h5h6xGuH+qQew+DtBlVJzjUZRMAydl+J1Jpi1e1cGpfXrWuuX23IrFpm
 D5zey5wT8DtfANc7bTR2RSEHye98BgBAfQHyOQbi0OfbJygrNX1tWeWXKmMZk5cONtEg
 NmOMpOX9YKAoEpKl09ubQaKEhGMOBr/cUjasdVYIjsas5srzeVXbWRHT9fAKzT1Ncmz7
 +UiA==
X-Gm-Message-State: APjAAAXWxzVQ6/xMdsARDd8v+magNreIxUy7TSqIqV6ze3urku6CihNK
 H8T8GkoYytH2+A5f74EsG42ZQpuYaF0/GyJ7rAY=
X-Google-Smtp-Source: APXvYqzdITGOm1uzRAMhHCqrI7yUvwqh/7HPIVaKHQ0kbZdNv8+oko8EF3XU1eHAr4qQmZTySGwd1ZSxf66Go5tE4Aw=
X-Received: by 2002:a25:10c2:: with SMTP id 185mr32216064ybq.379.1558340061612; 
 Mon, 20 May 2019 01:14:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190518152355.11134-1-peron.clem@gmail.com>
 <20190518152355.11134-2-peron.clem@gmail.com>
 <20190520073529.nxptfbibexrqyzfi@flea>
In-Reply-To: <20190520073529.nxptfbibexrqyzfi@flea>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 20 May 2019 10:14:10 +0200
Message-ID: <CAJiuCcdrW7RcEKePCr1DaL-be8dA5oOjvHdxYkiu=h37z2e7tw@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: watchdog: add Allwinner H6 watchdog
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_011423_417987_4E513F7D 
X-CRM114-Status: GOOD (  21.12  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, linux-watchdog@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gTW9uLCAyMCBNYXkgMjAxOSBhdCAwOTozNSwgTWF4aW1lIFJpcGFyZCA8
bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBPbiBTYXQsIE1heSAxOCwgMjAx
OSBhdCAwNToyMzo1MlBNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBBbGx3aW5u
ZXIgSDYgaGFzIGEgc2ltaWxhciB3YXRjaGRvZyBhcyB0aGUgQTY0IHdoaWNoIGlzIGFscmVhZHkK
PiA+IGEgY29tcGF0aWJsZSBvZiB0aGUgQTMxLgo+ID4KPiA+IFRoaXMgY29tbWl0IHNvcnQgdGhl
IGxpbmVzIGFuZCBhZGQgdGhlIEg2IGNvbXBhdGlibGUuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTog
Q2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIC4uLi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9nL3N1bnhpLXdkdC50eHQgICAgICAgICB8IDEwICsr
KysrKy0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3Mvd2F0Y2hkb2cvc3VueGktd2R0LnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy93YXRjaGRvZy9zdW54aS13ZHQudHh0Cj4gPiBpbmRleCA0NjA1NTI1NGU4ZGQuLmY0ODEw
ZjhhZDFjNSAxMDA2NDQKPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy93YXRjaGRvZy9zdW54aS13ZHQudHh0Cj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3Mvd2F0Y2hkb2cvc3VueGktd2R0LnR4dAo+ID4gQEAgLTMsMTAgKzMsMTIgQEAg
QWxsd2lubmVyIFNvQ3MgV2F0Y2hkb2cgdGltZXIKPiA+ICBSZXF1aXJlZCBwcm9wZXJ0aWVzOgo+
ID4KPiA+ICAtIGNvbXBhdGlibGUgOiBzaG91bGQgYmUgb25lIG9mCj4gPiAtICAgICAiYWxsd2lu
bmVyLHN1bjRpLWExMC13ZHQiCj4gPiAtICAgICAiYWxsd2lubmVyLHN1bjZpLWEzMS13ZHQiCj4g
PiAtICAgICAiYWxsd2lubmVyLHN1bjUwaS1hNjQtd2R0IiwiYWxsd2lubmVyLHN1bjZpLWEzMS13
ZHQiCj4gPiAtICAgICAiYWxsd2lubmVyLHN1bml2LWYxYzEwMHMtd2R0IiwgImFsbHdpbm5lcixz
dW40aS1hMTAtd2R0Igo+Cj4gVGhhdCBzb3J0aW5nIHdhcyBraW5kIG9mIGludGVudGlvbmFsCkFy
ZyBpbmRlZWQsIEkgd2lsbCByZW1vdmUgaXQuCgoKPgo+ID4gKyAgICAgLSAiYWxsd2lubmVyLHN1
bjRpLWExMC13ZHQiCj4gPiArICAgICAtICJhbGx3aW5uZXIsc3VuNTBpLWE2NC13ZHQiLCJhbGx3
aW5uZXIsc3VuNmktYTMxLXdkdCIKPiA+ICsgICAgIC0gImFsbHdpbm5lcixzdW41MGktaDYtd2R0
IiwiYWxsd2lubmVyLHN1bjUwaS1hNjQtd2R0IiwKPiA+ICsgICAgICAgImFsbHdpbm5lcixzdW42
aS1hMzEtd2R0Igo+Cj4gSXMgdGhlcmUgYSByZWFzb24gdG8ga2VlcCB0aGUgQTY0IGNvbXBhdGli
bGU/ClllcywgQTY0IGFuZCBINiBoYXMgdGhlIGV4YWN0IHNhbWUgbWVtb3J5IG1hcHBpbmcgbG9v
a2luZyBhdCB0aGUgZGF0YXNoZWV0LgpTbyBpZiB0aGVyZSBpcyBhbiBlcnJhdGEgb3IgYSBuZXcg
ZmVhdHVyZSBmb3IgdGhlIEE2NCwgaXQgc2hvdWxkIGJlCmFsc28gY29tcGF0aWJsZSB3aXRoIHRo
ZSBINi4KV2hpY2ggaXMgbm90IHRoZSBjYXNlIHdpdGggQTMxIChXRFRfS0VZX0ZJRUxEIGlzIG5v
dCBwcmVzZXQpCgpUaGFua3MsCkNsZW1lbnQKCj4KPiBUaGFua3MsCj4gTWF4aW1lCj4KPiAtLQo+
IE1heGltZSBSaXBhcmQsIEJvb3RsaW4KPiBFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2lu
ZWVyaW5nCj4gaHR0cHM6Ly9ib290bGluLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
