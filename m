Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C77457CAB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 09:03:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FR8xgg9gDFA+Pfv2oyc9GacFEWXOTqG/6Sys+OIJoT4=; b=Z1D8VXeruqIlpb
	fAeYH/ZGD3xEsKbgXZDOKzt0859/6R/aYScde3fcGQQYSs9J7Ozk2prhebDIZjwkAuk6VkxrHQCUB
	fyCtoat/gh3CS3wKumgtWBHYpgMFlE3CoQOUvxux3b4pymoOkZL0sUhCkaLB7XDnSO0ISiPXx0tnA
	XVl7Thqup79/fmjzbfBBqfcHH0/R4LV5vyPdbb0NsAw2UOtkReFGfeTaImOjde1+FkopqVsC8wXfC
	H735VNinX9hRFh3dwVFIOGr61yQyIAcrR2HJ9rMpuqV2yUSGQW7/QRbApYjs4yjA5npzYzn8R1rbB
	y+bWsJrevbGvIgsY1n6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgORf-0005nR-47; Thu, 27 Jun 2019 07:03:47 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgOPx-0005XP-Cq
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 07:02:17 +0000
Received: by mail-lj1-x242.google.com with SMTP id p17so1194676ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 00:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=Pvfj5IUJQ92pFQYuAu+C5YKHxoqdsKA2nN/i3c6nnRM=;
 b=HmWsV8yKXXVdET4q91MaKEi0sqE5IFmAgar6irfyeJah90ltAUtgRO0fAlkBFOaN30
 ZusLey9GuZJkPALI9pbZlCePjlos/9ReNoBOon8HswHg78lJWlDSgS1ZKW3ND95MY7p1
 GaJBpeYZhj+YGsQZrzqE3Xr2DLpG3IrC48vaxgR3I0z33fvQAqfqwunqH76P3u9TynYK
 HKdi+o4DbVrQBBdSk/B1QKwlSBE9/QaZi1HbwLp/oZK/hG9/xykeuw5nuqVl649gqgon
 e/Imu6A793VlC2f5dOJr1oPN/JOEzab8NcqltSPfGdCu5Mu7reCLyI4FtTALfTssx2Ow
 8YXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=Pvfj5IUJQ92pFQYuAu+C5YKHxoqdsKA2nN/i3c6nnRM=;
 b=hW5u7FW+9uYWMhE2dw+d1wA+r+ri12V5HhSDO/OEHaAZHBe1XS8gsVCB7t3WkUchba
 OuvFSma16AjaJArS5arBAw1PZpUChO8ME4/tdWJ9p4oviPYBuOhEIG76U3FXad9W1KMQ
 6UFBvASE7FyXEM4c4mM0fXIOsAviddQxKKLQqgBvsriep4VhgT0+gPAL4hvKCHM+3Xov
 EiK8mFBxyv6+EZ9pLYfZ/gYH4vbjeGkhlBp3HWra+9jQMM/uYSBqVbWxrAwxdEjJ0JUW
 26IyODzw3Fl5QhSV3o7A0jXXTaVgYLUWpve0nW//yifNh/3ElJzMvIA+6ZOtB3o8Tt7m
 xioQ==
X-Gm-Message-State: APjAAAX5CEUq0wx2zrVNpMWJeaLa1chLKccFUUngu1o1hOyHkQncCWgC
 6hhHj7vEwN1SrW++e9RE7Ht0Xzvg
X-Google-Smtp-Source: APXvYqwwDeR3mG5V7MTsd1v77XqJ3MRQe8u0XvgvPm3cI08X9armX5Ba/ryUeZswyN7KohvGKiNvBw==
X-Received: by 2002:a2e:5c88:: with SMTP id q130mr1609327ljb.176.1561618916948; 
 Thu, 27 Jun 2019 00:01:56 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id u11sm222130ljd.90.2019.06.27.00.01.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 00:01:56 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v2 6/7] serial: imx: set_mctrl(): correctly restore
 autoRTS state
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561558293-7683-1-git-send-email-sorganov@gmail.com>
 <1561558293-7683-7-git-send-email-sorganov@gmail.com>
 <20190627060537.brmgsmoh3usr4vo6@pengutronix.de>
