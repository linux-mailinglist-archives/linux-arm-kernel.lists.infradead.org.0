Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFE7118ECA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 18:20:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LKAR8yVGAQksQOFxf259o0gq/A74is6uKL4p7gfcpI8=; b=DZa1oZ1f1L2fF+
	ooL4ulSYSe+vjL9crxu2SS/0a7jZ/i5o97tYcbTiCv2mOh1Kd/2Se17qxlqpAwnx6V0fb5cWMWSOS
	3qwwxeGKhCuaz20ssPj1vp4+iFHsiyu92diia6pKA1vrsUiRe4OGG6TJQHI7X+950j6+Pk8HADTKI
	EdlychdggNYiFKBT6P58siV9Mr5/CUp2Fo+FEv1DK1irdSsJeCgkVIgFQ3qB8oQYP342HXeGUTcjX
	vG5ky5+ya5k7sBJJK+XhiJQZwxKDmM0NlzM1pSaCb3bMMHfrBWW63Ai8HAmJrzZPVuU3b6dIXwoAN
	5jypzXZoRICxG/xucPVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iejBi-0005LM-RR; Tue, 10 Dec 2019 17:20:42 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iejBb-0005L3-RI
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 17:20:37 +0000
Received: by mail-wm1-x344.google.com with SMTP id q9so4122509wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 09:20:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=vXNgKnKakq//mqsjHx2g+hBYoldB3gxR/8Kku6DLL+U=;
 b=CZ0bHp90mZ89RJhZ5yeN2D65NblE7wKE0cp66lieBBsxBZc5lAmTZuxm5C9j8z2ddz
 d7XTirSpIozZ8RuBDecQ10Zi1Pde6T4J9Bh0mj6TFDaIYi0frSMXMUNE8ZEVMhgrhi2m
 L+OkGfKViJ6zdA76ZinbMbuxJ5BTebyhU84OQlBQ1VPCmXudz4wr0Nc6FpWzeCx/aXG7
 BHT6H2167RZV1xAk//4oWSW/Jp6w/Kra1N47pxDGvFTvnJoklLfZIpWVi652VFVARlZT
 VuEkS8l8aVU7Enz09V2pFbMok3B7iPSpMDEk6KTYZHx5uqs6+OW3gtj/BfnhmpVqA8ky
 ncUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=vXNgKnKakq//mqsjHx2g+hBYoldB3gxR/8Kku6DLL+U=;
 b=W3zgJCimV+NZfE5PN9DZNA/OwKFNg3A5eJJAw7Oo40RzpkoPV42TrYjbAZRVNVGivp
 orZ6meAfUKZdb4ZTuZognPWCqyfOOElnge6Nzu6shvEZYS0LXAz3Fvu2RtvOPrBcFwwB
 HujPUSbigmt6ozQnAqB5H7G1rRiXatbv25qCtGbUpayKAlVkEz1CHCEqwbreHrQwkIz8
 cj1oe30S2ybRFwoQrYQhZAwYkF6KnjXLRZ8zTq8YlYRaqguoUlBmSSHmnxnUxXpd0eY3
 T34tsnR1FaS5YsSgid4Bq7UkR8VOXlKs2SMlkaomIQ4qO2DjmjDBmZdJr4WB2ntLxUv9
 f1qA==
X-Gm-Message-State: APjAAAVgUaFf25SL2OrWSe361CF3jnsAM3jOnR4JpxiFwEXRLngygfho
 +pSrhJA/chiAlFiQiwusAi5j1tEMIjNN8eBn4fM=
X-Google-Smtp-Source: APXvYqzq2LF8lClRiVJknmho7Xph1Cns7f+NRbX50kA9+PcdLQvbd5vJqhRZzwD+i28IAUbyBTJ6d0Se3jofTsXHQ4I=
X-Received: by 2002:a1c:a7c8:: with SMTP id q191mr6114178wme.176.1575998434072; 
 Tue, 10 Dec 2019 09:20:34 -0800 (PST)
