Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E69175FD9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 17:34:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o1D+k7I1zQJdPZV9OnsHF4kaFzLloB3TOTuP2ThGAM4=; b=rEUa7HgSuDjss2
	TJIWGeKZO/L3iwu27HKq1bPFcxZFVLdfdxiI1rno9hULUTEFMU+mTGoyn3d7n2k4y6JubUq+a5wlU
	cZsG5uuuzgA66puXuYYX6cwgr1K9TS4trb5Be0l0Hrn8se4EU77wCxUNz0BDaTNYGizhrGdTr7VZo
	2Obw/O8RO7zGskrHQv8m0hUwK17Xya3b9FTNCupmIo0DKqbRIWWZYxQJfxi5En3IDY7jHlxmZgVwJ
	RfPnel6m+2UdU1Vvma/sUdoPZ0ocawjf7VsxkRO5Tkl9WMEIzS/4Js7CW/us7Ix1Dr2UbpX7A7M+z
	E+5+S/8fiwFAvCB6pRhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8o1h-00084N-J0; Mon, 02 Mar 2020 16:34:41 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8o1Y-00083y-K3
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 16:34:34 +0000
Received: by mail-lf1-x143.google.com with SMTP id d27so14798lfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 08:34:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+ezAgpE1aOxehjVVyCXz5Viz83GfJGV4ZhdRkKwedlk=;
 b=vI1LuI0vfIH1yvsaqquDVw6jrfn52Wod3UaRT3LWjDw6TF6+/UIkWkCTk5Z/EgRAtF
 M2joB98V7XfigIsS/wv0sG8ydcbIeoXfqWBcaWGNjYzEvwFTNBxYqcOloU1x3VjcUPVQ
 tFfg7jJto4WZhKf8nXFcfcQWkXP0torDDykU/lQ2YVLhByoHsUP46W6xVxAR7UVES/Sf
 fZryflf+bLF2I+wuQpOMle1JY+p+qI2Vh6ESrw/03oYFFcE0rAGumG5tcGXOE/H/DS3v
 CLiBMgt7CIMo/UZhwyFRhZz4bC480mKOnSMgj5WtHgCxNyZgn3Ujhy56qx6cc3v5A5A+
 7NJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+ezAgpE1aOxehjVVyCXz5Viz83GfJGV4ZhdRkKwedlk=;
 b=stxSGpuZUhgHP+wR2e9kBKha/hgAkxb0qwifASQqY0IVZE3e7uRqsPvLnTYCgAYb8M
 59MrGd+MXIUktvZVMke1505cIFEEHb+khiL7Adlj2b1iT0Pjyt7gcK2gWZuq3zbbjGaG
 0o8MmEhcNXs5Hg2LnNXKZZrOA1cOF9SpqLD1lKQYaHkteeK0jSG9t/Eck6qVHoEUXdjV
 Wjz3UyVyLlZAjNEhYSP2RgGuTs5RTcXN4RrLLlahU2dGlFgmKFjCUNkUhCcimlqa7zLj
 bMvASJzGvFqsLxPYR2UgfzYWuiLyGHZklAwzo0jrxDMv7g2kESFI0Yn2KgY+2HDOAfzA
 UHXw==
X-Gm-Message-State: ANhLgQ0Q0P9vNtMmbbVrDVNVMqWAsflVMYdQytxiSowqOVlf/RMaFVNl
 jupXJqQH2NuXLnRbNgNLPf0y2S/V02N8dv+h52FoPQ==
X-Google-Smtp-Source: ADFU+vuVNI9O0XQOfyw1OSVPXHG7Oit2eef2YnEQRJFiOzL1ZJNLjlSV/mmhuJTmNHlvRup3VdmR7i44TwQIjCWHOn0=
X-Received: by 2002:a19:ed0b:: with SMTP id y11mr11314795lfy.77.1583166870424; 
 Mon, 02 Mar 2020 08:34:30 -0800 (PST)
MIME-Version: 1.0
References: <CAMiSF3BULWkyWTytTBcFfch9YaV_QzuBiawk-ZqEcQnsuGdUiQ@mail.gmail.com>
 <20200302083959.wju5vz3acuka2edq@pengutronix.de>
 <20200302093607.GG25745@shell.armlinux.org.uk>
