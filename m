Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B141BA1942
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:48:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BAm3pGDhbSLo6M72mjMJE1nW+pLSk6JePUXRcoviM1M=; b=fYcQTMTqw/Ge4o
	vt/JbUZdJv6hxsww9kIpr+0CeMJ0UVzsq7u0gI2J0dqk9Rz76CsqYD14fpRPGFOQN7+ydBFSKc9xp
	vTSZGNhtV8HGMxc3akxPgq6dCAbg9oSlJwT1YrtT+Weas6iAkK2SznE9G42WEgSgjmyHpKkBWE3/3
	Cwh2qzhIUJYDyOERZigZpLUbuX2jx3CSHUwIjCj+7jDnutP3BS71LQaCDp12ChrBJ2FX7SQYNoiIT
	xTlo/U751z36Yrzdg1piP8BnJa7ASaNSlmDhNOXgP2kbEmKj263XZQ2FgbruBH3ob8jU5xBw6yvdd
	T91IQls+534aYqAqtdIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Iuq-0002hy-0O; Thu, 29 Aug 2019 11:48:36 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IkU-0008P0-TI
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:37:56 +0000
Received: by mail-vs1-xe42.google.com with SMTP id b187so2159743vsc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:37:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=steHU9JTMpLHW7sybl9YQfRLR82mnhptlWwdqUe7Zcg=;
 b=fYlC8+bWZqR6XAfZhhKThI98qPivkoDILLJEWVCGUmMcEVDNau268nO678oYz2Haq6
 bmMtC4uuUu3KJg6bIbm5+boLwf+l8EkdFDEQDvPVjopj0wqLRln09CPb2ryMq76qUEjk
 JZkDX9bIbdu1BwxXgbD/qS8oHYFHEAEgRhmzN8sr/2fnePykHkgDXvor4Gj3bzeixJGZ
 /J5QdyYN1k9gZ83TBf1D2dDUqsjB0C7nWqGs/1GulojlUH4Z/N9Zg1T2OW4XVRrM+kRs
 BBBRW0dxsRpNuV+fNa6bWBpNGxJaiZOH8Yr29ngIVQQugS2pmpPIaUUsxUDI5stbThRr
 SUYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=steHU9JTMpLHW7sybl9YQfRLR82mnhptlWwdqUe7Zcg=;
 b=qyvLd+/64YDaIhx6hUIRtym7sMISl6fPt3Tc1LnwIAxANbAiiFdiYXCh3xtAhKgAve
 +T13ZvREhbu3v4IviM1L8KPU08wZMkdl9vaHe2gdyCfvfPk+vopFHiNCMwfVNab6AoQ3
 /TzxFAWJSyNWjAMxo6EcsXwc4zjkAMypYXs4tlJqxmGWkgZRIj91PHEkB/WlMwTO0gyZ
 yCnmcGs+lg1AVYkqnTysVxQYSM+L79XpVH07iL9gjQIwzRpfT3EcTo1nwZgzpPYhQ1uy
 GMXK1Dw7hddLcvR4KQ0UC64sBUAXA+FsJCSo8yk44CwkEYhzn0pfgVExhVMo6SBuRcyJ
 s0Dw==
X-Gm-Message-State: APjAAAXxgRNLSSIBcpALjbjL8/MA2cqkaktHLl3N0RMglu6oIBGa4md9
 Llpd1N8WZQVmxHb8/jUEwZdc4djpGzxaK8p5ZA9w5Q==
X-Google-Smtp-Source: APXvYqwNRXIaneirGcWLGuYXd/YuixR4X36HnLqF4jth7rfkzeHfTgzi9mMgWpVzP8+sp931Sn93UV23G6KlVGudVsg=
X-Received: by 2002:a67:fe4e:: with SMTP id m14mr5337390vsr.34.1567078671028; 
 Thu, 29 Aug 2019 04:37:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190825150558.15173-1-alejandro.gonzalez.correo@gmail.com>
 <CAPDyKFr5opD2yBXmFRBY-9oA_3ShVv0GPFRO8Q_8TEiT+z2pQA@mail.gmail.com>
 <f84d62b7-da00-f2bd-36e9-972435080bfe@gmail.com>
In-Reply-To: <f84d62b7-da00-f2bd-36e9-972435080bfe@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 29 Aug 2019 13:37:14 +0200
Message-ID: <CAPDyKFp420OaeoedkR=KuX1EMNwOvCkCfJHZPRDXhVz-w8J0mg@mail.gmail.com>
Subject: Re: [PATCH] mmc: sunxi: fix unusuable eMMC on some H6 boards by
 disabling DDR
