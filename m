Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF7E63BA3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 21:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UFkL0/bo/vJDwMDLsy+RAhzmsgmHRN8AVklRCkSTyqs=; b=e6DFS21HODau/y
	Ld9fSALxBak/18moAfbHFSjMSMRhDwZN0YUSn2EDKjL3wBrKFdj5bt+I8QpoBwbbbnE5m24ZQRedE
	SwRw66eIBAjrY/SkMiJjoxXmdjQDuYgVFX6mC4cu45cFv1yhk5e8kTmZvWo5YAokXrARFVDpbGmgC
	HuWWqgZ1HpVZEVtjAL/1i51LDi9jPPNd0EVEmyanBlsn7AM9cBqskYlTYr6ci7Vt0SCNveBrLEet4
	ZJhAWipywyExAqjkiuTr7yFcbgEu/opM7XNmGCv+X498iWEA7YLL7oWFWxWMxPZGKmBjaP+7V3uOC
	4u2x996eHNDw/qGKVp5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkvOT-0004DU-Ma; Tue, 09 Jul 2019 19:03:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkvOL-0004DA-7y
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 19:03:06 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B24C9214AF
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  9 Jul 2019 19:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562698984;
 bh=0jo5om4+437E/wVYZzX/IPiHCmerbPvNANrfOXGIXMY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jMxml/sX3X6XJOkJ8p0MQoVo55ZK2tO4FQTni/thx+rnNUiwrIL0pevZZlNtD95PC
 vRa7UX6UW4znwU2Ictmg1pOLjgIXHhDbyBgnIlIOiM2cc0HNpxGwIu0DzX2YCMVXbF
 a/ZQeSGZbWDhfSWIJN8UVbbLtJ8DmZoI4FcQw1Vg=
Received: by mail-qt1-f182.google.com with SMTP id 44so18891984qtg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 12:03:04 -0700 (PDT)
X-Gm-Message-State: APjAAAXdZDb1YkJApNx3NVNsal9vs7+dLxKutptW7cUzL/BMcwMPZXt/
 em9/L1QZl/25pYgreq8JYs0/aJwFy2BFfId77Q==
X-Google-Smtp-Source: APXvYqzYkgzQHGPEoTbjXo3x8oEYz3oMXwuoYQv7z0jcgLS1/1KzdMPcnqepLkbRqvA7M1DNX1gayfA1Zu25XlgU9Mk=
X-Received: by 2002:a0c:b627:: with SMTP id f39mr21282466qve.72.1562698983919; 
 Tue, 09 Jul 2019 12:03:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190618212229.32302-4-robh@kernel.org>
 <20190709171508.GA10127@Mani-XPS-13-9360>
 <CAL_Jsq+S9FEVq_ikLF2vWS3VkrGueFa8nPnbHhAjThemP+eajA@mail.gmail.com>
 <CAL_Jsq+=rAafEFq+3pUc3A35aLzf9gtgGzj1aheHzoQ+MSiO1Q@mail.gmail.com>
 <20190709184459.GA11886@Mani-XPS-13-9360>
