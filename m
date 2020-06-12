Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B501F74B3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 09:37:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6A8EXUfE75nVDb+mhpEFhg/vBMSZmnG3Y7rkHcKwEK8=; b=HxwWfoVxcsPUZd
	HsIZTJq4i8x2jD747qNOmd7aJPbmFxWlhvj5kL2jyYH9cNKvjgo8PpeoFVnKkHsA32gIZzGJlX63e
	OHgk6yd581ZPPjaTe9FC7sMqZAdH2aOAMQNjhVzdb4cm/WaPuWuQFUFQ8YOerlKyj0p5Cw1JRkRiv
	fyWOtDdlf0jn37BeUl9x1Gr1SY5YpKxpmx7nP88DRB+ug2TCgvl6jBjRCkOfYtNqDWqH7rpQDzcqE
	IjxJvg0X3v2H+5MDWU56Af4PzWx1phGmsb1ozkKrsQCmzbIeR73LQmd5BdLTsLM/UMzhZuRk8XDrn
	qctiZQBSGQXBNbHI1X4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjeFY-0005gE-M5; Fri, 12 Jun 2020 07:37:16 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjeFN-0005fe-7l; Fri, 12 Jun 2020 07:37:06 +0000
Received: by mail-wm1-x341.google.com with SMTP id k26so7318016wmi.4;
 Fri, 12 Jun 2020 00:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=CsPuEwz2KlKcr5rLdEZdgFQzBHepX142JSK3awOfHpU=;
 b=PhguIX6ypQRgdjVXR+wFQ0fAgJI9dze6MoTAo68YQJjW5o3whOVHXFIbSZkoVignW2
 jaop0c04clt8cd482jr625DJBJU2KzRQikhOLrp+XpGpwjjkXl+u/zynMndQ8P1ETpwn
 0Qc2DJgPP5KpQKx3s/y0oPHSxCPWhxmIjQbEUky/VJD2Aj3U20yNLbhiafmaK5s7NuU/
 +x1jxTyAUM0lIyV9/Uxp4oatKyefs1mE5k3sOSeyGRzTQu3oA4mCE85lJJLxEIeppdRH
 VvdaVhbJlxKNGBrgzb1Za2wQEP17Bewi3NQy96mNm+Soas/RPWk3V9XZaQHxG0JTT+Wr
 11Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=CsPuEwz2KlKcr5rLdEZdgFQzBHepX142JSK3awOfHpU=;
 b=q9RLjWwGtwr3BikDXdQ+DAZ5od7OWTQJcHWoU8sIoH4u2mVMJ6hQk7s8OrLeOPaZKA
 rQhiw9Z5YnHZUt2Rt0zF6o1vVc6B3l0UDqFuZIHewRoUwFjN/g5h3APqkF4ARYNn4iqI
 7bL7vL7aPyu0/Aoh2w6LAOMTybU9ww/0X4aPCO8q649eGi4saYp/2Mw8eSP/O7YB1ubk
 Sg6GXso3mMgHOtZi13Cvz8mI05aPEvIVagcsv7zc1/T6D5n3OoGM7o7fx3hzVD342FO+
 oN2KSyiTt+V0z+SfJK6t62cJ+bOeq4/P5+pRQqs8hoLmLq50fVGZg5+Hh8EioP52dYYI
 pEQQ==
X-Gm-Message-State: AOAM533VBiVVWX/xiTSB0oRmvlt5+Es5iJ70lvf+JavPpDy7qMDMy97Z
 pn6Ti9YLNYy4DqAewvaW5+U=
X-Google-Smtp-Source: ABdhPJxGoZ4A2ik/ERBCMKYhORtojyMzKbx2GGzEv0JjrAARr7tCz9FS832K2SbggeD5tZg5kejqjw==
X-Received: by 2002:a7b:c041:: with SMTP id u1mr12651939wmc.56.1591947423652; 
 Fri, 12 Jun 2020 00:37:03 -0700 (PDT)
