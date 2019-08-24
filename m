Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B10299BC8E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 10:06:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I0yFAry/GL3gF7WE8ifnraaPBGUZdRcsl1oyBeuf/Fw=; b=J2SKpOZPKckDue
	CVqu+G/2k1bfdC6K4oP+KrCGAsN8izRVwI9BUxHwQk6dLO7QdCkaO0WB5d/ng2i9NoM5qeeWSVsML
	vkkZ2OmPnx1j7u1CY/Ma3wUpv0VBd5dbVTH6E6EwKLcUWfPC1AMoyII9O4R1qjZsVQ0N7bL2FdNSz
	UHJh1P9o5StX06vyjd+E2t55pzsEr4139GMLnjWOdAjD3Ql4/o93+53UIil9yVu8vrpNqXXQX3w4M
	2fc+hGs4kZwAw5SmJaNtn2+UffU+YT4dR6nfLB8OyXSGJtYgU+JfgS7UUiFPG9/Ct6FVKns+6fF9T
	4jrqL5HiuZMV7Ab++iBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1R4Q-0003Gd-2s; Sat, 24 Aug 2019 08:06:46 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1R3y-00034k-0s
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 08:06:19 +0000
Received: by mail-wr1-x444.google.com with SMTP id s18so10624801wrn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 24 Aug 2019 01:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=58C0QNHWQcW+nSLPaoT9CxsTMXwj511Ek3VVka0DlPQ=;
 b=B5xQXiqE3Vp6VFi1ZvNBuFiQAi/eIXbAfbMJ9wobxfvtytVEcrRqeuV0UUtwRSSTu5
 0Ckj2jYBxuaE068uoLwxXCXadKE42Derib6FCei5sN8jc7VSexC58Z0BNCINcTH2qXbv
 LjbSn0gR80dikZ8wYGfWw2pyVJJ37yVeBVYETIVce6JrYEVJDgzryp8H6Hfy7AKcgsFE
 oUHsXCpgHPlLr91Af7451ESymWNiPp49UDWelz+S3FZIB+r5Huh4SS0CO5RqJsxJG/KG
 dWrYqOhYMk/P5IC69W2P/kzVrOt6HjDzb8zjotZWg4xs3I2FALSlaK0FlzfjvW8HohV7
 d8mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=58C0QNHWQcW+nSLPaoT9CxsTMXwj511Ek3VVka0DlPQ=;
 b=oopxNjBNAyk4nGXaIEqdWwPQWHRgzU3MH+aKRzeQqM5nKqUqcyHNbnxedOsafmM7DZ
 LVIiIoGzTCcCRl8w5yrvF7Oz2nLjj2eDlyJs/+pJ5FHDT2jcdhyt3AtqQfM73unPxMg2
 A4F+3nwkx7HUYdMeTQIintwg03TImScNx/OUk6g4hIJv/L5w9xMNx7xQY3pVXYqmLAu/
 cae3KB82s9lPpJ6b6UCBrvhIUl/NSqjm45fBs4fr3ZH7yStPhE5HctR8n39TAx2cjK2o
 3QlQjSjotiJFNA/Tby3Svz4+RJme8P6YnqBpz2SWgVz1EDKAwZoUhikX0GJDjvRT+0wb
 XtfQ==
X-Gm-Message-State: APjAAAVlppGx8/Kq45zWndcL8oY3CQYvtqcPFQI+L2FgN04s++lp87NV
 rpV7Koef4KGPtGGaYQNgdSo=
X-Google-Smtp-Source: APXvYqwOnxQ0AzVpFZ1HBm5/boRWlpN8TL03h6oGNkuhEZ2kZoZ1oBQcqfA7KzDP+OzLAkaQMfIu+Q==
X-Received: by 2002:a05:6000:104f:: with SMTP id
 c15mr9366925wrx.225.1566633976612; 
 Sat, 24 Aug 2019 01:06:16 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net.
 [86.58.59.25])
 by smtp.gmail.com with ESMTPSA id n8sm4160105wro.89.2019.08.24.01.06.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 Aug 2019 01:06:16 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com
Subject: Re: [linux-sunxi] [PATCH v2 0/3] Add basic support for RTC on
 Allwinner H6 SoC
Date: Sat, 24 Aug 2019 10:06:14 +0200
Message-ID: <5421621.t8Lore9UF7@jernej-laptop>
In-Reply-To: <3686940.YHdMKP4MVq@jernej-laptop>
References: <20190820151934.3860-1-megous@megous.com>
 <3686940.YHdMKP4MVq@jernej-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_010618_158989_AEBC4633 
