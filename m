Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D1A70954
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 21:10:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQJnVmooCt6lR3+zJsE9+Xtocyhf2UyIC5ODX9ZVwAs=; b=bpk5LVpqwEpOcD
	U36awmOrFeHyTSxOQKiwMQmWij82VcuMhFHtHILZ8dc0UEUT6l+rzNVmU1VYt5Q/LMSD6WqFfyiDu
	5sSbjue4h/M68py9HpgtmU/93jmejM/qQFGAJ+M/6M7H2lLgNzfS6ZJ1P/gy/OZQ+HpK6WKwcIopk
	VqVqm2wTNOl6oVxi29V+04o4sjh+1ipji+eXodX6+sRVESAyTb6/RC8wk1LcXRPuJKQpQyO4U3coy
	qtDC0p5UReuGmnWpffwtFXNo2khknXGBgE4+AMm4aszHp67d1OkRlMcYShoLbVV6wMCACabNyk6dW
	4gbaJ1m9LxR0Bakm2lpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpdhI-0003TO-7L; Mon, 22 Jul 2019 19:10:08 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpdgw-0003SX-3X
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 19:09:47 +0000
Received: by mail-lf1-x143.google.com with SMTP id b17so27474725lff.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 12:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=+zMDB24dspP/iLIXMIj9PpmNMrfDvY3AO+F+yJyhMms=;
 b=iutFyec6hc915R8rCnn5qldGN5JVyOYP9XgzoCcaJ4+EacXfe0BzRc7lYWC8Eb+oCA
 Q/Tmn8ORaGElv7kU9dn94J1DNHDf+bDxc7nO/mLN8+5nhGaW6mRd1ykNPXxTHDzTu5Cf
 aXFxNDliNUIjwQRZqi9T4n3eZqAG8pGvjTVJPApKiVyOt/KxDskNykMz3MZQ7r/giR1v
 TPzJEVZyYYNuAl0xTuKxbPpGZb9LK5KBp9Ck0qGRwXNZUdeNS6hVl7zcbcTvuOnO61Qa
 gfJZEFxLw/8wbWWaLVfa32IOJSEThyCpYGN/xAtN/2u28Dt3JpmW1vaqtP7XErUvtIuc
 y7zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=+zMDB24dspP/iLIXMIj9PpmNMrfDvY3AO+F+yJyhMms=;
 b=mIA5qAkf7A9HCL2iyywvU4v13PnKnZ87giKkWdeRK3wZHrQZ8H3zbUWzmJVeIATnLp
 RJd174d+N5qb/81mnJU6We/hIFNUBJ7UBCaqpPFEqy032YSQyXUB+/MTEzjsOcgiExCr
 wFbY0ZfB98lwVaBk0frR6i0Pd44/7m4ce+rkH5IpBnJVZGOeUVPOoVI80vNhtmp63hIO
 ClCVqtS6bO5SyJEeuOxjJJbEpzeOyIsxno4MJZGZsKm+U5a7z589i4rpdQGrCV/NHHan
 kf7YY30pVFDJ/b6dsINGx210VC2oE4M0NFWYlJ91zE/k0m03FMFTsxyLEgm0IXCdubx9
 Eh6w==
X-Gm-Message-State: APjAAAW+D9gto8tujlVsyeeYfXwVJ/rg7BOizBja+T/R2ixhrm1+WRD6
 eusu7gRoZ8ATjGoFpLZjTS4=
X-Google-Smtp-Source: APXvYqzqFtNrgXV2AySCjJd/ErFDFPZuPAegcl22U/fmZ8t9ZQc6/B8kO2pUO9rgReQIlzBAk/InQw==
X-Received: by 2002:ac2:5690:: with SMTP id 16mr31731048lfr.43.1563822583269; 
 Mon, 22 Jul 2019 12:09:43 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id j7sm8492361lji.27.2019.07.22.12.09.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 12:09:42 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v5 1/3] serial: imx: set_termios(): do not enable autoRTS
 if RTS is unset
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563787330-1394-1-git-send-email-sorganov@gmail.com>
 <1563787330-1394-2-git-send-email-sorganov@gmail.com>
 <20190722095405.qdc77cb2qrgltzrx@pengutronix.de>
 <877e8a5fz6.fsf@osv.gnss.ru>
 <20190722162011.wv36d7epunjm4h4t@pengutronix.de>