Date: Thu, 27 Jun 2019 10:01:54 +0300
In-Reply-To: <20190627060537.brmgsmoh3usr4vo6@pengutronix.de> ("Uwe
 \=\?utf-8\?Q\?Kleine-K\=C3\=B6nig\=22's\?\= message of "Thu,
 27 Jun 2019 08:05:37 +0200")
Message-ID: <87imsrik9p.fsf@osv.gnss.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_000203_689666_C35E4456 
X-CRM114-Status: GOOD (  22.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
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
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVz
OgoKPiBPbiBXZWQsIEp1biAyNiwgMjAxOSBhdCAwNToxMTozMlBNICswMzAwLCBTZXJnZXkgT3Jn
YW5vdiB3cm90ZToKPj4gaW14X3VhcnRfc2V0X21jdHJsKCkgaGFwcGVuZWQgdG8gc2V0IFVDUjJf
Q1RTQyBiaXQgd2hlbmV2ZXIgVElPQ01fUlRTCj4+IHdhcyBzZXQsIG5vIG1hdHRlciBpZiBSVFMv
Q1RTIGhhbmRzaGFrZSBpcyBlbmFibGVkIG9yIG5vdC4gTm93IGZpeGVkIGJ5Cj4+IHR1cm5pbmcg
aGFuZHNoYWtlIG9uIG9ubHkgd2hlbiBDUlRTQ1RTIGJpdCBmb3IgdGhlIHBvcnQgaXMgc2V0Lgo+
PiAKPj4gUmV2aWV3ZWQtYnk6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4K
Pj4gVGVzdGVkLWJ5OiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Cj4+IFNp
Z25lZC1vZmYtYnk6IFNlcmdleSBPcmdhbm92IDxzb3JnYW5vdkBnbWFpbC5jb20+Cj4+IC0tLQo+
PiAgZHJpdmVycy90dHkvc2VyaWFsL2lteC5jIHwgMTMgKysrKysrKysrKystLQo+PiAgMSBmaWxl
IGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+IAo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy90dHkvc2VyaWFsL2lteC5jIGIvZHJpdmVycy90dHkvc2VyaWFsL2lteC5j
Cj4+IGluZGV4IDQ4NjdmODAuLjE3MTM0N2QgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvdHR5L3Nl
cmlhbC9pbXguYwo+PiArKysgYi9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMKPj4gQEAgLTk3MCwx
MCArOTcwLDE5IEBAIHN0YXRpYyB2b2lkIGlteF91YXJ0X3NldF9tY3RybChzdHJ1Y3QgdWFydF9w
b3J0ICpwb3J0LCB1bnNpZ25lZCBpbnQgbWN0cmwpCj4+ICAJaWYgKCEocG9ydC0+cnM0ODUuZmxh
Z3MgJiBTRVJfUlM0ODVfRU5BQkxFRCkpIHsKPj4gIAkJdTMyIHVjcjI7Cj4+ICAKPj4gKwkJLyoK
Pj4gKwkJICogVHVybiBvZmYgYXV0b1JUUyAoVUNSMl9DVFNDKSBpZiBSVFMgaXMgbG93ZXJlZCBh
bmQgcmVzdG9yZQo+PiArCQkgKiBhdXRvUlRTIHNldHRpbmcgaWYgUlRTIGlzIHJhaXNlZC4gSW52
ZXJ0ZWQgVUNSMl9JUlRTIGlzIHNldAo+PiArCQkgKiBpZiBhbmQgb25seSBpZiBDUlRTQ1RTIGJp
dCBpcyBzZXQgZm9yIHRoZSBwb3J0LCBzbyB3ZSB1c2UgaXQKPj4gKwkJICogdG8gZ2V0IHRoZSBz
dGF0ZSB0byByZXN0b3JlIHRvLgo+PiArCQkgKi8KPgo+IFRoZSBjb21tZW50IGlzIHF1aXRlIGNv
bXBsaWNhdGVkLiBJIGxpa2UgdGhlIGNvbW1lbnRzIG9mIFNhc2NoYSdzIHBhdGNoCj4gdGhhdCBh
ZGRyZXNzZWQgdGhlIHNhbWUgaXNzdWUgYmV0dGVyLgoKVGhpcyBvbmUgaXMgc2ltcGx5IG1vZGVs
ZWQgYWZ0ZXIgc2ltaWxhciBjb21tZW50cyBpbiBvdGhlciBkcml2ZXJzLAp0aGVuIGFkZGluZyB0
aGUgc3BlY2lmaWNzLgoKPiBBcmUgeW91IHVzaW5nIFVDUjJfSVJUUyBhcyBhbiBpbmRpY2F0b3Ig
aWYgQ1JUU0NUUyBpcyBzZXQ/IElmIGl0J3MgdGhhdAo+IHdoYXQgeW91IGludGVuZCB0byBleHBy
ZXNzIGluIHRoZSBzZWNvbmQgc2VudGVuY2UgdGhhdCBpcyBoYXJkIHRvIGdyYXNwLgo+IFNvbWV0
aGluZyBsaWtlOgo+Cj4gCVVDUjJfSVJUUyBpcyB1bnNldCBpZmYgdGhlIHBvcnQgaXMgY29uZmln
dXJlZCBmb3IgQ1JUU0NUUwoKWWVhaCwgZXhhY3RseS4gRmluZSwgSSdsbCBjaGFuZ2UgdGhpcywg
dGhhbmtzIQoKPgo+IEFsc28gYXMgdGhlIHZhbHVlIG9mIHRoZSBDVFMgYml0IGRvZXNuJ3QgbWF0
dGVyIGlmIENUU0MgaXMgc2V0LCB0aGUKPiBvcmRlciBvZiB0aGUgY2hlY2tzIGNvdWxkIGJlIHN3
YXBwZWQgdG8gcmVzdWx0IGluIGVhc2llciBjb2RlIChJTUhPIGF0Cj4gbGVhc3QpIHRoYXQgZG9l
c24ndCBuZWVkIGEgbmVzdGVkIGlmLgo+Cj4gU29tZXRoaW5nIGxpa2U6Cj4KPiAJdWNyMiA9IGlt
eF91YXJ0X3JlYWRsKHNwb3J0LCBVQ1IyKTsKPiAJdWNyMiAmPSB+KFVDUjJfQ1RTIHwgVUNSMl9D
VFNDKTsKPgo+IAkvKiBVQ1IyX0lSVFMgaXMgdW5zZXQgaWZmIHRoZSBwb3J0IGlzIGNvbmZpZ3Vy
ZWQgZm9yIENSVFNDVFMgKi8KPiAJY3J0c2N0cyA9ICEodWNyMiAmIFVDUjJfSVJUUyk7Cj4KPiAJ
aWYgKCEobWN0cmwgJiBUSU9DTV9SVFMpKSB7Cj4gCQkvKiBGb3JjZSBSVFMgaW5hY3RpdmUsIGku
ZS4gVUNSMl9DVFM9MCBhbmQgVUNSMl9DVFNDPTAgKi8KPiAJfSBlbHNlIGlmIChjcnRzY3RzKSB7
Cj4gCQkvKiBsZXQgdGhlIHJlY2VpdmVyIGNvbnRyb2wgUlRTICovCj4gCQl1Y3IyIHw9IFVDUjJf
Q1RTQzsKPiAJfSBlbHNlIHsKPiAJCS8qIEZvcmNlIFJUUyBhY3RpdmUgKi8KPiAJCXVjcjIgfD0g
VUNSMl9DVFM7Cj4gCX0KClJpZ2h0LCB0aGlzIGlzIGZ1bmN0aW9uYWxseSBjb3JyZWN0IGFzIHdl
bGwsIGFuZCB0aHVzIGl0J3MgYSBtYXR0ZXIgb2YKdGFzdGUsIGJ1dCBJIHN0aWxsIGJlbGlldmUg
dGhhdCB3aGF0IEkgc3VnZ2VzdGVkIGlzIGJldHRlcjoKCgl1Y3IyID0gaW14X3VhcnRfcmVhZGwo
c3BvcnQsIFVDUjIpOwoJdWNyMiAmPSB+KFVDUjJfQ1RTIHwgVUNSMl9DVFNDKTsKCWlmIChtY3Ry
bCAmIFRJT0NNX1JUUykgewoJCXVjcjIgfD0gVUNSMl9DVFM7CgkJaWYgKCEodWNyMiAmIFVDUjJf
SVJUUykpCgkJCXVjcjIgfD0gVUNSMl9DVFNDOwoJfQoKRmlyc3QsIGl0IGFsd2F5cyBzZXRzIGhh
cmR3YXJlIFJUUyBhY2NvcmRpbmcgdG8gVElPQ01fUlRTLCB0aGF0IElNSE8gaXMKbGVzcyBzdXJw
cmlzaW5nIHRoYW4gY2xlYXJpbmcgaGFyZHdhcmUgUlRTIGJpdCB3aGVuIHBvcnQgaXMgY29uZmln
dXJlZApDUlRTQ1RTLgoKU2Vjb25kLCAodW5mb3J0dW5hdGUpIGludGVyLWRlcGVuZGVuY3kgYmV0
d2VlbiBUSU9DTV9SVFMgYW5kIENSVFNDVFMgaXMKYmV0dGVyIGlzb2xhdGVkLCBzbyB0byBnZXQg
cmlkIG9mIGl0IChldmVuIGlmIG9ubHkgbWVudGFsbHkpLCBvbmx5CnJlbW92YWxzIGFyZSByZXF1
aXJlZCwgdGhhdCByZWR1Y2VzIHRoZSBjb2RlIHRvIHF1aXRlIG9idmlvdXM6CgoJdWNyMiA9IGlt
eF91YXJ0X3JlYWRsKHNwb3J0LCBVQ1IyKTsKCXVjcjIgJj0gfihVQ1IyX0NUUyk7CglpZiAobWN0
cmwgJiBUSU9DTV9SVFMpCgkJdWNyMiB8PSBVQ1IyX0NUUzsKClRoYW5rcyEKCi0tIFNlcmdleQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
