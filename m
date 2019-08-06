Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4719F82B97
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 08:25:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=REef21AWtIafcBdtgoWJU2DW9wkrPxFlg7Xnrle1A48=; b=mjq1S+RFZ53FIh
	nR8cixbKL99fODMvekMT8VpYhC+fqCwTVn64CYu+bgAsx1zZNX9KghiQLzpVfWBW6F1YrXYSqGb+P
	NnSmIkOwAe2er5jtUy2SLdTUnrhs5/MJA+8oR0iAAp6pTibSb3pmZAs1pq96vlSmrIc1GezjLC/JW
	9OppjoLXZ1YfVfzngk9XCRkC/cX7qnDleZvWDWRkWlrvSrL+BlgUf03f4+KYQ4tuqQDUVMrQIEDqR
	Mc6APTeZLJpjtqKhzU39lMFmLT2nvW3j/D3FwoiRbF3xiUMbhhRnSUNDzRkUMDCOavFNYA9gwa0Lk
	C6PcgfZz7btxX2KEcwZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1husuj-0002Gk-Vt; Tue, 06 Aug 2019 06:25:42 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1husub-0002GP-1i
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 06:25:34 +0000
Received: by mail-ed1-f68.google.com with SMTP id i11so17749067edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 23:25:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UXX9mXNM6FMPbLtlEXugUgG1hlmfETMpnKiUtC8pMSM=;
 b=Pe9f04FfeAd1eOoTzAGO06xpFYbK2cMq7aCBjDkmsg6kBg0LoHWWupU9S0siJ1yTz1
 KD0yLQ2pjkaBhRqO2BZH5t1MVNp2ywdHyNk/mio2dlPlWQnG3oiQk9NfIr7uLK6FAjbZ
 2NbphVpP7MylXsQMcAyXqTS6EFzKGNZXBkC5ekhq5Ew6HbjeGfQwooLBZNZrWcQVX0ep
 qC985bJJErz9KezZPoJLJ0tdO/NqyBQtrCOjXVZXwyFuDGG5Le8x2YhbhaG75c2F1Z0R
 V0mJN6e0hZUoeWzkAEXlZxuXjDn7OHHMJ55qs0uYst4WiUbA5xpRYIbKpyxUgCO1AUkg
 ENug==
X-Gm-Message-State: APjAAAUNDf2T2Ozw+kO7r7c7CX2hmoxhu48ntXqRcUSqeC4ODkfMeq8Y
 lOynEWONQSPKsSfs0t9ui7v4q3CTFnk=
X-Google-Smtp-Source: APXvYqwKOREPrV5LbsMwI0rnbXahU8agJxuWtEgRaIbpJbkLENTk7R4aGyNDLU+/xkJ7ySiiG6158Q==
X-Received: by 2002:a17:907:374:: with SMTP id
 rs20mr1638050ejb.36.1565072731586; 
 Mon, 05 Aug 2019 23:25:31 -0700 (PDT)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com.
 [209.85.128.46])
 by smtp.gmail.com with ESMTPSA id a6sm19475052eds.19.2019.08.05.23.25.31
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 23:25:31 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id g67so71074181wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 23:25:31 -0700 (PDT)
X-Received: by 2002:a7b:c051:: with SMTP id u17mr2481245wmc.25.1565072730805; 
 Mon, 05 Aug 2019 23:25:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190727210307.17607-1-sunil@medhas.org>
 <CAGb2v66S1+CSn=CYwZQOP8V+ZL+D9ayf6cvidzK5ENXOqKRGew@mail.gmail.com>
 <CAKQ8BtjLmhDgA8woY5NqaifODLUh_w_K4QYOUuqc4Six5Amerg@mail.gmail.com>
 <fd19b2e3-e340-f4fd-a320-1cfc45964f5b@medhas.org>
 <CAGb2v66w6y_0NLcT=WminsgK=QXpUPVnMWdCotMmgM1vgPByxw@mail.gmail.com>
 <de875c31-6cb3-8975-ac3d-de4ab3a851bd@medhas.org>
 <1955D9AD572C4F57A2D66B15EB8CF79C@GirolesWin7>
In-Reply-To: <1955D9AD572C4F57A2D66B15EB8CF79C@GirolesWin7>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 6 Aug 2019 14:25:17 +0800
X-Gmail-Original-Message-ID: <CAGb2v67oT0OV9p+KffBDFGz5BN5zR7=DhYLStwkagY=TXkskQA@mail.gmail.com>
Message-ID: <CAGb2v67oT0OV9p+KffBDFGz5BN5zR7=DhYLStwkagY=TXkskQA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
 A64-OLinuXino
