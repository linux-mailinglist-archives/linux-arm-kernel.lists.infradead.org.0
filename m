Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C091FBDB1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 20:11:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KREx2KU2xFbrxrLOF9O8awgZGGylQon1y47xpzxuPRQ=; b=BP1pfJbRuevggR
	kneanCZhSeN36iTG4Ctyd27JX25dD3b6KCnhhCmyzQDaPmsSu6oP1h8UFnPEBs0luExA7Cd3tNUvV
	/Io93d1zBbnNDmyb444fKOcMelAIrRtxti3V2vn6SGMDSzzYU/gM8ATChmSyvvS6xdITRT1jYOy+q
	Mh/dosysUPQ5zearAjk142J9RsYVehJhM7ScHHR3K/u+UeTpKJ5sLW+QYO2Z8m9XIrWL8OhXwWKv2
	hACAMYd4Ev31xI3BbeTa1AMJJMGt+FmFmmwe7Xj8Yhtugfxcks3v+7Cu1q+FVUjZGeuerKjRZ/TBj
	mrjT4yrRgpFVdCCcrczw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlG31-00010Q-04; Tue, 16 Jun 2020 18:10:59 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlG2s-0000zt-St
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 18:10:52 +0000
Received: by mail-wr1-x442.google.com with SMTP id c3so21716785wru.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 11:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=4FgiENwfUO7mA2YjX6lAwyQhzjyMjVdETYKldtPiPZM=;
 b=ihtlPylSj3JcohHV286c1z+Qs7Eghf1Xmc6bx0PhYaab2WkhdzK4hODezL0QYUtqAg
 rHh/Mky6WL/awMIqEGk2GR2rd2aVMK9U9Bzd3xkJ2+OAodfqVVnwOrIeYjyF67gD9i4y
 EFtbP7EVddV9djSwTyk20y1cW1jD9qbSdxD3U4BfRmyAK8EBtmHUS+Yd+Dj3lMCHa96V
 XPiap68X3kvj/SNYoizdKiJZS3nCvlIU7sxHgbhRGh+WucTsIXrX86/XXsOAi5jskjMa
 8epcN4Si9qjExDiFmJL0mL28HI9YVpxa1bAL2+nMREX/OSySImmxJcSonBdynMIvmW6x
 RoUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=4FgiENwfUO7mA2YjX6lAwyQhzjyMjVdETYKldtPiPZM=;
 b=kH748SrRcVuvepkM7Okb7zZllqfti29e9B5nRcWR4k+VdG1uRZ/neqlMZzSBob33ol
 QDIYlBXZEAC4L3zA828zVF62BTV15727l/E35/NsqeKAjn/zIJWdAMBMFJutIbHnezIc
 rb8l3BUtwdw/JMzgw98IzYqhFQsgwjnPMAX9Mh+CV+sZcwAkycz9I2IEeImZYxdMKMm/
 xLUSc1aeN65LV6BNf+Am/nPbdmzkpeBjqLboO8AEBxxmTBI5DqV87f7XVfX2Pc2WvrKE
 bINFtSZSunMKrtFp1wIU/1BO/2UZ9YEH4q5cyARWq+xM3hsMUcLAmUftet1VwU2TAMxB
 iMpA==
X-Gm-Message-State: AOAM533M/SpC/c8xBilzhd6bGMIkiutjjBkvvTf0HgnOgQbfHiLw8PmP
 q5GbGDndwPMrXeAe37p7eAQ=
X-Google-Smtp-Source: ABdhPJxz8xC5eDCPgXCsGHzuJTJKCr0/MKUW77brkupm8ub+5mVxMnEZXVqKaEYUwBTfsRyEHDwnGw==
X-Received: by 2002:adf:e7ce:: with SMTP id e14mr4662739wrn.217.1592331049362; 
 Tue, 16 Jun 2020 11:10:49 -0700 (PDT)
Received: from macbook-pro-alvaro-eth.lan
 (90.red-88-20-62.staticip.rima-tde.net. [88.20.62.90])
 by smtp.gmail.com with ESMTPSA id j5sm30772747wrm.57.2020.06.16.11.10.47
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jun 2020 11:10:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH 1/2] dt-bindings: phy: add bcm63xx-usbh bindings
From: =?utf-8?Q?=C3=81lvaro_Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>
In-Reply-To: <2cc00ff1-f411-1c2d-d2ce-4cc0bfc2ccb5@gmail.com>
Date: Tue, 16 Jun 2020 20:10:47 +0200
Message-Id: <7E21D795-8D20-4EB1-9758-D2B5BD389F1F@gmail.com>
References: <20200616083408.3426435-1-noltari@gmail.com>
 <20200616083408.3426435-2-noltari@gmail.com>
 <2cc00ff1-f411-1c2d-d2ce-4cc0bfc2ccb5@gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_111050_933059_C60C79EA 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, gregkh@linuxfoundation.org, simon@fire.lp0.eu,
 alcooperx@gmail.com, linux-kernel@vger.kernel.org, krzk@kernel.org,
 kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Philipp Zabel <p.zabel@pengutronix.de>,
 Jonas Gorski <jonas.gorski@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gRmxvcmlhbiwKCj4gRWwgMTYganVuIDIwMjAsIGEgbGFzIDE5OjE3LCBGbG9yaWFuIEZh
