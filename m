Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383301ED86C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 00:09:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cga3RXgCKJBky3POGzRfV1+5AXiYV6+CCKtXGJhrf2c=; b=Ge9/Rra9CfqiiM
	zyYop1mcl/j399Yi2UvrfvloV1X+jZxvAp/wZ1iwCuIgkheL3/f9IKmdrHppoaUE/v53rkQWbMHU4
	TIFgyN+/RBpFFRWdwXgGvfLAXG8kM+z4f7YXXJ+rHUB1+a/tgs27TOf6cfrl9QPW/pgu22oY8ifuD
	KiFC1zc86IGOZQApN80j/eFm8ISdBOu3XJhISpHcSfLAh9z8hzomFgPNL0bQNPPF0jRuD5bxQy0MS
	yo7SuJA9+oyA8R+7lVtbSKOt7C7jUQJETrt076sdR9W7NnEb0s9QtWDzYsXnOgF0i7SlhF1j0gnDW
	zeRS2LJYTQ0nzwx5UrKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgbZQ-00036Y-2D; Wed, 03 Jun 2020 22:09:12 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgbZG-000368-O9
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 22:09:04 +0000
Received: by mail-lf1-x144.google.com with SMTP id 82so2325367lfh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 15:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cGmwYW9BzpYkE3b5BXMa4x8r+iWYDMrACAFEn5/TXJs=;
 b=HKtt7Ce2T/uv0uuk+ikmeaezZFR7KV+O78D0r/pRwJ/pvjEvYLfSpoVYCPmGMlXgAH
 vklJDoXat2X4tk+UWGiPrV1fAJzjDYjto173ALf43iPuLmlA7XTETrfM1n42QfDFYA6G
 lybqZRxRsnxahb0rFMHSsWDGaHfUwLYJcRCM3DQs1xpf/3lnHy6DC75yQNYuwQT7hyC7
 aI3VznFrKb81GMJMV34Mg5laOi3kTzCSe4MyP4nCHPbGBrMF/l/O5CUyDc96d9qfMTyw
 /u1HgOiHC0+TbH7IDV7ts5kgOQS0aTGs9WtayvOuKAcQsbrJtu+D4ZrcZ7BbOqgXazYA
 Sdzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cGmwYW9BzpYkE3b5BXMa4x8r+iWYDMrACAFEn5/TXJs=;
 b=Y7ezJODof2LaDqzNTUxsqjrxu3eBHdIAuS2/B2NAkxDANxP/zBvHAnJ7aFH2ub24Xs
 q+lrCQXiyWG8M61E9PAePC0T4mZgZp7AcghCobUBTvYDhNct9+bgCAyiISo4GNFRDpGg
 auaVhnCNODWMx461az5EYMm2+5lLvYkARiVm8/GhmabUMfrYRr4ZnJgHlNmQuVlivtof
 hgFPchwYMzEoZ6PL3+H1GNkolLDOoWlhW7UXg5lM5mFeFVNo57pJ34Ayp/p5aKLzGb5E
 Bp1EZ0pKHdS5KDSK0EgCd5eNnWOzFCZD+ACj1ulIAeiMmZRAAHh2Lhc6KMMO9VWruhdk
 dOYQ==
X-Gm-Message-State: AOAM531bmGQvSqAfNMkUjVS4zq/UsnIG/jeumqfjgBewZEN6zFqq6E4d
 tUrJaAIiZ84VQyqIrVBWoPIY5MZGw2mt7DLZGbOqrA==
X-Google-Smtp-Source: ABdhPJyk+KPR2lsjSvLKNRHP6aN4z/UirZhICS+CEfRNQ+r3j4K/FSNVE284NtSnzx9V5dXUQyG8xe1LglaugjNvlLo=
X-Received: by 2002:a19:c8cb:: with SMTP id y194mr820722lff.89.1591222140898; 
 Wed, 03 Jun 2020 15:09:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200531073716.593343-1-christophe.jaillet@wanadoo.fr>
 <87h7vvb1s3.fsf@belgarion.home>
 <a2e34c9a-676f-d83f-f395-7428af038c16@wanadoo.fr>
 <20200601183102.GS30374@kadam>
In-Reply-To: <20200601183102.GS30374@kadam>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 4 Jun 2020 00:08:49 +0200
Message-ID: <CACRpkdasbS-4_ZwC-Ucm8tkSUW5tAQdUrXjxHXQ3J0goVYfgHw@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: pxa: pxa2xx: Remove 'pxa2xx_pinctrl_exit()'
 which is unused and broken