Date: Mon, 22 Jul 2019 22:09:41 +0300
In-Reply-To: <20190722162011.wv36d7epunjm4h4t@pengutronix.de> ("Uwe
 \=\?utf-8\?Q\?Kleine-K\=C3\=B6nig\=22's\?\= message of "Mon,
 22 Jul 2019 18:20:11 +0200")
Message-ID: <87ftmx3myy.fsf@osv.gnss.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_120946_177655_6E072971 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
OgoKPiBPbiBNb24sIEp1bCAyMiwgMjAxOSBhdCAwNDo1Nzo0OVBNICswMzAwLCBTZXJnZXkgT3Jn
YW5vdiB3cm90ZToKPj4gVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4gd3JpdGVzOgo+PiAKPj4gPiBPbiBNb24sIEp1bCAyMiwgMjAxOSBhdCAxMjoyMjow
OFBNICswMzAwLCBTZXJnZXkgT3JnYW5vdiB3cm90ZToKPj4gPj4gRG9uJ3QgbGV0IHJlY2VpdmVy
IGhhcmR3YXJlIGF1dG9tYXRpY2FsbHkgY29udHJvbCBSVFMgb3V0cHV0IGlmIGl0Cj4+ID4+IHdh
cyByZXF1ZXN0ZWQgdG8gYmUgaW5hY3RpdmUuCj4+ID4+IAo+PiA+PiBUbyBlbnN1cmUgdGhpcywg
c2V0X3Rlcm1pb3MoKSBzaG91bGRuJ3Qgc2V0IFVDUjJfQ1RTQyBiaXQgaWYgVUNSMl9DVFMKPj4g
Pj4gKD1USU9DTV9SVFMpIGlzIGNsZWFyZWQuIEFkZGVkIGNvcnJlc3BvbmRpbmcgY2hlY2sgaW4g
aW14X3VhcnRfcnRzX2F1dG8oKQo+PiA+PiB0byBmaXggdGhpcy4KPj4gPj4gCj4+ID4+IFJldmll
d2VkLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRl
Pgo+PiA+Cj4+ID4gSSB0aGluayBpdCdzIGEgYml0IGJvbGQgdG8gYWRkIGEgcmV2aWV3LXRhZyBm
b3IgbWUgaGVyZS4gVGhlIGJlc3QgcmVhc29uCj4+ID4gZm9yIHRoYXQgdGhhdCBJJ20gYXdhcmUg
b2YgaXMgdGhhdCBJIHdyb3RlIGZvciB2NDogIltJXWYgeW91IHVwZGF0ZSB0aGUKPj4gPiBjb21t
aXQgbG9nIGFzIGFncmVlZCBhbHJlYWR5IGJlZm9yZSBhbmQgZXZlbiBhZGQgYSBjb21tZW50IGlu
Cj4+ID4gaW14X3VhcnRfcnRzX2F1dG8gYWxvbmcgdGhlIGxpbmVzIG9mIC4uLiB5b3UgY2FuIGhh
dmUgbXkgQWNrLiIgd2hpY2ggSU1PCj4+ID4gaXNuJ3QgZ29vZCBlbm91Z2ggdG8ganVzdGlmeSBh
ICJSZXZpZXdlZC1ieSIuIEkgd291bGRuJ3QgZXZlbiBhZGQgYW4KPj4gPiBBY2tlZC1ieTogd2l0
aG91dCB0aGUgb3RoZXIgcGVyc29uIGJlaW5nIGFibGUgdG8gYWN0dWFsbHkgc2VlIHRoZQo+PiA+
IGNoYW5nZWQgcGF0Y2ggKGJ1dCB0aGlzIG1pZ2h0IGJlIGFyZ3VhYmxlKS4KPj4gCj4+IEknbGwg
ZG8gd2hhdGV2ZXIgeW91IHNheS4gU2hvdWxkIEkgcmVtb3ZlIHRoZSBSZXZpZXdlZC1ieTogeW91
LCBvciBpcyBpdAo+PiBPSyB0byBsZWF2ZSBpdCBpbiwgdG8gYXZvaWQgcmUtaXRlcmF0aW5nIGFn
YWluPwo+Cj4gSSdkIGxpa2UgdG8gaGF2ZSBpdCBhbiBBY2tlZC1ieS4KCk9LLCB3aWxsIGRvLCB0
aGFua3MhCgotLSBTZXJnZXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
