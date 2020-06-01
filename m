Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A709E1EA654
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 16:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sYX8IxVlvCNhHPmSg1ye76uiR3+s25KILD+FGMLxVpE=; b=l8A8Lel4SPO71p
	Bd7ow2nssfrC6dK+YvLexapzNz2WnY8//P5HOg1v0mfDkZgOHNoO3QIlU1vX2nm5C4J9Vt3pFqYsd
	y3OKzzLdD9z1Z2EL0ntE9lCq5knCv00psgEQTCTA0fk+pbH6ZTAFW52M/iGPZ8la25Y9ZpcyAb1Ce
	4q85ocDLvn5qa+ddeRkRHeMvSb6dAfGhhrEECF7ll8VDcmQtSUBunS7qmHu7xVPyH6KcoFER8HzYj
	Up5JbWFqXAb5t9yrQhGfdF0NTFlP0PgOeZgzOniDvn77ZUxJmxPcumhkPZMp7vvKbqfRkTWu2a5FR
	xV8j7PZ4ALdtMHHOxQsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jflrd-0007MV-W0; Mon, 01 Jun 2020 14:56:33 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jflrX-0007Lx-Hr
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 14:56:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nDf9cvm/ZefW9y6efpBbORsXzUNCnvBktxgDSUJOFe0=; b=xJ3jMVdaSmg2Ny7iJI06PVpl7
 SCS6f+oZDfUj0tkfF5DLpvqlKPdRpf1oDCW6w2N4xY8LHAMKQ27jM3FruT0cBSJGsF0iUMXZ5gz4l
 Frfyv4n59QLbmn9BqF/9v8aFUg8QZknM3BGdSEw8eklEHRwu/UMk00KY8muN3FPe+5MJNJmvyFYDW
 P7GutIGYA6/jn37IhfdMUzZYgM0zLD1U1BARdCSNYFMDnHAMJ0bnxiTj3d5hyfI5TIE5xV3fOm0OH
 WLUcluznY6uGxGFu3ZuNvly1dphT7bh0apG/41hfx4vv1vtaLxEBbxvM/co/7H6x2cMIluUzYpJbF
 tUn9zw3cw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:39986)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jflrL-0000Zg-2t; Mon, 01 Jun 2020 15:56:15 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jflrK-0003Or-Gl; Mon, 01 Jun 2020 15:56:14 +0100
Date: Mon, 1 Jun 2020 15:56:14 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: =?utf-8?Q?=C5=81ukasz?= Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH 4/5] arm: Add kexec_image_info
Message-ID: <20200601145614.GK1551@shell.armlinux.org.uk>
References: <20200601142754.26139-1-l.stelmach@samsung.com>
 <CGME20200601142811eucas1p260e5a434ea7743eecdb37c4d975c5f05@eucas1p2.samsung.com>
 <20200601142754.26139-5-l.stelmach@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601142754.26139-5-l.stelmach@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_075627_667982_AE39750B 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Ben Dooks <ben-linux@fluff.org>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMDEsIDIwMjAgYXQgMDQ6Mjc6NTNQTSArMDIwMCwgxYF1a2FzeiBTdGVsbWFj
