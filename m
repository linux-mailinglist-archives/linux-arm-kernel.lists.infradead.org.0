Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A0E787F2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 11:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zs/xLSHUXSsNElzcj8QtGJ8kb0cshsQ4ritvWGZhN+E=; b=CTN+FpDTGckKnX
	RrD+7SyVlP5pJ6yyA3q0brwZpS+tDT48S3R+X5sLT19MsdJjvG58p0JM0XZzOvecTM+IYZ0HIU4eG
	WUMm31Uq9PvFAvvUKlObe0xnxNjuflPlGBRnyAvyiLHK27iYvTj9zurmOSbiuuALkj+3SGVV7EAjv
	jjS1zqBLnj3dEi3Q3JIVGlRuXDYmfv8P3N6hOmNE+drs5Cd8FeDq/QIjV0qQIEDDQcc49fxpVO+ls
	JX0yww33o4QR7a3n7qDvS8pKvHLywWZxZtOM2xR7NEMF+CwHjKE/waHubvhEJYK5N3XJbO7djMR7l
	s7nH7DbLAZ4+sXUP/JPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs1Yx-0003aJ-Si; Mon, 29 Jul 2019 09:03:24 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs1Ym-0003Zq-Mu
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 09:03:14 +0000
Received: by mail-lj1-x241.google.com with SMTP id d24so57802810ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 02:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=oRmCUEiChCoW94cQNYLaR9KTEtEzgUmnh/eXSREmLoo=;
 b=XDK5T1uqsEwyRad6yFoKHni9nZ6pOkbflWCH6VtnW/ydkArnwal11AYkczOGtlDBz9
 XBoioC4KDPI+p0tSxPC9vLU6p03p9gkyhV8VFHpStUIuIvvMpykJy7+EEzBeAmB0ZV9n
 G4mhByX7v7mx6ULOkhTY9tj36Sxnqw4WXxE1XcvG97pSK6P6ArnRpwndOAq1bn57mkLX
 7lCkLxxujaoug4XeJ1DiPklRVbFsd5lO+KHfaEJmmunVt09jPl+HrXJRuSsXJEHTfBfV
 34m3iLsZCJokwBT7rfd+5sfW9fE/7g9qGBrHgzKUhIUpD5/tJ5SB7Y4c8Hfy/npVkDVX
 SfiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=oRmCUEiChCoW94cQNYLaR9KTEtEzgUmnh/eXSREmLoo=;
 b=XTg29Bg+S+HlSwaFguQRtZjATm1hmio2kTd3U3auzE6bu5NFij1/Pd0YDdO5BdvvY5
 ZXBQ+JPrVATN3Wcb2mfLv4ASBvmkMV2aoEpExsmI9Nh1ssDSlK6X/8OQMtXogM9OF0yB
 yTPYJiRtAO66q1KaYuAUxN9hU335wK9oLlD318WTKg5/oqS+BJtHijkn4Z0BUFyqZe5j
 tZKKWr9i2um/MI7BdiUU/k1F9S0kcIk0NCT7TxXjMXXj7TW5FHA/q7iVahwkQw05Qr8v
 GIhuDifu170nifpxz1mzwWWZSE07+/OHH7VfzpLjkXxHvL9ZQPlzD4Itpby3aH3fQHnd
 mAZA==
X-Gm-Message-State: APjAAAXIpEGgt0f7vO7SA04P/aj9SJ/iI04htD9yefzCbZYdmrshY9yl
 65vAPacyoCh2KdET4uEsJ/Y=
X-Google-Smtp-Source: APXvYqziQ+uMeeFKh0OFXM4bjzEorUGeAne1BCLOInZ4uNj3i/ppf4P3Y2qJ1OtP2/1JdKXSmulTYg==
X-Received: by 2002:a2e:8ecb:: with SMTP id e11mr18775649ljl.218.1564390990253; 
 Mon, 29 Jul 2019 02:03:10 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id 27sm12619361ljw.97.2019.07.29.02.03.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 02:03:09 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v7 3/3] serial: imx: get rid of imx_uart_rts_auto()
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1564167161-3972-1-git-send-email-sorganov@gmail.com>
 <1564167161-3972-4-git-send-email-sorganov@gmail.com>
 <20190726192940.jy4frulgbetf5d2v@pengutronix.de>
