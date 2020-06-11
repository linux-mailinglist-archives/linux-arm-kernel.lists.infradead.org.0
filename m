Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FDA1F687C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d57jAWNVMJdzvr7lolXC0ZI51nYNEd7z/sFsyd+F/sg=; b=oMxEbiU4hZ8Zqu
	pdnbz0kP2TpCXLe+Cbgrs9Zf0WQOrc78b9Ba0sRTQPNv8i+Bxz2wUxSW2hfgcX7dOkivKt+MW61Yh
	LGNu9GwsenTGpUFSk0XWPXs7q1Y+72/eMp1qu2EBfJcY5yCeVV51+Yh5NSGn4CwuORkWEugR1uKd5
	ghXz6gDl6+iZ5t1ZokR92hyzKPw7UgOTCkacD9sdH8WKBuCBNORBNMRwdVmM/rZrb0MZlnE6DW4Me
	2eajdDAgMiDrdKXuGBu6C6usDJ6uaaeCt2PaYDU2k/3ql3NqPe0njNF8NXbxGGr+jbuAUwftVzsY+
	8kSga5dEI5V9iTvPsbrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjMq2-0006FX-0d; Thu, 11 Jun 2020 13:01:46 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjMpu-0006FD-Rk
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 13:01:40 +0000
Received: by mail-wr1-x444.google.com with SMTP id x6so6033630wrm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 06:01:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=elECq92oJ4/XDwQ9hOWJUgujb9aF8JKLlnlf1/L4bGY=;
 b=BXD053gCnYRcPJDIinKxGq0ceA7ctZrCxv5J4I9m/Cp5sQHGSTDSU0LOtOyVn7qqUj
 Krd+qAND6/A3L8TTMx2eC5OGjpGZcsZSHiJhVs4+1BKAT1l+6GNPrUI41ck9+os3+tWS
 XRwTIW87OAy4CW+LaSesaLBcFwKPjdTwBFf9g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=elECq92oJ4/XDwQ9hOWJUgujb9aF8JKLlnlf1/L4bGY=;
 b=ZMQUDHUyjMp2uai7Bbo0gVl2+eLPe/+aV8EpELzi1JuVIG6NbEq+OWZVQbqYveb1Hz
 RSJtj+3rjHVGOhVCud42qW+hsH9Kz8Krca7uGnNa5xDCyKo3H+h2oa1bST13EKISJfi8
 FyoDeX8HDc7iwr7TbCFzBEEhpa/1mIdzmxXHCBE1ujFwKmvm0YHqYRMLvrttM7fA5uih
 z2XRj9mtOii9GWJcRogMgiwviWZpKEGo1wrOJj9U5AQX0SzxIaVe98XGnVmIvXwmb7mw
 /SaAbIHTJG4tQgwUSMV+8dW0AdijRxLW09o3HOsr9hCq+t6qBqFemCwUDFSQT1my7Ipo
 vCZA==
X-Gm-Message-State: AOAM531+6Bu3EAVYPv6Yfa/ZAmhmylYT/2NrD6m0yqg/h3d5QaVce1nk
 79Qbs+tX/e+nEBw/BzhgsYFCfs5kY/hmhtWDbcEtIw==
X-Google-Smtp-Source: ABdhPJxfj6Ic2hQLja4+A6vurSDrOmbpY/+FxQxxyINLp+8z03ANQKuArnIOi/AhJzUy1lPkZwoVW5sIY5NTSKdMO9E=
X-Received: by 2002:a5d:6cc1:: with SMTP id c1mr9805713wrc.144.1591880496326; 
 Thu, 11 Jun 2020 06:01:36 -0700 (PDT)
MIME-Version: 1.0
References: <20191014061617.10296-2-daniel@0x0f.com>
 <20200610090421.3428945-3-daniel@0x0f.com>
 <976e789e-edd7-c44d-ea99-840ecb883ff8@suse.de>