aCB3cm90ZToKPiBBZGQga2V4ZWNfaW1hZ2VfaW5mbyB0byBwcmludCBkZXRhaWxlZCBpbmZvcm1h
dGlvbiBhYm91dCBhIGtleGVjIGltYWdlLgoKSXNuJ3QgdGhpcyBhbHJlYWR5IHZpc2libGUgdGhy
b3VnaCBrZXhlYyBkZWJ1Z2dpbmc/ICBXaHkgZG8gd2UgbmVlZAp0byBkdXBsaWNhdGUgdGhlIHNh
bWUgb3V0cHV0IGluIHRoZSBrZXJuZWw/ICBEbyB3ZSB0aGluayB0aGF0IHRoZQprZXhlYyBpbnRl
cmZhY2VzIGFyZSB0aGF0IGZyYWdpbGUgdGhhdCB0aGV5IGRvbid0IHdvcms/Cgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IMWBdWthc3ogU3RlbG1hY2ggPGwuc3RlbG1hY2hAc2Ftc3VuZy5jb20+Cj4gLS0t
Cj4gIGFyY2gvYXJtL2tlcm5lbC9tYWNoaW5lX2tleGVjLmMgfCAyOCArKysrKysrKysrKysrKysr
KysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2tlcm5lbC9tYWNoaW5lX2tleGVjLmMgYi9hcmNoL2FybS9rZXJu
ZWwvbWFjaGluZV9rZXhlYy5jCj4gaW5kZXggNzYzMDBmMzgxM2U4Li5jMTBhMmRmZDUzZDEgMTAw
NjQ0Cj4gLS0tIGEvYXJjaC9hcm0va2VybmVsL21hY2hpbmVfa2V4ZWMuYwo+ICsrKyBiL2FyY2gv
YXJtL2tlcm5lbC9tYWNoaW5lX2tleGVjLmMKPiBAQCAtMzEsNiArMzEsMzIgQEAgZXh0ZXJuIHVu
c2lnbmVkIGxvbmcga2V4ZWNfYm9vdF9hdGFnczsKPiAgCj4gIHN0YXRpYyBhdG9taWNfdCB3YWl0
aW5nX2Zvcl9jcmFzaF9pcGk7Cj4gIAo+ICsvKioKPiArICoga2V4ZWNfaW1hZ2VfaW5mbyAtIEZv
ciBkZWJ1Z2dpbmcgb3V0cHV0Lgo+ICsgKi8KPiArI2RlZmluZSBrZXhlY19pbWFnZV9pbmZvKF9p
KSBfa2V4ZWNfaW1hZ2VfaW5mbyhfX2Z1bmNfXywgX19MSU5FX18sIF9pKQo+ICtzdGF0aWMgdm9p
ZCBfa2V4ZWNfaW1hZ2VfaW5mbyhjb25zdCBjaGFyICpmdW5jLCBpbnQgbGluZSwKPiArCWNvbnN0
IHN0cnVjdCBraW1hZ2UgKmtpbWFnZSkKPiArewo+ICsJdW5zaWduZWQgbG9uZyBpOwo+ICsKPiAr
CXByX2RlYnVnKCIlczolZDpcbiIsIGZ1bmMsIGxpbmUpOwo+ICsJcHJfZGVidWcoIiAga2V4ZWMg
a2ltYWdlIGluZm86XG4iKTsKPiArCXByX2RlYnVnKCIgICAgdHlwZTogICAgICAgICVkXG4iLCBr
aW1hZ2UtPnR5cGUpOwo+ICsJcHJfZGVidWcoIiAgICBzdGFydDogICAgICAgJWx4XG4iLCBraW1h
Z2UtPnN0YXJ0KTsKPiArCXByX2RlYnVnKCIgICAgaGVhZDogICAgICAgICVseFxuIiwga2ltYWdl
LT5oZWFkKTsKPiArCXByX2RlYnVnKCIgICAgbnJfc2VnbWVudHM6ICVsdVxuIiwga2ltYWdlLT5u
cl9zZWdtZW50cyk7Cj4gKwo+ICsJZm9yIChpID0gMDsgaSA8IGtpbWFnZS0+bnJfc2VnbWVudHM7
IGkrKykgewo+ICsJCXByX2RlYnVnKCIgICAgICBzZWdtZW50WyVsdV06ICUwOGx4IC0gJTA4bHgs
IDB4JXggYnl0ZXMsICVsdSBwYWdlc1xuIiwKPiArCQkJaSwKPiArCQkJa2ltYWdlLT5zZWdtZW50
W2ldLm1lbSwKPiArCQkJa2ltYWdlLT5zZWdtZW50W2ldLm1lbSArIGtpbWFnZS0+c2VnbWVudFtp
XS5tZW1zeiwKPiArCQkJa2ltYWdlLT5zZWdtZW50W2ldLm1lbXN6LAo+ICsJCQlraW1hZ2UtPnNl
Z21lbnRbaV0ubWVtc3ogLyAgUEFHRV9TSVpFKTsKPiArCX0KPiArfQo+ICsKPiAgLyoKPiAgICog
UHJvdmlkZSBhIGR1bW15IGNyYXNoX25vdGVzIGRlZmluaXRpb24gd2hpbGUgY3Jhc2ggZHVtcCBh
cnJpdmVzIHRvIGFybS4KPiAgICogVGhpcyBwcmV2ZW50cyBicmVha2FnZSBvZiBjcmFzaF9ub3Rl
cyBhdHRyaWJ1dGUgaW4ga2VybmVsL2tzeXNmcy5jLgo+IEBAIC00Miw2ICs2OCw4IEBAIGludCBt
YWNoaW5lX2tleGVjX3ByZXBhcmUoc3RydWN0IGtpbWFnZSAqaW1hZ2UpCj4gIAlfX2JlMzIgaGVh
ZGVyOwo+ICAJaW50IGksIGVycjsKPiAgCj4gKwlrZXhlY19pbWFnZV9pbmZvKGltYWdlKTsKPiAr
Cj4gIAlpbWFnZS0+YXJjaC5rZXJuZWxfcjIgPSBpbWFnZS0+c3RhcnQgLSBLRVhFQ19BUk1fWklN
QUdFX09GRlNFVAo+ICAJCQkJICAgICArIEtFWEVDX0FSTV9BVEFHU19PRkZTRVQ7Cj4gIAo+IC0t
IAo+IDIuMjYuMgo+IAo+IAoKLS0gClJNSydzIFBhdGNoIHN5c3RlbTogaHR0cHM6Ly93d3cuYXJt
bGludXgub3JnLnVrL2RldmVsb3Blci9wYXRjaGVzLwpGVFRDIGZvciAwLjhtIChlc3QuIDE3NjJt
KSBsaW5lIGluIHN1YnVyYmlhOiBzeW5jIGF0IDEzLjFNYnBzIGRvd24gNDI0a2JwcyB1cAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
