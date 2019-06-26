Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C02756D76
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 17:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cxz7kLLjDAWWwdgF0v9wV2/WHV4pcgWhP8J1RaX4vzw=; b=aDojWr8DyHDUvz
	LNh5/2UiQ+YfdYP+hEmBvuG2MHwBixxgwk/HaWylD4bPwF3DN5By7mzWxw1ow8QX6jtvIn/GxOIZ8
	sBFhnPK1Piqkq0MBYmQjldi94dOfM66qwVbhiAO14eYwDIsvN3uAOd7+VCkbDhaGuagFQRqbs2rM9
	Jbr+a+rL21Gvd/EnqAXq0Nwl7vL/61I7sjaW7XVlZeOCoVoIW/JFtpMB9MqhJCF5cBBhtz+l5wo18
	wJlr5D18gZxvKyRkPSH3+IrXoOPoX6dBPUphmtcq/qDJr+s+1a0QDyq/HXlb5hfyxEP5PFXvd3Pdj
	T3B35h81ozBUZWEtR/ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg9fS-0006Ht-Pe; Wed, 26 Jun 2019 15:17:02 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg9fC-0006HU-Qq
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 15:16:48 +0000
Received: by mail-wm1-x344.google.com with SMTP id c6so2527398wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 08:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=m+Eox3jAI4p4arcBNi/bz5Q9icr2zuJCTw0NGg/mhXw=;
 b=o6YaSBZc2EeuMFvlpkKfQlplQXMJ12sVko6EIjOoi6QedrBEoUWA5mjdxSslsLgROT
 m7/ZBWLlXuBHYhbUPTU607aSCt5zDrQRPGZqCTnRz23fFKvLUKGvA9nzd0hi6YZTUy1b
 pxt+Nv+XImLd5l4s0g86IKOu7ZahrJZcB1B+KKKWtgzRfSMpXTKAhbUf79Fc9zAiyD6O
 8DYw+T7qHlS/M39+UYnRgNxhHKOwWrQm5GcT63xN8fJkktvuxGZfBFm5tJ8QQoS7uWKl
 0GdTYAJRxsP0x2R9ZbmzDcMJ1XGsh/A88cJeBP37Rf1CUo5Khrv9s3A6jwt3rGRExZ96
 DT7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=m+Eox3jAI4p4arcBNi/bz5Q9icr2zuJCTw0NGg/mhXw=;
 b=mcWbnH3KjBHkyIchU7FM2gv2KK4b2Jb7lJ5osKu5qHi7yWY45BxdnPApiN2dzQe13+
 Bow6D4epU1ItiZ2/FX4JrNHmGhRRb9xptHsNx+piOx8AkG1pg/mJSh5umoa0hbZV+jko
 YnsMtsYh2tFgaaZ5XWR9BhZGvkk8hzpu+lfvC67ttJIfvY28i+zPdD46LGglFKVoWC2g
 +LsUQY/7xeiIJWb+pLj9Q3lG+U86YEYdhQe3GTjBOtEOkb3n2zrt2a4BD3C2x1bga+ax
 91LR4e4VjOmnuFZxjYW6Pa3QVtgamr2OEOqOFA2PzpqD07NOoW64F4PLCnuFvFDq+Tu4
 wu8A==
X-Gm-Message-State: APjAAAXDRxftCETj2KSyzTIJYov9J+u+Sc7SWJE3MgnWQbb3byWHySDd
 6Tbv37dSf72LSY3sUGeNCdd+aQ==
X-Google-Smtp-Source: APXvYqx9AT2z25r8fnh5UqGS35LEo13rBEiKKHlLhWzY6nirXRAA6mty2ATs6Z7uJDe9HJVgEJ/Nag==
X-Received: by 2002:a1c:7d08:: with SMTP id y8mr2601208wmc.50.1561562204873;
 Wed, 26 Jun 2019 08:16:44 -0700 (PDT)
Received: from [192.168.0.41] (26.92.130.77.rev.sfr.net. [77.130.92.26])
 by smtp.googlemail.com with ESMTPSA id o12sm18653051wrx.63.2019.06.26.08.16.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 08:16:44 -0700 (PDT)
