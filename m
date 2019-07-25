Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8843874EEC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 15:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cr5bqCrpDYfvcaEPm4uM5tXXkqDgaNLLVKr+lF0jcCY=; b=CdBvlFZvWTF5zB
	Fubxb8yhgGooO929BzKFJCX3gyuO7jUB2OObKOnefYCb7PrwTB5rFkrZ+ltZYJOQ6TPZ8CrY/iIts
	JqTppaQuCl5bNpwcwNxEof2eFBVuDhLB/4fEuVs0E1ENirFlx7oYeeg+MFtTibR8Jo2KQW6TLHk2n
	uAPZchmMe32pM4g96ku8hkQO+c8g7/HvnGwL2RyhBffvBFOHM/ehin0GPn+w4SRIOULgPeT6hYnYe
	cqNsohfPLvsB5fGxTv/5qvlQiB6hSKpAKHqdce3GEKnp8i1kyj7u5agO0yY0IXdHGoQoIBXM0IoGC
	aPpg4ljg8HiezBEDg8VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdai-0005J8-O6; Thu, 25 Jul 2019 13:15:28 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdZQ-0003R3-3F
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 13:14:12 +0000
Received: by mail-lj1-x241.google.com with SMTP id k18so47930047ljc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 06:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc:content-transfer-encoding;
 bh=KgKbQn+sVtaYeJftRwYKqZockp8kTGU+oulqwixLW+w=;
 b=Kf3Z1S3rHqrjO1JoxJdWnKuBq8hN1KQIwgSpoPR00GOKJL3nGmYGed+tcTpj8qr2GB
 +v7HJMt9fxA+2jZBPUgP9hhAnYFR72DdyTp8/ATGS/ewqTcf0ASA7K9KfaJKhMZA4vZd
 6vDFnnJDlMGVnajKl23G3fJSHXPaANDNf+UlcHmUe46sXRl5tpCzGSSsx6xF1L2sCMkw
 pTKPI0gZ9GkMqW2QIEOv6uyth18zlsjxH3vH+AC/3Vi56ujnMtPqEd1M/9tFpNqVStkl
 prodH09bb738Mr8sstAKfx6tK16+abbu1SV26muDqEUtaUc1ZzAraUZr13LdSnrKtafX
 hyMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc:content-transfer-encoding;
 bh=KgKbQn+sVtaYeJftRwYKqZockp8kTGU+oulqwixLW+w=;
 b=V4nvH/E0oNGKiCfpcJbUiuHPQnfSrTUFw+xMKF6CWMHPRzF0jNqTiXansvddYmh8NB
 8xlp5MdeHPVHeT57YpG8/iXGv4QQxDAoY/mpMH3BOIblzPvMrBGgOOBCe27w01rDTy54
 UaAzs3s8RzxYU3IbUdTBXi72RYDLoW79UaI6sdJ/F1yzO7yDsq7oiObuhDjtr0NMjM5I
 JG+x+1LjnRqv5sbtShZU4bWwTUzHlq9pINa9i+qDnfJthOx8JtKjsUnBU6VP9Ang06ZU
 fGwZenRYysvu1ZmdkmjicgLzuEpEqVnVQx8Z8FWBJBLoiXe3E9QQNAb8KK2tr1d48o9p
 wBkw==
X-Gm-Message-State: APjAAAUWYyO8HfvQacBbsmKjramPToUwNHwzPmZGnmjO5FELVP57h8bM
 DPCCk48MjfqeRocxzcwbLaIQdDtYIC9qhVyJQ9w=
X-Google-Smtp-Source: APXvYqyTTtkZSLGybeBnj2BYoFqYLkzK/AMLxamssTlKXEad8A8gaXQC1+CN5OL/YGc0pcrVbBBEQ1iENKDqhDFdKKU=
X-Received: by 2002:a2e:9198:: with SMTP id f24mr46939627ljg.221.1564060446021; 
 Thu, 25 Jul 2019 06:14:06 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190723122027eucas1p24b1d76e3139f7cc52614d7613ff9ba98@eucas1p2.samsung.com>
 <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <20190723122016.30279-9-a.swigon@partner.samsung.com>
