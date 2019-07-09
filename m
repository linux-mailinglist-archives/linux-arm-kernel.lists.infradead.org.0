Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE63163B3D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 20:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fTyOKvE3HKKH9xP4f/FqagaCljMebrgLRIe79ZBWgKw=; b=k6QWfs0tt37kyo
	Cad7UCtJqxF/p9+Flk8oi/PC55YZWFZoqDatw2yePQyffzZ+hvY6nundclVLKkbfAxwKsD8zHVQ5A
	HNx7n61a447HjlpR3icEHWscteH9bY+jcU6UqGIx/vhRsLuH4lYDL1LNqnuuW74H4CCPKXc1k6vAX
	fZMZ4VGcUMBpZewTLhzTJxQrzckLSmj53IJQMoLyrXn8Ye5JIhf+NGoA8adnb5HeDXYUM9s/Ta3AM
	6voKsG2jV3mPA41lUbA4c0cS0SOARhnneiTWhfNpHgrwdNsxyz46iXye1WA4sRbZJkqVNoR/YKnoO
	oDpGrDxriRI6VpZ+XDHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkv2X-0003f0-C8; Tue, 09 Jul 2019 18:40:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkv2O-0003ec-4J
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 18:40:25 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4D7B22166E
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  9 Jul 2019 18:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562697623;
 bh=koCanOkVczvS52T73JPshYve2oe1v8MC5CVzIbc6FFw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Rg4Kf+gWwQB7wGTO2ZJxE7BgB+ir2DZV1nIP7CbvwvdjxUxvCug7xMpH3KfH0n2o+
 ufWwlDpcVBFPYzl49Vpcll+lEFdbBJAUXE62gdJHMT2TSAT8hbrryMOYIKzQDC04no
 rsaJH+G7kjHSg0EM5NflHr78qmgCv9XXNXon6Irw=
Received: by mail-qt1-f176.google.com with SMTP id 44so18817411qtg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 11:40:23 -0700 (PDT)
X-Gm-Message-State: APjAAAXgqged5AtY1S0fgms0LKBEz9cjXjxd8BMfKCDbnfHBI7INqxMc
 t2r61oHXAD9phIl1ZWRPLZBvcm1URHEHSQUWtQ==
X-Google-Smtp-Source: APXvYqzVdHUQy7kNe51NTmoxLixeCI0ZKWKOgMr6PxrBeJUBchUQj/myky27Tg2C8vC5QI9tQkIWqsTc+fws8sN66A8=
X-Received: by 2002:ac8:3908:: with SMTP id s8mr19918584qtb.224.1562697622534; 
 Tue, 09 Jul 2019 11:40:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190707132339.GF13340@arks.localdomain>
 <27a3468f-e7b4-e334-5956-8db87d04ff8c@suse.de>
In-Reply-To: <27a3468f-e7b4-e334-5956-8db87d04ff8c@suse.de>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 9 Jul 2019 12:40:11 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLsO2MBOXUj3HT6=08VNsH7Ak_iJnxzdSOK3YF5+R387w@mail.gmail.com>
Message-ID: <CAL_JsqLsO2MBOXUj3HT6=08VNsH7Ak_iJnxzdSOK3YF5+R387w@mail.gmail.com>
Subject: Re: [PATCH 5/6] dt-bindings: arm: Document RTD1296
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_114024_194057_A6A44A7C 
X-CRM114-Status: GOOD (  15.63  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Aleix Roca Nonell <kernelrocks@gmail.com>, Marc Zyngier <marc.zyngier@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBKdWwgNywgMjAxOSBhdCA3OjMxIEFNIEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJA
c3VzZS5kZT4gd3JvdGU6Cj4KPiBBbSAwNy4wNy4xOSB1bSAxNToyMyBzY2hyaWViIEFsZWl4IFJv
Y2EgTm9uZWxsOgo+ID4gQWRkIGJpbmRpbmdzIGZvciBSZWxhdGVrIFJURDEyOTYgU29DLiBBbmQg
dGhlIEJhbm5hbmEgUGkgQlBJLVcyIGJvYXJkLgo+Cj4gIlJlYWx0ZWsiLCAiQmFuYW5hIgo+Cj4g
Pgo+ID4gU2lnbmVkLW9mZi1ieTogQWxlaXggUm9jYSBOb25lbGwgPGtlcm5lbHJvY2tzQGdtYWls
LmNvbT4KPiA+IC0tLQo+ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0v
cmVhbHRlay50eHQgfCAxMyArKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEzIGlu
c2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9yZWFsdGVrLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9hcm0vcmVhbHRlay50eHQKPiA+IGluZGV4IDk1ODM5ZTE5YWU5Mi4uNzhkYTEwMDRkMzhj
IDEwMDY0NAo+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9y
ZWFsdGVrLnR4dAo+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9yZWFsdGVrLnR4dAo+ID4gQEAgLTIwLDMgKzIwLDE2IEBAIFJvb3Qgbm9kZSBwcm9wZXJ0eSBj
b21wYXRpYmxlIG11c3QgY29udGFpbiwgZGVwZW5kaW5nIG9uIGJvYXJkOgo+ID4gIEV4YW1wbGU6
Cj4gPgo+ID4gICAgICBjb21wYXRpYmxlID0gInppZG9vLHg5cyIsICJyZWFsdGVrLHJ0ZDEyOTUi
Owo+ID4gKwo+ID4gKwo+ID4gK1JURDEyOTYgU29DCj4gPiArPT09PT09PT09PT0KPiA+ICsKPiA+
ICtSZXF1aXJlZCByb290IG5vZGUgcHJvcGVydGllczoKPiA+ICsKPiA+ICsgLSBjb21wYXRpYmxl
IDogIG11c3QgY29udGFpbiAicmVhbHRlayxydGQxMjk2Igo+Cj4gSSdtIHByZXR0eSBzdXJlIHRo
YXQgSSBoYWQgc3VjaCBhIHBhdGNoIG9uIHRoZSBsaXN0IGFscmVhZHksIHNvIHRoaXMgaXMKPiBs
YWNraW5nIG15IGF1dGhvcnNoaXAuCj4KPiBBbHNvLCBSb2IgaGFzIGJlZW4gd29ya2luZyB0byBj
b252ZXJ0IHRoZXNlIHRvIFlBTUwsIHNvIHdlIHNob3VsZAo+IHByb2JhYmx5IGNvbXBsZXRlIHRo
YXQgZmlyc3QgYW5kIHRoZW4gYWRkIFJURDEyOTYgcHJvcGVybHkuCgpJJ20ganVzdCB3YWl0aW5n
IGZvciB5b3UgdG8gZWl0aGVyIGFjayBpdCBvciBhcHBseSBpdC4KClJvYgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
