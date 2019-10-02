Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 025CCC8E38
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 18:24:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZ4OpMKJnVigTpTG8jFSrzrm6Ke3FMENEViPbIIsLwU=; b=pXZtXPq48ur7Id
	50yT9MYavPeTC0evgQ79ZXJ/VWERQ3K9sCjLPM7VjfCVvHdIQNrf1+v5BF9nRnualiwiZ1GXLfxe0
	crcjgnMDHQ/OyT9t30damm9AWnm6HC5yDBH4+wEGgbUNJc3JeeYDANuicXWpgTY8ftERxhtIRkQ1f
	tqzT3l3FAUBD1H2sq0I92CWokf5ABt/fCgKal5gnfW3+Xp8Zae41+PBGd/3+B+ox7CmS8gZ5q3QRL
	T0LtHm360YtxpHD0INhvx/fsMxO/NMNrLzAdtzKI0nRrHEOCSr5rNjfQ0qGnGY9LAKvVcQ2b1j0sq
	1ZcfVc5PKRKYvQlXlzUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFhQY-0001sw-JN; Wed, 02 Oct 2019 16:24:34 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFhQS-0001sL-GK
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 16:24:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570033455;
 bh=zNFfnh6MxZPXw2cqe+F9f9PnPp5mbl+vyW2TSVLK3ds=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=ERuGePfNh+2HkBRDzJH1LByjNjiVcNY1YgngNGZQ2L6C4ogtDdAJeiQK2IlozALjd
 SkVgWOCfpYorSceo52Les+3ck5sazXlPtO0l3xuXkFKNtNi2/YkYv2TtfQpwrV8Q2m
 Egg1GB98OV8Q5bljCYLhT1/XItSi12taMdleeMpI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.116]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MKbkM-1iYJhT0yQG-00KueI; Wed, 02
 Oct 2019 18:24:15 +0200
Subject: Re: [PATCH V3 7/8] ARM: dts: Add minimal Raspberry Pi 4 support
To: Florian Fainelli <f.fainelli@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
 <1569672435-19823-8-git-send-email-wahrenst@gmx.net>
 <77b0a773-912a-aa5b-6eb5-5423c2c07e58@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <7d0414bb-fea8-e3e5-8b85-c18615a56c94@gmx.net>
Date: Wed, 2 Oct 2019 18:24:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <77b0a773-912a-aa5b-6eb5-5423c2c07e58@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:SevsKMCsbxBwBl+6qgDn5oXK75u0GucyPaI2FObppq1RiAsjXMa
 8VtUfoU9zr9uLxZatQHi5Y6+IQBIGENUKy7OlpiXetpMB0l955iG6iEGM/GlJ2bCfS11pyK
 bLX6nuk1ak7J3+xS7twWuS0J4l2i8/q0hE5jg+0IZsg243waNUOI65CaDQSdDtOv8f6W7oz
 fUwzaG0v9EfuAc5jnywUA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9KSjGJkHLzg=:LBW9nsllLO0jkY/2H6jhxo
 ebU/o3TO2YcHAfEdu0okYHUYs36tJgwsKFD9EpvM85fBF4Oe6WW8s6NQ7wib+7CfZW35nKSHa
 6ICD6MFpfo53iYnoWzMTqYSd7o8vx6L/b97ktMNlrNASI984GNyoeAuJb5385plIfkTeUjUpA
 Ghs8KFqYuhF5bXtN3yDMq/WMc5Uu8uKYH0KzAMJPVX/Dxa/AVcmgiunOyG1fcyjhkwSdbuqyO
 Q268GxccUPrTGo7iAi1Th7T0LNqC9xqdz0HA+naEtQ9AFLedpZ+qLlTEhB7oI1MVtKgRb+Drk
 W09bCpw+IeY7QjFmUOBIXLKDzWcX30N53svKFFE0Q0ztOdNQxLY3UnQGZCr+vBx+sY7ezktjh
 lOccQvuZzoGz0p1R2ms9LO8T2830OkZEUehsYhASEjWwYyfPFwZDhtd9nf6dwJCi1goWoCnAn
 Kg/dSDHrix+80ZZuntihPRFsKZ5QeqbPi/Y2en6vov1HkVr8riUT3L3Gwbl4bL5NZVA6RA/Nc
 KZGMWBDwEc+mFRIrWZHViecyTiTRwJNpSv36bRkvo2EXKGEpi0czV4xl76E6ODw2mWB44quiA
 /TxJmy/R3327SJR0Nw2XoHxvXJ11nusuvfMDqAXcRbNX/rVBGxxRNwWwRLbw5wjqI7b5g8qei
 FuufpOPvVXbKcOgNZkYiZslHQU8TI0spT2GHjBQp1zjK0NiYgzh0piFKRFm46fleq+Ktqf76d
 JOjzbh82qDm65OJMBdLPCj91gizol3eJc/LfD1rb02xnjD4J1WI8hEfNjsK5tsn/yNX8XvsD+
 OwqQk1uvaNEUfRadBPYbxaE655tqLO6BpHGYfu3lJxllbnbCWkqg1PhgjqMb+kVAuU2nqLKWm
 8i+G/A7grPoJ+A2WKouQ8mk5/BjvG40UCqgyLDPRXPLgbH8M0C+I8ohoJ41OwxSXOhbb38aPC
 8m4mQ5aMRSEuOgb3RdnZeOtGDWwxqgnJwhJjpUOybfW93EXqLhq+mC+B7zEESjRMdKLAvOKyg
 6KfqRFNu2GHeyoqEbP2L/nvMWCvO1q8UE8JOACPOmXyWNrm9uI6hStCRiaWweA4kXDQQYE4mk
 VFaUgka9zBPhEcw6HYwh5eL0K9jXGRZBBl8TyJYdNNmZND8+RWICagcwZ52JKO5bIk+/soUZ0
 6t9Mrycd15YYPRQzjft5psbdcLa/tgAnFEKBNKBJmsHyHkaHuQ37h29eqUbNXRKqAcVUZ65tv
 k9zqAIEiyGyofWbt5fLL8XuaLD7OjItDeVL3ImeQqISpEfhsjxWsQs6i1dCI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_092428_872502_7B153FCA 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.18 listed in wl.mailspike.net]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, devicetree@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRmxvcmlhbiwKCkFtIDI4LjA5LjE5IHVtIDIxOjU4IHNjaHJpZWIgRmxvcmlhbiBGYWluZWxs
