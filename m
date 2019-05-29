Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 730282E772
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 23:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y8WhN4kDpvEYcm2DuRh95YKUmInmNtGUUhWFCZmTh/4=; b=gSQtYFQs6nSZrO
	Ln9/g22YMqERMIx2QqWCzYq5J5SVX5s0BAnHwqTqCV4J781tgUoUYDlLYQCVL6vXiT5joFqk0jvVl
	kRLFXQzcWGqwGWBoDl6papAGeTaWpYcN1Yr5mdSInamCO7kIXtAVYJyCYd/ZP4gmS+qu8XdzyhOX2
	andrq9uMacxMD3AFoHeLGzFZVLUK5CjMMVh3wojWpB+lmv+Kx47ujMmWd5jPyOqVY/+H2x11AvjO+
	oPdZFbrLlYv14AuOY2hcQdsq3XZEThDAzkuIefrXqxBK2TC21yU6PRmuHzNeVCvEfXOGjwh4M7ice
	INzcHe7bXB7g8Rz0ZYWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW68R-0004F6-BH; Wed, 29 May 2019 21:29:23 +0000
Received: from mail-yw1-xc30.google.com ([2607:f8b0:4864:20::c30])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW68J-0004El-CV
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 21:29:16 +0000
Received: by mail-yw1-xc30.google.com with SMTP id e74so1691312ywe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 14:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=nuEUBDgPVOgomNMikbM53/bd5lzH+tqFhesodPxU8KY=;
 b=Q+6TgyYnPpspz30nM0iUSiK2PwD0TwwSfX7wofBBHA5AXzcvU9vUhQ2P5uCKPwM+C7
 9A2HzaLqfT1Nxy9MBiNRRbaWAFCDLoZEJBkpZLIjgmSqybwW5ntThYmXdz+/Xkq4GCnN
 0NbWul/aKK+qKJGn9fu1kY9xorPZiFI9YUommUTkxFOGNGxzBFv/5xUCUBl6KZfaqLRN
 eYL3qsNhDZ0NwzUNkic+kGOL9r9HNhCvawqcvcQ+X9X9YKtvSctdavf0+lFNnBbytyet
 Jd+OorVcArZEn5Jq88GXgOiI9/wuEM6V2SnmGnYsFy1Wi2Uj3ZmsM4CmRMbn8slCc1qy
 3biA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=nuEUBDgPVOgomNMikbM53/bd5lzH+tqFhesodPxU8KY=;
 b=ThACvlZDcFd82DRB3fPoUY6wahmYqDG1rC4D7Qi8zLSMJPrv9iHTYgptXDC71bWXZU
 YqhlAyLrW2id4pC1Cc92F6MSpMwUKaTpKuASxF78NhJh9L86SIMbV8+z3idhRVnWfEL5
 fXJrTBp4I+I1u+wlnv4XR2zx97ShBwXFx0ZmQM+4jDNpXTLDXxxUK/l7CEgY9Y3SSI3X
 0m8IgH355aB4H8mLZbHEzR5JKgLEQIuyM8wxHsGfEK3uv0HknesLPPYxhyMtXd1bEEXu
 3smQNwkkThvrBJ/wEIWXSysA72NpOGcZZwYsZBf9jWPUEuDF3axX0RvaveweM2w4Y8Qw
 Bz6Q==
X-Gm-Message-State: APjAAAVoioGL3gsbuPeur1Uoq7rRmHWu5MTXi6soZnLf0K804EkDPkzW
 qnvkg1W+DsjQmMtiikG9ApXu3UdOAU6dP6EaR9o=
X-Google-Smtp-Source: APXvYqykJ6vnU/Am9rU53QEBtpVaBlc08p+8Us4hFVZWv5R8Fn2c5sQEB7wpdcpRBC/T362Zd3pv8cqg4Hglviwha+w=
X-Received: by 2002:a81:997:: with SMTP id 145mr53261ywj.457.1559165353618;
 Wed, 29 May 2019 14:29:13 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Wed, 29 May 2019 23:29:02 +0200
