Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7014E100BA0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 19:41:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BAqukV1lM1iqoahjBOMM9KlfKpNJLoV33cUHgLL4Y+Y=; b=Rtaw8msaRGwk1t
	9ScBiE1GCsdSpxD7F5meF+Mc9FwwkYBvggC3g5pWWYwzeYNP1vC0PrFFCFz+mEI1lgZTeKTkTJTkw
	cBAxJZW9AR8HYSHDkdSaMTHrC/krimT+fAlOi1rrYVGmRxaulGIlz8lNDlVX81frTXVk5Ub5dB/L4
	1LcLtGkfgBSw67t5kpkwBQTRlfc3USwEu136wf497VYrtsr9ySTHS01BUaLaTf6E//wsUBuJVwBgJ
	YI1pQ+0TVo9rJ0Ez3o1LAtS4cWhAeWbK/mFIAl8z9oBvm6xiYZnEJbDJcKP7YfSXM4Q8g9LkyKGqF
	SCdLFNhXTc+81bwWGkdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWlxV-0006Qm-Bd; Mon, 18 Nov 2019 18:41:09 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWlxM-0006Ph-LR; Mon, 18 Nov 2019 18:41:02 +0000
Received: by mail-il1-x142.google.com with SMTP id i6so7562713ilr.11;
 Mon, 18 Nov 2019 10:40:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=b3hv6InacuRwktmW+EoXmlffmYdwIhzVHa7KvQHpf/k=;
 b=VAT/N5vOWN8d5YI/h51g0OFezrcoht7jZZc8sl9xFvbtM2C6MlrupQ/qvB5av3paIt
 z2KH0SNQWWLVa6215DSLIS9MMDSxCO2MWJZ+UeOeyLH0QmPkSS9O6m6Z9y/vjB+cog5m
 RUcNpSRD5+vfKV64YvzxnlYSvJixficmxMUgkxlQrWQEuMbq7KqP6kts0+WgLk1ldOC5
 0INAOKuIVgO3unxwEYBw5Ur04zLYbp/u4ivU+VrcCZ8vtXRYn32uyujMPzexx276QyE6
 dbPNtHI1jH6j5F5Llve4PnC0hSRk0j/9T5cG2pQF9zN7TDNiSTYunSnq/Nj3g+r+7NVf
 7pbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=b3hv6InacuRwktmW+EoXmlffmYdwIhzVHa7KvQHpf/k=;
 b=N2899JEx42HNqIbt4H6i2o9STclrXh78+C8kcJGMo2rjHlOGBzL9mpfuJL5JGXotzp
 kZ0FswrBLQIsOt4Jwu5rUv0TL5wW4Cl7w2pGn1jzsgNq7uC4ic+wddTZ8w8IHhOv8iOR
 1Pti/gs5D/Mih8I0Srm+9CtGQh6nDUQ44L8ug4RxHXOWYCfdLQm0F+uujrd4lS4ed9+i
 hJyZ6HmqQd3s12cQGH14nvoagKwy/yecn9Ri5AU4l6giezgUvs7eGNg1B1b0BXxDoWYG
 SnmjbI4oGaH+DD6JYS14Tx3ymQksJpkB+QYu0R9r3cKxD4HjpeElGdtykjRcSCgGpO2v
 C3ZA==
X-Gm-Message-State: APjAAAUbrxJke5UEbOdEgTDxxN/bzojjhJvkrlLoRlE+vnH1KKav9z0V
 ELXeNRxy3nMX98KQe27qUrOMvJkBxtE73tzhVBA=
X-Google-Smtp-Source: APXvYqw0aClURjDebOhw3S+luQbOyqe0gZUeqf/5SEa4XVYWW4/OqDrSNeUcoVvMxuP/tAKPDr4jhrqcjaSbD+j6UyY=
X-Received: by 2002:a92:d58e:: with SMTP id a14mr17667877iln.4.1574102458952; 
 Mon, 18 Nov 2019 10:40:58 -0800 (PST)
MIME-Version: 1.0
References: <20191117101545.6406-1-matwey@sai.msu.ru> <1784520.t1z2W423De@phil>
In-Reply-To: <1784520.t1z2W423De@phil>
From: "Matwey V. Kornilov" <matwey.kornilov@gmail.com>
Date: Mon, 18 Nov 2019 21:40:47 +0300
Message-ID: <CAJs94EZPLedH4w3+5vfJA+f+1+zLETBdETpqNPytp3LG63az9Q@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable PCIe for Radxa Rock Pi 4
 board
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_104100_729908_FABD8755 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matwey.kornilov[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

0L/QvSwgMTgg0L3QvtGP0LEuIDIwMTkg0LMuINCyIDAzOjQ2LCBIZWlrbyBTdHVlYm5lciA8aGVp
a29Ac250ZWNoLmRlPjoKPgo+IEhpIE1hdHdleSwKPgo+IEFtIFNvbm50YWcsIDE3LiBOb3ZlbWJl
ciAyMDE5LCAxMToxNTozNyBDRVQgc2NocmllYiBNYXR3ZXkgVi4gS29ybmlsb3Y6Cj4gPiBSYWR4
YSBSb2NrIFBpIDQgaXMgZXF1aXBwZWQgd2l0aCBNLjIgUENJZSBzbG90LAo+ID4gc28gZW5hYmxl
IFBDSWUgZm9yIHRoZSBib2FyZC4KPiA+Cj4gPiBUaGUgY2hhbmdlcyBoYXMgYmVlbiB0ZXN0ZWQg
d2l0aCBJbnRlbCBTU0QgNjYwcCBzZXJpZXMgZGV2aWNlLgo+ID4KPiA+ICAgICAwMTowMC4wIENs
YXNzIDAxMDg6IERldmljZSA4MDg2OmYxYTggKHJldiAwMykKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5
OiBNYXR3ZXkgVi4gS29ybmlsb3YgPG1hdHdleUBzYWkubXN1LnJ1Pgo+Cj4gYXBwbGllZCB0aGUg
cGF0Y2gsIGJ1dCB5b3UgY291bGQgZG8gYSBmb2xsb3ctdXAgdGhhdCBtaW1pY3MKPiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9saW51eC1hcm0ta2VybmVsLzIwMTkxMTE3MTQwNzI4LjkxNy0xLWxp
bnV4LmFtb29uQGdtYWlsLmNvbS8KPgo+IGFrYSBmaW5kIG91dCBmcm9tIHRoZSBzY2hlbWF0aWNz
IHdoZXJlIHRoZSAwLjkgYW5kIDEuOCBzdXBwbGllcyBjb21lIGZyb20uCgpDdXJyZW50IHNjaGVt
YXRpY3MKKGh0dHBzOi8vZGwucmFkeGEuY29tL3JvY2twaTQvZG9jcy9ody9yb2NrcGk0L3JvY2tw
aTRfdjEzX3NjaF8yMDE4MTExMi5wZGYpCmlzIGNvbnRyb3ZlcnNpYWwgb24gMS44IHN1cHBseToK
Ck9uIHNoZWV0IDE1IGl0IHNheXMgdGhhdCAxLjggaXMgc3VwcGxpZWQgYnkgVkNDXzFWOAphdCB0
aGUgc2FtZSB0aW1lIG9uIHNoZWV0IDMgaXQgc2F5cyB0aGF0IGl0IGlzIHN1cHBsaWVkIGJ5IFZD
Q0FfMVY4Cgo+Cj4gVGhhbmtzCj4gSGVpa28KPgo+CgoKLS0gCldpdGggYmVzdCByZWdhcmRzLApN
YXR3ZXkgVi4gS29ybmlsb3YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
