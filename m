Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E27FE10BB55
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 22:13:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YTBhLoW68uxv13GZtcOblEySg9w+uBFfWJMUnvwYYqo=; b=VkDsidahgOdPho
	8eJlY4HLLnfpqUZRcuzo2ohvWsQrk6Z5kGtC2V1ZZpScr8NDHRqUikZeJI138dgSoMuss6VoIc4Eo
	amCvUlru6WdBfW4RNrJCubRqBPc/Bjk13wSCZdVOxBMhyBICbvQQr7mr/kVNN3fueE7jwbA9s2XwP
	V7W2aUMDL08w3VcdXnUqlYxVVwj76uGS7ZHgFUSa0SbTkHeIS/XGVptRCrdIaoUy8rXpW6K8oMU2x
	UCODfDnHRJ5K0eZa3BefrfGpSlX8Vc1h4p+ZWfu0jO+aSMUJUHoCLzNFOs1WLyNHxCdFfeUl1UEL1
	MMJLG2WEHclnh/ingCtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia4cX-0003ux-Sj; Wed, 27 Nov 2019 21:13:09 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia4cM-0003tG-1B; Wed, 27 Nov 2019 21:12:59 +0000
Received: by mail-ot1-f65.google.com with SMTP id d7so3465915otq.3;
 Wed, 27 Nov 2019 13:12:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cImB892YXUVPGGhFezh816WamO3nmCEALpwjUr8+dkg=;
 b=URuEKuGU3+cA8pxaBoBfWAp2a6mTtTkpnCZ9KxFYjCdRqp97acC4wbDRR3t9roLQe8
 ZrNOm4GVLrg9wI5afCblrHZhRLWH6rtjWyhVaFeT+zKqo7YUT9/iAlAAmughAPJMLd5U
 9N4owjUKHTxsELJKUamUockR20Q11a9DAFLJTQoT2fXSpkN4qtyKvSZUfsD1AZJaTh4p
 VCd8hXC/Un+TlTuvY8GQSOcRLBSoLmBIvYuKuXXxFYOQ+aMGE6t/nPxMP8nFbCTGXtkS
 5kGBB0LL2b9QxP/oVy8kBroL1sTwNeZa5xKOXtfEtsGtkq+1mQc48jVptWoDcS1xh5Tg
 wLfg==
X-Gm-Message-State: APjAAAW3GsJG5PHQP1czh9GL5osvV+8T7q2dj2AaGf7Uj6Q14TPt8Z3q
 w0cJ+0CPRKqk/6WjZE+O4mfYsR+36a01PXWfemc=
X-Google-Smtp-Source: APXvYqxh3g09zK8yoW4/yyNAk1QlyeyoV8wcshHdQWMv3ezyM47GygheulvdavD9PmPbPqN6RamYKOqEfquQDCZNc+o=
X-Received: by 2002:a9d:17ca:: with SMTP id j68mr5270571otj.250.1574889171373; 
 Wed, 27 Nov 2019 13:12:51 -0800 (PST)
MIME-Version: 1.0
References: <cover.1574871463.git.nishadkamdar@gmail.com>
 <5a7ed2e4b58ba7ff2f0638a2435a3a1e1c62c9f6.1574871463.git.nishadkamdar@gmail.com>
 <CAMuHMdUqfRioTBV27AKx9zv9YuSqEod6x+A4aguf=h20TDXr6w@mail.gmail.com>
 <9bacc7d9-6bd9-0b7c-18cd-d614796397dd@suse.de>
 <ae40eb808f420f5de4a140b8757dfbc426a8cf90.camel@perches.com>
In-Reply-To: <ae40eb808f420f5de4a140b8757dfbc426a8cf90.camel@perches.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 27 Nov 2019 22:12:39 +0100
Message-ID: <CAMuHMdUSSHvQ74c156tuhWShp05TQuSmXa-kY3HNbYj0VL_d4g@mail.gmail.com>
Subject: Re: [PATCH 4/5] pinctrl: sh-pfc: Use the correct style for SPDX
 License Identifier
To: Joe Perches <joe@perches.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_131258_073306_CB397623 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Nishad Kamdar <nishadkamdar@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kevin Hilman <khilman@baylibre.com>, Linus Walleij <linus.walleij@linaro.org>,
 Sean Wang <sean.wang@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-amlogic <linux-amlogic@lists.infradead.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBOb3YgMjcsIDIwMTkgYXQgOTo1OSBQTSBKb2UgUGVyY2hlcyA8am9lQHBlcmNoZXMu
Y29tPiB3cm90ZToKPiBPbiBXZWQsIDIwMTktMTEtMjcgYXQgMjE6NTUgKzAxMDAsIEFuZHJlYXMg
RsOkcmJlciB3cm90ZToKPiA+IEhvd2V2ZXIsIGlmIHdlJ3JlIHRvdWNoaW5nIHRoZXNlIGxpbmVz
IGFueXdheSwgc2hvdWxkbid0IHdlIGJlIHVwZGF0aW5nCj4gPiB0aGUgU1BEWCBJZGVudGlmaWVy
IHRvIEdQTC0yLjAtb25seSB3aGlsZSBhdCBpdD8KPgo+IFByb2JhYmx5IGJldHRlciB0byBkbyB0
aGF0IHdpdGggYSB0cmVld2lkZSBzY3JpcHQgb25lIGRheS4KClllYWguLi4gQnV0IGl0J3MgYWxy
ZWFkeSBtb3JlIHRoYW4gb25lIHllYXIgYWZ0ZXIKCj4gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIw
MTgvOC8xNi80ODcKCmFuZCBEb2N1bWVudGF0aW9uL3Byb2Nlc3MvbGljZW5zZS1ydWxlcy5yc3Qg
KHdoaWNoIGlzIHRoZSBhdXRob3JpdGl2ZQpydWxlPykgc3RpbGwgaGFzbid0IGJlZW4gdXBkYXRl
ZC4uLgoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoK
LS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlh
MzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0
aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20g
dGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhp
bmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRv
cnZhbGRzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
