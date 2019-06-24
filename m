Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DFF5036C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 09:31:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dm/UOsBhIWA93uJyygocfDPyo/51ht7PpnrjgKKDJbU=; b=dvyXIwmQqEh2mO
	8zaKIMYRnQsB9put60Lo8rPD9pBnAl4cM9e6iTnHJ9pV8l50fg+k6WTuY7AiSXIzLjH0vLbeP7Ctp
	fAb1BHNV4MmkpLqB3j28yVU14SAwOzDAUxXgIYjHd7R6naIO4UDU0Ynn5jbEXIcnEjPCqyIaxEfO/
	kBPaL6rIogwOlYWTMxcO6ESLDipbibiOPAjUVVAbDiEtl+5Z3HWuFGSsfi3ZSBrKKDw89kUI0FaJq
	8T07Rpa+JHWrRLqWS1OxZ2Oo0lT4t8g8X9kIp6FWRfJqmoVoW3wRnpzHLKOUdzzMIkJUHCUkcCFL4
	a31N7aVW/LhypRn9d4yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJRi-0003MI-07; Mon, 24 Jun 2019 07:31:22 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJRQ-0003I2-9k
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 07:31:05 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5O7U2mx055210;
 Mon, 24 Jun 2019 02:30:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561361402;
 bh=Nr11N80KudDTkBmA2h5dEMXRhA9/KJlHbyFJQ9rK1ac=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Apq91SiE6fuoCNrkBrsu2GdGAQZnDy9tWyWbwFr+Ps86ONgTmNm10mJdS1hueW/Ld
 KbeLqqlQLwhyZqcbKpYuPMm1suBxv4Qn+nUSafkbEj5nhrUb2RF4PN6wToyb5R/tP+
 B0pd71XKHKAUOO7JTn3qZY0MjSxcU0U6t7+IIWrI=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5O7U1jL012828
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 24 Jun 2019 02:30:02 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 24
 Jun 2019 02:30:01 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 24 Jun 2019 02:30:01 -0500
Received: from [172.24.190.172] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5O7TwPr072735;
 Mon, 24 Jun 2019 02:29:58 -0500
Subject: Re: [RFC v3 0/2] clocksource: davinci-timer: new driver
To: Bartosz Golaszewski <brgl@bgdev.pl>, Daniel Lezcano
 <daniel.lezcano@linaro.org>
References: <20190605083334.22383-1-brgl@bgdev.pl>
 <1ac8cfcf-1d77-9b6b-4aab-4171f6cf80fc@ti.com>
 <1a66e067-631c-c7a4-288b-3934737bee8c@linaro.org>
 <CAMRc=MecrpzwC0-8x=1dAipf+j7h+C54pHCfbZidFGXtAyv7Pg@mail.gmail.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <234ab4c6-3b3d-6d6b-9bbc-6dc4ca9243b7@ti.com>
Date: Mon, 24 Jun 2019 12:59:57 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAMRc=MecrpzwC0-8x=1dAipf+j7h+C54pHCfbZidFGXtAyv7Pg@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_003104_435846_0FA6E374 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

T24gMjQvMDYvMTkgMTI6NTEgUE0sIEJhcnRvc3ogR29sYXN6ZXdza2kgd3JvdGU6Cj4gcG9uLiwg
MjQgY3plIDIwMTkgbyAwNzo0MCBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJv
Lm9yZz4gbmFwaXNhxYIoYSk6Cj4+Cj4+Cj4+IFNla2hhciwgQmFydG9zeiwKPj4KPj4gaWYgdGhl
IHNwYXJzZSB3YXJuaW5nIGlzIG5vdCBmaXhlZCwgdGhlIGRyaXZlciB3b24ndCBoaXQgdGhpcyBr
ZXJuZWwKPj4gdmVyc2lvbi4gUGxlYXNlIGZpeCBpdCBiZWZvcmUgdGhlIHR3byBuZXh0IGRheXMg
b3RoZXJ3aXNlIGl0IHdvbid0IG1ha2UKPj4gaXQgZm9yIHY1LjQuCj4+Cj4+IFRoYW5rcwo+Pgo+
IAo+IEhpIERhbmllbCwKPiAKPiB3aWxsIGRvLCBJIGp1c3QgY2FtZSBiYWNrIHRvIHRoZSBvZmZp
Y2UuCj4gCj4gU2VraGFyLCBob3cgZG8gd2Ugd2FudCB0byBoYW5kbGUgdGhlIHJlc3Qgb2YgdGhl
IHBsYXRmb3JtIGNvZGUgd2l0aAo+IHRoaXMgZHJpdmVyPyBEbyB5b3UgdGhpbmsgaXQgY2FuIG1h
a2UgaXQgZm9yIHRoZSBuZXh0IHJlbGVhc2U/CgpJdCBtYXkgaGF2ZSB0byB3YWl0IHRpbGwgbmV4
dCByZWxlYXNlLCBJIGFtIGFmcmFpZC4gTGV0cyBmaXJzdCB0cnkgdG8KZ2V0IHRoZSBkcml2ZXIg
aW4gdGhvdWdoLiBJIGNhbiB0cnkgYSBsYXRlIHB1bGwgcmVxdWVzdCB3aXRoIG5vIGd1YXJhbnRl
ZXMuCgpUaGFua3MsClNla2hhcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
