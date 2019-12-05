Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEC0113FDC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 12:02:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zpwsEllE639Y8IKsX5Mpq7qf+ZxQhBpjUvgsrpgAzaU=; b=ipLjQSvoHFyAPt
	kd60eOnPW4W4OU2wUCCF3QqloarcXHUPAilhgq3rERJNIo47cz58vGHJ7w0NzAcyngZZ0i1vYJlB0
	U579Co+uRJB7LJ+4qR0XL2vUbdwH4sqYMMKkbHv0RcSUvH2QQO4jKb/gJ1JoQMU9DC5jw4WYTDiy0
	7O7S/hPsKLRvi1nvoH0wzO5Fzs8BHDR8MIqLftUCRqv9jhkINByNsZPxQt8vLkxNHt7DhGIF8ARve
	9peXWqtJwfEzo+JC8/qlfeG7Kj8VaKnD7p9ZtcVBHTKLCUzD/zqyq/q5+pVZJbyhfzashjfrDVjQl
	I/+xkbToAorzNsy1tlNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icouA-0000q7-Lq; Thu, 05 Dec 2019 11:02:42 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icou2-0000pI-RZ
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 11:02:36 +0000
Received: from mail-lj1-f169.google.com ([209.85.208.169]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N6sON-1hh8OG2Er1-018MBS for <linux-arm-kernel@lists.infradead.org>; Thu,
 05 Dec 2019 12:02:31 +0100
Received: by mail-lj1-f169.google.com with SMTP id z17so2981273ljk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 03:02:30 -0800 (PST)
X-Gm-Message-State: APjAAAXexkaZ9ChUqS8jhE+fF4v0mfwj7jwXak5AfvB9015zHspBtCKX
 E/F1WrV6+yRwuFl4Xi6ZalYLXE+xjnwV7ONeqOM=
X-Google-Smtp-Source: APXvYqzDYON/MBaEaa/M6IrL+iOGcm4xJQW0wdjdRvYG7K2lgdB2YeKajZPfIsCsDNe/lygpM40sVli0MtDQSfWZsds=
X-Received: by 2002:a2e:2e14:: with SMTP id u20mr5178646lju.120.1575543750059; 
 Thu, 05 Dec 2019 03:02:30 -0800 (PST)
MIME-Version: 1.0
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-17-vincenzo.frascino@arm.com>
 <20191204135159.GA7210@roeck-us.net>
 <6cdf4734-4065-09c1-8623-1bf523b38c1b@arm.com>
 <20191204161641.GA28130@roeck-us.net>
 <e35a7f71-2477-fa52-01e4-301199e99c2e@arm.com>
 <CAAdtpL71ED3zbkHMqtd1XFQwToOctWJpy2WPqahxHR81fKdTkg@mail.gmail.com>
 <a391048e-f57c-159e-7174-d9d38d8f3825@arm.com>
In-Reply-To: <a391048e-f57c-159e-7174-d9d38d8f3825@arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 5 Dec 2019 12:02:13 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1krE=nOi6Dy=QaWiE9VTgNpUVbrHUVm_3Cq+JGJyuwKQ@mail.gmail.com>
Message-ID: <CAK8P3a1krE=nOi6Dy=QaWiE9VTgNpUVbrHUVm_3Cq+JGJyuwKQ@mail.gmail.com>
Subject: Re: [PATCH v7 16/25] arm: Add support for generic vDSO (causing crash)
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-Provags-ID: V03:K1:hznRlmVqxyo2mqujNQ2pLcDHHAngBTXFmVdfV1yEPRR7MgX6kU8
 ssQjgOI9OVvtQWQd8kdxQmq+lFqWyQNPwuTnjMnimwY21NnqLc7NbOG54aYu24EvNsGtMA+
 j71cuezCod9ih/rKJ/VhTR7cSh2WPxohlO/3uVQ1ipoXoWgoFItdZfXl884CL2JDvH5O4jM
 /aRYG3uLnlQSjh/WabKfg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nPhy8ONkFbI=:uwvQDzr85gGww64lPkW5/2
 mjbSsBouRiyyK2+cVlyvt2kjcXOQ1argV6HHN7HnOvclhv+E2OtIUyTFPP3A2gcNr6EinVyXz
 6hUlmg2kiLcUSat//zZLCyigtiRpkK/+THRGBlXcPNtj+TvwymTWalvSj15yxCEd0xtsVQAca
 ivMN6d2ATmUqnOwyXo/+8sk7TV+dgIsdhwr8KsMZ3flcGifMHXCb0iebytL2lDK43JfrpkSBm
 WX8j9cdDX0eDzRBd/YiHhqMsd/rhM6NQUZHk5/n8eU0saRuAnqGJ7IxqSLc1aRYaaCuhUYKJn
 Kb4oz63WkJLmS6nCnZ27aD30upw3YlEfzidCa9E25a1NBdZ+qjot+Sa+sLdrCGDxZZUPB1ja7
 exaom1VkDvUfoTbj8cRjKRuNgg+X+NXMsTbWp1fUJA4ArwXqxsKN4KtCK7NFYFT/ugm0GfziB
 SRIdJSJMVB289HAVehBtQf8ktUzMlOiLsABXn6GOTHkrgxCVsAOzhp4UAzJdxCl0OEKuzHbrU
 b3JWQFLeQ6MAGRrzXNosqzFDIASU0xfvuVR5abbi1Mrs5ZUKfa5PSJ68U6fIQ5NjlFNeZuPIx
 LzW/CaR9rL24n8dknzRAb6KYTI0sITxRUBxUY25srm95COQrlPY/rk3zYr5RBOhdcMpLNAzXA
 FLKCzf+oQwdUnSZkhpnBOY26tIqWXBqVrJa899ZuPFLOZALTcibs8gX4NkStUUasVKY/9TviG
 pNzQZtsKU1f4EFY4lvKaiMZ0gWp5pdrk0dOXz5Z62r9e7P3137s/oU8QCJgkjOftZg8Sxo9eR
 4JfBW/ymfJreFcCnbJwORtqxWvPshq/PiF1U/GyDmGjRQ8BLG4jGakO727KnA8laEMCNRXG/K
 31UB5qmyucA8+UGPFpTw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_030235_186692_C5AEA6DF 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>, linux-arch <linux-arch@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Will Deacon <will.deacon@arm.com>,
 Guenter Roeck <linux@roeck-us.net>, Andre Przywara <andre.przywara@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Huw Davies <huw@codeweavers.com>, open list <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Shijith Thotton <sthotton@marvell.com>,
 =?UTF-8?Q?Philippe_Mathieu=2DDaud=C3=A9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBEZWMgNSwgMjAxOSBhdCAxMTowMCBBTSBWaW5jZW56byBGcmFzY2lubwo8dmluY2Vu
em8uZnJhc2Npbm9AYXJtLmNvbT4gd3JvdGU6Cj4KPiBIaSBQaGlsaXBwZSwKPgo+IE9uIDA1LzEy
LzIwMTkgMDk6NDIsIFBoaWxpcHBlIE1hdGhpZXUtRGF1ZMOpIHdyb3RlOgo+ID4gVGhlcmUgYXJl
IG9ubHkgMiAiSW52ZXN0aWdhdGVkLWJ5IiB2cyA3aysgIlN1Z2dlc3RlZC1ieSIuLi4gSXMgdGhl
cmUgYQo+ID4gcmVhbCBkaWZmZXJlbmNlPwo+Cj4gTm90IHN1cmUgYWJvdXQgdGhhdC4gTXkgdGFr
ZSBpcyB0aGF0IFN1Z2dlc3RlZC1ieSBpcyB1c2VkIHdoZW4gc29tZW9uZSBzdWdnZXN0cwo+IHlv
dSBob3cgdG8gcG9zc2libHkgaW1wbGVtZW50IGEgZmVhdHVyZSBhbmQgeW91IGdvIGFuZCBkbyB0
aGF0LiBJbnZlc3RpZ2F0ZWQtYnkKPiBpcyB3aGVuIHRoZXJlIGlzIGEgZml4IHRvIG1ha2UgYW5k
IHNvbWVvbmUgY29tZXMgdG8geW91IHdpdGggdGhlIGV4YWN0IHNvbHV0aW9uCj4gbGlrZSBpbiB0
aGlzIGNhc2UgQXJuZCBkaWQuCgpJdCdzIG5vdCBhIHN0YW5kYXJkIHRhZywgYnV0IEkgc3VnZ2Vz
dGVkIGl0IGJlY2F1c2UgaXQgZG9lcyBleHBsYWluCmJldHRlciB3aGF0IEkgZGlkLgoKWW91IGNv
dWxkIGFsc28ganVzdCBleHBsYWluIGluIGNsZWFyIHRleHQgdGhhdCBJIGRpZCB0aGUgYW5hbHlz
aXMgYW5kIHRoZW4gYWRkCnRoZSBtb3JlIG5vcm1hbCBTdWdnZXN0ZWQtYnkgdGFnLCBJIGRvbid0
IGNhcmUgZWl0aGVyIHdheS4KCiAgICAgIEFybmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
