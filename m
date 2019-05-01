Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EBD10DE5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 22:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ll2DSd9+m0ee/EBF+pmCfUM3D+ErtvUNjVyipCrwoeU=; b=CxnSSvoxg+bpzM
	/L40EiEj7C7B3SUp73b1W+ONj/wLZyfmVLxUPfsHFalBq6bdIvqH251paX7SBAQiug5jrRI6xvk6/
	kb5GpjafN4LZGcZAC3O5hrrGc4c6TrDRl7QA2tZ2mx+3qPw7EHh9DX+pzhYT5lxWf3kCUjPwcaDj3
	BTmO0UjmmwViouGfiGVt2KBpqPYD03wG6azzE7EnD0f/YkL5nPDFuo/Hf7f6/6SB9n/dv602DOEMp
	vEQ34ZXpZFL3zM68o+lDOsEnCMjtURG05FB/wqP0/TyQc+OLT0XrUcQtMrL6CIJ48vla6YmBB7zBq
	4mR5rOWaGIh++knHl1EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvk0-0001GE-HZ; Wed, 01 May 2019 20:22:08 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvju-0001Fp-4n; Wed, 01 May 2019 20:22:03 +0000
Received: by mail-ot1-f67.google.com with SMTP id g24so128993otq.2;
 Wed, 01 May 2019 13:22:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=j6+33T0eQYv+IRslxaB17BzPQR0ZaM4rayHxbAHslak=;
 b=sx3a5pGlCNYDQWAdNA/7YZvR25uWjfKfgylv4pNUl9YYn6y3xYsd+1RBFf+ZJHFekT
 Hx0ZM8UDn7PpF2ZGe0AX3jH2PzmlCPbFrmxI1wwaqcfsVQJYTG+aWxMkSnfLTkMu6Hnd
 Gat1y9yrsz5ucgzQwah0xwJK+fU59Z8uUqA3SSBdFW/Gb6e93FEzkuk2QMfqqCQZp1ed
 LC3GQtAAISYpI9TZIRcT0Wo2/fPTsVSEJ/JmKKn8U5hrdPZm5QCaMbA5XNn5mOadLCXk
 k/DkYVHRXs5BBPUb9MRJf7UZ1cSpCnrRUvQAJqhMiSBAU0oHYnSMFvqSNwi7VJsOxNWB
 upGw==
X-Gm-Message-State: APjAAAWkJmPCQQPRfPmb1a7WmYPjmez93N2UlbhstTmnoJ19tr7Lp8SB
 +nrfDs6dxUq5h6kvIftMIQ==
X-Google-Smtp-Source: APXvYqwBsg5utWlEXRbe3QYD7lyCysBSGwYTazCLxVYMMvMP+E5wWbFBBWdUCspop11+hVf0xHJhqQ==
X-Received: by 2002:a9d:3624:: with SMTP id w33mr19027211otb.284.1556742121379; 
 Wed, 01 May 2019 13:22:01 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c26sm2891416otl.19.2019.05.01.13.22.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 13:22:00 -0700 (PDT)
Date: Wed, 1 May 2019 15:22:00 -0500
From: Rob Herring <robh@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v2 2/4] dt-bindings: doc: Reflect new NVMEM
 of_get_mac_address behaviour
Message-ID: <20190501202200.GB15495@bogus>
References: <1556456002-13430-1-git-send-email-ynezz@true.cz>
 <1556456002-13430-3-git-send-email-ynezz@true.cz>
 <20190428165326.GI23059@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190428165326.GI23059@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_132202_182512_13562023 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Frank Rowand <frowand.list@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>, devicetree@vger.kernel.org,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
 Salil Mehta <salil.mehta@huawei.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Alban Bedel <albeu@free.fr>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBBcHIgMjgsIDIwMTkgYXQgMDY6NTM6MjZQTSArMDIwMCwgQW5kcmV3IEx1bm4gd3Jv
