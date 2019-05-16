Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB8820B59
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 17:34:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LscbjCR9374mcLR9oMIHeJEr63e2SbsHn3391bNhvSg=; b=Fw4xoxV3M8TdLq
	JqfIHVa8NChGwCywWQzyYM+U0ANWMGA5cl8721jnPViQHwFHwFjTNVHaIZiZzolMBaqp11ToI7ISf
	/XhMO5QuigxdrfoMZuMYverhUsUc9dwvhxuXgRsghZDdRzgCJBct5dd7GfRv2KsovRDkE+UqIUkp1
	Wez3he+gLWslNX1hykLnoazygsIs1wAzPzLq7IsA3tiubgbxzBYhViDvg1nRQKhlcKLYIFGfgx9sT
	J0YS8q2L+R+8xI9eQSJDX5p5BFUns2OeS8pkJa0OaoHP7w8fcRSIQBX3FbAMu/IJIggw2kuY7C6ms
	wHb7ncTtK11SdMf1gtRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRIOg-0006Kd-Ar; Thu, 16 May 2019 15:34:18 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRIOY-0006K9-W9
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 15:34:12 +0000
Received: by mail-lj1-x243.google.com with SMTP id k8so3495445lja.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 08:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=RgkwpdYQl9vPdtySryKdVHRySf6tMU0/Ia1tcv4ix30=;
 b=DKcHZXmijDxQRqkKIEARtaTrF1akUPSYdG4y1zbgCZsstI2PKmflfIqn9R57e8r0bh
 beB+bnHkDd1niy82QG5AzYmQWg6fbD+h8mWkc+3ifWzxXdAYcZjoEFdaTZdz1cx7ceUL
 B5FI8/pi3t8ENGgO3YVnls3F5P42rYCR/JXvc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=RgkwpdYQl9vPdtySryKdVHRySf6tMU0/Ia1tcv4ix30=;
 b=pIlN/6qwuE36NsE7jQ8i1qMIpB7+A/u7I5PzOFh1u9gZzcFgOkibYns245F823d4zB
 q+GRo6r1DqMwrLmbfNMiLOEOL9KYr53ELDrRKnpOu9umW4t8wl4PRgUZYTg9wglv12x+
 VB0dXZHM00LlS/PNo0h6oI++lrdxMNPuI07jdNn+AMFP0s6WIoGghofRvGgB1JHk3Lj2
 8h/VzfxPej9YRXQAgD+XAeSGgINSfkSXH7i+fQOaCfdH+MIhDvM24DHYKCFt2I/mDpNW
 ngdzeVuF2RwBurDWViKbRCoy+rkPQx+FM6JeXKqzIVmRVI0VaadnDXIQyliF5raXqTDL
 cpUA==
X-Gm-Message-State: APjAAAVuhpqThGIJtC9qvC93cnCP8dCyz2g5Xk5rYPHOBHRzUwt6D+ot
 uGUkXH0kX+jGU3rU4E0lC40dIe4BoQY=
X-Google-Smtp-Source: APXvYqyN0EORn/G4TCecib/RXidk+R6yBwp/d8q3iv+KbK3m3MEjm+6AJUaE2ehFB0F+a5n/H0xyNA==
X-Received: by 2002:a2e:9d0a:: with SMTP id t10mr24908549lji.95.1558020848446; 
 Thu, 16 May 2019 08:34:08 -0700 (PDT)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com.
 [209.85.208.176])
 by smtp.gmail.com with ESMTPSA id e6sm948058ljg.65.2019.05.16.08.34.07
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 08:34:07 -0700 (PDT)
Received: by mail-lj1-f176.google.com with SMTP id h19so3530885ljj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 08:34:07 -0700 (PDT)
X-Received: by 2002:a2e:9a94:: with SMTP id p20mr14460647lji.2.1558020847152; 
 Thu, 16 May 2019 08:34:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190516064304.24057-1-olof@lixom.net>
 <20190516064304.24057-2-olof@lixom.net>
In-Reply-To: <20190516064304.24057-2-olof@lixom.net>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 16 May 2019 08:33:51 -0700
X-Gmail-Original-Message-ID: <CAHk-=wj7uZ+rLecwEP+U3jRRPWRoB1QVTr8pHzTcmQadE=Ngvg@mail.gmail.com>
Message-ID: <CAHk-=wj7uZ+rLecwEP+U3jRRPWRoB1QVTr8pHzTcmQadE=Ngvg@mail.gmail.com>
Subject: Re: [GIT PULL 1/4] ARM: SoC platform updates
To: Olof Johansson <olof@lixom.net>, Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_083411_039354_E0925599 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ARM SoC <arm@kernel.org>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 "linux-alpha@vger.kernel.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgMTE6NDMgUE0gT2xvZiBKb2hhbnNzb24gPG9sb2ZAbGl4
b20ubmV0PiB3cm90ZToKPgo+IFNvQyB1cGRhdGVzLCBtb3N0bHkgcmVmYWN0b3JpbmdzIGFuZCBj
bGVhbnVwcyBvZiBvbGQgbGVnYWN5IHBsYXRmb3Jtcy4KPiBNYWpvciB0aGVtZXMgdGhpcyByZWxl
YXNlOgoKSG1tLiBUaGlzIGJyaW5ncyBpbiBhIG5ldyB3YXJuaW5nOgoKICBkcml2ZXJzL2Nsb2Nr
c291cmNlL3RpbWVyLWl4cDR4eC5jOjc4OjIwOiB3YXJuaW5nOgrigJhpeHA0eHhfcmVhZF9zY2hl
ZF9jbG9ja+KAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtZnVuY3Rpb25dCgpiZWNh
dXNlIHRoYXQgZHJpdmVycyBpcyBlbmFibGVkIGZvciBidWlsZCB0ZXN0aW5nLCBidXQgdGhhdCBm
dW5jdGlvbgppcyBvbmx5IHVzZWQgdW5kZXIKCiAgI2lmZGVmIENPTkZJR19BUk0KICAgICAgICBz
Y2hlZF9jbG9ja19yZWdpc3RlcihpeHA0eHhfcmVhZF9zY2hlZF9jbG9jaywgMzIsIHRpbWVyX2Zy
ZXEpOwogICNlbmRpZgoKSXQncyBub3QgY2xlYXIgd2h5IHRoYXQgI2lmZGVmIGlzIHRoZXJlLiBU
aGlzIGRyaXZlciBvbmx5IGJ1aWxkcwpub24tQVJNIHdoZW4gQ09NUElMRV9URVNUIGlzIGVuYWJs
ZWQsIGFuZCB0aGF0ICNpZmRlZiBhY3R1YWxseSBicmVha3MKdGhhdCBidWlsZCB0ZXN0LgoKSSdt
IGdvaW5nIHRvIHJlbW92ZSB0aGF0ICNpZmRlZiBpbiBteSBtZXJnZSwgYmVjYXVzZSBJIGRvICpu
b3QqIHdhbnQKdG8gc2VlIG5ldyB3YXJuaW5ncywgYW5kIGl0IGRvZXNuJ3Qgc2VlbSB0byBtYWtl
IGFueSBzZW5zZS4KCk1heWJlIHRoYXQncyB0aGUgd3JvbmcgcmVzb2x1dGlvbiwgcGxlYXNlIGhv
bGxlciBhbmQgbGV0IG1lIGtub3cgaWYKeW91IHdhbnQgc29tZXRoaW5nIGVsc2UuCgogICAgICAg
ICAgICAgICAgTGludXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