MIME-Version: 1.0
References: <20191119175319.16561-1-peron.clem@gmail.com>
 <20191121072408.GE4345@gilmour.lan>
 <CAL_JsqJevcG2qv+BYKTnP=out0jPxuEcdYuLq7idxK04Q05fag@mail.gmail.com>
In-Reply-To: <CAL_JsqJevcG2qv+BYKTnP=out0jPxuEcdYuLq7idxK04Q05fag@mail.gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 10 Dec 2019 18:20:22 +0100
Message-ID: <CAJiuCcd3ttm_DxBrpB8b+yWAZLbvP1zAEp=vL4iNXD8cD=Zxyw@mail.gmail.com>
Subject: Re: [PATCH v7 0/8] Add support for H6 PWM
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_092035_884283_C9494550 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
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
 Linux PWM List <linux-pwm@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>, Maxime Ripard <maxime@cerno.tech>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Philipp Zabel <pza@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKT24gVHVlLCAxMCBEZWMgMjAxOSBhdCAxNzo0OCwgUm9iIEhlcnJpbmcgPHJvYmgr
ZHRAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBUaHUsIE5vdiAyMSwgMjAxOSBhdCAxOjI0IEFN
IE1heGltZSBSaXBhcmQgPG1heGltZUBjZXJuby50ZWNoPiB3cm90ZToKPiA+Cj4gPiBPbiBUdWUs
IE5vdiAxOSwgMjAxOSBhdCAwNjo1MzoxMVBNICswMTAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6
Cj4gPiA+IEhpLAo+ID4gPgo+ID4gPiBUaGlzIGlzIGEgcmV3b3JrIG9mIEplcm5laidzIHByZXZp
b3VzIHdvcmtbMV0gdGFraW5nIGFjY291bnQgYWxsIHRoZQo+ID4gPiBwcmV2aW91cyByZW1hcmtz
Lgo+ID4gPgo+ID4gPiBCaW5kaW5ncyBpcyBzdGlsbCBzdHJpY3QgYnV0IHByb2JlIGluIHRoZSBk
cml2ZXIgYXJlIG5vdyBvcHRpb25uYWxzLgo+ID4gPgo+ID4gPiBJZiBzb21lb25lIGNvdWxkIGNv
bmZpcm0gdGhhdCB0aGUgUFdNIGlzIG5vdCBicm9rZW4sIGFzIG15IGJvYXJkCj4gPiA+IGRvZXNu
J3Qgb3V0cHV0IGl0Lgo+ID4gPgo+ID4gPiBJIGRpZG4ndCBhZGQgdGhlIGFja2VkLXRhZ3MgYXMg
dGhlcmUgYXJlIGJpZyBjaGFuZ2VzLgo+ID4KPiA+IEFwcGxpZWQgMSBhbmQgNyBmb3IgNS42LCB0
aGFua3MhCj4KPiBJIGJlbGlldmUgcGF0Y2ggNyBicmVha3MgbGludXgtbmV4dDoKClNvcnJ5IGZv
ciB0aGF0LAoKPgo+IEVycm9yOiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcHdt
L2FsbHdpbm5lcixzdW40aS1hMTAtcHdtLmV4YW1wbGUuZHRzOjM1LjM3LTM4Cj4gc3ludGF4IGVy
cm9yCj4gRkFUQUwgRVJST1I6IFVuYWJsZSB0byBwYXJzZSBpbnB1dCB0cmVlCj4gbWFrZVsxXTog
KioqIFtEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcHdtL2FsbHdpbm5lcixzdW40
aS1hMTAtcHdtLmV4YW1wbGUuZHQueWFtbF0KPiBFcnJvciAxCj4KPiBVc3VhbGx5IHRoYXQncyBk
dWUgdG8gYSBtaXNzaW5nIGluY2x1ZGUuCkluZGVlZCBpbmNsdWRlIGFyZSBtaXNzaW5nLgoKSSB3
aWxsIHNlbmQgYSBwYXRjaCBBU0FQIHdpdGggYSBmaXhlcyB0YWcuCgpUaGFua3MgZm9yIHRoZSBy
ZXBvcnQsCkNsw6ltZW50Cgo+Cj4gUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
