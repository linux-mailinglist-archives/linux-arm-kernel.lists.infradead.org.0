Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 718ECF8B33
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 09:59:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9N+eVu/8ElVJ28sIkkSOAoaipWQPNKEcQd7/Q4RW9yc=; b=orMbliJEH0S6EI
	r3K5ooxG4zfeSvUM5yKxO/zRPrhlSlOZlhKW77I2MFHMv9S6FOxpw9kjmNYqVs+xzhq25QHEaupo1
	hqm7V0AApVWxnmOAmEkkqNF7EdgAuJyYizbZgNOO3iiiPBsG1NiU2IUBCdlXV/PUOYj2HUqE54fOI
	XTdzrF0aDFQeMiklhTUWfeDFSWXBd09GlDLP7QYM4amsGC7fy48Cx3OmPipO7PJno1ckEdVhtJwh8
	QI7bMhnuN9pvREfBwCnL5LRoD5og9sIxCPtYqd+vVE0NI7A0V8SEd4yOHS9aG78QdU5xZQO0c78mW
	SnMwsux23EMXjMjIjIAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUS1G-0006KK-Jt; Tue, 12 Nov 2019 08:59:26 +0000
Received: from mail-ua1-x930.google.com ([2607:f8b0:4864:20::930])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUS17-0006Il-Or
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 08:59:19 +0000
Received: by mail-ua1-x930.google.com with SMTP id u99so4470831uau.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 00:59:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=tf2mudZCYNcbKijnx7l8kTR9ghpKz810SOwwndyzloo=;
 b=cBi1XhD0izth7qoDufpZuhLyMbzgjKIertes3s+oTmfIQUcjyLC8nW7YvKMwUZ/Al9
 UuIzrbTfcLHfhcS1agSm4E5e9xzV4StaELnCTzrZmFgfAUu9xlkw6reZZ6QDIR21pmkz
 2TCmzM/P3XZfnY6UuHhqasT074EnDsb/CuuEobGXrsW1IZ1fF8KVfToYsOnG4K6dmuuC
 THbZYKW5WoYK29Lm1OtsYJWZFCM+TzHFu9SoQQ4W/BSff3vARAm6NMYoBRME8PINAAe8
 /BW6SN00vqrBxU3PCxxhw5KTWeIZ+Bi+hg/ePhibVioqHu6mYwP0GFedmy79HOB3a48i
 MXcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=tf2mudZCYNcbKijnx7l8kTR9ghpKz810SOwwndyzloo=;
 b=LWMR1t+MJJrspHJc4SBMZsWtzIi5tofDba1/lqhxKlOhiK22a+ni1dVb9G3mafZ+kD
 Ja2WZMSyI6l8/cE4qOpzF8NF7i+AiTv2GdymLPYAyCkiASmN311QmO6E1N3Z6COCR6tc
 eEcY3StS3zHHPwfHhZs2egTNni0r4gCD3uI3LrPTwCtcGw+nvO4pMImpc2YhYVW++OIg
 qRJF4pGtO6U028SYIZM8MewheCPKGV9RUE9f8UdaVlhspIcdTcB0bqGIzhRD/ez6gWmL
 r7UIqVi5fPlIdnd2Ot+iDBqYrUYyMbKmV9mVwkdoMxU6fX6zlNBU04dRw5eSMKHwLbYz
 1FZw==
X-Gm-Message-State: APjAAAUbQodZUIa6mhwB67F3KDHfHVbcYiYo53aDSr677qPu3PWkxuVi
 xGcFRLCsOsM2LFLosFN0Y53zK/RftjNe4DepkKR6+Q==
X-Google-Smtp-Source: APXvYqxFPhWgc8iHkpTuygj7MTTUYu4BcQnzbVKGkW6JXLBaDAutQSmw9xt4FZ9zvOyXuQCGXHtYTV2Sub2XRMdS+zw=
X-Received: by 2002:ab0:648d:: with SMTP id p13mr113924uam.129.1573549153321; 
 Tue, 12 Nov 2019 00:59:13 -0800 (PST)
MIME-Version: 1.0
References: <f03c978c-86de-b8bb-22c2-177d7fafed94@fivetechno.de>
 <CAPDyKFqn06LZZMXLD2o-M6A0R6KU97PFUTN=NgYnMtf=ESULTA@mail.gmail.com>
 <e69268d2-4a3f-3cd8-fc2e-57ae52ad337a@fivetechno.de>
In-Reply-To: <e69268d2-4a3f-3cd8-fc2e-57ae52ad337a@fivetechno.de>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 12 Nov 2019 09:58:37 +0100
Message-ID: <CAPDyKFrsQNMhDb3yh4M1EPGtftFrVmHY-pmpR7AbfrXW=xzyyg@mail.gmail.com>
Subject: Re: arm64: dts: rockchip: Add SDR104 mode to SD-card I/F on
 rk3399-roc-pc