aToKPgo+IE9uIDkvMjgvMjAxOSA1OjA3IEFNLCBTdGVmYW4gV2FocmVuIHdyb3RlOgo+Cj4+ICsJ
bWVtb3J5QDAgewo+PiArCQlkZXZpY2VfdHlwZSA9ICJtZW1vcnkiOwo+PiArCQlyZWcgPSA8MCAw
IDB4MDAwMDAwMDA+Owo+PiArCX07Cj4+ICsKPiBbc25pcF0KPgo+PiArI2luY2x1ZGUgPGR0LWJp
bmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KPj4gKyNpbmNsdWRlIDxkdC1i
aW5kaW5ncy9zb2MvYmNtMjgzNS1wbS5oPgo+PiArCj4+ICsvIHsKPj4gKwljb21wYXRpYmxlID0g
ImJyY20sYmNtMjcxMSI7Cj4+ICsKPj4gKwkjYWRkcmVzcy1jZWxscyA9IDwyPjsKPj4gKwkjc2l6
ZS1jZWxscyA9IDwxPjsKPiBUcnlpbmcgdG8gc2VlIGlmIHdlIG1heSBuZWVkIGEgI3NpemUtY2Vs
bHMgcHJvcGVydHkgdmFsdWUgb2YgMiBoZXJlLCBmb3IKPiB0aGUgNEdCIG1vZGVsLCBJIHdvdWxk
IGFzc3VtZSB0aGF0IHdlIHdvdWxkIGhhdmUgdG8sIHVubGVzcyB3ZSBhcmUgZmluZQo+IHdpdGgg
c3VwcG9ydGluZyA0R0IgLSAxYnl0ZSBvZiBEUkFNPwpJIHdpbGwgdHJ5IHVubGVzcyB0aGlzIHJl
cXVpcmVzIGEgbG90IG9mIGFkanVzdG1lbnRzIG9yIGJyZWFrIHRoZQpib290bG9hZGVyLgo+Cj4+
ICsKPj4gKwlpbnRlcnJ1cHQtcGFyZW50ID0gPCZnaWN2Mj47Cj4+ICsKPj4gKwlzb2Mgewo+PiAr
CQlyYW5nZXMgPSA8MHg3ZTAwMDAwMCAgMHgwIDB4ZmUwMDAwMDAgIDB4MDE4MDAwMDA+LAo+PiAr
CQkJIDwweDdjMDAwMDAwICAweDAgMHhmYzAwMDAwMCAgMHgwMjAwMDAwMD4sCj4+ICsJCQkgPDB4
NDAwMDAwMDAgIDB4MCAweGZmODAwMDAwICAweDAwODAwMDAwPjsKPiBNaWdodCBiZSBuaWNlIHRv
IGdldCBzb21lIGNvbW1lbnRzIGFib3V0CnJhbmdlcyA9IDwweDdlMDAwMDAwwqAgMHgwIDB4ZmUw
MDAwMDDCoCAweDAxODAwMDAwPizCoCAvLyBDb21tb24gQkNNMjgzeApwZXJpcGhlcmFscwrCoMKg
wqAgwqA8MHg3YzAwMDAwMMKgIDB4MCAweGZjMDAwMDAwwqAgMHgwMjAwMDAwMD4swqAgLy8gQkNN
MjcxMS1zcGVjaWZpYwpwZXJpcGhlcmFscwoKwqDCoMKgIMKgPDB4NDAwMDAwMDDCoCAweDAgMHhm
ZjgwMDAwMMKgIDB4MDA4MDAwMDA+O8KgIC8vIEFSTS1sb2NhbCBwZXJpcGhlcmFscwoKSSB3aWxs
IHNpbXBseSBmb3J3YXJkIHRoZSBhbnN3ZXIgZnJvbSB0aGUgUlBpIGd1eXMuCgpJcyBpdCB3aGF0
IHlvdSBoYWQgaW4gbWluZD8gT3RoZXJ3aXNlIHBsZWFzZSBiZSBtb3JlIHNwZWNpZmljLgoKUmVn
YXJkcwpTdGVmYW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
