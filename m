Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1580A42668
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:49:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TRetTeMOXXfWK0/TiHVCa5ZeNowJQGYgghtwX8u+7N4=; b=HA9SFZHJT96/sZ
	HyYlOVW5roaxFnztvXCYrNlrDFJJYloMtmkb/o79nQW7ZH/sLa1Yna8UQXu681QAvjnKPslGHfz92
	NnkDaM51mThKwTp4jLyoPAQu3aCXRFhVUMZgsz2scFbyWTEs9H1V1gGd5iHVF3cUfoYRRGJlBJ1i2
	fDHOYH+PzoA71BOpulYSd8D3Ng/DhkTYUN1gL6Yvzxk5HmyXe9o4vtBUIcOh7pPNyyOxnckogJySx
	J481agsGPjkLHIoVRpuk2cw9iqRc1A9rtukfg+KPz5P7xnUExb6eljiEnzAqWeFJl3ducZFl06bYU
	wC9qzUpwFAEFi0fQKY/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2h3-0003r7-5Q; Wed, 12 Jun 2019 12:49:33 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2gm-0003oH-Ro
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:49:18 +0000
Received: by mail-ed1-x541.google.com with SMTP id a14so23683672edv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 05:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=DjdxsQABmfK1WPNklnYNFmVAbkT5O5+cSSTNMpg6oUc=;
 b=iWWcW//lap4DHEyJrA1Sl2TUhOIB7DPFDIWTr9DG8KDrvKpkdWzOoKJJAm0JXgV4hI
 xpzVsa0Fx1UKfJ8kRh95QMRBD9HVtr3QNWW+DMb6IM8S15tOIqSAg40+NZx4fa8KGSm5
 AukZlLpx8ZITFjeCypSdnMnRMlvGTchYw3NkuRMyjAAge+smAfIZiI+NbxH4uKfxzNC3
 vkn0k1D/mZyneKnPhzPelu3FXc0K1AmMLrW9F/UpIxB6sB1y7K1o4dHKn6Eeb8Nyw/Bo
 v/qV0ApNiqcMT7Qa1KsDcawoEXkMQgh4Nx+MuPYkfIK6iQBn/xFpFcMILVBxNIbOtuaN
 mmew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=DjdxsQABmfK1WPNklnYNFmVAbkT5O5+cSSTNMpg6oUc=;
 b=kSYNcF2L7itcaO6a2Fa9SnhfUwQZHw1EaB+pkHOz2/UD5WeFmeDX+qzJhPCzBdnRXL
 t04esVweffEKls48XBNgnUvrhct7ABZ3k9mx3IIfqHkFv7sRQjLPvpQxIkpoK6tk8q8A
 t78vzVizb2ImNls0GQP5n5T1cRSEh2SkSxaytykeAvDLox3g5BymQbyX9ZsjbIfLYoiY
 YR2NRZaNTwP1vxl85uMsQVtioIG4evepxJ3U5WflbXatNtKx7cLu2b6ihKERtDokqRVO
 YStR8Lhuuy7q7PpPQviKVc8PYekWW2KzZFpPUm39gjaQITaoPDcuIgRsLExQyTpx0btC
 nSpA==
X-Gm-Message-State: APjAAAVAsqWBZgPvwH68myRZc+9AOlfL1gA34B8RmJOqmpeqpEo7Bn2N
 /VeldJrx8DgiBIDCQ6eWY185GFI6du1pP4Tt1gM=
X-Google-Smtp-Source: APXvYqwzPSHRjKrf/iW4ZovRxWbXKd8s+2QANDut49hAcIR5dxKoAQpg5uf97WL9Vcr46DHFfN4VvGBcBWS58XxzvSA=
X-Received: by 2002:a50:ba09:: with SMTP id g9mr68765111edc.172.1560343754476; 
 Wed, 12 Jun 2019 05:49:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190606090612.16685-1-igor.opaniuk@gmail.com>
 <3b84f3cc6cd5399f25ebd8e1c8559c58@agner.ch>
