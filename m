Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF0F1EC5F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 01:56:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=149UgXxf0U4fojlIGCvclf7y8gkdf8YLWC/qE7hKuhA=; b=LPm545nKT8s0NY
	hbhcmh2zhQTFNfqgrumQMrOkayS0QervZAqdyaTtKsoJ064T0uP2uSYzZ6C0df1l2HLgIfZiF8QHe
	XWCMWMxZQrIYlpAnnpXQVCuJCRnGGyQN/6/TQJj6xJKjRLMsxFDX8UrrykiV6K96yPFuLkUE+UNTf
	KgyI8mprGq0gMG4zAcZMGz19hSLbiWRQNBjW8ka6+WM2mlsQzLCXpZ4Rky6E01unepIOK/KdDdPSc
	Pd9du/4R3YH48SjF9IR/OtTH0ZhV8NU/RH2GpNuI1GoOSDVMuW4zyPbGr+2tbjLA/gZIzYoeIxdAH
	/5zCRYRji7wl8E0eVT0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgGlH-0007BR-GH; Tue, 02 Jun 2020 23:56:03 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgGlA-0007B8-Le
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 23:55:58 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 001D92A4;
 Wed,  3 Jun 2020 01:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1591142155;
 bh=QtC3d2zH8DvFEwa0moDTJilzuumkV/LvgEbTdNULovA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ocqfy6XpPY3bki60FZmXAQnOeRHTXk9yfiZnJYlrxI67ycgpEWcjwt77EMv82uRoJ
 /4eM0GZZgce7hc4XbjxGP5LMItAc0N0QfTkHPbCVkupk/BtT9HePPGR+mJpU6Y6FQi
 +1ofohPyC4dedG6DBkD0OxhjZdwkoV/GybrWBHmU=
Date: Wed, 3 Jun 2020 02:55:39 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
Subject: Re: [PATCH v3 3/4] ARM: dts: stm32: make hdmi-transmitter node
 compliant with DT bindings
Message-ID: <20200602235539.GT6547@pendragon.ideasonboard.com>
References: <20200601063308.13045-1-ricardo.canuelo@collabora.com>
 <20200601063308.13045-4-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601063308.13045-4-ricardo.canuelo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_165556_855870_C5DEE5C4 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: marex@denx.de, devicetree@vger.kernel.org, michal.simek@xilinx.com,
 xuwei5@hisilicon.com, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUmljYXJkbywKClRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgoKT24gTW9uLCBKdW4gMDEsIDIw
MjAgYXQgMDg6MzM6MDdBTSArMDIwMCwgUmljYXJkbyBDYcOxdWVsbyB3cm90ZToKPiBSZW9yZGVy
IHRoZSBJMkMgc2xhdmUgYWRkcmVzc2VzIG9mIHRoZSBoZG1pLXRyYW5zbWl0dGVyIG5vZGUgYW5k
IHJlbW92ZQo+IHRoZSBhZGksaW5wdXQtc3R5bGUgYW5kIGFkaSxpbnB1dC1qdXN0aWZpY2F0aW9u
IHByb3BlcnRpZXMgdG8gbWVldCB0aGUKPiBhZGksYWR2NzUxMyBiaW5kaW5nIHJlcXVpcmVtZW50
cy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBSaWNhcmRvIENhw7F1ZWxvIDxyaWNhcmRvLmNhbnVlbG9A
Y29sbGFib3JhLmNvbT4KCkFja2VkLWJ5OiBMYXVyZW50IFBpbmNoYXJ0IDxsYXVyZW50LnBpbmNo
YXJ0QGlkZWFzb25ib2FyZC5jb20+Cgo+IC0tLQo+ICBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1w
MTV4eC1kaGNvci1hdmVuZ2VyOTYuZHRzaSB8IDYgKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
L2Jvb3QvZHRzL3N0bTMybXAxNXh4LWRoY29yLWF2ZW5nZXI5Ni5kdHNpIGIvYXJjaC9hcm0vYm9v
dC9kdHMvc3RtMzJtcDE1eHgtZGhjb3ItYXZlbmdlcjk2LmR0c2kKPiBpbmRleCA5MzAyMDI3NDJh
M2YuLmI2N2EyMWE4Njk4YSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1w
MTV4eC1kaGNvci1hdmVuZ2VyOTYuZHRzaQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMy
bXAxNXh4LWRoY29yLWF2ZW5nZXI5Ni5kdHNpCj4gQEAgLTE4NSw4ICsxODUsOCBAQAo+ICAmaTJj
NCB7Cj4gIAloZG1pLXRyYW5zbWl0dGVyQDNkIHsKPiAgCQljb21wYXRpYmxlID0gImFkaSxhZHY3
NTEzIjsKPiAtCQlyZWcgPSA8MHgzZD4sIDwweDJkPiwgPDB4NGQ+LCA8MHg1ZD47Cj4gLQkJcmVn
LW5hbWVzID0gIm1haW4iLCAiY2VjIiwgImVkaWQiLCAicGFja2V0IjsKPiArCQlyZWcgPSA8MHgz
ZD4sIDwweDRkPiwgPDB4MmQ+ICwgPDB4NWQ+Owo+ICsJCXJlZy1uYW1lcyA9ICJtYWluIiwgImVk
aWQiLCAiY2VjIiwgInBhY2tldCI7Cj4gIAkJY2xvY2tzID0gPCZjZWNfY2xvY2s+Owo+ICAJCWNs
b2NrLW5hbWVzID0gImNlYyI7Cj4gIAo+IEBAIC0yMDQsOCArMjA0LDYgQEAKPiAgCQlhZGksaW5w
dXQtZGVwdGggPSA8OD47Cj4gIAkJYWRpLGlucHV0LWNvbG9yc3BhY2UgPSAicmdiIjsKPiAgCQlh
ZGksaW5wdXQtY2xvY2sgPSAiMXgiOwo+IC0JCWFkaSxpbnB1dC1zdHlsZSA9IDwxPjsKPiAtCQlh
ZGksaW5wdXQtanVzdGlmaWNhdGlvbiA9ICJldmVubHkiOwo+ICAKPiAgCQlwb3J0cyB7Cj4gIAkJ
CSNhZGRyZXNzLWNlbGxzID0gPDE+OwoKLS0gClJlZ2FyZHMsCgpMYXVyZW50IFBpbmNoYXJ0Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
