Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A281158B8C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 09:57:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=95y4dpwknFzWY9Uv9xa18b+QD8GxC0QbCPQ9oVRzhXI=; b=L2SnHI6OhHT/UN
	aTgkauEFBVTKP1rCINkhA7R77YcrOYlI52a0yHkjB0wwwnwtVAeCyISKcMIihnO0lQqTIjk/O6v+D
	WX4hlEuDIzk5lVk+1iboI0im3IvucOsqwnUuywrqFwogT6DIwrggxX399FUEXP8DpcKomw8fc3kVg
	/L/pjoZBMt2qmgGI6nyhLp7W3bVX3pR7OHQCTE4VqMnHacK/m297dVt9EszTIf/UY9LgBtGcDzuUk
	Iwe4rVwtn28uDiKHv5alC/3nKI0pzstf1xYBdtNPXRT1nXbxE8CtEU7KL7bZxDR6fcjFv5cZdK+vp
	PL0hNm6N/DTyp+cNTu8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1RME-0001LY-6i; Tue, 11 Feb 2020 08:57:26 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1RM4-0001LB-VN
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 08:57:19 +0000
Received: by mail-wr1-f65.google.com with SMTP id u6so11243493wrt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 00:57:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=GOJP770Tiah9k34K1i4D0mmMCals5hmtcP+1Vo4a7x8=;
 b=X877BToG5q+gqjGHRgUh8aEN9TEedDxZF7p5cI72p6gbysRE+pRn2q/UyO/tnkUqyN
 ePVkg00ThEu+Muyh4wCvUpdCBjSmN0OJXbOi7mWOqgPTjQQgONLdHbYJeo51tX/ehLQ2
 MGHeVsq6X7vEGFQVhQCLFv6+fkoOXiCwggs+S1RF0EUzSqDNpjCMPhdt3cVVxjvXUfbL
 2/lgYQr4wdYjyZ/Gc4XgBO14EzmjblW+9C0KxGFlAUXojqSlM7uJNCj5SVjXPawWiOC1
 W3LppondTJoG7Is3s59X3OGhYc7juhUuuY52qqnHDIcN2YJKaKHo6BZOtbOLDnzMNvj2
 HIYg==
X-Gm-Message-State: APjAAAXjTbJkrLglzLI34VzHcidsxZffh7Zgr8R9vu52r2c7Ml2NMsT9
 EE2x7ARGdyft7SkwG/QlI6DxtAl4
X-Google-Smtp-Source: APXvYqzsrr7j7rXdroEd/UAK3WbLfUA/Hqi/3P6/pXxf0KxG2etFKeQoDoB4a8RlkFJ2eyUywasuCQ==
X-Received: by 2002:adf:df0e:: with SMTP id y14mr7056612wrl.377.1581411434574; 
 Tue, 11 Feb 2020 00:57:14 -0800 (PST)
Received: from tfsielt31850 ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id l131sm2902199wmf.31.2020.02.11.00.57.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 00:57:13 -0800 (PST)
Message-ID: <de946127eb530c23395f7c882deb127c2e4bbffa.camel@andred.net>
Subject: Re: [PATCH RESEND 1/1] ARM: dts: imx7s: Add power domain for imx7d
 HSIC
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: Peter Chen <peter.chen@nxp.com>, shawnguo@kernel.org
Date: Tue, 11 Feb 2020 08:57:12 +0000
In-Reply-To: <1575342112-14702-1-git-send-email-peter.chen@nxp.com>
References: <1575342112-14702-1-git-send-email-peter.chen@nxp.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_005717_009172_9A1D6578 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andre.draszik[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTEyLTAzIGF0IDExOjAxICswODAwLCBQZXRlciBDaGVuIHdyb3RlOgo+IE90
aGVyd2lzZSwgdGhlIHN5c3RlbSB3aWxsIGhhbmcgaWYgVVNCIGRyaXZlciB0cnkgdG8gYWNjZXNz
Cj4gcG9ydHNjIHJlZ2lzdGVyLgo+IAo+IENjOiBBbmRyw6kgRHJhc3ppayA8Z2l0QGFuZHJlZC5u
ZXQ+Cj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgQ2hlbiA8cGV0ZXIuY2hlbkBueHAuY29tPgo+IC0t
LQo+ICBhcmNoL2FybS9ib290L2R0cy9pbXg3cy5kdHNpIHwgNyArKysrKysrCj4gIDEgZmlsZSBj
aGFuZ2VkLCA3IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9k
dHMvaW14N3MuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdzLmR0c2kKPiBpbmRleCBjMWE0
ZmZmNWNlZGEuLmE1YjM4MGY1MzBmOCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9p
bXg3cy5kdHNpCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14N3MuZHRzaQo+IEBAIC02NTgs
NiArNjU4LDEyIEBACj4gIAkJCQkJCXJlZyA9IDwxPjsKPiAgCQkJCQkJcG93ZXItc3VwcGx5ID0g
PCZyZWdfMXAwZD47Cj4gIAkJCQkJfTsKPiArCj4gKwkJCQkJcGdjX2hzaWNfcGh5OiBwb3dlci1k
b21haW5AMiB7Cj4gKwkJCQkJCSNwb3dlci1kb21haW4tY2VsbHMgPSA8MD47Cj4gKwkJCQkJCXJl
ZyA9IDwyPjsKPiArCQkJCQkJcG93ZXItc3VwcGx5ID0gPCZyZWdfMXAyPjsKPiArCQkJCQl9Owo+
ICAJCQkJfTsKPiAgCQkJfTsKPiAgCQl9Owo+IEBAIC0xMTAxLDYgKzExMDcsNyBAQAo+ICAJCQkJ
Y29tcGF0aWJsZSA9ICJmc2wsaW14N2QtdXNiIiwgImZzbCxpbXgyNy11c2IiOwo+ICAJCQkJcmVn
ID0gPDB4MzBiMzAwMDAgMHgyMDA+Owo+ICAJCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDQwIElS
UV9UWVBFX0xFVkVMX0hJR0g+Owo+ICsJCQkJcG93ZXItZG9tYWlucyA9IDwmcGdjX2hzaWNfcGh5
PjsKPiAgCQkJCWNsb2NrcyA9IDwmY2xrcyBJTVg3RF9VU0JfQ1RSTF9DTEs+Owo+ICAJCQkJZnNs
LHVzYnBoeSA9IDwmdXNicGh5bm9wMz47Cj4gIAkJCQlmc2wsdXNibWlzYyA9IDwmdXNibWlzYzMg
MD47CgpJdCdzIGEgYml0IGxhdGUgbm93LCBidXQgZm9yIGNvbXBsZXRlbmVzcywgd2l0aCB0aGlz
IHBhdGNoIGFwcGxpZWQKdGhlIEhTSUMgcG9ydCB3b3JrcyBmaW5lIG9uIG15IGlNWDdkIGJvYXJk
IG5vdy4KClRoYW5rcyBQZXRlci4KClRlc3RlZC1ieTogQW5kcsOpIERyYXN6aWsgPGdpdEBhbmRy
ZWQubmV0PgoKCkNoZWVycywKQW5kcmUnCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