In-Reply-To: <3b84f3cc6cd5399f25ebd8e1c8559c58@agner.ch>
From: Igor Opaniuk <igor.opaniuk@gmail.com>
Date: Wed, 12 Jun 2019 15:49:03 +0300
Message-ID: <CAByghJZJzFN9c9V-o=SV0z07++RPqsB0R8MTsovbtLr3vqJgyw@mail.gmail.com>
Subject: Re: [PATCH 1/1] ARM: dts: imx6ull-colibri: enable UHS-I for USDHC1
To: Stefan Agner <stefan@agner.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_054916_902556_7DD4CA88 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (igor.opaniuk[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marcel Ziswiler <marcel@ziswiler.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3RlZmFuLAoKT24gV2VkLCBKdW4gMTIsIDIwMTkgYXQgMzoxNyBQTSBTdGVmYW4gQWduZXIg
PHN0ZWZhbkBhZ25lci5jaD4gd3JvdGU6Cj4KPiBPbiAwNi4wNi4yMDE5IDExOjA2LCBJZ29yIE9w
YW5pdWsgd3JvdGU6Cj4gPiBGcm9tOiBJZ29yIE9wYW5pdWsgPGlnb3Iub3Bhbml1a0B0b3JhZGV4
LmNvbT4KPiA+Cj4gPiBBbGxvd3MgdG8gdXNlIHRoZSBTRCBpbnRlcmZhY2UgYXQgYSBoaWdoZXIg
c3BlZWQgbW9kZSBpZiB0aGUgY2FyZAo+ID4gc3VwcG9ydHMgaXQuIEZvciB0aGlzIHRoZSBzaWdu
YWxpbmcgdm9sdGFnZSBpcyBzd2l0Y2hlZCBmcm9tIDMuM1YgdG8KPiA+IDEuOFYgdW5kZXIgdGhl
IHVzZGhjMSdzIGRyaXZlcnMgY29udHJvbC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBJZ29yIE9w
YW5pdWsgPGlnb3Iub3Bhbml1a0B0b3JhZGV4LmNvbT4KPiA+IC0tLQo+ID4gIGFyY2gvYXJtL2Jv
b3QvZHRzL2lteDZ1bC5kdHNpICAgICAgICAgICAgICAgICAgfCAgNCArKysrCj4gPiAgYXJjaC9h
cm0vYm9vdC9kdHMvaW14NnVsbC1jb2xpYnJpLWV2YWwtdjMuZHRzaSB8IDExICsrKysrKysrKy0t
Cj4gPiAgYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsbC1jb2xpYnJpLmR0c2kgICAgICAgICB8ICA2
ICsrKysrKwo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLmR0c2kg
Yi9hcmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRzaQo+ID4gaW5kZXggZmMzODhiODRiZjIyLi45
MWEwY2VkNDRlMjcgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRz
aQo+ID4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLmR0c2kKPiA+IEBAIC04NTcsNiAr
ODU3LDggQEAKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmY2xr
cyBJTVg2VUxfQ0xLX1VTREhDMT4sCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICA8JmNsa3MgSU1YNlVMX0NMS19VU0RIQzE+Owo+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiaXBnIiwgImFoYiIsICJwZXIiOwo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgZnNsLHR1bmluZy1zdGVwPSA8Mj47Cj4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBmc2wsdHVuaW5nLXN0YXJ0LXRhcCA9IDwyMD47Cj4gPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBidXMtd2lkdGggPSA8ND47Cj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4gICAgICAgICAg
ICAgICAgICAgICAgIH07Cj4gPiBAQCAtODcwLDYgKzg3Miw4IEBACj4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICA8JmNsa3MgSU1YNlVMX0NMS19VU0RIQzI+Owo+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiaXBnIiwgImFoYiIs
ICJwZXIiOwo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYnVzLXdpZHRoID0gPDQ+
Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZnNsLHR1bmluZy1zdGVwPSA8Mj47
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmc2wsdHVuaW5nLXN0YXJ0LXRhcCA9
IDwyMD47Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJs
ZWQiOwo+ID4gICAgICAgICAgICAgICAgICAgICAgIH07Cj4gPgo+ID4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtL2Jvb3QvZHRzL2lteDZ1bGwtY29saWJyaS1ldmFsLXYzLmR0c2kKPiA+IGIvYXJjaC9h
cm0vYm9vdC9kdHMvaW14NnVsbC1jb2xpYnJpLWV2YWwtdjMuZHRzaQo+ID4gaW5kZXggMDA2Njkw
ZWE5OGMwLi43ZGM3NzcwY2Y1MmMgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9p
bXg2dWxsLWNvbGlicmktZXZhbC12My5kdHNpCj4gPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9p
bXg2dWxsLWNvbGlicmktZXZhbC12My5kdHNpCj4gPiBAQCAtMTQ1LDEzICsxNDUsMjAgQEAKPiA+
ICB9Owo+ID4KPiA+ICAmdXNkaGMxIHsKPiA+IC0gICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVs
dCI7Cj4gPiArICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiLCAic3RhdGVfMTAwbWh6Iiwg
InN0YXRlXzIwMG1oeiIsICJzbGVlcCI7Cj4gPiAgICAgICBwaW5jdHJsLTAgPSA8JnBpbmN0cmxf
dXNkaGMxICZwaW5jdHJsX3NudnNfdXNkaGMxX2NkPjsKPiA+IC0gICAgIG5vLTEtOC12Owo+ID4g
KyAgICAgcGluY3RybC0xID0gPCZwaW5jdHJsX3VzZGhjMV8xMDBtaHogJnBpbmN0cmxfc252c191
c2RoYzFfY2Q+Owo+ID4gKyAgICAgcGluY3RybC0yID0gPCZwaW5jdHJsX3VzZGhjMV8xMDBtaHog
JnBpbmN0cmxfc252c191c2RoYzFfY2Q+Owo+Cj4gU2hvdWxkIHRoYXQgbm90IGJlIHBpbmN0cmxf
dXNkaGMxXzIwMG1oej8KPgoKQ29ycmVjdCwgdGhhbmtzIGZvciBwb2ludGluZyB0aGlzIG91dC4K
VGFraW5nIGludG8gYWNjb3VudCB0aGF0IHRoZSBwYXRjaCB3YXMgYWxyZWFkeSBhY2NlcHRlZCBi
eSBTaGF3biwgd2lsbApzZW5kIGFub3RoZXIgdG8gZml4IHRoaXMgdHlwbyBBU0FQIChhZGRlZCB0
byBteSB0b2RvIGxpc3QpLgoKVGhhbmtzCgo+IC0tCj4gU3RlZmFuCj4KPiA+ICsgICAgIHBpbmN0
cmwtMyA9IDwmcGluY3RybF91c2RoYzEgJnBpbmN0cmxfc252c191c2RoYzFfc2xlZXBfY2Q+Owo+
ID4gICAgICAgY2QtZ3Bpb3MgPSA8JmdwaW81IDAgR1BJT19BQ1RJVkVfTE9XPjsKPiA+ICAgICAg
IGRpc2FibGUtd3A7Cj4gPiAgICAgICB3YWtldXAtc291cmNlOwo+ID4gICAgICAga2VlcC1wb3dl
ci1pbi1zdXNwZW5kOwo+ID4gICAgICAgdm1tYy1zdXBwbHkgPSA8JnJlZ18zdjM+Owo+ID4gKyAg
ICAgdnFtbWMtc3VwcGx5ID0gPCZyZWdfc2QxX3ZtbWM+Owo+ID4gKyAgICAgc2QtdWhzLXNkcjEy
Owo+ID4gKyAgICAgc2QtdWhzLXNkcjI1Owo+ID4gKyAgICAgc2QtdWhzLXNkcjUwOwo+ID4gKyAg
ICAgc2QtdWhzLXNkcjEwNDsKPiA+ICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+ICB9Owo+ID4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bGwtY29saWJyaS5kdHNpCj4gPiBi
L2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bGwtY29saWJyaS5kdHNpCj4gPiBpbmRleCA5YWQxZGEx
NTk3NjguLmQ1NjcyOGYwM2MzNSAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lt
eDZ1bGwtY29saWJyaS5kdHNpCj4gPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2dWxsLWNv
bGlicmkuZHRzaQo+ID4gQEAgLTU0NSw2ICs1NDUsMTIgQEAKPiA+ICAgICAgICAgICAgICAgPjsK
PiA+ICAgICAgIH07Cj4gPgo+ID4gKyAgICAgcGluY3RybF9zbnZzX3VzZGhjMV9zbGVlcF9jZDog
c252cy11c2RoYzEtY2QtZ3JwLXNscCB7Cj4gPiArICAgICAgICAgICAgIGZzbCxwaW5zID0gPAo+
ID4gKyAgICAgICAgICAgICAgICAgICAgIE1YNlVMTF9QQURfU05WU19UQU1QRVIwX19HUElPNV9J
TzAwICAgICAweDAKPiA+ICsgICAgICAgICAgICAgPjsKPiA+ICsgICAgIH07Cj4gPiArCj4gPiAg
ICAgICBwaW5jdHJsX3NudnNfd2lmaV9wZG46IHNudnMtd2lmaS1wZG4tZ3JwIHsKPiA+ICAgICAg
ICAgICAgICAgZnNsLHBpbnMgPSA8Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgTVg2VUxMX1BB
RF9CT09UX01PREUxX19HUElPNV9JTzExICAgICAgIDB4MTQKCgoKLS0gCkJlc3QgcmVnYXJkcyAt
IEZyZXVuZGxpY2hlIEdyw7xzc2UgLSBNZWlsbGV1cmVzIHNhbHV0YXRpb25zCgpJZ29yIE9wYW5p
dWsKCm1haWx0bzogaWdvci5vcGFuaXVrQGdtYWlsLmNvbQpza3lwZTogaWdvci5vcGFueXVrCisz
ODAgKDkzKSA4MzYgNDAgNjcKaHR0cDovL3VhLmxpbmtlZGluLmNvbS9pbi9pb3Bhbml1awoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
