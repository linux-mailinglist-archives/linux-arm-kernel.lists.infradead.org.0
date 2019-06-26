Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5458D56F53
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 19:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQ/Sb0fH9H58hS0D+Qqr17Oc6xdBErxBC4374tH4UJI=; b=Xx4aoT4HAN8S/1
	JUX5DB4SqQm9BIcS4bi8fw5AESRl7mo69YCvthlNAcd/MnhEVwrStWL3DvRjHKdJAmDlmiRFKTsKb
	pgvwNjYrylO6y6xQzRYAxsFVsaWMN8eYUhAcrEGd+R8l7f0R3C40nTSgo/pcDgKO7rhYdlO/kkPTC
	L/cElkjm2KW9w1P/8Dqf92Da/iDiw5Zw2uyaDmTQ88QSPHxLbPkoirHw+6Y50kgYHLYA8I0YpM4Li
	Wa5Kv8qqh+4064jRH8ZAVJtEnHaGuwDHmrow9r1c+jIWISYDPd2BAbZGmsZ2akGM9g0atyoSOmTsG
	qkYmBqxpYryON5SNO2VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgBP0-0003eM-85; Wed, 26 Jun 2019 17:08:10 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgBOe-0003dx-8i
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 17:07:49 +0000
Received: by mail-pl1-x642.google.com with SMTP id g4so1776704plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 10:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3zywxKr10LjnjZ9Rap1BNmy2qmpKbPIN5uH0kCbkzmw=;
 b=GOi4AvHXY42TlxU4FLVLGeMfAAQnvMD9U0W5flWH6GCVvXCrS6R/OHJmk/639twh3y
 H78vtvCaQlkSft+qU1iBAdOnHdW5u/0piZZR3sy0ywv+LChMZa6YFLtQY6G3FXYUAV/m
 Apbh9KG/t0oGPH/X4O7I/CDy2XX3l0FEBf26Mgws8aM5U/01dQdvTPh7GTBMWdqRXLnx
 AR+vhvZUiCzTReV/yVKydxdy5w5jHYfSU+UwLBpH94rBc3635fdMtN+dZjUBiqnmxLoj
 5ZqKbxI4Gn7Nrp3qzTnBR9vxpT1TfwZ8G45enxfC5U7eGmuzJTNabMKaU4d9MYsuygNg
 SUSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=3zywxKr10LjnjZ9Rap1BNmy2qmpKbPIN5uH0kCbkzmw=;
 b=FHaiZFbBdrmzcx2A8+5KEmpZMfLAEwaG2TfYX8KmuC55dLSyw+Uj9ls0W7UIa8+CDS
 9dlZdLJnZzmV1mzJRvR1ZAfROxEgCHjigC+wQ0M1wYBP8plG83Ossgb+AXvsMxO2kvmx
 oGu3ZQiVYlJDNGYp7YjfLDmUMU8hO/IFqtlVxt/K4X/HAnumulUQ4kIQkRNZV776XagC
 8U2NNHjson12WnE3oIXadaZrRpH1Ux/lzhD4VV4iwhnMG/97PjdWtNu+1CRnSECT3xSu
 ua1VJc+511ktm87oZTFaqMVAEnvTK3xPQh+IuXzsrsEz25cP+P42LyK0SUw+is23xjb7
 9UWg==
X-Gm-Message-State: APjAAAWYB48ebPLMYs2SIsv9bHXs87286oYUzaRHHuyAJrlEeYK01zMV
 N7HC9FiRgqXrEgLR1Pf+c/4=
X-Google-Smtp-Source: APXvYqyeYBe7ZlnY0KIV8hiBhjrA+4/eNG0i/EN6tBPsIIruAmSq5qUf/YKRYAc5enrucmAN1aSFxQ==
X-Received: by 2002:a17:902:8eca:: with SMTP id
 x10mr6732654plo.266.1561568867411; 
 Wed, 26 Jun 2019 10:07:47 -0700 (PDT)
Received: from [10.67.50.91] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id
 y19sm18341834pfe.150.2019.06.26.10.07.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 10:07:46 -0700 (PDT)
Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
To: =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>,
 Peng Fan <peng.fan@nxp.com>, Jassi Brar <jassisinghbrar@gmail.com>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-3-peng.fan@nxp.com>
 <CABb+yY1wW-arSMQSYjrezXOZ0Ar_shAr78MOyUD3hBxXohWx3g@mail.gmail.com>
 <AM0PR04MB4481210CE83416353575C3D988E30@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20c6cd30-642d-5f6e-15b8-2ef925ed90a6@arm.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <886589a4-cc51-1c01-6ade-4a6a683407d2@gmail.com>
