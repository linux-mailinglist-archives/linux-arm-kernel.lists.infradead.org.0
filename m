Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC1AF6E39
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 06:42:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WMG5ktGowKcfJHQQ7dTNR7xIUpdNueFgLvBYYOJSOhI=; b=ZiQBEQgu7DSfyk
	slRILQyvanG2j/2KeuDG7BgcWIn/DJ4dE+gjDnUKlUW71sqsVPa9MnQkDzMTQBEq58ZpwzoNM01QG
	geSisfYduO25Wsji5pjZUGbz9VLmmQ7/EnwDJCuCaGDDcy84jPPy5rtSenBR546SQMv3uD5zCBd8o
	jFuw7go0TzGainRB58a+OyS2W1kl0wl1N0Aw26DJjH5YKegjPYokuulQc+Tf/9NtirL0Bgz4j+8D4
	k+bJS+nkuajY6SNhQ0bKcYen48wTrsTRrZLPXnoFoZtKkA+dGaUN4TJ2a4FlwYmli1kqeIEdIrbaC
	F+jin5lRzQhl/pLc3yDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU2Sx-0007EO-Bb; Mon, 11 Nov 2019 05:42:19 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU2Sm-0007Dw-1d; Mon, 11 Nov 2019 05:42:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2E3A4ACC0;
 Mon, 11 Nov 2019 05:42:06 +0000 (UTC)
Subject: Re: [PATCH] base: soc: Export soc_device_to_device() helper
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20191103013645.9856-3-afaerber@suse.de>
 <20191111045609.7026-1-afaerber@suse.de> <20191111052741.GB3176397@kroah.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <586fa37c-6292-aca4-fa7c-73064858afaf@suse.de>
Date: Mon, 11 Nov 2019 06:42:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191111052741.GB3176397@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_214208_233956_4B69DCDF 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-realtek-soc@lists.infradead.org, "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3JlZywKCkFtIDExLjExLjE5IHVtIDA2OjI3IHNjaHJpZWIgR3JlZyBLcm9haC1IYXJ0bWFu
Ogo+IE9uIE1vbiwgTm92IDExLCAyMDE5IGF0IDA1OjU2OjA5QU0gKzAxMDAsIEFuZHJlYXMgRsOk
cmJlciB3cm90ZToKPj4gVXNlIG9mIHNvY19kZXZpY2VfdG9fZGV2aWNlKCkgaW4gZHJpdmVyIG1v
ZHVsZXMgY2F1c2VzIGEgYnVpbGQgZmFpbHVyZS4KPj4gR2l2ZW4gdGhhdCB0aGUgaGVscGVyIGlz
IG5pY2VseSBkb2N1bWVudGVkIGluIGluY2x1ZGUvbGludXgvc3lzX3NvYy5oLAo+PiBsZXQncyBl
eHBvcnQgaXQgYXMgR1BMIHN5bWJvbC4KPiAKPiBJIHRob3VnaHQgd2Ugd2VyZSBmaXhpbmcgdGhl
IHNvYyBkcml2ZXJzIHRvIG5vdCBuZWVkIHRoaXMuICBXaGF0Cj4gaGFwcGVuZWQgdG8gdGhhdCBl
ZmZvcnQ/ICBJIHRob3VnaHQgSSBoYWQgcGF0Y2hlcyBpbiBteSB0cmVlIChvcgo+IHNvbWVvbmUn
cyB0cmVlKSB0aGF0IGRpZCBzb21lIG9mIHRoaXMgd29yayBhbHJlYWR5LCBzdWNoIHRoYXQgdGhp
cwo+IHN5bWJvbCBpc24ndCBuZWVkZWQgYW55bW9yZS4KCkkgZG8gc3RpbGwgc2VlIHRoaXMgZnVu
Y3Rpb24gdXNlZCBpbiBuZXh0LTIwMTkxMTA4IGluIGRyaXZlcnMvc29jLy4KCkknbGwgYmUgaGFw
cHkgdG8gYWRqdXN0IG15IFJGQyBkcml2ZXIgaWYgc29tZW9uZSBwb2ludHMgbWUgdG8gaG93IQoK
R2l2ZW4gdGhlIGN1cnJlbnQgc3RydWN0IGxheW91dCwgYSB0eXBlIGNhc3QgbWlnaHQgd29yayAo
YnV0IHVnbHkpLgpPciBpZiB3ZSBzdGF5IHdpdGggbXkgY3VycmVudCBSRkMgZHJpdmVyIGRlc2ln
biwgd2UgY291bGQgdXNlIHRoZQpwbGF0Zm9ybV9kZXZpY2UgaW5zdGVhZCBvZiB0aGUgc29jX2Rl
dmljZSAod2hpY2ggd291bGQgY2x1dHRlciB0aGUKc2NyZWVuIG1vcmUgdGhhbiAic29jIHNvYzA6
Iikgb3IgcmVzb3J0IHRvIHByX2luZm8oKSB3L28gZGV2aWNlLgoKVGhhbmtzLApBbmRyZWFzCgot
LSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkw
NDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAo
QUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