In-Reply-To: <20200302093607.GG25745@shell.armlinux.org.uk>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 2 Mar 2020 17:34:19 +0100
Message-ID: <CACRpkdbADQ5+Tp9NDgQx20Y0QTcE_go2qzi7dJL9HLu8PU1Smg@mail.gmail.com>
Subject: Re: GPIOs not correctly exported via sysfs on ATSAMA5D2
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_083432_723024_598B2CEB 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Linux GPIO List <linux-gpio@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Romain Izard <romain.izard.pro@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXIgMiwgMjAyMCBhdCAxMDozNiBBTSBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXgg
YWRtaW4KPGxpbnV4QGFybWxpbnV4Lm9yZy51az4gd3JvdGU6Cj4gT24gTW9uLCBNYXIgMDIsIDIw
MjAgYXQgMDk6Mzk6NTlBTSArMDEwMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cgo+ID4gIC0g
U29tZXRpbWVzIGl0IGlzIHVzZWZ1bCB0byBtYWtlIHVzZSBvZiBhIEdQSU8gYW5kIGEgZGVkaWNh
dGVkIGZ1bmN0aW9uCj4gPiAgICBvbiB0aGUgc2FtZSBwaW4gaW4gYSBkcml2ZXIgKGUuZy4gYW4g
aTJjIGRyaXZlciBtaWdodCBuZWVkIHRvIHN3aXRjaAo+ID4gICAgdG8gZ3BpbyB0byBkbyBhIGJ1
cyByZWNvdmVyeSkuIFRoZSBhdXRvbWF0aWMgcGlubXV4aW5nIHRoZW4gaGFzCj4gPiAgICBzdHJh
bmdlIHNpZGUgZWZmZWN0IGJlY2F1c2UgeW91IGhhdmUgdG8gcmVtdXggdGhlIHBpbnMgYWZ0ZXIK
PiA+ICAgIHJlcXVlc3RpbmcgdGhlIEdQSU9zIGV2ZW4gaWYgeW91IGRpZG4ndCBkcml2ZSB0aGUg
cGlucyBhcyBHUElPIGFuZAo+ID4gICAgdGhlcmUgaXMgYSBzaG9ydCB0aW1lIHdoZXJlIHRoZSBw
aW4gZnVuY3Rpb24gaXNuJ3QgdGhlIGRlZGljYXRlZAo+ID4gICAgb25lLgo+Cj4gSXQncyB3b3Jz
ZSB0aGFuIHRoYXQgZm9yIHRoZSBpMmMgZHJpdmVyLiAgVGhlIHBpbnMgYXJlIG11eGVkIHRvIHRo
ZSBpMmMKPiBmdW5jdGlvbiB3aGVuIHRoZSBkcml2ZXIgYmluZHMuICBXaGVuIHRoZSBpMmMgZHJp
dmVyIGNsYWltcyB0aGUgR1BJT3MKPiBjb3JyZXNwb25kaW5nIHdpdGggdGhvc2UgcGlucywgdGhl
eSBnZXQgc3dpdGNoZWQgdG8gR1BJTyBtb2RlIGJlaGluZAo+IHRoZSBiYWNrIG9mIHBpbmN0cmwu
ICBZb3UgdGhlbiBoYXZlIHRvIF9leHBsaWNpdGx5XyBzd2l0Y2ggcGluY3RybCB0bwo+IEdQSU8g
bW9kZSBhbmQgYmFjayB0byBJMkMgbW9kZSB0byBnZXQgdGhlbSBiYWNrIHRvIEkyQyBtb2RlLgoK
VGhhdCdzIGVzcGVjaWFsbHkgYW5ub3lpbmcuIEkgd291bGQgY29uc2lkZXIgYWRkaW5nIGEgc3Bl
Y2lmaWMKY29uc3VtZXIgZmxhZyBmb3IgR1BJT3MgdXNlZCB0aGlzIHdheSwgaW4gYWRkaXRvbiB0
bwpHUElPRF9BU0lTLCBzb21ldGhpbmcgbGlrZSBHUElPRF9BU0lTX05PTVVYCih0aGlua2luZyBv
ZiBiZXR0ZXIgbmFtZXMpLgoKU2luY2UgdGhlIGNhbGxpbmcgc2l0ZSBrbm93cyBhYm91dCB0aGlz
IHVzZWNhc2Ugd2UgY2FuCm9wZW4gY29kZSB0aGUgc2VtYW50aWNzIGZvciB0aGlzIHNwZWNpZmlj
YWxseS4KCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