Date: Mon, 29 Jul 2019 12:03:07 +0300
In-Reply-To: <20190726192940.jy4frulgbetf5d2v@pengutronix.de> ("Uwe
 \=\?utf-8\?Q\?Kleine-K\=C3\=B6nig\=22's\?\= message of "Fri,
 26 Jul 2019 21:29:40 +0200")
Message-ID: <87wog1xlf8.fsf@osv.gnss.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_020312_774784_23912689 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVz
OgoKPiBPbiBGcmksIEp1bCAyNiwgMjAxOSBhdCAwOTo1Mjo0MVBNICswMzAwLCBTZXJnZXkgT3Jn
YW5vdiB3cm90ZToKPj4gQ2FsbGVkIGluIG9ubHkgb25lIHBsYWNlLCBmb3IgUlMyMzIsIGl0IG9u
bHkgb2JzY3VyZXMgdGhpbmdzLCBhcyBpdAo+PiBkb2Vzbid0IGdvIHdlbGwgd2l0aCAyIHNpbWls
YXIgbmFtZWQgZnVuY3Rpb25zLAo+PiBpbXhfdWFydF9ydHNfaW5hY3RpdmUoKSBhbmQgaW14X3Vh
cnRfcnRzX2FjdGl2ZSgpLCB0aGF0IGJvdGggYXJlCj4+IFJTNDg1LXNwZWNpZmljLgo+Cj4gSSBk
b24ndCBzaGFyZSB0aGUgY3JpdGljLiBJTUhPIHRoZSBuYW1lIGlzIGZpbmUuIGlteF91YXJ0X3J0
c19pbmFjdGl2ZQo+IHNldHMgcnRzIHRvIGl0cyBpbmFjdGl2ZSBsZXZlbCwKPiBpbXhfdWFydF9y
dHNfYWN0aXZlKCkgdG8gaXRzIGFjdGl2ZSBsZXZlbAoKTm90IGV4YWN0bHksIGluIGZhY3QgYm90
aCBkbyBtb3JlIHRoYW4gdGhhdCwgaW4gYSBzaW1pbGFyIG1hbm5lci4KCj4gaW14X3VhcnRfcnRz
X2F1dG8oKSBsZXRzIHRoZSBvdXRwdXQgZHJpdmUgYXV0b21hdGljYWxseSBieSB0aGUKPiByZWNl
aXZlci4KCkFuZCB0aGlzIG9uZSB3YXMgZGlmZmVyZW50IGFuZCBpdCB3YXMgcmF0aGVyIGNvbmZ1
c2luZyB3aGVuIEkndmUgdHJpZWQKdG8gZ3JvayB0aGUgbG9naWMgb2YgdGhlIGRyaXZlci4KCj4g
VGhlIG5hbWUgc3RhcnRlZCB0byBiZSBhIGJpdCB3cm9uZyBpbiBwYXRjaCAxIG9mIHRoZSBzZXJp
ZXMgaG93ZXZlci4KClRoZSBmdW5jdGlvbiB3YXMgZGlmZmVyZW50IGZyb20gZmlyc3QgdHdvIGV2
ZW4gYmVmb3JlIHRoZSBwYXRjaCwgYXMgaXQKZG9lcyBub3QgZG8gYW55IG9mIHRob3NlIGFkZGl0
aW9uYWwgdGhpbmdzIHRoZSBmaXJzdCB0d28gZG8uCgo+IEFuZCBJIHN0aWxsIG9iamVjdCByZW1v
dmluZyB0aGlzIGZ1bmN0aW9uIGJlY2F1c2Ugd2l0aCB0aGUgc2VtYW50aWMKPiB0aGlzIGZ1bmN0
aW9uIGdvdCBpbiBwYXRjaCAxIGl0IGlzIHN1aXRlYWJsZSB0byBiZSB1c2VkIGluCj4gaW14X3Vh
cnRfc2V0X21jdHJsKCkuCgpJdCBpcyBub3QsIGFzIGl0IGRvZXMgcmVxdWlyZSBjaGFuZ2UgdG8g
YmUgdXNlZCB0aGVyZSwgYXMgd2UndmUgYWxyZWFkeQpzZWVuLCBhbmQgdGhlbiBpdCBiZWNvbWVz
IHZlcnkgZGlmZmVyZW50IGZ1bmN0aW9uIGZyb20gd2hhdCBpdCB3YXMgYXQKdGhlIGJlZ2lubmlu
Zy4KCkV2ZW4gdGhlbiwgdGhlIGVuZCByZXN1bHQgSSd2ZSBzaG93biB5b3Ugd2hlbiBhdHRlbXB0
aW5nIHRvIHNvbWVob3cgcHJlc2VydmUKc29tZSByZS1pbmNhcm5hdGlvbiBvZiB0aGlzIGZ1bmN0
aW9uIHN0aWxsIHNlZW1zIG1vcmUgY3VtYmVyc29tZSB0byBtZQp0aGFuIHRoZSBlbmQgcmVzdWx0
IG9mIHRoZXNlIHBhdGNoZXMuCgpUaGF0IHNhaWQsIHRoaXMgYSBtYXR0ZXIgb2YgdGFzdGUgYW5k
IHN0eWxlLCBub3QgY29ycmVjdG5lc3MsIGFuZCBjb3VsZApiZSBjaGFuZ2VkIGFzIGEgZm9sbG93
LXVwLCBub3QgdG8gcmlzayBicmVha2luZyBhbHJlYWR5IHRlc3RlZCBwYXRjaApzZXJpZXMuCgpU
aGFua3MsCgotLSBTZXJnZXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
