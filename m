Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A0A1420E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 00:29:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=umUQN33l84Vkc4ZIgm9bTqNjEm4m0f3l13WZtLS8QbE=; b=u3ziOctxmhvM+U
	TOI9TSPjM8TjasOdOy8lZstW+SRN+ifM4RdjATqk0NHzJffsk78jHK0CGTr2DW0jTxJt6+NC5b0n8
	VCHjdEBcy8hi8O5cfgqdiGLh5LAdRZSh8EA8rB5oAkWD9aaEMm4a24yOaqG2d2eui/MxKVjShsY+s
	/+iJCatnPMH0Rliyfqvl8D9dUQ/7F0e2G6e3ktxT5WCDNXlEcGmGrGxZ37/JPst8gzh6SuaD6hRzG
	e9LctmMSXKD79x+tfV3qNHkPGxRjsc1uBRcBO3uIAyHCvart5AviuEqoisUJLxg5jogNne/4+Cz3c
	tlWGRg8W84osfRPkh2bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itK0o-0006m1-72; Sun, 19 Jan 2020 23:29:46 +0000
Received: from mail-il1-x12a.google.com ([2607:f8b0:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itK0e-0006li-L4
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 23:29:38 +0000
Received: by mail-il1-x12a.google.com with SMTP id v69so25785654ili.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Jan 2020 15:29:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=designa-electronics-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4BU2adzqnVRfG48hHcBD14VT7srvqXjxOcKfkR2HgC8=;
 b=D1cmk0Z/ID6hJS3AJPAdzoQOSvo82I9Sa6qX47VAQEXSNJKF3SYI6y3MeIS+d1RvAr
 7H95JB7lZtc0gDVazBsosUZwWTs5tVE7J6JwVhdrHDh6mdXbOLI1+ZGBcaPOEGd4VAmX
 or6Yq2HeQt2o6Gx1uDPgFALyb//Pyo1IbQSqEs8jbkD7vxqm9nTY5vUd4fJG64CQmqil
 znoTW5/8yexJy1T7MQWCWvKf1sG3THCPaWkeYnrkEXvBHogzkzyu0AzyJKQ5JHN5Pyo+
 Ifccp9ZStNHtMmQxG8/W9vNs8DhnzepMW23kcNkLBMiwJw7JvHeK1JI65wo9e0baO+nX
 HqPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4BU2adzqnVRfG48hHcBD14VT7srvqXjxOcKfkR2HgC8=;
 b=GvmTvo1lQGHCVhmL1YCL+aWKma8cwM1p2741bhyMBa7Tmu7aCgl9WPfFa0J8+U1Srw
 2wPJ8fH1VgzoJW0bXN6ZVZooXhDtQD3oOBq9dVJGlUqyoVa78rlpzHIcNNOo1M5HC7Wp
 H4xQtrU3luYxKGMxI1Wsw7hon9H5PQYjYrz9r5ZmRp7dqFcpKPtY5eS6tfU3RHD/zXSU
 9ulkunDTilW9un7NRoB09p7Ywrri7AIpojEkZALdokc0ms7l9m32xOfUaVTxNnjdmLao
 hmkpla9jBvR6sINEHKNYSrPC7DTiL3p01bUOjPBOFGSV4mqUEnBsPRuLOy/zUGSe9GON
 Hs9A==
X-Gm-Message-State: APjAAAWzwoXJJGAxw776rDlK0vNrqyPB/ABx80gaLFdvxV5QvQ2/gLWf
 FtEkqOOSfOlSpyIi6gsS1tjGlhdODeFx8wbW
X-Google-Smtp-Source: APXvYqyq3muV7aFUJf7/KY7Ez+Evb2YDwvKbHwVc/Ka7aM0jpttkGyEF2zi1ytKZzlJ1vgpJq4geoA==
X-Received: by 2002:a92:b506:: with SMTP id f6mr8649989ile.103.1579476574644; 
 Sun, 19 Jan 2020 15:29:34 -0800 (PST)
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com.
 [209.85.166.182])
 by smtp.gmail.com with ESMTPSA id w5sm8065801iob.26.2020.01.19.15.29.33
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 19 Jan 2020 15:29:33 -0800 (PST)
Received: by mail-il1-f182.google.com with SMTP id v15so25835548iln.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Jan 2020 15:29:33 -0800 (PST)
X-Received: by 2002:a92:5d88:: with SMTP id e8mr8697749ilg.106.1579476573137; 
 Sun, 19 Jan 2020 15:29:33 -0800 (PST)
MIME-Version: 1.0
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <FD3C2267-A9B8-45BB-B027-C85DB5E60829@designa-electronics.com>
 <VI1PR0402MB36003DBB288BC2B02A505ADCFF2C0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <CAOMZO5BXMdzTBVaM7xbetgDLB9Aycd=yrUe00weGgcQtgZZBXQ@mail.gmail.com>
 <VI1PR0402MB36007146C33D2B4F7F24FB46FF2E0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <20191223101627.p4a72y6ai5ns7pit@pengutronix.de>
 <20200107222406.vw7ewgm7uilu2x6e@pengutronix.de>
 <20200108112315.kgbwrc7qcjcjcaxh@pengutronix.de>
 <VI1PR0402MB3600935D4F9F78FC27AD54C5FF390@VI1PR0402MB3600.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR0402MB3600935D4F9F78FC27AD54C5FF390@VI1PR0402MB3600.eurprd04.prod.outlook.com>
From: Andre Renaud <arenaud@designa-electronics.com>
Date: Mon, 20 Jan 2020 12:29:22 +1300
X-Gmail-Original-Message-ID: <CAEj2-1PKvdbX1+BjS87Y2gD2UZk53eNBM+U+115sFaALKpVsTQ@mail.gmail.com>
Message-ID: <CAEj2-1PKvdbX1+BjS87Y2gD2UZk53eNBM+U+115sFaALKpVsTQ@mail.gmail.com>
Subject: Re: [EXT] Re: iMX6/UART imprecise external abort
To: Andy Duan <fugang.duan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_152937_132609_02AC1A8B 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12a listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKYW4gOSwgMjAyMCBhdCAyOjM0IFBNIEFuZHkgRHVhbiA8ZnVnYW5nLmR1YW5Abnhw
LmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmln
QHBlbmd1dHJvbml4LmRlPiBTZW50OiBXZWRuZXNkYXksIEphbnVhcnkgOCwgMjAyMCA3OjIzIFBN
Cj4gPiBIZWxsbywKPiA+Cj4gPiBPbiBUdWUsIEphbiAwNywgMjAyMCBhdCAxMToyNDowNlBNICsw
MTAwLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToKPiA+ID4gSSB3aWxsIGxvb2sgaW50byB0aGlz
IGFnYWluIHRvbW9ycm93IHdoZW4gSSdtIHdlbGwgcmVzdGVkIGFuZCBjcmVhdGUgYQo+ID4gPiBw
YXRjaC4KPiA+Cj4gPiBIZXJlIHlvdSBnbywgZm9yIG5vdyB3aXRob3V0IHByb3BlciBjb21taXQg
bG9nIGV0Yy5wcC4KPiA+Cj4gPiBQbGVhc2UgdGVzdCBpZiB0aGlzIGZpeGVzIHlvdXIgcHJvYmxl
bXMuCj4gPgo+ID4gSSBjdXJyZW50bHkgZG9uJ3QgaGF2ZSB0aGUgc2V0dXAgdG8gdHJpZ2dlciB0
aGlzIGJ1ZywgYnV0IG5vcm1hbCBjb25zb2xlIHVzYWdlCj4gPiBzdGlsbCB3b3JrcyBmb3IgbWUu
Cj4KPiBJIGFsc28gaGF2ZSBub3QgdGhlIGVudmlyb25tZW50IHRvIHJlcHJvZHVjZSB0aGUgaXNz
dWUuCj4gQEFuZHJlIFJlbmF1ZCwgY2FuIHlvdSB0cnkgVXdlJ3MgcGF0Y2ggPwoKSSBjYW4gY29u
ZmlybSB0aGF0IHRoaXMgYXBwZWFycyB0byByZXNvbHZlIG91ciBpc3N1ZS4gSXQgd291bGQgYmUK
Z3JlYXQgaWYgdGhpcyBwYXRjaCBjb3VsZCBtYWtlIGl0cyB3YXkgaW50byBtYWlubGluZS4gSSdt
IG5vdCBzdXJlIGlmCml0IHJlc3VsdHMgaW4gYW55IHBlcmZvcm1hbmNlIGlzc3VlcyAoaXQgZG9l
c24ndCBhcHBlYXIgdG8gZm9yIHVzKS4KClRoYW5rcywKQW5kcmUKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
