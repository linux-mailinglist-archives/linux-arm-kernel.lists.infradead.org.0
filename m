Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4821F96FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 14:47:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zUfL1fd9RX/v6a+yxjnL/Cle2NlvrqGUvOnJU+DA0PI=; b=ebT6WuKc0F2QXj
	YO653ZEnjll4dVzJ2KCbCxP9Xaf83zYs0BORDBHPv6cIgwZbbcEI42uZYDB4X/Iyc5r8ZVssidyKm
	ygx/RJWQBqmlUOYn1g9SuW5yfAqPH17yQSD0b2EkiO/gpcnoxoyiCqhBbhlEQ3XVvS4F50wjepLFH
	FlCrrNKcDdaIOaJmrjhq8/V5nnOBtmZVl/KE2Ig5WxaYDpnc75GhqciMosxb2GfucEIP+4sT6YMxl
	Eyal9/8eAbYSd7vEltdNDjMApjyVXFMANx5p7uq3QANO9ntDdQaZkm+L4R5f5mdpkxmkAPp1vS7bp
	FK/t5Dkotd9EFEgX5k7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkoW9-00053X-D8; Mon, 15 Jun 2020 12:47:13 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkoVn-0004wp-7Y
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 12:46:52 +0000
Received: by mail-il1-x141.google.com with SMTP id e11so15096415ilr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 05:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Ex4ahxPfnRJtHhHWkEbgHyzFGza84a5R1pjXHVBwv1k=;
 b=qKfY5RcZwunYOBi349HPaH9pICMNxGTeYVJuxlg2OASzshTxktOUuR2xF4VOxC+gPh
 /m6dq5sc5Zq6O9NEbWCvAuasEFmQUvbH+z36wkqubUp+gJ7qQkatmsqJhbE5j0ETipu6
 oxMEy6xor4+CfJZXMtsT+BIR/6iVSk6EYbBAoq1SVtmUJyj61610y5a1sULkMdxWnKDv
 +mjIRlj519zIpp2eNy3kqE/t/28gLV8iqkjXml8KnpSgTkgGRT/hEy938A8SdKMvDdBN
 DKWdA5hwlb4r2IOpBjsYa80zrdpp4UJ8hBAAUjdryK1VjIj++blPq6733ZB6oNLJFLCa
 yE9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ex4ahxPfnRJtHhHWkEbgHyzFGza84a5R1pjXHVBwv1k=;
 b=DcaYJ1SXW3ZgVSoyJk/LTLl8qi38s/858yzIMfvUxM4a0O0h0bjIucLktVOUSTDRUd
 G1//JzxqhxrXgNqcWHL7+JbPzJISbWHahf9GTOFAgzlE01iVjI/+HbTD/hOK+/y6sAh6
 icN6zy/D7yk4qziueU7u6xgQX1V2SZK7sd9pTiYOFjcfKQVPbnTu6c3PakBjslMbpXmp
 jUWW7z4DHZM742O/0KmeFWt+d243X6Wu9++vQ1REInLru5Wh+wq458HWILvc5wFDWUrH
 cBfUCsG49++uLMWH0xEw4oUtHnoEXK5Vw43xDmj0kPlny+UQ7AypvBN5rummgswzEqLi
 20Qw==
X-Gm-Message-State: AOAM531WOfFAEibwEVTLXcoEdsSaTHiIj36s3py9ZtLjDLOdFJRjo26v
 wsiXQpVyO042T6RWgvjllToXjvV0WJbcrju+lKI=
X-Google-Smtp-Source: ABdhPJziLUuk2qoHcHqUNeIaqipAR7Yne8rAu4BGDaYRpWHBs0TR8DrvYEjvYzreMLe1BHbse4edbW5ExC9KB2ifCwA=
X-Received: by 2002:a05:6e02:12b3:: with SMTP id
 f19mr27719137ilr.13.1592225209461; 
 Mon, 15 Jun 2020 05:46:49 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590017578.git.syednwaris@gmail.com>
 <CAMpxmJUrC270rgWcADYruqA_qVeh9-N8mCVPWgJkL-8kU2bO1A@mail.gmail.com>