X-CRM114-Status: GOOD (  20.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jernej.skrabec[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: megous@megous.com, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIHNvYm90YSwgMjQuIGF2Z3VzdCAyMDE5IG9iIDEwOjA0OjI0IENFU1QgamUgSmVybmVqIMWg
a3JhYmVjIG5hcGlzYWwoYSk6Cj4gSGkhCj4gCj4gRG5lIHRvcmVrLCAyMC4gYXZndXN0IDIwMTkg
b2IgMTc6MTk6MzEgQ0VTVCBqZSBtZWdvdXNAbWVnb3VzLmNvbSBuYXBpc2FsKGEpOgo+ID4gRnJv
bTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+Cj4gPiAKPiA+IEkgd2VudCB0aHJv
dWdoIHRoZSBkYXRhc2hlZXRzIGZvciBINiBhbmQgSDUsIGFuZCBjb21wYXJlZCB0aGUgZGlmZmVy
ZW5jZXMuCj4gPiBSVENzIGFyZSBsYXJnZWx5IHNpbWlsYXIsIGJ1dCBub3QgZW50aXJlbHkgY29t
cGF0aWJsZS4gSW5jb21wYXRpYmlsaXRpZXMKPiA+IGFyZSBpbiBkZXRhaWxzIG5vdCB5ZXQgaW1w
bGVtZW50ZWQgYnkgdGhlIHJ0YyBkcml2ZXIgdGhvdWdoLgo+ID4gCj4gPiBJIGFsc28gY29ycmVj
dGVkIHRoZSBjbG9jayB0cmVlIGluIEg2IERUU0kuCj4gPiAKPiA+IFRoaXMgcGF0Y2hzZXQgaXMg
bmVjZXNzYXJ5IGZvciBpbXBsZW1lbnRpbmcgdGhlIFdpRmkvQmx1ZXRvb3RoIHN1cHBvcnQKPiA+
IG9uIGJvYXJkcyB1c2luZyBINiBTb0MuCj4gPiAKPiA+IFRoZXJlIHdhcyBzb21lIGRpc2N1c3Np
b24gcHJldmlvdXNseSBvZiBkZXNjcmliaW5nIEhPU0MsIERDWE8gYW5kIFhPCj4gPiBvc2NpbGxh
dG9ycyBhbmQgY2xvY2tzIGFzIHBhcnQgb2YgUlRDIGluIERULCBidXQgSSBkZWNpZGVkIGFnYWlu
c3QgaXQKPiA+IGJlY2F1c2UgaXQncyBub3QgbmVjZXNzYXJ5LCBiZWN1c2UgaW5mb3JtYXRpb24g
dGhhdCB3b3VsZCBiZSBwcm92aWRlZAo+ID4gYXMgYSBwYXJ0IG9mIERUIGNhbiBhbHJlYWR5IGJl
IGRldGVybWluZWQgYXQgcnVudGltZSBmcm9tIFJUQyByZWdpc3RlcnMsCj4gPiBzbyB0aGlzIHdv
dWRuJ3QgYWRkIGFueSB2YWx1ZSBhbmQgd291bGQgb25seSBpbnRyb2R1Y2UgY29tcGxpY2F0aW9u
cwo+ID4gdG8gdGhlIGRyaXZlci4gU2VlOiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2Nv
dmVyLzEwODk4MDgzLwo+ID4gCj4gPiBQbGVhc2UgdGFrZSBhIGxvb2suCj4gPiAKPiA+IAo+ID4g
VGhhbmsgeW91IGFuZCByZWdhcmRzLAo+ID4gCj4gPiAgIE9uZHJlaiBKaXJtYW4KPiAKPiBTb3Jy
eSBmb3IgYSBiaXQgbGF0ZSB0ZXN0LCBidXQgd2l0aCB5b3VyIHBhdGNoZXMgb24gVGFuaXggVFg2
IGJveCBJIGdldCB0aGlzCj4gaW4gZG1lc2c6Cj4gCj4gWyAgIDE3LjQzMTc0Ml0gc3VuNmktcnRj
IDcwMDAwMDAucnRjOiBGYWlsZWQgdG8gc2V0IHJ0YyB0aW1lLgo+IFsgICAyMC40Mzk3NDJdIHN1
bjZpLXJ0YyA3MDAwMDAwLnJ0YzogcnRjIGlzIHN0aWxsIGJ1c3kuCj4gWyAgIDIxLjQzNTc0NF0g
c3VuNmktcnRjIDcwMDAwMDAucnRjOiBydGMgaXMgc3RpbGwgYnVzeS4KPiBbICAgMjQuMDU1NzQx
XSBzdW42aS1ydGMgNzAwMDAwMC5ydGM6IHJ0YyBpcyBzdGlsbCBidXN5Lgo+IFsgICAyNC40Mzk3
NTJdIHN1bjZpLXJ0YyA3MDAwMDAwLnJ0YzogcnRjIGlzIHN0aWxsIGJ1c3kuCj4gCj4gTGFzdCBs
aW5lIGlzIHJlcGVhdGVkIG5vbi1zdG9wLgo+IAo+IEFueSBpZGVhIHdoYXQgY291bGQgYmUgd3Jv
bmc/CgpBZGRpdGlvbmFsIGluZm8gLSB0aGlzIGlzIG9uIGtlcm5lbCA1LjIuNiB3aXRoIHlvdXIg
cGF0Y2hlcyBhcHBsaWVkLgogCkJlc3QgcmVnYXJkcywKSmVybmVqCgoKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
