Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E532E13DF4B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 16:53:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jXIK6Y1Yab1Y0VlXf+Q3OacvUiXatbfZjssUCLOujPg=; b=dGZuHTwRlb76u+
	mzXkZJTiTC70z72DNVDrHUnxw48fooU3wv0pPnbUy9ymfQMtLaE/xcvGpflUVxGC2vq0biLQIM4Rj
	hFNkCUpwFP2jhCifv/NTnDqoZJtSc6OaXIq4M4cdxkKWWWxjpR64y0O7hVbbgfNmwXCTtDE9CGC/G
	QEPzsxWUtBW8n/Ge74Pt83GOsBgNE8HDa03XwRjtrshkXaQD9kRIoTQYLC2kSZZJqFxPurNNG1LS5
	BykosB8rkVnAvW6+qyIeK+osEI0hCtcgKtpdK+wCnbKW54cA8Y7RD3stN12gg+PW9HfDKr0rSHzIo
	MwUTUkQyAZu8bbvuugCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is7Sq-0000k0-1w; Thu, 16 Jan 2020 15:53:44 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is7Sc-0000a3-FL
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 15:53:35 +0000
Received: by mail-lf1-x144.google.com with SMTP id l18so15870606lfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 07:53:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3b7/rLBHWWHHYbKlS/39gt431nhXhJtYjpUHbaLNr48=;
 b=wAHw/S9tpiW6/rLfiflhLgJlKqcbwOlb9ikkhtYxRh+yigmPtz5rZmKdABwJ4ic8Ha
 M33iKs5jTU9sjzj0Eg3/LMkbs+ACuxkZcRsDB5bBK2Nhn6okMoqHcbOjlFADq9X53JDe
 WwvMyTDS3hZNvTK3oPxFD5bKFTbSoHfhCH8TWJP6Ljwhm99W4tZs16FU3BVitlpVZCV8
 ZiR6//F8cJ2yQdb8zaM3x4qL9zhSFHvb93qBrCVWgj3HF0VyLL2e/l9Pnvv/b6YbW417
 HnmyX3PEJs1Wmye0ZZyU5AOpQmwI3cskyx5jY4h8kVoZU+jQTBRuoyPyMF3pqGgMRAZc
 TMcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3b7/rLBHWWHHYbKlS/39gt431nhXhJtYjpUHbaLNr48=;
 b=PBVI9D1iSt/cl08zgzD+XkEAsMtDKAQRl+5uzLlwrFxvFWaozkR2iHWAICOx8ZJLVK
 BHUoXzW81wq1IMZxZ4KDXahRHZ3MZTcN8VRWeMrXkdHRx7H288XfxzEmCfeAbxACCWS4
 QrOxoLj8EaPzJ4NzGOUXmlpStn2R5/Qh6+8QBsxrfmHth2EQHeTRPsz++2NzSGRlDxTT
 MavWdmN94lDO8g6yaoDGur/Lt+599Hgp8upIW6qs8Zes4Bwhqscdq+hfvCE21hOqNhN8
 MaIeSbacb9nP/UTgl1gMvRd8RAMA3/1X5l1rhQuLtv24sEC74rT41es/KFqpltnmW8Ax
 uPig==
X-Gm-Message-State: APjAAAXo9oNeKAxAR32/deIJe94SGXB2KhtZEP80fTzcYQvk5nawb8EV
 Su5x0lyY1MmhkuxziAorzmKGvym+elmhTkPtSDGZ+Q==
X-Google-Smtp-Source: APXvYqyaY1zsZac6xIg1geYp8/1vn1UDTyxas3KGQkY/prQkzpWCL0jDomBKohuCGrAyS4OUIUVVdQm7OlnHV7LpPR0=
X-Received: by 2002:ac2:5dc8:: with SMTP id x8mr319519lfq.217.1579190008179;
 Thu, 16 Jan 2020 07:53:28 -0800 (PST)
MIME-Version: 1.0
References: <20200109145333.12260-1-benjamin.gaignard@st.com>
 <20200109145333.12260-3-benjamin.gaignard@st.com>
 <CACRpkdaK+kQZH_Txu-r4DY_m6muh26aCWcGOkxbi8hbCgww28A@mail.gmail.com>
 <CA+M3ks7s_KOhXciJPZc3N4z9GNkiKa=fWdQ3hC_HTtrWMWYHtQ@mail.gmail.com>
In-Reply-To: <CA+M3ks7s_KOhXciJPZc3N4z9GNkiKa=fWdQ3hC_HTtrWMWYHtQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Jan 2020 16:53:17 +0100
Message-ID: <CACRpkdZzL_rBs61s+4k6-QNkB4WzjV1hTy90_St-zsAO=ZyQfA@mail.gmail.com>
Subject: Re: [PATCH 2/3] clocksource: Add Low Power STM32 timers driver
To: Benjamin Gaignard <benjamin.gaignard@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_075330_520263_B3B9A4C2 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Pascal PAILLET-LME <p.paillet@st.com>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Baolin Wang <baolin.wang7@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKYW4gMTYsIDIwMjAgYXQgNDo0NCBQTSBCZW5qYW1pbiBHYWlnbmFyZAo8YmVuamFt
aW4uZ2FpZ25hcmRAbGluYXJvLm9yZz4gd3JvdGU6Cj4gTGUgamV1LiAxNiBqYW52LiAyMDIwIMOg
IDEwOjA3LCBMaW51cyBXYWxsZWlqCj4gPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4gYSDDqWNy
aXQgOgoKPiA+IElmIHlvdSBoYXZlIGEgc3BhcmUgYWx3YXlzLW9uIHRpbWVyIChhbmQgaXQgbG9v
a3MgbGlrZSB5b3UgaGF2ZSkgd2hpY2gKPiA+IHlvdSBjYW4gc2V0IGFzIGZyZWUtcnVubmluZywg
eW91IGNvdWxkIHJlZ2lzdGVyIGl0IHdpdGgKPiA+IENMT0NLX1NPVVJDRV9TVVNQRU5EX05PTlNU
T1Agc28gaXQKPgo+IFRoZSBkcml2ZXIgb25seSBpbXBsZW1lbnQgY2xvY2sgZXZlbnQgZmVhdHVy
ZSBzbyBJIGRvbid0IHRoaW5rIHRoYXQgaXMKPiBmbGFnIGlzIGFwcGxpY2FibGUuCgpJIGtub3cs
IGl0IHdhcyBhIHN1Z2dlc3RlZCBmdXR1cmUgZmVhdHVyZSwgaWYgeW91IGhhdmUgYSBzcGFyZQp0
aW1lci4KClRoYW5rcywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
