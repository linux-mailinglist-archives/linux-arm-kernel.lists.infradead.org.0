Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A01C1F5045
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 10:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5A+A2EcqM4Cs/JG5LcxmzC7bp0Fg2RlFVs4NUb1EVfo=; b=Q9Gy9jg9ICgrPJ
	ucowRdHbtokZHuCnP9Ak4pVtuMCGdOn7NrwbCHL9mMRaxEqhV9DXrkgS9sOSrh4oDsnuWo24bxk3/
	+zVcekruGLsDT7AOBWg73xgqPf77BFBOvZH/RiY/BenaJuaIjVJpRCs5FOQL4WmEB91bIRl9ntwWO
	GktdhvV2ehxqlxnza04S+mHPn52zusxU4uQAkmO2qVfQK685zf0DzqG35s82d+88gulS5uFyMHaYk
	L3Y+jeW732JYhy9ZZQ3ZL0a/T0xxLK+cn2jyWfQukZ2tN8SV/oHg16E/Fjns02ynPuVnRMknz7Aet
	nqKvn4vJB8POkQJ22DUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiw7M-0008LA-Od; Wed, 10 Jun 2020 08:29:52 +0000
Received: from mail-ej1-f65.google.com ([209.85.218.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiw7F-0008Ki-9T
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 08:29:46 +0000
Received: by mail-ej1-f65.google.com with SMTP id f7so1591640ejq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 01:29:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=FDSNWzEU1BCo6wG/cdIC3mu6f2xb06oIyPX8U4p2La0=;
 b=Gxl9XKOZ1E9io58f7YcIe4vPEqZ5po75MQ9cD+5+HGEDCHmj4e8/nBZQt4WliSodsQ
 cS2oYBnJSnIsWTx+cv8UbWZaLazfhuw7o0RCJTt4h6D9aB52D7NIYlaEGfbidj26nvRy
 fViqc5PCrQSFwCENqODlbsWDFj4i0E+yhGz7bEBvTbCaQihujRg6O5l63c4cqQaigr3K
 pb3QrJnj5fxy9gAVXMYqBDZtZlug4bDHlJaue92EYeZal98nhdsC/yNLChRQ2S2RMIrG
 9uMxr+twyrMtYzgoPaVAL+ViSPWypTvWIY2PyBFsWQcp7KySpOWylq3Ihh4PaDXYE5Qw
 /j5Q==
X-Gm-Message-State: AOAM530RBvDVUInGmY3Sj3YruOHEZhdeRxNw5ZRhTRK9+YLRs6x15A8i
 d1PaD2BqqYe0oi9pCa1qXzSy38oZXtSB+i4G7ns=
X-Google-Smtp-Source: ABdhPJxOEtPuPOmj6dC8S4CZ/xJTRRt5rhm7PcV4cCO58Wg9TMbFQP8d/SywDEkq0BNkQlzSPKMmCP8/XoHZ7bIpl94=
X-Received: by 2002:a17:907:4096:: with SMTP id
 nm6mr2343355ejb.4.1591777782737; 
 Wed, 10 Jun 2020 01:29:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200609113049.4035426-1-noltari@gmail.com>
 <20200609113049.4035426-3-noltari@gmail.com>
 <1367fcf3-24ed-9106-a329-da5f8e168e17@gmail.com>
 <3E897527-55EB-47DB-99ED-C737725F0F9E@gmail.com>
In-Reply-To: <3E897527-55EB-47DB-99ED-C737725F0F9E@gmail.com>
From: =?UTF-8?Q?Philippe_Mathieu=2DDaud=C3=A9?= <f4bug@amsat.org>
Date: Wed, 10 Jun 2020 10:29:31 +0200
Message-ID: <CAAdtpL7dUZ2RqkrqSxiZxDbp4qY-KdtSc7CyuR+rbnRRA2Yvrw@mail.gmail.com>
Subject: Re: [PATCH 2/2] clk: bcm63xx-gate: add BCM6318 support
To: =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_012945_328308_6D83A01F 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [philippe.mathieu.daude[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 kbuild test robot <lkp@intel.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 open list <linux-kernel@vger.kernel.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Jonas Gorski <jonas.gorski@gmail.com>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBXZWQsIEp1biAxMCwgMjAyMCBhdCA4OjEzIEFNIMOBbHZhcm8gRmVybsOhbmRleiBS
b2phcwo8bm9sdGFyaUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSGkgRmxvcmlhbiwKPgo+ID4gRWwg
MTAganVuIDIwMjAsIGEgbGFzIDQ6MjcsIEZsb3JpYW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21h
aWwuY29tPiBlc2NyaWJpw7M6Cj4gPgo+ID4KPiA+Cj4gPiBPbiA2LzkvMjAyMCA0OjMwIEFNLCDD
gWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgd3JvdGU6Cj4gPj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
Y2xrX2JjbTYzeHhfdGFibGVfZW50cnkgYmNtNjMxOF9jbG9ja3NbXSA9IHsKPiA+PiArICAgIHsg
Lm5hbWUgPSAiYWRzbF9hc2IiLCAuYml0ID0gMCwgfSwKPiA+PiArICAgIHsgLm5hbWUgPSAidXNi
X2FzYiIsIC5iaXQgPSAxLCB9LAo+ID4+ICsgICAgeyAubmFtZSA9ICJtaXBzX2FzYiIsIC5iaXQg
PSAyLCB9LAo+ID4+ICsgICAgeyAubmFtZSA9ICJwY2llX2FzYiIsIC5iaXQgPSAzLCB9LAo+ID4+
ICsgICAgeyAubmFtZSA9ICJwaHltaXBzX2FzYiIsIC5iaXQgPSA0LCB9LAo+ID4+ICsgICAgeyAu
bmFtZSA9ICJyb2Jvc3dfYXNiIiwgLmJpdCA9IDUsIH0sCj4gPj4gKyAgICB7IC5uYW1lID0gInNh
cl9hc2IiLCAuYml0ID0gNiwgfSwKPiA+PiArICAgIHsgLm5hbWUgPSAic2RyX2FzYiIsIC5iaXQg
PSA3LCB9LAo+ID4+ICsgICAgeyAubmFtZSA9ICJzd3JlZ19hc2IiLCAuYml0ID0gOCwgfSwKPiA+
PiArICAgIHsgLm5hbWUgPSAicGVyaXBoX2FzYiIsIC5iaXQgPSA5LCB9LAo+ID4+ICsgICAgeyAu
bmFtZSA9ICJjcHVidXMxNjAiLCAuYml0ID0gMTAsIH0sCj4gPj4gKyAgICB7IC5uYW1lID0gImFk
c2wiLCAuYml0ID0gMTEsIH0sCj4gPj4gKyAgICB7IC5uYW1lID0gInNhcjEyNCIsIC5iaXQgPSAx
MiwgfSwKPiA+Cj4gPiBOaXQ6IHRoaXMgc2hvdWxkIGJlIHNhcjEyNQo+Cj4gTmljZSBjYXRjaCwg
SSB3aWxsIGZpeCB0aGlzIGluIHYyLgo+Cj4gPgo+ID4+ICsgICAgeyAubmFtZSA9ICJtaXBzIiwg
LmJpdCA9IDEzLCAuZmxhZ3MgPSBDTEtfSVNfQ1JJVElDQUwsIH0sCj4gPj4gKyAgICB7IC5uYW1l
ID0gInBjaWUiLCAuYml0ID0gMTQsIH0sCj4gPj4gKyAgICB7IC5uYW1lID0gInJvYm9zdzI1MCIs
IC5iaXQgPSAxNiwgfSwKPiA+PiArICAgIHsgLm5hbWUgPSAicm9ib3N3MDI1IiwgLmJpdCA9IDE3
LCB9LAo+ID4+ICsgICAgeyAubmFtZSA9ICJzZHIiLCAuYml0ID0gMTksIC5mbGFncyA9IENMS19J
U19DUklUSUNBTCwgfSwKPiA+PiArICAgIHsgLm5hbWUgPSAidXNiIiwgLmJpdCA9IDIwLCB9LAo+
ID4KPiA+IFRoaXMgc2hvdWxkIHByb2JhYmx5IGJlICJ1c2JkIiB0byBpbmRpY2F0ZSB0aGlzIGlz
IHRoZSBVU0IgZGV2aWNlIGNsb2NrCj4gPiAobm90IGhvc3QpCj4KPiBPaywgSSB3aWxsIGNoYW5n
ZSBpdC4gSSBnb3QgY29uZnVzZWQgYnkgdGhlIGZhY3QgdGhhdCBib3RoICh1c2JkIGFuZCB1c2Jo
KSB3ZXJlIHByZXNlbnQgb24gNjMxOF9tYXBfcGFydC5oOgo+ICNkZWZpbmUgVVNCRF9DTEtfRU4g
ICAgICAgICAoMSA8PCAyMCkKPiAjZGVmaW5lIFVTQkhfQ0xLX0VOICAgICAgICAgKDEgPDwgMjAp
CgpJcyB0aGVyZSBhIGRhdGFzaGVldCB0byB2ZXJpZnkgdGhhdD8KCj4KPiA+Cj4gPiBXaXRoIHRo
YXQgZml4ZWQ6Cj4gPgo+ID4gUmV2aWV3ZWQtYnk6IEZsb3JpYW4gRmFpbmVsbGkgPGYuZmFpbmVs
bGlAZ21haWwuY29tPgo+ID4gLS0KPiA+IEZsb3JpYW4KPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
