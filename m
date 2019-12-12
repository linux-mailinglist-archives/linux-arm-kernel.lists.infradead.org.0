Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D94FC11C847
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 09:34:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6l/37MzDAPo3mNbZUtQqFygMD+M/IOq2TZllWFN14Io=; b=nabkJfC/rqY/93
	BhunQlZpugszuPA96xl10v7ud52MbAPxGmAfkU4TMMtQMQaRIUFrFTVDKXSe/NTtJTKTqEzZCxZUl
	pQfueWxx773IdzZkPoZ0iXace8/5eqbCg6W28fSaCOHe1ejStPQWjmfeDUeMIOKxLMS91ZHH2af0C
	4brHFCwJqYzVREuaiPqvfXUqDDRNjHMbmDi1wSCtc9z36uA4YZpQw+skeNlixTlMyc61paoW7Ljo2
	ArJ5ivnO98Sx9mreRJpbhYkEr7E3E3D/cyIVsWA1yTw78lGWvSVdLNid90EqF5UYNPGrfFrzZPv3V
	x1VS3dg9Fn4l1vTvoJyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifJvJ-0007GV-BG; Thu, 12 Dec 2019 08:34:13 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifJv9-0007Fj-98; Thu, 12 Dec 2019 08:34:04 +0000
Received: by mail-ot1-f68.google.com with SMTP id a15so975376otf.1;
 Thu, 12 Dec 2019 00:34:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7fvx7yDi2OJnCljKrNkvyaUJ3elftb+j+bBc7GwPwuI=;
 b=eRxG1GczE8bRysIujoHfbfTiN0lViH+6Ay5O6IlYseGrTPVo755GhjzvbvnhYG7teg
 n94oNkLUKvUsp1T30AvNl4B7j95iMZ37wCRE5JbFYE6yQEXGzLOomO0yLRY4fqFVmwz7
 /P+9eex+zscWXuTraGwKaEWj9cW1Sbp7R5bwDel05LwQv9mJ1HYpQyzrIGzmb6YfKjX3
 emJHA4I5aNGBWcR8LrJxjQhV5Qhq5awg90WWSYHegcX9B1hLN8Sf73G6FAw/nSJRyL7n
 5UMYlaDMPNeqLamDX2XCTn/3iv1r3qXGQXdXpTF6aCADq8AinRjwCpixkrt1WFJby4hR
 XKLg==
X-Gm-Message-State: APjAAAWebJR0dc72mihFTo5tZPHLP/SJkRfk7wSLenkZt0EkHJIPdcjS
 oKWoQuItoqCx/iip5v+pYxLuZ34i22RbkMeHx+M=
X-Google-Smtp-Source: APXvYqyg8EUp0UowSQsLs+cQtO/euj7BCoC7VMBAMlGTNmuDrRrNYIEAmAIr8CXJ/20PVq4AUPZTvZrcUCUshJokNog=
X-Received: by 2002:a9d:dc1:: with SMTP id 59mr7008960ots.250.1576139641834;
 Thu, 12 Dec 2019 00:34:01 -0800 (PST)
MIME-Version: 1.0
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-20-afaerber@suse.de>
In-Reply-To: <20191212033952.5967-20-afaerber@suse.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 12 Dec 2019 09:33:50 +0100
Message-ID: <CAMuHMdWeqoqQBtsdN2Q=Urc22Ezj5nBRFPk1_V5gvGV9BGuMkw@mail.gmail.com>
Subject: Re: [RFC 19/25] leds: tm1628: Add 7-segment display support
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_003403_321196_98F72A9A 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-realtek-soc@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dan Murphy <dmurphy@ti.com>, Pavel Machek <pavel@ucw.cz>,
 linux-leds@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywKCk9uIFRodSwgRGVjIDEyLCAyMDE5IGF0IDQ6NDIgQU0gQW5kcmVhcyBGw6Ry
YmVyIDxhZmFlcmJlckBzdXNlLmRlPiB3cm90ZToKPiBEZXRlY3QgRFQgY2hpbGQgbm9kZXMgY292
ZXJpbmcgbW9yZSB0aGFuIG9uZSBMRUQgY29tcG9uZW50IGFuZCBpbXBsZW1lbnQKPiBhIHRleHQg
dG8gNy1zZWdtZW50IGRpc3BsYXkgbWFwcGluZy4KPgo+IFNpZ25lZC1vZmYtYnk6IEFuZHJlYXMg
RsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KCj4gLS0tIGEvZHJpdmVycy9sZWRzL2xlZHMtdG0x
NjI4LmMKPiArKysgYi9kcml2ZXJzL2xlZHMvbGVkcy10bTE2MjguYwoKPiArc3RhdGljIGNvbnN0
IHN0cnVjdCB0bTE2Mjhfc3NkX2NoYXIgdG0xNjI4X2NoYXJfc3NkX21hcFtdID0gewo+ICsgICAg
ICAgeyAnMCcsIFNTRF9UT1AgfCBTU0RfVE9QX0xFRlQgfCBTU0RfVE9QX1JJR0hUIHwKPiArICAg
ICAgICAgICAgICBTU0RfQk9UVE9NX0xFRlQgfCBTU0RfQk9UVE9NX1JJR0hUIHwgU1NEX0JPVFRP
TSB9LAoKUGxlYXNlIHVzZSBpbmNsdWRlL3VhcGkvbGludXgvbWFwX3RvXzdzZWdtZW50LmgKWWVz
LCBpdCBpcyB3ZWxsIGhpZGRlbiA7LSkuCgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAg
ICAgICAgICAgICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90
cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29u
YWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBo
YWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInBy
b2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