Subject: Re: [RFC v3 0/2] clocksource: davinci-timer: new driver
To: Sekhar Nori <nsekhar@ti.com>, Bartosz Golaszewski <brgl@bgdev.pl>
References: <20190605083334.22383-1-brgl@bgdev.pl>
 <1ac8cfcf-1d77-9b6b-4aab-4171f6cf80fc@ti.com>
 <1a66e067-631c-c7a4-288b-3934737bee8c@linaro.org>
 <CAMRc=MecrpzwC0-8x=1dAipf+j7h+C54pHCfbZidFGXtAyv7Pg@mail.gmail.com>
 <234ab4c6-3b3d-6d6b-9bbc-6dc4ca9243b7@ti.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <22da4309-a1a5-c2a3-df83-57398d824fe7@linaro.org>
Date: Wed, 26 Jun 2019 17:16:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <234ab4c6-3b3d-6d6b-9bbc-6dc4ca9243b7@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_081646_888751_14381CBA 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjQvMDYvMjAxOSAwOToyOSwgU2VraGFyIE5vcmkgd3JvdGU6Cj4gT24gMjQvMDYvMTkgMTI6
NTEgUE0sIEJhcnRvc3ogR29sYXN6ZXdza2kgd3JvdGU6Cj4+IHBvbi4sIDI0IGN6ZSAyMDE5IG8g
MDc6NDAgRGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpjYW5vQGxpbmFyby5vcmc+IG5hcGlzYcWC
KGEpOgo+Pj4KPj4+Cj4+PiBTZWtoYXIsIEJhcnRvc3osCj4+Pgo+Pj4gaWYgdGhlIHNwYXJzZSB3
YXJuaW5nIGlzIG5vdCBmaXhlZCwgdGhlIGRyaXZlciB3b24ndCBoaXQgdGhpcyBrZXJuZWwKPj4+
IHZlcnNpb24uIFBsZWFzZSBmaXggaXQgYmVmb3JlIHRoZSB0d28gbmV4dCBkYXlzIG90aGVyd2lz
ZSBpdCB3b24ndCBtYWtlCj4+PiBpdCBmb3IgdjUuNC4KPj4+Cj4+PiBUaGFua3MKPj4+Cj4+Cj4+
IEhpIERhbmllbCwKPj4KPj4gd2lsbCBkbywgSSBqdXN0IGNhbWUgYmFjayB0byB0aGUgb2ZmaWNl
Lgo+Pgo+PiBTZWtoYXIsIGhvdyBkbyB3ZSB3YW50IHRvIGhhbmRsZSB0aGUgcmVzdCBvZiB0aGUg
cGxhdGZvcm0gY29kZSB3aXRoCj4+IHRoaXMgZHJpdmVyPyBEbyB5b3UgdGhpbmsgaXQgY2FuIG1h
a2UgaXQgZm9yIHRoZSBuZXh0IHJlbGVhc2U/Cj4gCj4gSXQgbWF5IGhhdmUgdG8gd2FpdCB0aWxs
IG5leHQgcmVsZWFzZSwgSSBhbSBhZnJhaWQuIExldHMgZmlyc3QgdHJ5IHRvCj4gZ2V0IHRoZSBk
cml2ZXIgaW4gdGhvdWdoLiBJIGNhbiB0cnkgYSBsYXRlIHB1bGwgcmVxdWVzdCB3aXRoIG5vIGd1
YXJhbnRlZXMuCgpUaGUgZHJpdmVyIGlzIG1lcmdlZCBpbiB0aXAvdGltZXJzL2NvcmUsIGhvd2V2
ZXIgSSBtZXNzZWQgdXAgd2l0aCB0aGUKZGF2aW5jaSBicmFuY2gsIHBsZWFzZSBkbyBub3QgY29u
c2lkZXIgaXQgYXMgYW4gaW1tdXRhYmxlIGJyYW5jaC4KClNvcnJ5IGZvciB0aGF0LgoKLS0gCiA8
aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdh
cmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29t
L3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29y
Zz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