In-Reply-To: <CAMpxmJUrC270rgWcADYruqA_qVeh9-N8mCVPWgJkL-8kU2bO1A@mail.gmail.com>
From: Syed Nayyar Waris <syednwaris@gmail.com>
Date: Mon, 15 Jun 2020 18:16:37 +0530
Message-ID: <CACG_h5pP1ffeG4E-Vz_C+cX=2PGaHvNBPe+sUpP7sbfMC-0sdQ@mail.gmail.com>
Subject: Re: [PATCH v7 0/4] Introduce the for_each_set_clump macro
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_054651_306033_0CC22B5E 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [syednwaris[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-Arch <linux-arch@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-gpio <linux-gpio@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Michal Simek <michal.simek@xilinx.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, rrichter@marvell.com,
 linux-pm <linux-pm@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Zhang Rui <rui.zhang@intel.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgMjUsIDIwMjAgYXQgMzowNiBQTSBCYXJ0b3N6IEdvbGFzemV3c2tpCjxiZ29s
YXN6ZXdza2lAYmF5bGlicmUuY29tPiB3cm90ZToKPgo+IG5pZWR6LiwgMjQgbWFqIDIwMjAgbyAw
NzowMCBTeWVkIE5heXlhciBXYXJpcyA8c3llZG53YXJpc0BnbWFpbC5jb20+IG5hcGlzYcWCKGEp
Ogo+ID4KPiA+IEhlbGxvIExpbnVzLAo+ID4KPiA+IFNpbmNlIHRoaXMgcGF0Y2hzZXQgcHJpbWFy
aWx5IGFmZmVjdHMgR1BJTyBkcml2ZXJzLCB3b3VsZCB5b3UgbGlrZQo+ID4gdG8gcGljayBpdCB1
cCB0aHJvdWdoIHlvdXIgR1BJTyB0cmVlPwo+ID4KPiA+IFRoaXMgcGF0Y2hzZXQgaW50cm9kdWNl
cyBhIG5ldyBnZW5lcmljIHZlcnNpb24gb2YgZm9yX2VhY2hfc2V0X2NsdW1wLgo+ID4gVGhlIHBy
ZXZpb3VzIHZlcnNpb24gb2YgZm9yX2VhY2hfc2V0X2NsdW1wOCB1c2VkIGEgZml4ZWQgc2l6ZSA4
LWJpdAo+ID4gY2x1bXAsIGJ1dCB0aGUgbmV3IGdlbmVyaWMgdmVyc2lvbiBjYW4gd29yayB3aXRo
IGNsdW1wIG9mIGFueSBzaXplIGJ1dAo+ID4gbGVzcyB0aGFuIG9yIGVxdWFsIHRvIEJJVFNfUEVS
X0xPTkcuIFRoZSBwYXRjaHNldCB1dGlsaXplcyB0aGUgbmV3IG1hY3JvCj4gPiBpbiBzZXZlcmFs
IEdQSU8gZHJpdmVycy4KPiA+Cj4gPiBUaGUgZWFybGllciA4LWJpdCBmb3JfZWFjaF9zZXRfY2x1
bXA4IGZhY2lsaXRhdGVkIGEKPiA+IGZvci1sb29wIHN5bnRheCB0aGF0IGl0ZXJhdGVzIG92ZXIg
YSBtZW1vcnkgcmVnaW9uIGVudGlyZSBncm91cHMgb2Ygc2V0Cj4gPiBiaXRzIGF0IGEgdGltZS4K
PiA+Cj4KPiBUaGUgR1BJTyBwYXJ0IGxvb2tzIGdvb2QgdG8gbWUuIExpbnVzOiBob3cgZG8gd2Ug
Z28gYWJvdXQgbWVyZ2luZyBpdAo+IGdpdmVuIHRoZSBiaXRvcHMgZGVwZW5kZW5jeT8KPgo+IEJh
cnQKCkEgbWlub3IgY2hhbmdlIGhhcyBiZWVuIGRvbmUgaW4gcGF0Y2ggWzIvNF0gdG8gZml4IGNv
bXBpbGF0aW9uIHdhcm5pbmcuCktpbmRseSByZWZlciBwYXRjaHNldCB2OCBpbiBmdXR1cmUuCgpU
aGFua3MKU3llZCBOYXl5YXIgV2FyaXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
