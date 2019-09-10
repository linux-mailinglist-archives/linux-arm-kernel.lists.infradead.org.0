Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 432C0AED8B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 16:45:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YubueUbgDdOuK2GjHt3ZHoTco2/rJCmEUAWamv5Tfg0=; b=f14AIY3tQah3/W
	7iZIH+zqgB/KRj7OVXzJ993u6al0j9y75ztktBWgv9irmaA3uqwabMt+iRuCF1Nx4J1Q1wWRMSJHB
	HjF6UlL2QeNK5YaHCiZLsLM6/LZwQic/ut78+tmHk8KJR2Z+IwYy6W5o1d+NCNCf5FN6XKE26jOE/
	GxgFA48UTBrTBegSjqUy/iA2VAb9CSIL//APbXSv5B8LpIFHk6GJqgpyYZwuejt7SLvwtQEQj2tCc
	ZOmiwPu9zp2bLDOT+aSRv4HpW8JqrIqvAWqxuN+rrr+2+Iph0DilLP/Nhekz5AruELf07vhP3ygld
	dkR3ginha3szZAGPEluA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hOH-0004Qh-Jo; Tue, 10 Sep 2019 14:45:09 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hO4-0004QB-53
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 14:44:57 +0000
Received: by mail-wr1-x441.google.com with SMTP id y19so20841133wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 07:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=K5duO6IbkJ8p2e8p4z12GaGcHnnxC09bJLQvbWViWok=;
 b=fu4g8oruUidKGWMGKAQilbHJ3zZ7QI7stPHT9LX/emhpA0g/uhNnCIfSzvekCRxVHx
 Wnrh4cBhFQ05o5vH8hUWdGFnFKzPPI9fi/iv6vHcJlFrQ1nMCaJ5BpIulyKguP3lhglr
 9e74K100oZ8+JWH98eeNglVWTOWnCXBZMme6/Lw6ruC2MmV+R72Ou/j9luMFFmINvC1f
 0GiPVVVtqRaVbXqxLF3HVhEllIaskwiqn2821fB3L4wcOj8TsZS0O0kHENJXS4uCTrJQ
 YxZ3oWIPlmC3d7SH/UJsQs1IRCIUc/CdG9PM4XnY07ShLokUiUoQhY2q4EV9Sjn6/cVT
 TbNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=K5duO6IbkJ8p2e8p4z12GaGcHnnxC09bJLQvbWViWok=;
 b=YX0zk+0I9W4kCXfaIuq9E3X2FjzdosRK2uOKlJWKuBDejgpgRjTj9QJzbZl+S9oqp1
 FJUWkGBnJSE9TjNcQsPtUjSEDRY3G/XB89jX+OQicXR2NyUbCcZcrOK2esD3enL7OsFT
 1luw2iEoPxr8ugaLeSH3IYv1oahO7DO9Py4wDg6byiy+wKQ32bMakZ9R+g21aiSlvR//
 WWenXMhpOe6uNltSRojPkAvpLcqOfUWkT6ciXVyDIH5ojED503VhhXTuAO5ZVpZczDzp
 po+ls8jViR93yMPfZQ7hgvxZo8zbJhrzq6MAngTMgeaKruH/QI20LD7nWEtPsblV5Fod
 klzg==
X-Gm-Message-State: APjAAAUHEGVJzKXbke9+vILGG4Fu+yfWgZtcCSKbTliRxifgQF39qoSQ
 S4el1lWIdTsHBOsJBy1qJ3k=
X-Google-Smtp-Source: APXvYqy8oCF9jzlFwjhls5MC+bV0p4KcSxaCpKbMvnhXuGJ9mOg6cetjGtTvTEefF3ROADm+FtzlQA==
X-Received: by 2002:a5d:45c3:: with SMTP id b3mr27792792wrs.207.1568126694371; 
 Tue, 10 Sep 2019 07:44:54 -0700 (PDT)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id a192sm5705205wma.1.2019.09.10.07.44.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 10 Sep 2019 07:44:53 -0700 (PDT)
