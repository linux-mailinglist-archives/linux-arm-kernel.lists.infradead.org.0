Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3822155C16
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 17:47:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r+bYCJel62/h+7ljONkF5GeFVDNNl1DdAyHB44HOY0w=; b=vDxQB020NbVXu/
	FKbRjZuZmIr0Wc+hC9vxgcA+LXTAfV1FRfh6Fktsay39u8J+SorOoo9dbyIFe5vSXK+guJ8q+2rHs
	fGnEf1QKrRrkndQ3OiDTZVXwK6hmstFqi9qxg0R/4B2awYS2/cQFLIe0/WPYmbOsaViM+SVyu51vN
	fxzlR2LcIh/zWUajgNAz/HNAaDDL4TtYy9VrO2drytdveVbOcHIDPb790tP507MOcuYy3yzkVBiR0
	n+rjr4eS7NY/cQmA01C5ZVmC1K5DC656FDAPxTgXDpNg9+jeDz2yBcK47hDh+/dRrM9A2LGF8sHdi
	2JjfCx/ybnkTh5uu127A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j06nH-0005fx-Oq; Fri, 07 Feb 2020 16:47:51 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j06nB-0005fb-0K
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 16:47:46 +0000
Received: by mail-lj1-x241.google.com with SMTP id o15so2844666ljg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 08:47:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2NMoRT30iQ+tCo0o0Sn90sldXaVgelaqy3SMc26eMtE=;
 b=pJAUC0TsXgq8V5q0nrf82Olq+fHeZmx4A+vXaFdqCwqBniHusEs5vD8tsVePEJQ0VN
 OD/7GI77Pg1RtMeKJYnk+t3MVsZ90WZ5q0/tWtNGYeBMIx6HhUxM9KdzoJpSuAQLqiDz
 lD5ejn9V87l0JzWmz9AnsJ8M0nX3K10M9fgUhc0Q0DIy+kg3V18BgkbQ2I+WxulTAmSd
 9lMreixRIylJAIuSE48keuOcSpvpyeS0LDVdqpj6Oult4eGtrHwNYylBEwETnEBHBMxi
 ilqzd94/HH94uDlOOGpVbB2FHN7LJfxWyeYkap/9/9Cznd5zttkCVleaH423dUVodumC
 8xWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2NMoRT30iQ+tCo0o0Sn90sldXaVgelaqy3SMc26eMtE=;
 b=i4u0QcBK/sh8GJ30s5aSkn4XOBYq3ecn+QBOGjaUytjasiRQey1FmQ2DyNBi84NssF
 +n7mUabdtwUQZRCt1vfeVyEhGyJgv3rnK51TBqp+EzWTjvksS/802pmw0opGm5xx4mIT
 lOlMEsr4BxWbH9m2axvFg5wuitRhremUzwRUa9xlIWewfgbOB5ju8fsqzOutt7ELGUTi
 Ci4pf85Wg73bX3GMyZU8C/dIc0o4HZONkYJRk+XU4/kWSWbga5B3zHKdiYMVT/EWnR/a
 kiE1Jyhs9C0Q5Y/mUsCesxW78TBItTGTaNELlP2SDdgRrKOf8mxe3xuulmTZCvh7q2nk
 UIeA==
X-Gm-Message-State: APjAAAUWSBZYvXZ3f7w0RkyCpgkmhwnm1g68euWUQizWp92FUNppt2BJ
 TR1KDwFjsjY4U5jl2bvQs0b9jNgR
X-Google-Smtp-Source: APXvYqw0/SNfI1cihxngPVjF8J849HZFhXP/YpBwLSsMLOgVrBJYt0XZMy9zqY0e10k9XX/vCTxcow==
X-Received: by 2002:a2e:88c5:: with SMTP id a5mr67349ljk.201.1581094062464;
 Fri, 07 Feb 2020 08:47:42 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id e12sm1292984lfc.70.2020.02.07.08.47.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 07 Feb 2020 08:47:41 -0800 (PST)
Subject: Re: [tip: core/kprobes] arm/ftrace: Use __patch_text()
To: Peter Zijlstra <peterz@infradead.org>
References: <20191113092636.GG4131@hirez.programming.kicks-ass.net>
 <157544841563.21853.2859696202562513480.tip-bot2@tip-bot2>
 <10cbfd9e-2f1f-0a0c-0160-afe6c2ccbebd@gmail.com>
 <20200207112720.GF14914@hirez.programming.kicks-ass.net>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <039eac1a-cafe-b20b-77c8-bad019d4320c@gmail.com>