To: =?UTF-8?Q?Alejandro_Gonz=C3=A1lez?= <alejandro.gonzalez.correo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043754_968685_3F37FD13 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyOCBBdWcgMjAxOSBhdCAxMjo1MiwgQWxlamFuZHJvIEdvbnrDoWxlego8YWxlamFu
ZHJvLmdvbnphbGV6LmNvcnJlb0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gRWwgMjcvOC8xOSBhIGxh
cyAxNToyNCwgVWxmIEhhbnNzb24gZXNjcmliacOzOj4gQXNzdW1pbmcgdGhpcyBzaG91bGQgZ28g
c3RhYmxlIGFzIHdlbGw/IFBlcmhhcHMgeW91IGNhbiBmaW5kIGEKPiA+IHJlbGV2YW50IGNvbW1p
dCB0aGF0IHdlIGNhbiBwdXQgYXMgYSBmaXhlcyB0YWcgYXMgd2VsbD8KPiA+Cj4gPiBLaW5kIHJl
Z2FyZHMKPiA+IFVmZmUKPgo+IFRoZSBtb3N0IHJlbGV2YW50IGNvbW1pdCBJJ3ZlIGZvdW5kIHRo
YXQgaXMgcmVsYXRlZCB0byBlbmFibGluZyBERFIgc3BlZWRzCj4gb24gSDYgYm9hcmRzIGlzIHRo
aXMgb25lOiBodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvY29tbWl0LzA3YmFmYzFl
MzUzNmE0ZTNjNDIyZGJkMTMzNDE2ODhiNTRmMTU5YmIgLgo+IEJ1dCBpdCBkb2Vzbid0IGFkZHJl
c3MgdGhlIEg2IFNvQyBzcGVjaWZpY2FsbHksIHNvIEkgZG91YnRlZCB3aGV0aGVyIGl0IHdvdWxk
Cj4gYmUgYXBwcm9waWF0ZSB0byBtYXJrIHRoaXMgcGF0Y2ggYXMgZml4aW5nIGl0LCBhbmQgb3B0
ZWQgdG8gbm90IGRvIGl0LiBJIGRvbid0Cj4gbWluZCBhZGRpbmcgdGhhdCB0YWcgaWYgaXQncyBh
cHByb3BpYXRlLCB0aG91Z2ggOi0pCgpIYXJkIHRvIHNheSB3aGF0IG1ha2VzIHNlbnNlIGhlcmUs
IGJ1dCBob3cgYWJvdXQgcGlja2luZyB0aGlzIGJlbG93IGluc3RlYWQ/CgpGaXhlczogMGEyM2Yx
YWQ4OGZjICgiZHQtYmluZGluZzogbW1jOiBzdW54aTogYWRkIEg2IGNvbXBhdGlibGUgKHdpdGgK
QTY0IGZhbGxiYWNrKSIpCgo+Cj4gT24gdGhlIG90aGVyIGhhbmQsIEknbSBub3Qgc3VyZSB0aGF0
IEkgdW5kZXJzdG9vZCBjb3JyZWN0bHkgd2hhdCBkbyB5b3UgbWVhbiBieQo+IHRoaXMgcGF0Y2gg
Z29pbmcgc3RhYmxlLCBidXQgSSBtaWdodCBzYXkgdGhlIGNoYW5nZXMgdGhlbXNlbHZlcyBhcmUg
c3RhYmxlIGFuZCB3b3JrLgo+IFRoZSBvbmx5IGRvd25zaWRlIEkgY2FuIHRoaW5rIG9mIHRvIHRo
ZW0gaXMgdGhhdCB0aGV5IGFyZSBhIGtpbmQgb2Ygd29ya2Fyb3VuZCB0aGF0Cj4gcmVkdWNlcyBw
ZXJmb3JtYW5jZSBvbiBINiBib2FyZHMgYW5kL29yIGVNTUMgbm90IGFmZmVjdGVkIGJ5IHRoaXMg
cHJvYmxlbSAoYXJlIHRoZXJlCj4gYW55PyksIHVubGVzcyBkZXZpY2UgdHJlZXMgYXJlIGNoYW5n
ZWQuCgpBZGRpbmcgYSBzdGFibGUgdGFnIGFuZCBhIGZpeGVzIHRhZyBmb3IgdGhlIGNvbW1pdCwg
bWFrZXMgbWFpbnRhaW5lcnMKb2Ygc3RhYmxlIGtlcm5lbHMgdG8gdHJ5IHRvIGJhY2twb3J0IHRo
aXMgY29tbWl0IGFuZCBmaXggdGhlIHByb2JsZW0KZm9yICJvbGRlciIga2VybmVscy4KCktpbmQg
cmVnYXJkcwpVZmZlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