Date: Tue, 10 Sep 2019 16:44:52 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: Sebastian Reichel <sre@kernel.org>
Subject: Re: [RFC] ARM: omap3: Enable HWMODS for HW Random Number Generator
Message-ID: <20190910144452.vmhmls3xhh6hd5xw@pali>
References: <20190828150037.2640-1-aford173@gmail.com>
 <20190905230443.GA52127@atomide.com>
 <CAHCN7xKxffJUV2V2CCuw0iPqUm4LJT28GMrcF2=8rDJQM2dOOw@mail.gmail.com>
 <20190910143732.3g3q4acvnx2pqvjx@earth.universe>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910143732.3g3q4acvnx2pqvjx@earth.universe>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_074456_190876_5A1978ED 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pali.rohar[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
 devicetree <devicetree@vger.kernel.org>, Paul Walmsley <paul@pwsan.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 Adam Ford <adam.ford@logicpd.com>, Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <aford173@gmail.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlc2RheSAxMCBTZXB0ZW1iZXIgMjAxOSAxNTozNzozMiBTZWJhc3RpYW4gUmVpY2hlbCB3
cm90ZToKPiBIaSwKPiAKPiBPbiBUdWUsIFNlcCAxMCwgMjAxOSBhdCAwODo1Njo0OUFNIC0wNTAw
LCBBZGFtIEZvcmQgd3JvdGU6Cj4gPiBPbiBUaHUsIFNlcCA1LCAyMDE5IGF0IDY6MDQgUE0gVG9u
eSBMaW5kZ3JlbiA8dG9ueUBhdG9taWRlLmNvbT4gd3JvdGU6Cj4gPiA+IE9oIGFuZCB0aGlzIG5l
ZWRzIHRvIGRlZmF1bHQgdG8gc3RhdHVzID0gImRpc2FibGVkIiBmb3IKPiA+ID4gSFMgZGV2aWNl
cyBsaWtlIG45MDAgYXMgaXQgbmVlZHMgdG8gdXNlIHRoZSBvbWFwMy1yb20tcm5nLgo+ID4gCj4g
PiBJIGRvbid0IGtub3cgZW5vdWdoIGFib3V0IHRoZSBIUyB2ZXJzaW9uIG9mIHRoZSBPTUFQMywg
YnV0IHdoYXQncyB0aGUKPiA+IG1haW4gZGlmZmVyZW5jZSBiZXR3ZWVuIG9tYXAzLXJvbS1ybmcg
YW5kIHRoaXMgb25lPwo+IAo+IFRoZSBPTUFQIEhTIGNoaXBzIGhhdmUgdGhlIGJ1cyBmaXJld2Fs
bCBjb25maWd1cmVkIHRvIGJsb2NrIGRpcmVjdAo+IGFjY2VzcyB0byBzb21lIGNyeXB0b2dyYXBo
eSByZWxhdGVkIGRldmljZXMuIFRoZSBrZXJuZWwgd2lsbCBjcmFzaAo+IHdpdGggYSBidXMgZXJy
b3IsIGlmIHlvdSB0cnkgdG8gcmVhZC93cml0ZSB0aGUgcmVnaXN0ZXJzIGZvcgo+IHByb3RlY3Rl
ZCBkZXZpY2VzLgoKQW5kIGlmIHlvdSB0cnkgdG8gcmVhZCBpdCBtb3JlIHRpbWVzLCBTT0Mgd291
bGQgYmUgcmVib290ZWQgZm9yIHNlY3VyaXR5CnJlYXNvbnMuCgo+IFRoZSBvbWFwMy1yb20tcm5n
IGF2b2lkcyB0aGlzIGJ5IGNvbW11bmljYXRpbmcKPiB3aXRoIHRoZSBzZWN1cml0eSBtaWRkbGV3
YXJlIGNvbXBvbmVudCBpbnN0ZWFkIG9mIGRpcmVjdGx5IGFjY2Vzc2luZwo+IHRoZSBSTkcgaGFy
ZHdhcmUuCgpBbmQgdGhhdCBjb21wb25lbnQgaXMgbG9hZGVkIGJ5IHNpZ25lZCBib290bG9hZGVy
IGludG8gInNlY3VyZSIgYXJlYSBub3QKYWNjZXNzaWJsZSBieSAibm9uLXNlY3VyZSIgd29yayAo
bGlrZSBrZXJuZWwpIGFuZCBjb21tdW5pY2F0aW9uIGlzIGRvbmUKdmlhIGFybSBzbWMgaW5zdHJ1
Y3Rpb24uCgotLSAKUGFsaSBSb2jDoXIKcGFsaS5yb2hhckBnbWFpbC5jb20KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