Received: from macbook-pro-alvaro.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id p7sm8835714wro.26.2020.06.12.00.37.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jun 2020 00:37:02 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH v2] mtd: parsers: bcm63xx: simplify CFE detection
From: =?utf-8?Q?=C3=81lvaro_Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>
In-Reply-To: <20200612093345.511f6d45@xps13>
Date: Fri, 12 Jun 2020 09:37:01 +0200
Message-Id: <011AB0DF-CE82-4A4B-8B15-7A584DB274A8@gmail.com>
References: <20200608094053.3381512-1-noltari@gmail.com>
 <20200608160649.3717152-1-noltari@gmail.com> <20200611095540.250184d2@xps13>
 <779D37C7-58CB-49AF-8739-C34295B86FC4@gmail.com>
 <715b0947-f4dd-0c04-5c52-5da06c04d665@gmail.com>
 <7DC0E349-1319-47FE-8565-9B30C190EACB@gmail.com>
 <20200612090252.02581c21@xps13>
 <CBDB2BF7-07CB-4231-B200-86DE2BFE86A0@gmail.com>
 <20200612093345.511f6d45@xps13>
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_003705_278311_72A680B6 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, vigneshr@ti.com, richard@nod.at,
 linus.walleij@linaro.org, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, tsbogend@alpha.franken.de,
 bcm-kernel-feedback-list@broadcom.com, Jonas Gorski <jonas.gorski@gmail.com>,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWlxdcOobCwKCj4gRWwgMTIganVuIDIwMjAsIGEgbGFzIDk6MzMsIE1pcXVlbCBSYXluYWwg
