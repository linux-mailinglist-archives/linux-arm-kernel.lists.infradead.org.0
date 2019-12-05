Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C4B113E65
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 10:43:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I4+B+pZGpsOAmT92hXMxSMOPeSv4fnlmfF/GZgkoraI=; b=oKV1evrg4Q8ZTC
	GmXIF5+QD/9LmUye3+klsU3GBzGo/jE6VVjckVDX0uPcm+gidiADYCSnvC/UKcyMh8uqY+QRi/UTB
	yyB9Em+fcxHzXVycABjtWX3UrHedFxlZsSQL0xAODeR+Ltj/k3mUeAlpKDFB6CDhc+Gyr4IxXxQK4
	M5cG25kOxz+mTpBesFBT+XVXQZ8hcKBA43CQLTjiZ8+nUDS1lziE4eQFG+eyGjKmbEemc8LBZcJVP
	kqKPgRqB/6hnJBqByceeecQ+dvsKnxH2RPAYbjF45HzZbBHZdluPf/X2wX3QvUqPLQXUu3m/wew4d
	2thVRC5iOuZdGcsr0spw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icnf2-0005wP-3N; Thu, 05 Dec 2019 09:43:00 +0000
Received: from mail-yw1-f65.google.com ([209.85.161.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icneu-0005vY-Pc
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 09:42:54 +0000
Received: by mail-yw1-f65.google.com with SMTP id u139so928491ywf.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 01:42:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=kEo6iDTk72UPkuZt6wUZlPDmPtU2DQIfzehH/YGLNyo=;
 b=TvRyrfRluYi5l7nAXbcaP9hKqQzMfgJiO+f81FwjTZtbMKcrMabFP0EwDMyGfo0ZEy
 iSLik+ey2o1mQWI/dg4ODI9HZ9uT3uQVsVEoJkY6qsqvqN0KlsXxlkfMpragkfblmrt7
 ufSPStvIH4tEeqEcUsXwGoZb3vwFd6IDrCYCoMnfOaoyqg6h5RGLUZ8wHzrHUcPUaxSe
 naVYKaaGI5pTElE3oTH9Qs/kQwhGW7NjXtb+Njxb118CR1QNkdqK+eZzbrNU283GeXn5
 2ZuV8QSFbAmfXcH4cdiAsxiSCpU5NLJc16yvFggAMa9qRQhBnW+AeaCVQbS2cpXd1bsz
 WN/w==
X-Gm-Message-State: APjAAAWfysUEFVMaBXaYzWVKaVH5DTiAQ0JjwACaQwWCzZ/gmqf76UIk
 Ne9rc1dKAeCtIloncRR3uVJzeKQ3XnNO94pncPE=
X-Google-Smtp-Source: APXvYqz4kznUSQvdv/ngOv0iEdQ0ZJNgjOnxMQ0UYbg7Gk6Wjsf6QyUquiKhub2bpXPNcu8NSv/BsISxF1Rp+Tl01Fc=
X-Received: by 2002:a81:98c6:: with SMTP id p189mr5176776ywg.443.1575538971148; 
 Thu, 05 Dec 2019 01:42:51 -0800 (PST)
MIME-Version: 1.0
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-17-vincenzo.frascino@arm.com>
 <20191204135159.GA7210@roeck-us.net>
 <6cdf4734-4065-09c1-8623-1bf523b38c1b@arm.com>
 <20191204161641.GA28130@roeck-us.net>
 <e35a7f71-2477-fa52-01e4-301199e99c2e@arm.com>
In-Reply-To: <e35a7f71-2477-fa52-01e4-301199e99c2e@arm.com>
From: =?UTF-8?Q?Philippe_Mathieu=2DDaud=C3=A9?= <f4bug@amsat.org>
Date: Thu, 5 Dec 2019 10:42:40 +0100
Message-ID: <CAAdtpL71ED3zbkHMqtd1XFQwToOctWJpy2WPqahxHR81fKdTkg@mail.gmail.com>
Subject: Re: [PATCH v7 16/25] arm: Add support for generic vDSO (causing crash)
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_014252_831860_D2CC7AB0 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (philippe.mathieu.daude[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>, linux-kselftest@vger.kernel.org,
 Shuah Khan <shuah@kernel.org>, linux-arch@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Guenter Roeck <linux@roeck-us.net>,
 Arnd Bergmann <arnd@arndb.de>, Andre Przywara <andre.przywara@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Peter Collingbourne <pcc@google.com>, linux-arm-kernel@lists.infradead.org,
 Huw Davies <huw@codeweavers.com>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Shijith Thotton <sthotton@marvell.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBEZWMgNCwgMjAxOSBhdCA2OjIzIFBNIFZpbmNlbnpvIEZyYXNjaW5vCjx2aW5jZW56
by5mcmFzY2lub0Bhcm0uY29tPiB3cm90ZToKPiBPbiAxMi80LzE5IDQ6MTYgUE0sIEd1ZW50ZXIg
Um9lY2sgd3JvdGU6ClsuLi5dCj4gLS0tPjgtLS0KPgo+IEF1dGhvcjogVmluY2Vuem8gRnJhc2Np
bm8gPHZpbmNlbnpvLmZyYXNjaW5vQGFybS5jb20+Cj4gRGF0ZTogICBXZWQgRGVjIDQgMTY6NTg6
NTUgMjAxOSArMDAwMAo+Cj4gICAgIGFybTogRml4IF9fYXJjaF9nZXRfaHdfY291bnRlcigpIGFj
Y2VzcyB0byBDTlRWQ1QKPgo+ICAgICBfX2FyY2hfZ2V0X2h3X2NvdW50ZXIoKSBzaG91bGQgY2hl
Y2sgY2xvY2tfbW9kZSB0byBzZWUgaWYgaXQgY2FuIGFjY2Vzcwo+ICAgICBDTlRWQ1QuIFdpdGgg
dGhlIGNvbnZlcnNpb24gdG8gdW5pZmllZCB2RFNPIHRoaXMgY2hlY2sgaGFzIGJlZW4gbGVmdCBv
dXQuCj4KPiAgICAgVGhpcyBjYXVzZXMgb24gaW14IHY2IGFuZCB2NyAoaW14X3Y2X3Y3X2RlZmNv
bmZpZykgYW5kIG90aGVyIHBsYXRmb3JtcyB0bwo+ICAgICBoYW5nIGF0IGJvb3QgZHVyaW5nIHRo
ZSBleGVjdXRpb24gb2YgdGhlIGluaXQgcHJvY2VzcyBhcyBwZXIgYmVsb3c6Cj4KPiAgICAgWyAg
IDE5Ljk3Njg1Ml0gUnVuIC9zYmluL2luaXQgYXMgaW5pdCBwcm9jZXNzCj4gICAgIFsgICAyMC4w
NDQ5MzFdIEtlcm5lbCBwYW5pYyAtIG5vdCBzeW5jaW5nOiBBdHRlbXB0ZWQgdG8ga2lsbCBpbml0
IQo+ICAgICBleGl0Y29kZT0weDAwMDAwMDA0Cj4KPiAgICAgRml4IHRoZSBwcm9ibGVtIHZlcmlm
eWluZyB0aGF0IGNsb2NrX21vZGUgaXMgc2V0IGNvaGVyZW50bHkgYmVmb3JlCj4gICAgIGFjY2Vz
c2luZyBDTlRWQ1QuCj4KPiAgICAgQ2M6IFJ1c3NlbGwgS2luZyA8bGludXhAYXJtbGludXgub3Jn
LnVrPgo+ICAgICBSZXBvcnRlZC1ieTogR3VlbnRlciBSb2VjayA8bGludXhAcm9lY2stdXMubmV0
Pgo+ICAgICBJbnZlc3RpZ2F0ZWQtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+CgpU
aGVyZSBhcmUgb25seSAyICJJbnZlc3RpZ2F0ZWQtYnkiIHZzIDdrKyAiU3VnZ2VzdGVkLWJ5Ii4u
LiBJcyB0aGVyZSBhCnJlYWwgZGlmZmVyZW5jZT8KCj4gICAgIFNpZ25lZC1vZmYtYnk6IFZpbmNl
bnpvIEZyYXNjaW5vIDx2aW5jZW56by5mcmFzY2lub0Bhcm0uY29tPgo+Cj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2luY2x1ZGUvYXNtL3Zkc28vZ2V0dGltZW9mZGF5LmgKPiBiL2FyY2gvYXJtL2lu
Y2x1ZGUvYXNtL3Zkc28vZ2V0dGltZW9mZGF5LmgKPiBpbmRleCA1Yjg3OWFlN2FmYzEuLjBhZDI0
MjljMzI0ZiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9pbmNsdWRlL2FzbS92ZHNvL2dldHRpbWVv
ZmRheS5oCj4gKysrIGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vdmRzby9nZXR0aW1lb2ZkYXkuaAo+
IEBAIC03NSw2ICs3NSw5IEBAIHN0YXRpYyBfX2Fsd2F5c19pbmxpbmUgdTY0IF9fYXJjaF9nZXRf
aHdfY291bnRlcihpbnQgY2xvY2tfbW9kZSkKPiAgI2lmZGVmIENPTkZJR19BUk1fQVJDSF9USU1F
Ugo+ICAgICAgICAgdTY0IGN5Y2xlX25vdzsKPgo+ICsgICAgICAgaWYgKCFjbG9ja19tb2RlKQo+
ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiArCgpSZXZpZXdlZC1ieTogUGhpbGlw
cGUgTWF0aGlldS1EYXVkw6kgPGY0YnVnQGFtc2F0Lm9yZz4KCj4gICAgICAgICBpc2IoKTsKPiAg
ICAgICAgIGN5Y2xlX25vdyA9IHJlYWRfc3lzcmVnKENOVFZDVCk7Cj4KPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