Date: Fri, 7 Feb 2020 19:47:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200207112720.GF14914@hirez.programming.kicks-ass.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_084745_045767_3788F0E1 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, x86 <x86@kernel.org>,
 Denys Vlasenko <dvlasenk@redhat.com>, linux-tip-commits@vger.kernel.org,
 Brian Gerst <brgerst@gmail.com>, ard.biesheuvel@linaro.org,
 linux-kernel@vger.kernel.org,
 tip-bot2 for Peter Zijlstra <tip-bot2@linutronix.de>,
 Jon Hunter <jonathanh@nvidia.com>, rabin@rab.in,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Thierry Reding <thierry.reding@gmail.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 james.morse@arm.com, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDcuMDIuMjAyMCAxNDoyNywgUGV0ZXIgWmlqbHN0cmEg0L/QuNGI0LXRgjoKPj4gTlZJRElBIFRl
Z3JhMjAvMzAgYXJlIG5vdCBib290aW5nIHdpdGggQ09ORklHX0ZUUkFDRT15LCBidXQgZXZlbiB3
aXRoCj4+IENPTkZJR19GVFJBQ0U9biB0aGluZ3MgYXJlIG5vdCB3b3JraW5nIHdlbGwuCj4gCj4g
T29oLCBJIHRoaW5rIEkgc2VlLiBDYW4geW91IHRyeSB0aGlzOgo+IAo+IGRpZmYgLS1naXQgYS9h
cmNoL2FybS9rZXJuZWwvZnRyYWNlLmMgYi9hcmNoL2FybS9rZXJuZWwvZnRyYWNlLmMKPiBpbmRl
eCAyYTVmZjY5YzI4ZTYuLjEwNDk5ZDQ0OTY0YSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9rZXJu
ZWwvZnRyYWNlLmMKPiArKysgYi9hcmNoL2FybS9rZXJuZWwvZnRyYWNlLmMKPiBAQCAtNzgsMTMg
Kzc4LDEwIEBAIHN0YXRpYyBpbnQgZnRyYWNlX21vZGlmeV9jb2RlKHVuc2lnbmVkIGxvbmcgcGMs
IHVuc2lnbmVkIGxvbmcgb2xkLAo+ICB7Cj4gIAl1bnNpZ25lZCBsb25nIHJlcGxhY2VkOwo+ICAK
PiAtCWlmIChJU19FTkFCTEVEKENPTkZJR19USFVNQjJfS0VSTkVMKSkgewo+ICsJaWYgKElTX0VO
QUJMRUQoQ09ORklHX1RIVU1CMl9LRVJORUwpKQo+ICAJCW9sZCA9IF9fb3Bjb2RlX3RvX21lbV90
aHVtYjMyKG9sZCk7Cj4gLQkJbmV3ID0gX19vcGNvZGVfdG9fbWVtX3RodW1iMzIobmV3KTsKPiAt
CX0gZWxzZSB7Cj4gKwllbHNlCj4gIAkJb2xkID0gX19vcGNvZGVfdG9fbWVtX2FybShvbGQpOwo+
IC0JCW5ldyA9IF9fb3Bjb2RlX3RvX21lbV9hcm0obmV3KTsKPiAtCX0KPiAgCj4gIAlpZiAodmFs
aWRhdGUpIHsKPiAgCQlpZiAocHJvYmVfa2VybmVsX3JlYWQoJnJlcGxhY2VkLCAodm9pZCAqKXBj
LCBNQ09VTlRfSU5TTl9TSVpFKSkKPiAKCkhlbGxvIFBldGVyLAoKSXQgZml4ZXMgdGhlIHByb2Js
ZW0sIGF0IGxlYXN0IGtlcm5lbCBpcyBib290aW5nIGZpbmUgbm93IGFuZCBJIGNhbid0Cm5vdGlj
ZSBhbnkgcHJvYmxlbXMuIFRoYW5rIHlvdSB2ZXJ5IG11Y2ghIDopCgpUZXN0ZWQtYnk6IERtaXRy
eSBPc2lwZW5rbyA8ZGlnZXR4QGdtYWlsLmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