To: Martin Ayotte <martinayotte@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_232533_094074_006B4BE8 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Sunil Mohan Adapa <sunil@medhas.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgNSwgMjAxOSBhdCA4OjU4IFBNIE1hcnRpbiBBeW90dGUgPG1hcnRpbmF5b3R0
ZUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gRmluZSBmb3IgbWUgdG9vLgo+Cj4gVGhhbmtzIC4KPgo+
IC0tLS0tTWVzc2FnZSBkJ29yaWdpbmUtLS0tLQo+IERlIDogU3VuaWwgTW9oYW4gQWRhcGEgW21h
aWx0bzpzdW5pbEBtZWRoYXMub3JnXQo+IEVudm95w6kgOiBNb25kYXksIEF1Z3VzdCAwNSwgMjAx
OSAxOjI1IEFNCj4gw4AgOiBDaGVuLVl1IFRzYWkKPiBDYyA6IE1heGltZSBSaXBhcmQ7IE1hcnRp
biBBeW90dGU7IGxpbnV4LWFybS1rZXJuZWwKPiBPYmpldCA6IFJlOiBbUEFUQ0ggdjJdIGFybTY0
OiBkdHM6IGFsbHdpbm5lcjogYTY0OiBFbmFibGUgZU1NQyBvbgo+IEE2NC1PTGludVhpbm8KPgo+
IE9uIDA0LzA4LzE5IDg6MzMgcG0sIENoZW4tWXUgVHNhaSB3cm90ZToKPiA+IE9uIEZyaSwgQXVn
IDIsIDIwMTkgYXQgMjo0NyBBTSBTdW5pbCBNb2hhbiBBZGFwYSA8c3VuaWxAbWVkaGFzLm9yZz4g
d3JvdGU6Cj4gPj4KPiA+PiBPbiAwMS8wOC8xOSA2OjQ5IGFtLCBNYXJ0aW4gQXlvdHRlIHdyb3Rl
Ogo+ID4+PiBJZiBteSBTT0IgY291bGQgaGVscCBoZXJlLCBJIGRvbid0IG1pbmQgc2luY2UgSSd2
ZSBkb25lIHRoZSBjb21taXQKPiA+Pj4gbW9yZSB0aGFuIGEgeWVhciBhZ28gZm9yIEFybWJpYW4g
Li4uCj4gPj4+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IE1hcnRpbiBBeW90dGUgPG1hcnRpbmF5b3R0
ZUBnbWFpLmNvbT4KPiA+Pj4gVGVzdGVkLWJ5OiBNYXJ0aW4gQXlvdHRlIDxtYXJ0aW5heW90dGVA
Z21haS5jb20+Cj4gPj4gZ21haS5jb20gaXMgbGlrZWx5IGEgdHlwby4KPiA+Pgo+ID4+PiBPbiBX
ZWQsIEp1bCAzMSwgMjAxOSBhdCAxMDo0MiBQTSBDaGVuLVl1IFRzYWkgPHdlbnNAY3NpZS5vcmcK
PiA+Pj4KPiA+Pj4+IFRoYW5rcy4gVGhlIHBhdGNoIGxvb2tzIGdvb2Qgb3ZlcmFsbC4gVGhlIGF1
dGhvcnNoaXAgaXMgYSBsaXR0bGUKPiA+Pj4+IGNvbmZ1c2luZyB0aG91Z2guIElmIGl0IHdhcyBp
bml0aWFsbHkgZG9uZSBieSBNYXJ0aW4gKENDLWVkKSwgdGhlbgo+ID4+Pj4gaGUgc2hvdWxkIGJl
IHRoZSBhdXRob3IsIGFuZCB3ZSBzaG91bGQgZ2V0IGhpcyBTaWduZWQtb2ZmLWJ5IGlmCj4gPj4+
PiBwb3NzaWJsZS4KPiA+Pgo+ID4+IE1hcnRpbiBpcyBpbmRlZWQgdGhlIG9yaWdpbmFsIGF1dGhv
ciBvZiB0aGUgcGF0Y2guIFRoYW5rIHlvdSBmb3IKPiByZXZpZXdpbmcuCj4gPgo+ID4gSSdkIGxp
a2UgdG8gYXBwbHkgdGhpcyBwYXRjaCB3aXRoIE1hcnRpbiBhcyB0aGUgYXV0aG9yLCBpZiB0aGF0
J3MgT0sgd2l0aAo+IHlvdQo+ID4gYm90aD8KPgo+IFRoYXQgaXMgY29tcGxldGVseSBva2F5IHdp
dGggbWUuCgpBcHBsaWVkIGZvciA1LjQuCgpJIHJlb3JkZXJlZCB0aGUgdGFncyBzbyB0aGV5IG1h
a2UgbW9yZSBzZW5zZToKCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L3N1bnhpL2xpbnV4LmdpdC9jb21taXQvP2g9c3VueGkvZHQtZm9yLTUuNCZpZD0wODM0
ODg3NzMyZGY1YWY0MWI1OWIyZTRkNTMwZmMxZjU0Nzg5NjVmCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