In-Reply-To: <20190709184459.GA11886@Mani-XPS-13-9360>
From: Rob Herring <robh@kernel.org>
Date: Tue, 9 Jul 2019 13:02:52 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKWML51A330RXarJaZReiPNeFdCsMbsse3hoNE1pKqc2A@mail.gmail.com>
Message-ID: <CAL_JsqKWML51A330RXarJaZReiPNeFdCsMbsse3hoNE1pKqc2A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: Convert RDA Micro board/soc bindings to
 json-schema
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_120305_306717_DBB36D4C 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgOSwgMjAxOSBhdCAxMjo0NSBQTSBNYW5pdmFubmFuIFNhZGhhc2l2YW0KPG1h
bml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IE9uIFR1ZSwgSnVsIDA5
LCAyMDE5IGF0IDEyOjQxOjE5UE0gLTA2MDAsIFJvYiBIZXJyaW5nIHdyb3RlOgo+ID4gT24gVHVl
LCBKdWwgOSwgMjAxOSBhdCAxMjoyOSBQTSBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPiB3
cm90ZToKPiA+ID4KPiA+ID4gT24gVHVlLCBKdWwgOSwgMjAxOSBhdCAxMToxNSBBTSBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0KPiA+ID4gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPiB3
cm90ZToKPiA+ID4gPgo+ID4gPiA+IEhpIFJvYiwKPiA+ID4gPgo+ID4gPiA+IE9uIFR1ZSwgSnVu
IDE4LCAyMDE5IGF0IDAzOjIyOjI4UE0gLTA2MDAsIFJvYiBIZXJyaW5nIHdyb3RlOgo+ID4gPiA+
ID4gQ29udmVydCBSREEgTWljcm8gU29DIGJpbmRpbmdzIHRvIERUIHNjaGVtYSBmb3JtYXQgdXNp
bmcganNvbi1zY2hlbWEuCj4gPiA+ID4gPgo+ID4gPiA+ID4gQ2M6ICJBbmRyZWFzIEbDpHJiZXIi
IDxhZmFlcmJlckBzdXNlLmRlPgo+ID4gPiA+ID4gQ2M6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8
bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Cj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiBB
bmRyZWFzLCBVcGRhdGUgdGhlIGxpY2Vuc2Ugb24gdGhpcyBvbmUgdG9vIHRvIGR1YWwgbGljZW5z
ZWQgaWYgeW91Cj4gPiA+ID4gPiB3YW50Lgo+ID4gPiA+Cj4gPiA+ID4gSSdtIGZpbmUgd2l0aCBH
UEwtMi4wLiBTaW5jZSB0aGVyZSBpc24ndCBhbnkgb3RoZXIgUkRBIHNwZWNpZmljIHBhdGNoZXMK
PiA+ID4gPiBpbiBteSB0cmVlLCB5b3Ugd2FudCB0byB0YWtlIHRoaXMgcGF0Y2g/IEVsc2UgSSBo
YXZlIHRvIHNlbmQgdGhlIFB1bGwKPiA+ID4gPiBSZXF1ZXN0IHRvIEFSTSBTb0MgZm9sa3Mgd2l0
aCB0aGlzIHBhdGNoIGFsb25lLgo+ID4gPgo+ID4gPiBPa2F5LCBJIGNhbiB0YWtlIGl0LiBUaGUg
cHJlZmVyZW5jZSBpcyBhY3R1YWxseSBkdWFsIGxpY2Vuc2VkIHdoaWNoIGlzCj4gPiA+IHdoeSBJ
IGFza2VkLCBidXQgdGhhdCBjYW4gYmUgZG9uZSBsYXRlci4KPiA+Cj4gPiBBbmQgaXMgdGhhdCBh
biBhY2sgZnJvbSB5b3U/Cj4KPiBZZXMsIGhlcmUgaXMgdGhlIGZvcm1hbCB0YWc6Cj4KPiBBY2tl
ZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJv
Lm9yZz4KPgo+IEFsc28sIEFuZHJlYXMgYXNrZWQgdG8gc3dpdGNoIHRvIER1YWwgbGljZW5zZSBm
b3IgQWN0aW9ucyBwbGF0Zm9ybSBzaW5jZSBoZQo+IGlzIHRoZSBtYWludGFpbmVyIG9mIGl0LiBC
dXQgZm9yIFJEQSBoZSBpcyBub3QsIHNvIEkgZG9uJ3QgdGhpbmsgdGhlcmUgd2lsbAo+IGJlIGEg
Y29uY2VybiBoZXJlIChJJ20gZmluZSB3aXRoIEdQTC0yLjApLgoKSXQncyBhdXRob3JzaGlwIHRo
YXQgbWF0dGVycyBhbmQgQW5kcmVhcyB3YXMgdGhlIGF1dGhvciBvbiB0aGUKb3JpZ2luYWwgZmls
ZS4gVGhlIG1haW50YWluZXIgb25seSBoYXMgYSBzYXkgaW4gd2hhdCBsaWNlbnNlIHRoZXknbGwK
YWNjZXB0LgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
