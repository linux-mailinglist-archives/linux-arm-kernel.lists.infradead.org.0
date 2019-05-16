Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0993020BA7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 17:54:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kiECbu8XIbqeuMG/J2oW9wchsEZWAgXRa1PCwnj6J/g=; b=lkdcDVdE8Z/ytZ
	+RUXrg6851GXW2DUR+TlA/jo410y4VjuH2zA1ymd6MXcnEtZd9/UpTzafTcppOygT3sdxHHeWHC03
	faIJ4YBQfehN/5zLgX7T01oDGNd4O8er8iajg74UgbdtHbNWYoP8rswW9zl4FxMPQMc937uRaznEe
	ijBDgKQ8yD/I9y3IBxBIM7P0C8pIDf4dyt/5dZBIcO54wasClv5RinXk3AaEzku2Uz4rjXVbTCsv2
	vtPs1lZIPX9qL3+3GGmtFPwJPsfXCrksMbnNZzg6jue+KzBtKL09enm77fyL1mq7/lReWmQkui/nx
	mk4V2tMEdIOScRkfW6lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRIhv-0007gE-G2; Thu, 16 May 2019 15:54:11 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRIhf-0007bc-Kn
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 15:53:57 +0000
Received: by mail-qk1-f193.google.com with SMTP id p18so2012177qkk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 08:53:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JQI/WU1c4eX4Bc95K/7Uz+e1kJGO+JQuZlvUeSbbPGc=;
 b=DdrI8cFuW5vNyWHwRAHBdz4Oar3yCYMRKpJ8X/1Nd91wWUEoigw3MSk5hB2DLlR2/P
 9AoPQSiUwQmCnjyOWx0Ifnjxx28KYVO3HiiaQEjbFZ6WuVYwft86kWHw6RD1FtfEdsDh
 VPRFUj7othRtGPUy++lZ0vI9gmgPSTJXWyrAyNMbroLrqN2apdKaiW7CmFHH5lu5bXd4
 xHVV8W1WB85cK7mFqMuhs1Cd5DnzyW4nKuVPB16o59tzCu+fsa5iu78Q+4v7JK54Bg2o
 fKb5kd6AJ1TKVNhEzsfQ6XIotM+nOd3tvqAOeniwELE3y1epaYNiGWiRbpYTysfd6lPm
 38Lg==
X-Gm-Message-State: APjAAAXWBSU4jg4zl7y7G33sxFAHxqN2z0UxYuTo2N3dZn48ABUeyPFF
 lDcY1VnMbufr7lLB2xlJOkQ/1c9PRJF3q2FMNf4=
X-Google-Smtp-Source: APXvYqxGacujl3xkC+1CQj9ZgVTewrIKspT5Krb7d0/OwrCP8EKuEx+9fNaCY33lbb5MOJouXqule4hfYCGQTcBKDzk=
X-Received: by 2002:a05:620a:1085:: with SMTP id
 g5mr23133232qkk.182.1558022034360; 
 Thu, 16 May 2019 08:53:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190516064304.24057-1-olof@lixom.net>
 <20190516064304.24057-2-olof@lixom.net>
 <CAHk-=wj7uZ+rLecwEP+U3jRRPWRoB1QVTr8pHzTcmQadE=Ngvg@mail.gmail.com>
In-Reply-To: <CAHk-=wj7uZ+rLecwEP+U3jRRPWRoB1QVTr8pHzTcmQadE=Ngvg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 16 May 2019 17:53:37 +0200
Message-ID: <CAK8P3a27zgq3c_iWHVfypAc-hLag06Bs=Q2D7bn4i4nVfPQSyw@mail.gmail.com>
Subject: Re: [GIT PULL 1/4] ARM: SoC platform updates
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_085355_677306_E71D5289 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Olof Johansson <olof@lixom.net>, Linus Walleij <linus.walleij@linaro.org>,
 ARM SoC <arm@kernel.org>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 "linux-alpha@vger.kernel.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMTYsIDIwMTkgYXQgNTozNCBQTSBMaW51cyBUb3J2YWxkcwo8dG9ydmFsZHNA
bGludXgtZm91bmRhdGlvbi5vcmc+IHdyb3RlOgo+Cj4gT24gV2VkLCBNYXkgMTUsIDIwMTkgYXQg
MTE6NDMgUE0gT2xvZiBKb2hhbnNzb24gPG9sb2ZAbGl4b20ubmV0PiB3cm90ZToKPiA+Cj4gPiBT
b0MgdXBkYXRlcywgbW9zdGx5IHJlZmFjdG9yaW5ncyBhbmQgY2xlYW51cHMgb2Ygb2xkIGxlZ2Fj
eSBwbGF0Zm9ybXMuCj4gPiBNYWpvciB0aGVtZXMgdGhpcyByZWxlYXNlOgo+Cj4gSG1tLiBUaGlz
IGJyaW5ncyBpbiBhIG5ldyB3YXJuaW5nOgo+Cj4gICBkcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVy
LWl4cDR4eC5jOjc4OjIwOiB3YXJuaW5nOgo+IOKAmGl4cDR4eF9yZWFkX3NjaGVkX2Nsb2Nr4oCZ
IGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1mdW5jdGlvbl0KPgo+IGJlY2F1c2UgdGhh
dCBkcml2ZXJzIGlzIGVuYWJsZWQgZm9yIGJ1aWxkIHRlc3RpbmcsIGJ1dCB0aGF0IGZ1bmN0aW9u
Cj4gaXMgb25seSB1c2VkIHVuZGVyCj4KPiAgICNpZmRlZiBDT05GSUdfQVJNCj4gICAgICAgICBz
Y2hlZF9jbG9ja19yZWdpc3RlcihpeHA0eHhfcmVhZF9zY2hlZF9jbG9jaywgMzIsIHRpbWVyX2Zy
ZXEpOwo+ICAgI2VuZGlmCj4KPiBJdCdzIG5vdCBjbGVhciB3aHkgdGhhdCAjaWZkZWYgaXMgdGhl
cmUuIFRoaXMgZHJpdmVyIG9ubHkgYnVpbGRzCj4gbm9uLUFSTSB3aGVuIENPTVBJTEVfVEVTVCBp
cyBlbmFibGVkLCBhbmQgdGhhdCAjaWZkZWYgYWN0dWFsbHkgYnJlYWtzCj4gdGhhdCBidWlsZCB0
ZXN0Lgo+Cj4gSSdtIGdvaW5nIHRvIHJlbW92ZSB0aGF0ICNpZmRlZiBpbiBteSBtZXJnZSwgYmVj
YXVzZSBJIGRvICpub3QqIHdhbnQKPiB0byBzZWUgbmV3IHdhcm5pbmdzLCBhbmQgaXQgZG9lc24n
dCBzZWVtIHRvIG1ha2UgYW55IHNlbnNlLgo+Cj4gTWF5YmUgdGhhdCdzIHRoZSB3cm9uZyByZXNv
bHV0aW9uLCBwbGVhc2UgaG9sbGVyIGFuZCBsZXQgbWUga25vdyBpZgo+IHlvdSB3YW50IHNvbWV0
aGluZyBlbHNlLgoKQXMgZmFyIGFzIEkgY2FuIHRlbGwsIHRoYXQgaXMgdGhlIGJlc3QgZml4LCB0
aGFua3MgZm9yIHRoZSBjbGVhbnVwIQoKICAgICAgQXJuZAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