dGU6Cj4gT24gU3VuLCBBcHIgMjgsIDIwMTkgYXQgMDI6NTM6MjBQTSArMDIwMCwgUGV0ciDFoHRl
dGlhciB3cm90ZToKPiA+IEFzIG9mX2dldF9tYWNfYWRkcmVzcyBub3cgc3VwcG9ydHMgTlZNRU0g
dW5kZXIgdGhlIGhvb2QsIHdlIG5lZWQgdG8gdXBkYXRlCj4gPiB0aGUgYmluZGluZ3MgZG9jdW1l
bnRhdGlvbiB3aXRoIHRoZSBuZXcgbnZtZW0tY2VsbCogcHJvcGVydGllcywgd2hpY2ggd291bGQK
PiA+IG1lYW4gY29weSZwYXN0aW5nIGEgbG90IG9mIHJlZHVuZGFudCBpbmZvcm1hdGlvbiB0byBl
dmVyeSBiaW5kaW5nCj4gPiBkb2N1bWVudGF0aW9uIGN1cnJlbnRseSByZWZlcmVuY2luZyBzb21l
IG9mIHRoZSBNQUMgYWRkcmVzcyBwcm9wZXJ0aWVzLgo+ID4gCj4gPiBTbyBJJ3ZlIGp1c3QgcmVt
b3ZlZCBhbGwgdGhlIHJlZmVyZW5jZXMgdG8gdGhlIG9wdGlvbmFsIE1BQyBhZGRyZXNzCj4gPiBw
cm9wZXJ0aWVzIGFuZCByZXBsYWNlZCB0aGVtIHdpdGggdGhlIHJlZmVyZW5jZSB0byB0aGUgbmV0
L2V0aGVybmV0LnR4dAo+ID4gZmlsZS4gIFdoaWxlIGF0IGl0LCBJJ3ZlIGFsc28gcmVtb3ZlZCBv
dGhlciBvcHRpb25hbCBFdGhlcm5ldCBwcm9wZXJ0aWVzLgo+IAo+IEhpIFBldHIKPiAKPiBJIHRo
aW5rIGVhY2ggaW5kaXZpZHVhbCBiaW5kaW5nIG5lZWRzIHRvIGdpdmUgYSBoaW50IGlmCj4gb2Zf
Z2V0X21hY19hZGRyZXNzKCkgaXMgdXNlZCwgYW5kIGhlbmNlIGlmIHRoZXNlIG9wdGlvbmFsIHBy
b3BlcnRpZXMKPiBhcmUgcmVzcGVjdGVkLiBUaGUgc2FtZSBpcyB0cnVlIGZvciBvdGhlciBvcHRp
b25hbCBwcm9wZXJ0aWVzLiBJIGRvbid0Cj4gd2FudCB0byBoYXZlIHRvIGxvb2sgYXQgdGhlIGRy
aXZlciB0byBrbm93IHdoaWNoIG9wdGlvbmFsIHByb3BlcnRpZXMKPiBhcmUgaW1wbGVtZW50ZWQs
IHRoZSBiaW5kaW5nIHNob3VsZCB0ZWxsIG1lLiBXaGF0IHRoZSBvcHRpb25hbAo+IHByb3BlcnRp
ZXMgbWVhbiwgYW5kIHdoaWNoIG9yZGVyIHRoZXkgYXJlIHVzZWQgaW4gY2FuIHRoZW4gYmUgZGVm
aW5lZAo+IGluIGV0aGVybmV0LnR4dC4KPiAKPiBTbyBpIHdvdWxkIHN1Z2dlc3RzIHNvbWV0aGlu
ZyBsaWtlOgo+IAo+IFRoZSBNQUMgYWRkcmVzcyB3aWxsIGJlIGRldGVybWluZWQgdXNpbmcgdGhl
IG9wdGlvbmFsIHByb3BlcnRpZXMKPiBkZWZpbmVkIGluIGV0aGVybmV0LnR4dC4KPiAKPiBBbmQg
bGVhdmUgYWxsIHRoZSBvdGhlciBvcHRpb25hbCBwYXJhbWV0ZXJzIGluIHRoZSBiaW5kaW5ncy4K
Clllcy4gR2VuZXJhbGx5IHdlIG5lZWQgdG8ga25vdyB3aGljaCBwcm9wZXJ0aWVzIGZyb20gYSBj
b21tb24gcG9vbCBvZiAKcHJvcGVydGllcyBhcHBseSB0byBhIHNwZWNpZmljIGJpbmRpbmcuIEFs
c28gdGhlcmUgYXJlIHR5cGljYWxseSAKYWRkaXRpb25hbCBjb25zdHJhaW50cyBmb3IgYSBzcGVj
aWZpYyBiaW5kaW5nLgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