In-Reply-To: <976e789e-edd7-c44d-ea99-840ecb883ff8@suse.de>
From: Daniel Palmer <daniel@0x0f.com>
Date: Thu, 11 Jun 2020 22:01:20 +0900
Message-ID: <CAFr9PXkvmZv3_EakxvRR+X522xN-a8epvF0ns10JeYCLn2uUKw@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] ARM: mstar: Add machine for MStar/Sigmastar
 infinity/mercury family ARMv7 SoCs
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_060139_011734_9FAA017A 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, Ard Biesheuvel <ardb@kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Nathan Huckleberry <nhuck15@gmail.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, allen <allen.chen@ite.com.tw>,
 tim.bird@sony.com, Maxime Ripard <mripard@kernel.org>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 Gregory Fong <gregory.0xf0@gmail.com>, Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Krzysztof Adamski <k@japko.eu>,
 Christian Lamparter <chunkeey@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywKCk9uIFRodSwgMTEgSnVuIDIwMjAgYXQgMjE6NDksIEFuZHJlYXMgRsOkcmJl
ciA8YWZhZXJiZXJAc3VzZS5kZT4gd3JvdGU6Cj4gPiBwZXJpcGhlcmFscyBhbmQgc3lzdGVtIG1l
bW9yeSBpbiBhIHNpbmdsZSB0aW55IFFGTiBwYWNrYWdlIHRoYXQKPiA+IGNhbiBiZSBoYW5kIHNv
bGRlcmVkIGFsbG93aW5nIGFsbW9zdCBhbnlvbmUgdG8gZW1iZWQgTGludXgKPgo+ICJzb2xkZXJl
ZCwgYWxsb3dpbmciPwoKVGhlIG9yaWdpbmFsIHJlYWRzIG9rIHRvIG1lLiBNYXliZSBJIGNhbiBq
dXN0IHNwbGl0IHRoYXQgaW50byB0d28gc2VudGVuY2VzPwpMaWtlICIuLiBRRk4gcGFja2FnZSB0
aGF0IGNhbiBiZSBoYW5kIHNvbGRlcmVkLiBUaGlzIGFsbG93cyBhbG1vc3QgYW55b25lLi4iLgoK
PiA+IC0tLSBhL01BSU5UQUlORVJTCj4gPiArKysgYi9NQUlOVEFJTkVSUwo+ID4gQEAgLTIxMTQs
NiArMjExNCw3IEBAIEFSTS9NU3Rhci9TaWdtYXN0YXIgQVJNdjcgU29DIHN1cHBvcnQKPiA+ICAg
TTogIERhbmllbCBQYWxtZXIgPGRhbmllbEB0aGluZ3kuanA+Cj4gPiAgIEw6ICBsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcgKG1vZGVyYXRlZCBmb3Igbm9uLXN1YnNjcmliZXJz
KQo+ID4gICBTOiAgTWFpbnRhaW5lZAo+ID4gK0Y6ICAgYXJjaC9hcm0vbWFjaC1tc3Rhci8KPiA+
ICAgRjogIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vbXN0YXIueWFtbAo+
ID4KPiA+ICAgQVJNL05FQyBNT0JJTEVQUk8gOTAwL2MgTUFDSElORSBTVVBQT1JUCj4gW3NuaXBd
Cj4KPiBUaGUgc29ydCBvcmRlciBoYXMgcmVjZW50bHkgYmVlbiBjaGFuZ2VkIHRvIGNhc2Utc2Vu
c2l0aXZlLCBpLmUuLCB5b3UKPiBzaG91bGQgYXBwZW5kIGFyY2ggYWZ0ZXIgRG9jdW1lbnRhdGlv
bi4KCkludGVyZXN0aW5nLiBDaGVja3BhdGNoIGRpZG4ndCBjb21wbGFpbiBhYm91dCB0aGF0IGFs
dGhvdWdoIGl0CmNvbXBsYWluZWQgYWJvdXQgdGhlCm9yaWdpbmFsIG9yZGVyaW5nIEkgaGFkLgoK
VGhhbmtzIGZvciB0aGUgaW5wdXQuCgpEYW5pZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