To: Dan Carpenter <dan.carpenter@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_150902_789952_996787E0 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-janitors@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMSwgMjAyMCBhdCA4OjMxIFBNIERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50
ZXJAb3JhY2xlLmNvbT4gd3JvdGU6Cj4gT24gTW9uLCBKdW4gMDEsIDIwMjAgYXQgMDE6MzE6MjNQ
TSArMDIwMCwgQ2hyaXN0b3BoZSBKQUlMTEVUIHdyb3RlOgo+ID4gTGUgMDEvMDYvMjAyMCDDoCAx
MDo1OCwgUm9iZXJ0IEphcnptaWsgYSDDqWNyaXQgOgo+ID4gPiBDaHJpc3RvcGhlIEpBSUxMRVQg
PGNocmlzdG9waGUuamFpbGxldEB3YW5hZG9vLmZyPiB3cml0ZXM6Cj4gPiA+Cj4gPiA+ID4gQ29t
bWl0IDZkMzNlZTdhMDUzNCAoInBpbmN0cmw6IHB4YTogVXNlIGRldm1fcGluY3RybF9yZWdpc3Rl
cigpIGZvciBwaW5jdHJsIHJlZ2lzdHJhdGlvbiIpCj4gPiA+ID4gaGFzIHR1cm5lZCBhICdwaW5j
dHJsX3JlZ2lzdGVyKCknIGludG8gJ2Rldm1fcGluY3RybF9yZWdpc3RlcigpJyBpbgo+ID4gPiA+
ICdweGEyeHhfcGluY3RybF9pbml0KCknLgo+ID4gPiA+IEhvd2V2ZXIsIHRoZSBjb3JyZXNwb25k
aW5nICdwaW5jdHJsX3VucmVnaXN0ZXIoKScgY2FsbCBpbgo+ID4gPiA+ICdweGEyeHhfcGluY3Ry
bF9leGl0KCknIGhhcyBub3QgYmVlbiByZW1vdmVkLgo+ID4gPiA+Cj4gPiA+ID4gVGhpcyBpcyBu
b3QgYW4gaXNzdWUsIGJlY2F1c2UgJ3B4YTJ4eF9waW5jdHJsX2V4aXQoKScgaXMgdW51c2VkLgo+
ID4gPiA+IFJlbW92ZSBpdCBub3cgdG8gYXZvaWQgc29tZSB3b25kZXJpbmcgaW4gdGhlIGZ1dHVy
ZSBhbmQgc2F2ZSBhIGZldyBMb0MuCj4gPiA+ID4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
c3RvcGhlIEpBSUxMRVQgPGNocmlzdG9waGUuamFpbGxldEB3YW5hZG9vLmZyPgo+ID4gPiBBY2tl
ZC1ieTogUm9iZXJ0IEphcnptaWsgPHJvYmVydC5qYXJ6bWlrQGZyZWUuZnI+Cj4gPiA+Cj4gPiA+
IFdvdWxkIGJlIGV2ZW4gYSBiZXR0ZXIgcGF0Y2ggd2l0aCBhIDoKPiA+ID4gRml4ZXM6IDZkMzNl
ZTdhMDUzNCAoInBpbmN0cmw6IHB4YTogVXNlIGRldm1fcGluY3RybF9yZWdpc3RlcigpIGZvciBw
aW5jdHJsIHJlZ2lzdHJhdGlvbiIpCj4gPgo+ID4gSSB3YXMgd29uZGVyaW5nIGl0IHdhcyB3YXMg
bmVlZGVkIGluIHRoaXMgY2FzZS4KPiA+IFRoZSBwYXRjaCBkb2VzIG5vdCByZWFsbHkgZml4IGFu
eXRoaW5nLCBhcyB0aGUgZnVuY3Rpb24gaXMgdW51c2VkLiBPciBpdAo+ID4gZml4ZXMgdGhpbmdz
IG9uIGEgdGhlb3JldGljYWwgcG9pbnQgb2Ygdmlldy4KPgo+IFRoZXJlIGlzIG5vIGNvbmNlbnN1
cy4uLiAgV2Ugc2hvdWxkIGNhbGwgYSB2b3RlIG9uIHRoaXMgYXQgS2VybmVsCj4gU3VtbWl0LiAg
OlAKCkZpeGVzIG1lYW5zIGl0IGZpeGVzIHNvbWV0aGluZyB0aGF0IHdhcyB3cm9uZyBpbiB0aGF0
IGNvbW1pdC4KVGhhdCdzIGFsbC4gV2hldGhlciBzeW50YWN0aWMgb3Igc2VtYW50aWMgb3IgcmVn
cmVzc2lvbiBvcgpzZXJpb3VzIG9yIG5vdCBkb2VzIG5vdCBtYXR0ZXIuIEl0IGlzIGFsc28gbm90
IGNvbXB1bHNvcnkgdG8KYWRkIGl0IGlzIGp1c3QgaGVscGZ1bC4KCklmIGl0IGlzIGEgcmVncmVz
c2lvbiBvciBjcml0aWNhbCBidWcsIHdlIGFsc28gYWRkIENjOiBzdGFibGUuCgpZb3VycywKTGlu
dXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