Message-ID: <CAJiuCcfSUAJ2w1qd-OC_CJPXoUVL03dCX1OeaUykNioHkR8Ciw@mail.gmail.com>
Subject: Panfrost impossible to probe without opp table
To: ezequiel Garcia <ezequiel@collabora.com>, Rob Herring <robh+dt@kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_142915_420878_33BCF686 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c30 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpJIGhhdmUgcmViYXNlIG15IGtlcm5lbCBvbiBsYXRlc3QgNS4yLXJjMiwgYW5kIG15IHBh
bmZyb3N0IGRyaXZlciBpcwpubyBtb3JlIHByb2JpbmcuCgpUaGUgaXNzdWUgaXMgY29taW5nIGZy
b20gZjM2MTdiNDQ5ZDBiY2YzYjVkODBhOTdmNTE0OThkY2Y3NDYzY2Y3ZQogICAgZHJtL3BhbmZy
b3N0OiBTZWxlY3QgZGV2ZnJlcQoKICAgIEN1cnJlbnRseSwgdGhlcmUgaXMgc29tZSBsb2dpYyBm
b3IgdGhlIGRyaXZlciB0byB3b3JrIHdpdGhvdXQgZGV2ZnJlcS4KICAgIEhvd2V2ZXIsIHRoZSBk
cml2ZXIgYWN0dWFsbHkgZmFpbHMgdG8gcHJvYmUgaWYgIUNPTkZJR19QTV9ERVZGUkVRLgoKICAg
IEZpeCB0aGlzIGJ5IHNlbGVjdGluZyBkZXZmcmVxLCBhbmQgZHJvcCB0aGUgYWRkaXRpb25hbCBj
aGVja3MKICAgIGZvciBkZXZmcmVxLgoKSXQgc2VlbXMgdGhhdCB3aXRoIHRoaXMgY29tbWl0IHRo
ZSBPUFAgdGFibGUgaXMgbm93IG1hbmRhdG9yeS4KaXMgaXQgaW50ZW50aW9uYWw/CgpBY3R1YWxs
eQpbICAgIDMuMDQ2MjM3XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogY2xvY2sgcmF0ZSA9IDQzMjAw
MDAwMApbICAgIDMuMDUxNTkzXSBwYW5mcm9zdCAxODAwMDAwLmdwdTogYnVzX2Nsb2NrIHJhdGUg
PSAxMDAwMDAwMDAKWyAgICAzLjA5NjAxMl0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IG1hbGktdDcy
MCBpZCAweDcyMCBtYWpvciAweDEKbWlub3IgMHgxIHN0YXR1cyAweDAKWyAgICAzLjEwMzY4Ml0g
cGFuZnJvc3QgMTgwMDAwMC5ncHU6IGZlYXR1cmVzOiAwMDAwMDAwMCwxMDMwOWU0MCwKaXNzdWVz
OiAwMDAwMDAwMCwyMTA1NDQwMApbICAgIDMuMTExNzg5XSBwYW5mcm9zdCAxODAwMDAwLmdwdTog
RmVhdHVyZXM6IEwyOjB4MDcxMTAyMDYKU2hhZGVyOjB4MDAwMDAwMDAgVGlsZXI6MHgwMDAwMDgw
OSBNZW06MHgxIE1NVToweDAwMDAyODIxIEFTOjB4ZgpKUzoweDcKWyAgICAzLjEyMzQzNV0gcGFu
ZnJvc3QgMTgwMDAwMC5ncHU6IHNoYWRlcl9wcmVzZW50PTB4MyBsMl9wcmVzZW50PTB4MQpbICAg
IDMuMTMwNDA1XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogRmF0YWwgZXJyb3IgZHVyaW5nIGRldmZy
ZXEgaW5pdAoKV2l0aCBjb21taXQgcmV2ZXJ0ZWQKWyAgICAzLjAzODIzNl0gcGFuZnJvc3QgMTgw
MDAwMC5ncHU6IGNsb2NrIHJhdGUgPSA0MzIwMDAwMDAKWyAgICAzLjA0MzU5M10gcGFuZnJvc3Qg
MTgwMDAwMC5ncHU6IGJ1c19jbG9jayByYXRlID0gMTAwMDAwMDAwClsgICAgMy4wODc5OTRdIHBh
bmZyb3N0IDE4MDAwMDAuZ3B1OiBtYWxpLXQ3MjAgaWQgMHg3MjAgbWFqb3IgMHgxCm1pbm9yIDB4
MSBzdGF0dXMgMHgwClsgICAgMy4wOTU2NThdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBmZWF0dXJl
czogMDAwMDAwMDAsMTAzMDllNDAsCmlzc3VlczogMDAwMDAwMDAsMjEwNTQ0MDAKWyAgICAzLjEw
Mzc2M10gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IEZlYXR1cmVzOiBMMjoweDA3MTEwMjA2ClNoYWRl
cjoweDAwMDAwMDAwIFRpbGVyOjB4MDAwMDA4MDkgTWVtOjB4MSBNTVU6MHgwMDAwMjgyMSBBUzow
eGYKSlM6MHg3ClsgICAgMy4xMTU0MTBdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBzaGFkZXJfcHJl
c2VudD0weDMgbDJfcHJlc2VudD0weDEKWyAgICAzLjEyMjc5OF0gW2RybV0gSW5pdGlhbGl6ZWQg
cGFuZnJvc3QgMS4wLjAgMjAxODA5MDggZm9yCjE4MDAwMDAuZ3B1IG9uIG1pbm9yIDAKCgpUaGFu
a3MsCkNsw6ltZW50CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
