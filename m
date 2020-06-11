Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F711F6C03
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 18:14:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lvXXTgpkZ5jTRDsAjGQJ9FFUt3N22ghMmA6ytS3aNH0=; b=lzBr4honOYYg3I
	Rnliuwsx96OGRZZZW5zwwTVsPqs683slJBPFeOuKcvXo1nB/er9jbDKhICpl2yU4+nO4xUK1Rivta
	1foSLuFi6ixvg/JIyn9H28EBOjlVAf7vJqI6WA9raFqBi4TUWxt98Ox/MLg8OKh9pq9wmuR8hmozx
	IdbqIYyfPj9bW4F9d9LT6/EGOrSOswHvx5+J91oJMJj1sex9mFKbvizgNyG8aptkOAxKVhmiTngZ/
	3BYoypkcWrA1r7kYhVQfZgJT47NEcESbCHWHp8uJ00KS9gN6HtD5nb76H3BIrPm1+ac1RgQR1UAws
	L4tb9RFlhJHg4eXR7WGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjPqb-0001qO-Rm; Thu, 11 Jun 2020 16:14:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjPqS-0001pM-SP; Thu, 11 Jun 2020 16:14:26 +0000
Received: by mail-wr1-x441.google.com with SMTP id r7so6805314wro.1;
 Thu, 11 Jun 2020 09:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=SolIPmozBB2ZLWoQdcEzsstEXBuvXqWYFKuIfcs8t6s=;
 b=SjWJ5w4xHDdm+cik7nA1m2oHO2nRqFHg/o4sEHRA627CqlAkPmCZSrsAa9bR7dEUyQ
 PlebGiUAiZfUkiwghhyzljsYSEsePw2XhhINXw2wnpQhMAft8DuvHRWYE4Daj49PrD9U
 W9PpPCyZGVd27JmXmYDRSoJU4p6GdIUsG894vtwwEemFAJxW1bWa322gcOQNsyw3JFR8
 0oquQXmmj5XkO61zEH7Aba+Hc4ap1c6VRX0djSAWXbwOKsqh1P+yGgtT+94A34u+BwZz
 EahR6cRPoTfu6ta84w3MMbCa/G9HktksOMKoHfZOujylMEDxfMw2cMZCk3hqxMa5AeWN
 eeFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=SolIPmozBB2ZLWoQdcEzsstEXBuvXqWYFKuIfcs8t6s=;
 b=qkV9n0QPrMa71nF6oXcxlygghnkfc9QL90kYivNHmEO3ZiuBqEpx6UP7IHOoFGDzxw
 M2CtrQFN+VWzhZJuI3/g1Ncj5Bp8aJalqz0k2ttBmZZS8R6yk0BLdGIyGr9O7WHwWlbe
 5zQra8YiWXRhAqYeiDeIEpDDp8eELHk4WVF1F9h7ziegOTbqgrfCdybgKf2sRkWZ6eSL
 wjfVpU965OFyYQz4PY8GjARsBJmbNDNBaBi5i4gBfwqj1tY8qVArEc/z/+HfEfhgzEDc
 ForC5TqNXGhUqPtz4RmCfV8FIABOOSTFkSN8yXwBl1YFsg5FtlVHzO63X3FzZ+bAns97
 DTyw==
X-Gm-Message-State: AOAM532o+y38yy/rj5TtUg4wqOYhn6F7UyaNBgeut9VvpdIQ2Lq/CAvc
 PrfnCm0GKq2IUwSykEIMbQ4=
X-Google-Smtp-Source: ABdhPJw0jC4Gb+rgPGGdw2rNC7+qmgLdf4kWd8TVSDXhKRIXvPuE1fcGDR2NrUsqVqPi7VldhKTohA==
X-Received: by 2002:a05:6000:1192:: with SMTP id
 g18mr10808207wrx.326.1591892062584; 
 Thu, 11 Jun 2020 09:14:22 -0700 (PDT)