Date: Wed, 26 Jun 2019 10:07:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20c6cd30-642d-5f6e-15b8-2ef925ed90a6@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_100748_310671_C2E908DD 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Devicetree List <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>, ",
 Sascha Hauer" <kernel@pengutronix.de>, Sudeep Holla <sudeep.holla@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNi8yNi8xOSAxMDowNSBBTSwgQW5kcsOpIFByenl3YXJhIHdyb3RlOgo+PiBTbyBJIGludHJv
ZHVjZWQgaW50ZXJydXB0IGluIFYyLiBJbiBteSB0ZXN0Y2FzZSwgYWZ0ZXIgc21jIGNhbGwgZG9u
ZSwKPj4gaXQgbWVhbnMgZmlybXdhcmUtPnNtYyBtYWlsYm94LT5maXJtd2FyZSBkb25lLiBJbnRl
cnJ1cHQgbm90aWZpY2F0aW9uCj4+IGZyb20gZmlybXdhcmUtPkxpbnV4LCBtZWFucyBmaXJtd2Fy
ZSBoYXMgZG9uZSB0aGUgb3BlcmF0aW9uLgo+Pgo+PiBXaGVuIHVzaW5nIGludGVycnVwdHMsIHdl
IGNvdWxkIG5vdCBrbm93IHJlcy5hMCBhcyBzbWMgc3luYyBjYWxsLgo+Pgo+PiBJbnRlcnJ1cHRz
IGlzIG5vdCBhIG11c3QgaW4gbXkgdGVzdGNhc2UsIEZsb3JpYW4sIEFuZHJlLCBkbyB5b3UgaGF2
ZQo+PiBhbnkgY29tbWVudHM/IFNob3VsZCBJIGtlZXAgaW50ZXJydXB0cyBpbiBWMyBvciBkcm9w
IGl0IGFzIEphc3NpIGNvbW1lbnRzPwo+IAo+IFRoZSBzbWMgbWFpbGJveCBpcyBieSBpdHMgdmVy
eSBkZXNpZ24gYSBvbmUtd2F5IGNoYW5uZWwgLSBhbmQgaXQncwo+IHN5bmNocm9ub3VzLiBJIHRo
aW5rIHRoaXMgaXMgYWxsIHRoZSBtYWlsYm94IGRyaXZlciBzaG91bGQgYmUgY29uY2VybmVkCj4g
YWJvdXQuIFRoZSBmYWN0IHRoYXQgdGhlcmUgaXMgYSBwcm90b2NvbCB1c2VyIHRoYXQgd291bGQg
YmVuZWZpdCBmcm9tIGEKPiByZXR1cm4gY2hhbm5lbCBpcyBhIHNlcGFyYXRlIGlzc3VlLgo+IFRo
ZSBTQ01JIGJpbmRpbmcgZXhwbGljaXRseSBtZW50aW9ucyAqdHdvKiBtYWlsYm94ZXMsIG9uZSBU
WCwgb25lIFJYLCBzbwo+IHRoZSByZXR1cm4gY2hhbm5lbCBjb3VsZCBiZSB2ZXJ5IHdlbGwgaW1w
bGVtZW50ZWQgYnkgYSBzZXBhcmF0ZSBkcml2ZXIuCj4gSSBhbSB3b25kZXJpbmcgaWYgd2UgZ2V0
IGF3YXkgd2l0aG91dCBhIGZ1bmN0aW9uaW5nIHJldHVybiBjaGFubmVsLCBhdAo+IGxlYXN0IGZv
ciBhIHN1YnNldCBvZiBTQ01JIGZ1bmN0aW9uYWxpdHk/IENhbiB3ZSB1c2Ugc29tZSBkdW1teSBk
cml2ZXI/Cj4gT3Igc3BlY2lmeSBhbm90aGVyIHNtYyBjaGFubmVsIHdpdGggc29tZSB1bmhhbmRs
ZWQvaWdub3JlZCBjaGFubmVsIElECj4gZm9yIHRoYXQgcHVycG9zZT8KPiAKPiBTbyBJIHdvdWxk
IGxlYXZlIHRoZSBJUlEgcmV0dXJuIGNoYW5uZWwgb3V0IGZvciBub3csIHVubGVzcyB3ZQo+IGRl
c3BlcmF0ZWx5IG5lZWQgaXQuCgpUaGF0J3MgZmluZSwgdGhlIGluaXRpYWwgcG9pbnQgd2FzIHNw
ZWNpZmljYWxseSBhYm91dCB0aGUgYmluZGluZwphbHJlYWR5IGRlZmluaW5nIGFuIG9wdGlvbmFs
IGludGVycnVwdCBwcm9wZXJ0eSwgYnV0IHRoYXQgY2FuIGJlIHJlbW92ZWQKdG9vIGlmIHRoaXMg
aXMgdG9vIG11Y2ggY29uZnVzaW9uIG9yIG9wZW5zIHVwIHRoZSBkaXNjdXNzaW9uIGJleW9uZCB0
aGlzCnN1Ym1pc3Npb24uCi0tIApGbG9yaWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