To: Markus Reichl <m.reichl@fivetechno.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_005917_812344_0EC14B8F 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:930 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAxMSBOb3YgMjAxOSBhdCAyMDozMiwgTWFya3VzIFJlaWNobCA8bS5yZWljaGxAZml2
ZXRlY2huby5kZT4gd3JvdGU6Cj4KPiBIaSBVbGYsCj4KPiBBbSAxMS4xMS4xOSB1bSAxODoyNyBz
Y2hyaWViIFVsZiBIYW5zc29uOgo+ID4gT24gTW9uLCAxMSBOb3YgMjAxOSBhdCAxNToxMywgTWFy
a3VzIFJlaWNobCA8bS5yZWljaGxAZml2ZXRlY2huby5kZT4gd3JvdGU6Cj4gPj4KPiA+PiBBZGQg
U0RSMTA0IGNhcGFiaWxpdHkgYW5kIHJlZ3VsYXRvcnMgdG8gU0QgY2FyZCBub2RlLgo+ID4+IFdo
aWxlIGF0IGl0LCBmaXggYSB0eXBvIGluIGxjZCBwaW5jdHJsIGFuZCByZW1vdmUgdHdvCj4gPj4g
dW5kb2N1bWVudGVkIGJpbmRpbmdzIGZyb20gcG1pYy4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6
IE1hcmt1cyBSZWljaGwgPG0ucmVpY2hsQGZpdmV0ZWNobm8uZGU+Cj4gPj4gLS0tCj4gPj4gIC4u
Li9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jLXBjLmR0c2kgICAgICB8IDMxICsrKysrKysr
KysrKysrKy0tLS0KPiA+PiAgMSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDYgZGVs
ZXRpb25zKC0pCj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktcm9jLXBjLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1yb2MtcGMuZHRzaQo+ID4+IGluZGV4IDMzZGY5NWUzODRiNC4uZTg2YTZkYjU0NDk5IDEw
MDY0NAo+ID4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvYy1w
Yy5kdHNpCj4gPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9j
LXBjLmR0c2kKPiA+PiBAQCAtMTM1LDYgKzEzNSwyMCBAQAo+ID4+ICAgICAgICAgICAgICAgICB2
aW4tc3VwcGx5ID0gPCZ2Y2NfMXY4PjsKPiA+PiAgICAgICAgIH07Cj4gPj4KPiA+PiArICAgICAg
IHZjYzN2MF9zZDogdmNjM3YwLXNkIHsKPiA+PiArICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9
ICJyZWd1bGF0b3ItZml4ZWQiOwo+ID4+ICsgICAgICAgICAgICAgICBlbmFibGUtYWN0aXZlLWhp
Z2g7Cj4gPj4gKyAgICAgICAgICAgICAgIGdwaW8gPSA8JmdwaW80IFJLX1BENiBHUElPX0FDVElW
RV9ISUdIPjsKPiA+PiArICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsK
PiA+PiArICAgICAgICAgICAgICAgcGluY3RybC0wID0gPCZ2Y2MzdjBfc2RfZW4+Owo+ID4+ICsg
ICAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2Y2MzdjBfc2QiOwo+ID4+ICsgICAgICAg
ICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4KPiA+IFRoaXMgbG9va3Mgb2RkLiBBIEdQ
SU8gcmVndWxhdG9yIGJlaW5nIGFsd2F5cyBvbj8KPgo+IFRoaXMgaXMgYSBzdGFuZGFyZCBtaWNy
byBTRCBjYXJkIHNvY2tldCB0aGF0IGNhbiBhbHNvIGJlIHVzZWQgZm9yCj4gYm9vdGluZyB0aGUg
Ym9hcmQuIEkgd2FudGVkIHRvIGJlIGNhdXRpb3VzIGFuZCBzdGFydAo+IHdvcmtpbmcgd2l0aCBp
dCBhbmQgc2V2ZXJhbCBTRCBjYXJkcyBhbmQgZXhwbG9yZSB0aGUgY2FwYWJpbGl0aWVzLgo+Cj4g
T24gdGhpcyBib2FyZCBuZWFybHkgYWxsIHJlZ3VsYXRvcnMgYXJlIHN0aWxsIGNvbnRpbm91c2x5
Cj4gc3dpdGNoZWQgb24uIEkgcGxhbiB0byByZW1vdmUgdGhlIGFsd2F5cy1vbiBwcm9wZXJ0aWVz
IHN0ZXAKPiBieSBzdGVwIGZyb20gdGhlIHJlZ3VsYXRvcnMgd2hlbiB0aGUgYm9hcmQgcnVucyBz
dGFibGUgd2l0aCBpdCdzCj4gY29tcG9uZW50cyBhbGwgZW5ibGVkLgo+Cj4gPgo+ID4+ICsgICAg
ICAgICAgICAgICByZWd1bGF0b3ItYm9vdC1vbjsKPiA+PiArICAgICAgICAgICAgICAgcmVndWxh
dG9yLW1pbi1taWNyb3ZvbHQgPSA8MzAwMDAwMD47Cj4gPj4gKyAgICAgICAgICAgICAgIHJlZ3Vs
YXRvci1tYXgtbWljcm92b2x0ID0gPDMwMDAwMDA+Owo+ID4+ICsgICAgICAgICAgICAgICB2aW4t
c3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsKPiA+PiArICAgICAgIH07Cj4gPgo+ID4gQXNzdW1lcyB0
aGlzIHBvd2VycyBhbiBTRElPIGVtYmVkZGVkIGNhcmQuIE9mdGVuIHRob3NlIGhhdmUgYSBzcGVj
aWZpYwo+ID4gcG93ZXIgc2VxdWVuY2UsIGp1c3Qgd2FudGVkIHRvIG1ha2Ugc3VyZSB0aGUgYWJv
dmUgYXJlIHJlYWxseQo+ID4gc3VmZmljaWVudD8gTm8gZGVsYXlzIG9yIGV4dGVybmFsIGNsb2Nr
IG5lZWRlZD8KPgo+IEl0J3Mgbm90IGVtYmVkZGVkLCBqdXN0IGEgc3RhbmRhcmQgwrVTRCBwbHVn
LiBJdCBpcyBhbHJlYWR5IGVuYWJsZWQKPiBieSBtYWlubGluZSBVLUJvb3QgYW5kIGVqZWN0aW5n
IGFuZCBpbnNlcnRpbmcgdGhlIGNhcmQgd29ya3MgZmluZS4KCkFoLCB0aGFua3MgZm9yIGNvbmZp
cm1pbmcuCgpLaW5kIHJlZ2FyZHMKVWZmZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