Received: from macbook-pro-alvaro.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id b8sm5878699wrs.36.2020.06.11.09.14.21
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jun 2020 09:14:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH v2] mtd: parsers: bcm63xx: simplify CFE detection
From: =?utf-8?Q?=C3=81lvaro_Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>
In-Reply-To: <715b0947-f4dd-0c04-5c52-5da06c04d665@gmail.com>
Date: Thu, 11 Jun 2020 18:14:20 +0200
Message-Id: <7DC0E349-1319-47FE-8565-9B30C190EACB@gmail.com>
References: <20200608094053.3381512-1-noltari@gmail.com>
 <20200608160649.3717152-1-noltari@gmail.com> <20200611095540.250184d2@xps13>
 <779D37C7-58CB-49AF-8739-C34295B86FC4@gmail.com>
 <715b0947-f4dd-0c04-5c52-5da06c04d665@gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_091424_935438_F168ACD5 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: tsbogend@alpha.franken.de, vigneshr@ti.com, richard@nod.at,
 linus.walleij@linaro.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Jonas Gorski <jonas.gorski@gmail.com>,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRmxvcmlhbiwKCj4gRWwgMTEganVuIDIwMjAsIGEgbGFzIDE3OjQyLCBGbG9yaWFuIEZhaW5l
bGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4gZXNjcmliacOzOgo+IAo+IAo+IAo+IE9uIDYvMTEv
MjAyMCA4OjE2IEFNLCDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgd3JvdGU6Cj4+IEhpIE1pcXVl
bCwKPj4gCj4+PiBFbCAxMSBqdW4gMjAyMCwgYSBsYXMgOTo1NSwgTWlxdWVsIFJheW5hbCA8bWlx
dWVsLnJheW5hbEBib290bGluLmNvbT4gZXNjcmliacOzOgo+Pj4gCj4+PiBIaSDDgWx2YXJvLAo+
Pj4gCj4+PiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPiB3cm90
ZSBvbiBNb24sICA4IEp1biAyMDIwCj4+PiAxODowNjo0OSArMDIwMDoKPj4+IAo+Pj4+IEluc3Rl
YWQgb2YgdHJ5aW5nIHRvIHBhcnNlIENGRSB2ZXJzaW9uIHN0cmluZywgd2hpY2ggaXMgY3VzdG9t
aXplZCBieSBzb21lCj4+Pj4gdmVuZG9ycywgbGV0J3MganVzdCBjaGVjayB0aGF0ICJDRkUxIiB3
YXMgcGFzc2VkIG9uIGFyZ3VtZW50IDMuCj4+Pj4gCj4+Pj4gU2lnbmVkLW9mZi1ieTogw4FsdmFy
byBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KPj4+PiBTaWduZWQtb2ZmLWJ5
OiBKb25hcyBHb3Jza2kgPGpvbmFzLmdvcnNraUBnbWFpbC5jb20+Cj4+Pj4gLS0tCj4+Pj4gdjI6
IHVzZSBDRkVfRVBUU0VBTCBkZWZpbml0aW9uIGFuZCBhdm9pZCB1c2luZyBhbiBhZGRpdGlvbmFs
IGZ1bnRpb24uCj4+Pj4gCj4+Pj4gZHJpdmVycy9tdGQvcGFyc2Vycy9iY202M3h4cGFydC5jIHwg
MjkgKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4+PiAxIGZpbGUgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspLCAyNSBkZWxldGlvbnMoLSkKPj4+PiAKPj4+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9tdGQvcGFyc2Vycy9iY202M3h4cGFydC5jIGIvZHJpdmVycy9tdGQvcGFyc2Vycy9iY202
M3h4cGFydC5jCj4+Pj4gaW5kZXggNzhmOTBjNmMxOGZkLi40OTNhNzViMmYyNjYgMTAwNjQ0Cj4+
Pj4gLS0tIGEvZHJpdmVycy9tdGQvcGFyc2Vycy9iY202M3h4cGFydC5jCj4+Pj4gKysrIGIvZHJp
dmVycy9tdGQvcGFyc2Vycy9iY202M3h4cGFydC5jCj4+Pj4gQEAgLTIyLDYgKzIyLDkgQEAKPj4+
PiAjaW5jbHVkZSA8bGludXgvbXRkL3BhcnRpdGlvbnMuaD4KPj4+PiAjaW5jbHVkZSA8bGludXgv
b2YuaD4KPj4+PiAKPj4+PiArI2luY2x1ZGUgPGFzbS9ib290aW5mby5oPgo+Pj4+ICsjaW5jbHVk
ZSA8YXNtL2Z3L2NmZS9jZmVfYXBpLmg+Cj4+PiAKPj4+IEFyZSB5b3Ugc3VyZSBib3RoIGluY2x1
ZGVzIGFyZSBuZWVkZWQ/Cj4+IAo+PiBhc20vYm9vdGluZm8uaCBpcyBuZWVkZWQgZm9yIGZ3X2Fy
ZzMgYW5kIGFzbS9mdy9jZmUvY2ZlX2FwaS5oIGlzIG5lZWRlZCBmb3IgQ0ZFX0VQVFNFQUwuCj4+
IAo+Pj4gCj4+PiBJIGRvbid0IHRoaW5rIGl0IGlzIGEgZ29vZCBoYWJpdCB0byBpbmNsdWRlIGFz
bS8gaGVhZGVycywgYXJlIHlvdSBzdXJlCj4+PiB0aGVyZSBpcyBub3QgYW5vdGhlciBoZWFkZXIg
ZG9pbmcgaXQganVzdCBmaW5lPwo+PiAKPj4gQm90aCBhcmUgbmVlZGVkIHVubGVzcyB5b3Ugd2Fu
dCB0byBhZGQgYW5vdGhlciBkZWZpbml0aW9uIG9mIENGRV9FUFRTRUFMIHZhbHVlLgo+PiBUaGVy
ZSBhcmUgY3VycmVudGx5IHR3byBDRkUgbWFnaWMgZGVmaW5pdGlvbnMsIHRoZSBvbmUgaW4gYXNt
L2Z3L2NmZS9jZmVfYXBpLmggYW5kIGFub3RoZXIgb25lIGluIGJjbTQ3eHhwYXJ0LmM6Cj4+IGh0
dHBzOi8vZ2l0aHViLmNvbS90b3J2YWxkcy9saW51eC9ibG9iL21hc3Rlci9hcmNoL21pcHMvaW5j
bHVkZS9hc20vZncvY2ZlL2NmZV9hcGkuaCNMMjgKPj4gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZh
bGRzL2xpbnV4L2Jsb2IvbWFzdGVyL2RyaXZlcnMvbXRkL3BhcnNlcnMvYmNtNDd4eHBhcnQuYyNM
MzMKPiAKPiBUaGUgY2F2ZWF0IHdpdGggdGhhdCBhcHByb2FjaCBpcyB0aGF0IHRoaXMgcmVkdWNl
cyB0aGUgY29tcGlsYXRpb24KPiBzdXJmYWNlIHRvIE1JUFMgYW5kIEJNSVBTX0dFTkVSSUMgYW5k
IEJDTTYzWFggb25seSwgd2hpY2ggaXMgYSBiaXQKPiBzbWFsbC4gSWYgd2UgY291bGQgbW92ZSB0
aGUgQ0ZFIGRlZmluaXRpb25zIHRvIGEgc2hhcmVkIGhlYWRlciwgYW5kCj4gY29uc29saWRhdGUg
dGhlIHZhbHVlIHVzZWQgYnkgYmNtNDd4eHBhcnQuYyBhcyB3ZWxsLCB0aGF0IHdvdWxkIGFsbG93
IHVzCj4gdG8gYnVpbGQgdGhlIGJjbTYzeHhwYXJ0LmMgZmlsZSB3aXRoIENPTVBJTEVfVEVTVCBv
biBvdGhlcgo+IGFyY2hpdGVjdHVyZXMuIFRoaXMgZG9lcyBub3QgcmVhbGx5IGhhdmUgZnVuY3Rp
b25hbCB2YWx1ZSwgYnV0IGZvcgo+IG1haW50YWluZXJzIGxpa2UgTWlxdWVsLCBpdCBhbGxvd3Mg
dGhlbSB0byBxdWlja2x5IHRlc3QgdGhlaXIgZW50aXJlCj4gZHJpdmVycy9tdGQvIGRpcmVjdG9y
eS4KCkkgZG9u4oCZdCB0aGluayBmd19hcmczIGF2YWlsYWJsZSBvbiBub24gbWlwcyBhcmNocywg
aXMgaXQ/CknigJltIGhhcHB5IHRvIG1vdmUgaXQgdG8gYSBzaGFyZWQgaGVhZGVyICh3aGljaCB3
b3VsZCBiZSBhIGdvb2QgbG9jYXRpb24gZm9yIHRoaXM/KSwgYnV0IGlmIEnigJltIHJpZ2h0IGl0
IHdvdWxkIHN0aWxsIGJlIHJlc3RyaWN0ZWQgdG8gTUlQUy4KCj4gLS0gCj4gRmxvcmlhbgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