In-Reply-To: <20190723122016.30279-9-a.swigon@partner.samsung.com>
From: Chanwoo Choi <cwchoi00@gmail.com>
Date: Thu, 25 Jul 2019 22:13:29 +0900
Message-ID: <CAGTfZH1_Qk+vNa_AJW_8OA8MJbnZa3yCTLLRs2w23bNTm72gyQ@mail.gmail.com>
Subject: Re: [RFC PATCH 08/11] arm: dts: exynos: Add parents and
 #interconnect-cells to Exynos4412
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_061408_779583_5DA4E281 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (cwchoi00[at]gmail.com)
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (cwchoi00[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cwchoi00[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: cwchoi00@gmail.com
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, inki.dae@samsung.com,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, georgi.djakov@linaro.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjAxOeuFhCA37JuUIDI07J28ICjsiJgpIOyYpOyghCA4OjA3LCBBcnR1ciDFmndpZ2/FhCA8YS5z
d2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT7ri5jsnbQg7J6R7ISxOgo+Cj4gVGhpcyBwYXRjaCBh
ZGRzIHR3byBmaWVsZHMgdHAgdGhlIEV4eW5vczQ0MTIgRFRTOgo+ICAgLSBwYXJlbnQ6IHRvIGRl
Y2xhcmUgY29ubmVjdGlvbnMgYmV0d2VlbiBub2RlcyB0aGF0IGFyZSBub3QgaW4gYQo+ICAgICBw
YXJlbnQtY2hpbGQgcmVsYXRpb24gaW4gZGV2ZnJlcTsKPiAgIC0gI2ludGVyY29ubmVjdC1jZWxs
czogcmVxdWlyZWQgYnkgdGhlIGludGVyY29ubmVjdCBmcmFtZXdvcmsuCj4KPiBQbGVhc2Ugbm90
ZSB0aGF0ICNpbnRlcmNvbm5lY3QtY2VsbHMgaXMgYWx3YXlzIHplcm8gYW5kIG5vZGUgSURzIGFy
ZSBub3QKPiBoYXJkY29kZWQgYW55d2hlcmUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBBcnR1ciDFmndp
Z2/FhCA8YS5zd2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm0vYm9v
dC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kgfCAxICsKPiAgYXJjaC9hcm0vYm9v
dC9kdHMvZXh5bm9zNDQxMi5kdHNpICAgICAgICAgICAgICAgfCA5ICsrKysrKysrKwo+ICAyIGZp
bGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9i
b290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRz
L2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpCj4gaW5kZXggZWE1NWYzNzdkMTdjLi5iZGQ2
MWFlODYxMDMgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJv
aWQtY29tbW9uLmR0c2kKPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9p
ZC1jb21tb24uZHRzaQo+IEBAIC0xMDYsNiArMTA2LDcgQEAKPiAgJmJ1c19sZWZ0YnVzIHsKPiAg
ICAgICAgIGRldmZyZXEtZXZlbnRzID0gPCZwcG11X2xlZnRidXNfMz4sIDwmcHBtdV9yaWdodGJ1
c18zPjsKPiAgICAgICAgIHZkZC1zdXBwbHkgPSA8JmJ1Y2szX3JlZz47Cj4gKyAgICAgICBwYXJl
bnQgPSA8JmJ1c19kbWM+OwoKSXQgaXMgd3JvbmcuICdidXNfbGVmdGJ1cycgaGFzIG5vdCBhbnkg
aC93IGRlcGVuZGVuY3kgb2YgJ2J1c19kbWMnCmFuZCAnYnVzX2xlZnRidXMnIGlzIG5vdCBjaGls
ZCBvZiAnYnVzX2RtYycuCgpFdmVuIGl0IHRoZXJlIGFyZSBzb21lIFBNUW9TIHJlcXVpcmVtZW50
IGJldHdlZW4gdGhlbSwKaXQgaXQgbm90IHByb3BlciB0byB0aWUgYm90aCAnYnVzX2xlZnRidXMn
IGFuZCAnYnVzX2RtYycuCgo+ICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+Cj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaSBiL2FyY2gvYXJtL2Jv
b3QvZHRzL2V4eW5vczQ0MTIuZHRzaQo+IGluZGV4IGQyMGRiMmRmZThlMi4uYTcwYTY3MWFjYWNk
IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaQo+ICsrKyBi
L2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaQo+IEBAIC0zOTAsNiArMzkwLDcgQEAK
PiAgICAgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNsb2NrIENMS19ESVZfRE1DPjsK
PiAgICAgICAgICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJidXMiOwo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIG9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19kbWNfb3BwX3RhYmxl
PjsKPiArICAgICAgICAgICAgICAgICAgICAgICAjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+Owo+
ICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gICAgICAgICAg
ICAgICAgIH07Cj4KPiBAQCAtMzk4LDYgKzM5OSw3IEBACj4gICAgICAgICAgICAgICAgICAgICAg
ICAgY2xvY2tzID0gPCZjbG9jayBDTEtfRElWX0FDUD47Cj4gICAgICAgICAgICAgICAgICAgICAg
ICAgY2xvY2stbmFtZXMgPSAiYnVzIjsKPiAgICAgICAgICAgICAgICAgICAgICAgICBvcGVyYXRp
bmctcG9pbnRzLXYyID0gPCZidXNfYWNwX29wcF90YWJsZT47Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsKPiAgICAgICAgICAgICAgICAgICAgICAg
ICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICAgICAgICAgICAgICAgICB9Owo+Cj4gQEAgLTQwNiw2
ICs0MDgsNyBAQAo+ICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2xvY2sgQ0xL
X0RJVl9DMkM+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gImJ1cyI7
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX2Rt
Y19vcHBfdGFibGU+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICNpbnRlcmNvbm5lY3QtY2Vs
bHMgPSA8MD47Cj4gICAgICAgICAgICAgICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsK
PiAgICAgICAgICAgICAgICAgfTsKPgo+IEBAIC00NTksNiArNDYyLDcgQEAKPiAgICAgICAgICAg
ICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNsb2NrIENMS19ESVZfR0RMPjsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJidXMiOwo+ICAgICAgICAgICAgICAgICAgICAg
ICAgIG9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19sZWZ0YnVzX29wcF90YWJsZT47Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsKPiAgICAgICAg
ICAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICAgICAgICAgICAgICAgICB9
Owo+Cj4gQEAgLTQ2Nyw2ICs0NzEsNyBAQAo+ICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2Nr
cyA9IDwmY2xvY2sgQ0xLX0RJVl9HRFI+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2Nr
LW5hbWVzID0gImJ1cyI7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgb3BlcmF0aW5nLXBvaW50
cy12MiA9IDwmYnVzX2xlZnRidXNfb3BwX3RhYmxlPjsKPiArICAgICAgICAgICAgICAgICAgICAg
ICAjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIHN0
YXR1cyA9ICJkaXNhYmxlZCI7Cj4gICAgICAgICAgICAgICAgIH07Cj4KPiBAQCAtNDc1LDYgKzQ4
MCw3IEBACj4gICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbG9jayBDTEtfQUNM
SzE2MD47Cj4gICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiYnVzIjsKPiAg
ICAgICAgICAgICAgICAgICAgICAgICBvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZidXNfZGlzcGxh
eV9vcHBfdGFibGU+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICNpbnRlcmNvbm5lY3QtY2Vs
bHMgPSA8MD47Cj4gICAgICAgICAgICAgICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsK
PiAgICAgICAgICAgICAgICAgfTsKPgo+IEBAIC00ODMsNiArNDg5LDcgQEAKPiAgICAgICAgICAg
ICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNsb2NrIENMS19BQ0xLMTMzPjsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJidXMiOwo+ICAgICAgICAgICAgICAgICAgICAg
ICAgIG9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19mc3lzX29wcF90YWJsZT47Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICAgICAgICAgICAgICAgICB9Owo+
Cj4gQEAgLTQ5MSw2ICs0OTgsNyBAQAo+ICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9
IDwmY2xvY2sgQ0xLX0FDTEsxMDA+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrLW5h
bWVzID0gImJ1cyI7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgb3BlcmF0aW5nLXBvaW50cy12
MiA9IDwmYnVzX3Blcmlfb3BwX3RhYmxlPjsKPiArICAgICAgICAgICAgICAgICAgICAgICAjaW50
ZXJjb25uZWN0LWNlbGxzID0gPDA+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9
ICJkaXNhYmxlZCI7Cj4gICAgICAgICAgICAgICAgIH07Cj4KPiBAQCAtNDk5LDYgKzUwNyw3IEBA
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbG9jayBDTEtfU0NMS19NRkM+
Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gImJ1cyI7Cj4gICAgICAg
ICAgICAgICAgICAgICAgICAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX2xlZnRidXNfb3Bw
X3RhYmxlPjsKPiArICAgICAgICAgICAgICAgICAgICAgICAjaW50ZXJjb25uZWN0LWNlbGxzID0g
PDA+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gICAg
ICAgICAgICAgICAgIH07Cj4KPiAtLQo+IDIuMTcuMQo+CgoKLS0gCkJlc3QgUmVnYXJkcywKQ2hh
bndvbyBDaG9pCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
