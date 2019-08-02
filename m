Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A417802E4
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 00:38:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fd6nOSCvED9y8Gh1SCdxb+5myy+mwextK+53WZmMs/w=; b=VgZliGkHdytucU
	7KlrdCPrZv4JYB9EmgmnDttV+Gl0W/jCxz7KeyePgwrSE3SIx5yHqcu/8QJZ0XI//mN8Va2j/o9tG
	x4IL5G6N0x7deU6M7YQoF6UseLjT4zv/EZnj5Ol8wUx7qyodOK4pz3hGazR9YGY1AQcbp7pHhtxHR
	Npz/gwkuf9cURJVRk0P4XKWwizJn6kT/PVJuMTbOrHBpz9UL1bd5oz7PLQ7jiENc4QjFAq3YdR7NR
	8+8aAVkSXAcqdjhEN45E/oBOyjh8tyL0PA/TeTH3EgL6u/odj+x+cMjouNFbUlFr8ut+N/2LW2WrX
	QMEMNIhGnEr079RokVUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htgC7-0006wN-Mo; Fri, 02 Aug 2019 22:38:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htgBx-0006w3-8K
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 22:38:30 +0000
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B62F22173E
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  2 Aug 2019 22:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564785508;
 bh=XfJixi4xuzcnFxHwrFJTVHUtmkreXUi87OxBiFEUMKo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=aSn893t31UbGBbwVOIjEJFzyTo05qyeU8Z1mVQoWKRKN/V8SKHEt7p8lcu4bhQdoI
 LGazNnJJ3nnOiQMaYlF+4ZZ7UFOSPAr/X86UuwCexuT9qWvzpaVVgUfRtpyhc82OrR
 U8FhSJeICQX8MDSwmuXnFtbftTCZliA7haLbg9/w=
Received: by mail-qk1-f182.google.com with SMTP id s145so56052772qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 15:38:28 -0700 (PDT)
X-Gm-Message-State: APjAAAXVklbQRGn0yg31NKoOTzjSO0HtWI81AnulgGwityHWqPpDFdtp
 0HWb2Cx4euWfCnr5Az7wmyzvoYfvGFbO6rxjwg==
X-Google-Smtp-Source: APXvYqzvziBgm/niAlkvKF2WYa8Hbu7XGWy01L47nrb5nZ3ZHKliqGHMB7nfWXJln2n9jPWHICNYT9LuhALcS/C0eLI=
X-Received: by 2002:a37:a48e:: with SMTP id
 n136mr94788423qke.223.1564785507833; 
 Fri, 02 Aug 2019 15:38:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190802194702.30249-1-stefan-gabriel.mirea@nxp.com>
 <20190802194702.30249-2-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20190802194702.30249-2-stefan-gabriel.mirea@nxp.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 2 Aug 2019 16:38:16 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL++GZBxczxePni9ysNq06kObB4EzJEi1e4M=PurPZFgQ@mail.gmail.com>
Message-ID: <CAL_JsqL++GZBxczxePni9ysNq06kObB4EzJEi1e4M=PurPZFgQ@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: arm: fsl: Add the S32V234-EVB board
To: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_153829_323245_7607B5B5 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Eddy Petrisor <eddy.petrisor@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBBdWcgMiwgMjAxOSBhdCAxOjQ3IFBNIFN0ZWZhbi1nYWJyaWVsIE1pcmVhCjxzdGVm
YW4tZ2FicmllbC5taXJlYUBueHAuY29tPiB3cm90ZToKPgo+IEZyb206IEVkZHkgUGV0cmnImW9y
IDxlZGR5LnBldHJpc29yQG54cC5jb20+Cj4KPiBBZGQgZW50cnkgZm9yIHRoZSBOWFAgUzMyVjIz
NCBDdXN0b21lciBFdmFsdWF0aW9uIEJvYXJkIHRvIHRoZSBib2FyZC9Tb0MKPiBiaW5kaW5ncy4K
Pgo+IFNpZ25lZC1vZmYtYnk6IEVkZHkgUGV0cmnImW9yIDxlZGR5LnBldHJpc29yQG54cC5jb20+
Cj4gU2lnbmVkLW9mZi1ieTogU3RlZmFuLUdhYnJpZWwgTWlyZWEgPHN0ZWZhbi1nYWJyaWVsLm1p
cmVhQG54cC5jb20+Cj4gLS0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9h
cm0vZnNsLnlhbWwgfCA2ICsrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
Cj4KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9m
c2wueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vZnNsLnlhbWwK
PiBpbmRleCA3Mjk0YWMzNmY0YzAuLjEwNGQ2MGExMTE3NyAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2ZzbC55YW1sCj4gKysrIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbAo+IEBAIC0zMDksNCArMzA5LDEw
IEBAIHByb3BlcnRpZXM6Cj4gICAgICAgICAgICAgICAgLSBmc2wsbHMyMDg4YS1yZGIKPiAgICAg
ICAgICAgIC0gY29uc3Q6IGZzbCxsczIwODhhCj4KPiArICAgICAgLSBkZXNjcmlwdGlvbjogUzMy
VjIzNCBDdXN0b21lciBFdmFsdWF0aW9uIEJvYXJkCgpNb3N0IG9mIHRoZSBlbnRyaWVzIGluIHRo
aXMgZmlsZSBhcmUgZm9yIGFsbCB0aGUgYm9hcmRzIGZvciBhbiBTb0MuCgo+ICsgICAgICAgIGl0
ZW1zOgo+ICsgICAgICAgICAgLSBlbnVtOgo+ICsgICAgICAgICAgICAgIC0gZnNsLHMzMnYyMzQt
ZXZiCgpJZiB0aGF0J3Mgbm90IGdvaW5nIHRvIGJlIHRoZSBjYXNlIGhlcmUsIHlvdSBjYW4gdXNl
ICdjb25zdCcgaGVyZS4KCj4gKyAgICAgICAgICAtIGNvbnN0OiBmc2wsczMydjIzNAo+ICsKPiAg
Li4uCj4gLS0KPiAyLjIyLjAKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
