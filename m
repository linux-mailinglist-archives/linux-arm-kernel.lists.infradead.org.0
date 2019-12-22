Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1151E128EFD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 18:02:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pViQYXKHXzoGUN4OjjUzbSXPx5olSYiBVxbfej/44R8=; b=LcJRtHa/U0Dk+N
	/p51fAAzEeQFKQV0mto6FDuddMGv+AN8LGdeJf8Ud3MTAjizr5yKF5ahCmgG2x9sP1jIwwvHu7UzY
	15lPtdZe+IVsdWyITfO4d/dqsCeXw+OELNP1y9mKL2wupS18Rp/lAcKQrR+Ke1qtB7UHvpXrfAMTp
	mzet6TL+ENqyID3UQiyDM9cjXPHlA/dqb7A4GdlVo13OSyI57Q8LDsebMZX/9qaoZVl19LE9l/VzO
	trupXX+/P/uAjtjcKop73UIVtPKRu9ewRW/EZRMWlPBqTBis2emTp2GMy3BOVF8QbRkzeBP28+kGh
	IS4pafLHx0xk2eCzESPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij4cT-0000GG-I6; Sun, 22 Dec 2019 17:02:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij4cJ-0000Fi-EE
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 17:02:08 +0000
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
 [209.85.208.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A6503207FF
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 17:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577034127;
 bh=7ONFh0kZJmzuqCNXxjuaoUtDhcEsJZHLiZEAM52lyQg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UhdIjdojzfhP0hehWi4+h1FIUya5NlZoE60hRiGZmHNsp5FvyGNFTbRdwPHaUNERo
 DjmHwZg48u+sL6KWDHZFnkqp625jw02Fd0v8VBikSGPBPkUBgxMkmCwJWFJbH+seNF
 lAN8DSdtz/9ovFm5tR2gesg8FlW1NKpDsBzT0ejA=
Received: by mail-lj1-f170.google.com with SMTP id j1so8174549lja.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 09:02:06 -0800 (PST)
X-Gm-Message-State: APjAAAX7yNsnNmboowu98uEQMPTHIFK4AZIShyYoYQf9uKgNsxX2rkKj
 zDz/XlZDiCWciJeWxHMdykx/HPCoD52WAf0kWOk=
X-Google-Smtp-Source: APXvYqyC9+LU1Pe65Jvyg37Hc8D1YRGHPNz0KmwUIPogk4brK+16jbaChw+KYgiPWXlZ37c8cHAJmUWfLbxvEmBNEnQ=
X-Received: by 2002:a2e:2d01:: with SMTP id t1mr10672001ljt.36.1577034124863; 
 Sun, 22 Dec 2019 09:02:04 -0800 (PST)
MIME-Version: 1.0
References: <20191221181855.31380-1-tiny.windzz@gmail.com>
 <20191221181855.31380-2-tiny.windzz@gmail.com>
In-Reply-To: <20191221181855.31380-2-tiny.windzz@gmail.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Mon, 23 Dec 2019 02:01:28 +0900
X-Gmail-Original-Message-ID: <CAGTfZH2vqk1R9Hkv4DjO8ktmpHEW+mV-+xreUHPyp6ZT2D7AxA@mail.gmail.com>
Message-ID: <CAGTfZH2vqk1R9Hkv4DjO8ktmpHEW+mV-+xreUHPyp6ZT2D7AxA@mail.gmail.com>
Subject: Re: [PATCH 2/2] PM / devfreq: exynos-bus: add missing
 exynos_bus_disable_edev in exynos_bus_profile_init
To: Yangtao Li <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_090207_516755_2EF7F7DE 
X-CRM114-Status: GOOD (  20.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpQbGVhc2UgdXNlIGNhcGl0YWwgbGV0dGVyIGZvciB0aGUgZmlyc3QgY2hhciBvZiBwYXRj
aCB0aXRsZQphbmQgYmV0dGVyIHRvIGVkaXQgdGhlIHBhdGNoIHRpdGxlIGFzIGZvbGxvd2luZzoK
QWN0dWFsbHksIGl0IGlzIGRpZmZpY3VsdCB0byB1bmRlcnN0YW5kIHRoZSByb2xlIGJ5IG9ubHkg
cmVhZGluZwp0aGUgZnVuY3Rpb24gbmFtZS4gSXQgZGVwZW5kcyBvbiBvbmx5IHRoaXMgZHJpdmVy
LgpTbywgYmV0dGVyIHRvIGVkaXQgaXQgYXMgZm9sbG93aW5nIGJlY2F1c2UgZGV2ZnJlcS1ldmVu
dAppcyBzdGFuZGFyZCBuYW1lIGluIGxpbnV4IGtlcm5lbC4gSSB0aGluayBpdCBpcyBlYXN5IHRv
IHVuZGVyc3RhbmQKd2hhdCB0aGUgcGF0Y2ggZG9lcy4KCi0gUE0gLyBkZXZmcmVxOiBleHlub3Mt
YnVzOiBEaXNhYmxlIHRoZSBkZXZmcmVxLWV2ZW50IGRldmljZSB3aGVuIGZhaWxlZAoKCjIwMTnr
hYQgMTLsm5QgMjLsnbwgKOydvCkg7Jik7KCEIDM6MjEsIFlhbmd0YW8gTGkgPHRpbnkud2luZHp6
QGdtYWlsLmNvbT7ri5jsnbQg7J6R7ISxOgo+Cj4gVGhlIGV4eW5vc19idXNfcHJvZmlsZV9pbml0
IHByb2Nlc3MgbWF5IGZhaWwsIGJ1dCB0aGUgZGV2ZnJlcSBldmVudCBkZXZpY2UKPiByZW1haW5z
IGVuYWJsZWQuIENhbGwgZGV2ZnJlcV9ldmVudF9kaXNhYmxlX2VkZXYgb24gdGhlIGVycm9yIHJl
dHVybiBwYXRoLgo+Cj4gU2lnbmVkLW9mZi1ieTogWWFuZ3RhbyBMaSA8dGlueS53aW5kenpAZ21h
aWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIHwgNiArKysrKy0K
PiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgYi9kcml2ZXJzL2RldmZyZXEv
ZXh5bm9zLWJ1cy5jCj4gaW5kZXggN2Y1OTE3ZDU5MDcyLi41ZTU0ZWFmM2NmYzYgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+ICsrKyBiL2RyaXZlcnMvZGV2ZnJl
cS9leHlub3MtYnVzLmMKPiBAQCAtMzM1LDEwICszMzUsMTQgQEAgc3RhdGljIGludCBleHlub3Nf
YnVzX3Byb2ZpbGVfaW5pdChzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAo+ICAgICAgICAgcmV0ID0g
ZXh5bm9zX2J1c19zZXRfZXZlbnQoYnVzKTsKPiAgICAgICAgIGlmIChyZXQgPCAwKSB7Cj4gICAg
ICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIHNldCBldmVudCB0byBkZXZmcmVx
LWV2ZW50IGRldmljZXNcbiIpOwo+IC0gICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ICsgICAg
ICAgICAgICAgICBnb3RvIGVycl9kaXNhYmxlX2VkZXY7Cj4gICAgICAgICB9Cj4KPiAgICAgICAg
IHJldHVybiAwOwo+ICsKPiArZXJyX2Rpc2FibGVfZWRldjoKCmVycl9lZGV2IGlzIGVub3VnaCBp
bnN0ZWFkIG9mICdlcnJfZGlzYWJsZV9lZGV2JwoKPiArICAgICAgIGV4eW5vc19idXNfZGlzYWJs
ZV9lZGV2KGJ1cyk7CgpleHlub3NfYnVzX2Rpc2FibGVfZWRldigpIGhhcyByZXR1cm4gdmFsdWUg
Zm9yIGRldGVjdGluZyB0aGUgZXJyb3IuCk5lZWQgdG8gYWRkIGZvbGxvd2luZyB3YXJuaW5nIG1l
c3NhZ2UuCgppZiAocmV0IDwgMCkKICAgICBkZXZfd2FybihkZXYsICJmYWlsZWQgdG8gZGlzYWJs
ZSB0aGUgZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsKCgo+ICsgICAgICAgcmV0dXJuIHJldDsK
PiAgfQo+Cj4gIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2ZShzdHJ1
Y3QgZXh5bm9zX2J1cyAqYnVzLAo+IC0tCj4gMi4xNy4xCj4KCgotLQpCZXN0IFJlZ2FyZHMsCkNo
YW53b28gQ2hvaQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