PG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+IGVzY3JpYmnDszoKPiAKPiBIaSDDgWx2YXJvLAo+
IAo+IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+IHdyb3RlIG9u
IEZyaSwgMTIgSnVuIDIwMjAKPiAwOTozMDoyNyArMDIwMDoKPiAKPj4gSGkgTWlxdcOobCwKPj4g
Cj4+PiBFbCAxMiBqdW4gMjAyMCwgYSBsYXMgOTowMiwgTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJh
eW5hbEBib290bGluLmNvbT4gZXNjcmliacOzOgo+Pj4gCj4+PiBIaSDDgWx2YXJvLAo+Pj4gCj4+
PiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPiB3cm90ZSBvbiBU
aHUsIDExIEp1biAyMDIwCj4+PiAxODoxNDoyMCArMDIwMDoKPj4+IAo+Pj4+IEhpIEZsb3JpYW4s
Cj4+Pj4gCj4+Pj4+IEVsIDExIGp1biAyMDIwLCBhIGxhcyAxNzo0MiwgRmxvcmlhbiBGYWluZWxs
aSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+IGVzY3JpYmnDszoKPj4+Pj4gCj4+Pj4+IAo+Pj4+PiAK
Pj4+Pj4gT24gNi8xMS8yMDIwIDg6MTYgQU0sIMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyB3cm90
ZTogICAgCj4+Pj4+PiBIaSBNaXF1ZWwsCj4+Pj4+PiAKPj4+Pj4+PiBFbCAxMSBqdW4gMjAyMCwg
YSBsYXMgOTo1NSwgTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4gZXNj
cmliacOzOgo+Pj4+Pj4+IAo+Pj4+Pj4+IEhpIMOBbHZhcm8sCj4+Pj4+Pj4gCj4+Pj4+Pj4gw4Fs
dmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4gd3JvdGUgb24gTW9uLCAg
OCBKdW4gMjAyMAo+Pj4+Pj4+IDE4OjA2OjQ5ICswMjAwOgo+Pj4+Pj4+IAo+Pj4+Pj4+PiBJbnN0
ZWFkIG9mIHRyeWluZyB0byBwYXJzZSBDRkUgdmVyc2lvbiBzdHJpbmcsIHdoaWNoIGlzIGN1c3Rv
bWl6ZWQgYnkgc29tZQo+Pj4+Pj4+PiB2ZW5kb3JzLCBsZXQncyBqdXN0IGNoZWNrIHRoYXQgIkNG
RTEiIHdhcyBwYXNzZWQgb24gYXJndW1lbnQgMy4KPj4+Pj4+Pj4gCj4+Pj4+Pj4+IFNpZ25lZC1v
ZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Cj4+Pj4+
Pj4+IFNpZ25lZC1vZmYtYnk6IEpvbmFzIEdvcnNraSA8am9uYXMuZ29yc2tpQGdtYWlsLmNvbT4K
Pj4+Pj4+Pj4gLS0tCj4+Pj4+Pj4+IHYyOiB1c2UgQ0ZFX0VQVFNFQUwgZGVmaW5pdGlvbiBhbmQg
YXZvaWQgdXNpbmcgYW4gYWRkaXRpb25hbCBmdW50aW9uLgo+Pj4+Pj4+PiAKPj4+Pj4+Pj4gZHJp
dmVycy9tdGQvcGFyc2Vycy9iY202M3h4cGFydC5jIHwgMjkgKysrKy0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KPj4+Pj4+Pj4gMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMjUgZGVs
ZXRpb25zKC0pCj4+Pj4+Pj4+IAo+Pj4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvcGFy
c2Vycy9iY202M3h4cGFydC5jIGIvZHJpdmVycy9tdGQvcGFyc2Vycy9iY202M3h4cGFydC5jCj4+
Pj4+Pj4+IGluZGV4IDc4ZjkwYzZjMThmZC4uNDkzYTc1YjJmMjY2IDEwMDY0NAo+Pj4+Pj4+PiAt
LS0gYS9kcml2ZXJzL210ZC9wYXJzZXJzL2JjbTYzeHhwYXJ0LmMKPj4+Pj4+Pj4gKysrIGIvZHJp
dmVycy9tdGQvcGFyc2Vycy9iY202M3h4cGFydC5jCj4+Pj4+Pj4+IEBAIC0yMiw2ICsyMiw5IEBA
Cj4+Pj4+Pj4+ICNpbmNsdWRlIDxsaW51eC9tdGQvcGFydGl0aW9ucy5oPgo+Pj4+Pj4+PiAjaW5j
bHVkZSA8bGludXgvb2YuaD4KPj4+Pj4+Pj4gCj4+Pj4+Pj4+ICsjaW5jbHVkZSA8YXNtL2Jvb3Rp
bmZvLmg+Cj4+Pj4+Pj4+ICsjaW5jbHVkZSA8YXNtL2Z3L2NmZS9jZmVfYXBpLmg+ICAgIAo+Pj4+
Pj4+IAo+Pj4+Pj4+IEFyZSB5b3Ugc3VyZSBib3RoIGluY2x1ZGVzIGFyZSBuZWVkZWQ/ICAgIAo+
Pj4+Pj4gCj4+Pj4+PiBhc20vYm9vdGluZm8uaCBpcyBuZWVkZWQgZm9yIGZ3X2FyZzMgYW5kIGFz
bS9mdy9jZmUvY2ZlX2FwaS5oIGlzIG5lZWRlZCBmb3IgQ0ZFX0VQVFNFQUwuCj4+Pj4+PiAKPj4+
Pj4+PiAKPj4+Pj4+PiBJIGRvbid0IHRoaW5rIGl0IGlzIGEgZ29vZCBoYWJpdCB0byBpbmNsdWRl
IGFzbS8gaGVhZGVycywgYXJlIHlvdSBzdXJlCj4+Pj4+Pj4gdGhlcmUgaXMgbm90IGFub3RoZXIg
aGVhZGVyIGRvaW5nIGl0IGp1c3QgZmluZT8gICAgCj4+Pj4+PiAKPj4+Pj4+IEJvdGggYXJlIG5l
ZWRlZCB1bmxlc3MgeW91IHdhbnQgdG8gYWRkIGFub3RoZXIgZGVmaW5pdGlvbiBvZiBDRkVfRVBU
U0VBTCB2YWx1ZS4KPj4+Pj4+IFRoZXJlIGFyZSBjdXJyZW50bHkgdHdvIENGRSBtYWdpYyBkZWZp
bml0aW9ucywgdGhlIG9uZSBpbiBhc20vZncvY2ZlL2NmZV9hcGkuaCBhbmQgYW5vdGhlciBvbmUg
aW4gYmNtNDd4eHBhcnQuYzoKPj4+Pj4+IGh0dHBzOi8vZ2l0aHViLmNvbS90b3J2YWxkcy9saW51
eC9ibG9iL21hc3Rlci9hcmNoL21pcHMvaW5jbHVkZS9hc20vZncvY2ZlL2NmZV9hcGkuaCNMMjgK
Pj4+Pj4+IGh0dHBzOi8vZ2l0aHViLmNvbS90b3J2YWxkcy9saW51eC9ibG9iL21hc3Rlci9kcml2
ZXJzL210ZC9wYXJzZXJzL2JjbTQ3eHhwYXJ0LmMjTDMzICAgIAo+Pj4+PiAKPj4+Pj4gVGhlIGNh
dmVhdCB3aXRoIHRoYXQgYXBwcm9hY2ggaXMgdGhhdCB0aGlzIHJlZHVjZXMgdGhlIGNvbXBpbGF0
aW9uCj4+Pj4+IHN1cmZhY2UgdG8gTUlQUyBhbmQgQk1JUFNfR0VORVJJQyBhbmQgQkNNNjNYWCBv
bmx5LCB3aGljaCBpcyBhIGJpdAo+Pj4+PiBzbWFsbC4gSWYgd2UgY291bGQgbW92ZSB0aGUgQ0ZF
IGRlZmluaXRpb25zIHRvIGEgc2hhcmVkIGhlYWRlciwgYW5kCj4+Pj4+IGNvbnNvbGlkYXRlIHRo
ZSB2YWx1ZSB1c2VkIGJ5IGJjbTQ3eHhwYXJ0LmMgYXMgd2VsbCwgdGhhdCB3b3VsZCBhbGxvdyB1
cwo+Pj4+PiB0byBidWlsZCB0aGUgYmNtNjN4eHBhcnQuYyBmaWxlIHdpdGggQ09NUElMRV9URVNU
IG9uIG90aGVyCj4+Pj4+IGFyY2hpdGVjdHVyZXMuIFRoaXMgZG9lcyBub3QgcmVhbGx5IGhhdmUg
ZnVuY3Rpb25hbCB2YWx1ZSwgYnV0IGZvcgo+Pj4+PiBtYWludGFpbmVycyBsaWtlIE1pcXVlbCwg
aXQgYWxsb3dzIHRoZW0gdG8gcXVpY2tseSB0ZXN0IHRoZWlyIGVudGlyZQo+Pj4+PiBkcml2ZXJz
L210ZC8gZGlyZWN0b3J5LiAgICAKPj4+PiAKPj4+PiBJIGRvbuKAmXQgdGhpbmsgZndfYXJnMyBh
dmFpbGFibGUgb24gbm9uIG1pcHMgYXJjaHMsIGlzIGl0Pwo+Pj4+IEnigJltIGhhcHB5IHRvIG1v
dmUgaXQgdG8gYSBzaGFyZWQgaGVhZGVyICh3aGljaCB3b3VsZCBiZSBhIGdvb2QgbG9jYXRpb24g
Zm9yIHRoaXM/KSwgYnV0IGlmIEnigJltIHJpZ2h0IGl0IHdvdWxkIHN0aWxsIGJlIHJlc3RyaWN0
ZWQgdG8gTUlQUy4gIAo+Pj4gCj4+PiBSZXN0cmljdGluZyBhIGRlZmluaXRpb24gdG8gTUlQUywg
ZXZlbiBpZiBpdCBtYWtlcyBzZW5zZSBmb3IgeW91IGlzCj4+PiB2ZXJ5IGxpbWl0aW5nIGZvciBt
ZS4gSSBuZWVkIHRvIGJlIGFibGUgdG8gYnVpbGQgYXMgbXVjaCBkcml2ZXJzIGFzIEkKPj4+IGNh
biBmcm9tIG15IGxhcHRvcCBhbmQgdmVyaWZ5IHRoZXkgYXQgbGVhc3QgY29tcGlsZSBjb3JyZWN0
bHkuIElmIEkgbmVlZAo+Pj4gYSBNSVBTIHRvb2xjaGFpbiwgYW4gQVJDIHRvb2xjaGFpbiwgYSBQ
b3dlclBDLCBhbiBBUk0sIGFuIEFSTTY0IGFuZAo+Pj4gd2hhdGV2ZXIgb3RoZXIgZnVua3kgdG9v
bGNoYWluIHRvIGRvIGp1c3QgdGhhdCBpbiBYIHN0ZXBzOiBpdCdzIHZlcnkKPj4+IHBhaW5mdWwu
IFdlIGhhdmUgYmVlbiBhZGRpbmcgQ09NUElMRV9URVNUIGRlcGVuZGVuY2llcyBvbiBhcyBtdWNo
Cj4+PiBkcml2ZXJzIGFzIHdlIGNvdWxkIGFuZCB3ZSB3YW50IHRvIGNvbnRpbnVlIG1vdmluZyBm
b3J3YXJkLiBVc2luZyBzdWNoCj4+PiBpbmNsdWRlIHdvdWxkIG5lZWQgdG8gZHJvcCB0aGUgQ09N
UElMRV9URVNUIGNvbmRpdGlvbiBmcm9tIEtjb25maWcgYW5kCj4+PiB0aGlzIGlzIG5vdCBzb21l
dGhpbmcgSSBhbSB3aWxsaW5nIHRvIGRvLiAgCj4+IAo+PiBJIHRvdGFsbHkgdW5kZXJzdGFuZCBh
bmQgYWdyZWUgd2l0aCB5b3VyIHBvaW50LCBidXQgSSBzdGlsbCB0aGluayB0aGF0IHRoZXJlIGNv
dWxkIGJlIGEgc29sdXRpb24gd2hpY2ggd291bGQgYmUgdmFsaWQgZm9yIGJvdGggb2YgdXMuCj4g
Cj4gV2hhdCBkbyB5b3Ugc3VnZ2VzdD8KCknigJl2ZSBqdXN0IHNlbnQgdjMgd2l0aCBteSBzdWdn
ZXN0aW9uLgpJZiB0aGlzIGlzbuKAmXQgdmFsaWQgdGhlbiBJ4oCZbSBvdXQgb2YgaWRlYXMuLi4K
Cj4gCj4+IAo+Pj4gCj4+PiBUaGFua3MgZm9yIHlvdXIgdW5kZXJzdGFuZGluZyA6KSAgCj4+IAo+
PiBUaGUgY3VycmVudCB3YXkgb2YgZGV0ZWN0aW5nIENGRSBpc27igJl0IHRoZSBwcm9wZXIgb25l
Lgo+PiBUaGFuayB5b3UgZm9yIHVuZGVyc3RhbmRpbmcgdGhhdCB0b28uCj4gCj4gT2YgY291cnNl
LCBJJ20gbm90IHNheWluZyBJIGRvbid0IHdhbnQgdGhpcyBjaGFuZ2UsIEknbSBqdXN0IHNheWlu
ZyB3ZQo+IHNob3VsZCBmaW5kIGFub3RoZXIgd2F5IHRvIGhhbmRsZSBpdCwgdGhlIGJlbG93IGlk
ZWEgaXMgdG90YWxseSBmaW5lIGJ5Cj4gbWUuCj4gCj4gCj4gVGhhbmtzLAo+IE1pcXXDqGwKClJl
Z2FyZHMsCsOBbHZhcm8uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