aW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4gZXNjcmliacOzOgo+IAo+IAo+IAo+IE9uIDYv
MTYvMjAyMCAxOjM0IEFNLCDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgd3JvdGU6Cj4+IERvY3Vt
ZW50IEJDTTYzeHggVVNCSCBQSFkgYmluZGluZ3MuCj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiDDgWx2
YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgo+PiAtLS0KPj4gLi4uL2Jp
bmRpbmdzL3BoeS9icmNtLGJjbTYzeHgtdXNiaC1waHkueWFtbCAgIHwgNzIgKysrKysrKysrKysr
KysrKysrKwo+PiAxIGZpbGUgY2hhbmdlZCwgNzIgaW5zZXJ0aW9ucygrKQo+PiBjcmVhdGUgbW9k
ZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9icmNtLGJjbTYz
eHgtdXNiaC1waHkueWFtbAo+PiAKPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvYnJjbSxiY202M3h4LXVzYmgtcGh5LnlhbWwgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JyY20sYmNtNjN4eC11c2JoLXBoeS55YW1sCj4+
IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uM2U3Yzk3Nzk5Yjkx
Cj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9icmNtLGJjbTYzeHgtdXNiaC1waHkueWFtbAo+PiBAQCAtMCwwICsxLDcyIEBACj4+
ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCBPUiBCU0QtMi1DbGF1c2UpCj4+
ICslWUFNTCAxLjIKPj4gKy0tLQo+PiArJGlkOiAiaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVt
YXMvcGh5L2JyY20sYmNtNjN4eC11c2JoLXBoeS55YW1sIyIKPj4gKyRzY2hlbWE6ICJodHRwOi8v
ZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMiCj4+ICsKPj4gK3RpdGxlOiBC
Q002M3h4IFVTQkggUEhZCj4+ICsKPj4gK21haW50YWluZXJzOgo+PiArICAtIMOBbHZhcm8gRmVy
bsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Cj4+ICsKPj4gK3Byb3BlcnRpZXM6Cj4+
ICsgIGNvbXBhdGlibGU6Cj4+ICsgICAgZW51bToKPj4gKyAgICAgIC0gYnJjbSxiY202MzE4LXVz
YmgtcGh5Cj4+ICsgICAgICAtIGJyY20sYmNtNjMyOC11c2JoLXBoeQo+PiArICAgICAgLSBicmNt
LGJjbTYzNTgtdXNiaC1waHkKPj4gKyAgICAgIC0gYnJjbSxiY202MzYyLXVzYmgtcGh5Cj4+ICsg
ICAgICAtIGJyY20sYmNtNjM2OC11c2JoLXBoeQo+PiArICAgICAgLSBicmNtLGJjbTYzMjY4LXVz
YmgtcGh5Cj4+ICsKPj4gKyAgcmVnOgo+PiArICAgIG1heEl0ZW1zOiAxCj4+ICsKPj4gKyAgY2xv
Y2tzOgo+PiArICAgIG1heEl0ZW1zOiAyCj4+ICsKPj4gKyAgY2xvY2stbmFtZXM6Cj4+ICsgICAg
aXRlbXM6Cj4+ICsgICAgICAtIGNvbnN0OiB1c2JoCj4+ICsgICAgICAtIGNvbnN0OiB1c2JfcmVm
Cj4+ICsKPj4gKyAgcmVzZXRzOgo+PiArICAgIG1heEl0ZW1zOiAxCj4+ICsKPj4gKyAgIiNwaHkt
Y2VsbHMiOgo+PiArICAgIGNvbnN0OiAwCj4gCj4gT24gNjMyOCwgdGhlIHNhbWUgcmVnaXN0ZXIg
c3BhY2UgYWxsb3dzIHRoZSBjb250cm9sbGluZyBvZiB0aGUgVVNCIFBIWQo+IGluIGVpdGhlciBo
b3N0IG9yIGRldmljZSBtb2RlLCBzbyBJIGJlbGlldmUgeW91IHdvdWxkIG5lZWQgdG8gYWRkIGEK
PiAjcGh5LWNlbGxzID0gMSBpbiBvcmRlciB0byBkaXN0aW5ndWlzaCB0aGUgY29uc3VtZXIgKGhv
c3QgdmVyc3VzIGRldmljZSkKPiBpZiB3ZSBnZXQgdG8gdGhlIHBvaW50IHdoZXJlIGRyaXZlcnMv
dXNiL2dhZGdldC91ZGMvYmNtNjN4eF91ZGMuYwo+IGJlY29tZXMgRFQgYXdhcmUuCgpJ4oCZbSBu
b3QgcmVhbGx5IHN1cmUgYWJvdXQgaG93IEkgc2hvdWxkIGRvIHRoaXMgYmVjYXVzZSB0aGVyZeKA
mXMgbm8gZGVmaW5pdGlvbiBmb3IgZGV2aWNlIHBoeSBtb2RlIGluIGR0LWJpbmRpbmdzL3BoeS9w
aHkuaDoKaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvbWFzdGVyL2luY2x1
ZGUvZHQtYmluZGluZ3MvcGh5L3BoeS5oI0wxMwoKV2hpY2ggdmFsdWUgc2hvdWxkIEkgdXNlIGZv
ciBkZXZpY2UgbW9kZSBhbmQgd2hpY2ggb25lIGZvciBob3N0PwpTaG91bGQgSSBzdXBwb3J0IGJv
dGggbW9kZXMgYXQgdGhlIHNhbWUgdGltZSBvciBhcmUgdGhleSBleGNsdXNpdmU/Cgo+IAo+IE90
aGVyIHRoYW4gdGhhdCwgdGhpcyBsb29rcyBnb29kIHRvIG1lIQo+IC0tIAo+IEZsb3JpYW4KCkJl
c3QgcmVnYXJkcywKw4FsdmFyby4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
