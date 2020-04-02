Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DAA19BB98
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 08:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iH18C7sYYbCPRiOQBErRqfehO2zHB/5DPlWZQd9AhD0=; b=l7XpU9SSZSbUi6
	eLVmfEG9A/VuAyYrHEwwWt2/8cvqZ5XWDPr4uxYXNJpK7J7LjAjMAGR0hRKOw7GecU+0E7Wu7SGQ8
	JRkZyujyYZ/bXFulpqEHz2NEncZ4tsd5me05J0OsGNANnm62MziB1oHpUkp1AJczvQ296ibBPMIQ4
	gjtIYLhNzfszeCVgHpBP90e3jBr1f8o1N7WvmVob6XHKfvIKOmp3lpais+YCL4EiDiI4LaOlPYWzN
	CLL/T0+pwsryAduPgapLSY/+jQhKvD060bumsZzt0lVnEJJAJOzyN+pSwTbECpd8U55PTD7TIW050
	QG2Hp9ixv/V13U63smvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJtBV-0001cT-Vt; Thu, 02 Apr 2020 06:18:37 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJtBN-0001bV-GH
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 06:18:31 +0000
Received: by mail-qt1-x841.google.com with SMTP id t9so2348386qto.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Apr 2020 23:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cV2YJUSGiYhirlg/uube1HpzHXA1hdUUTg03rjPXzhU=;
 b=CufHI3iEU2muaQr5R8dRuq7iCjaUo5TKaF1X0hBzOhMujV6NF4Y7C/zLLsfPoxK2nz
 rWAGR9pttYt4OS2ptAOdfyfQV3Ez/pb26trux6nPXt1LrWdTofhaYzpJVNahtCF+2HF1
 VA3YECrvMceSITpYL/WQ+lZPuGMn9oSe+9N40ljCrS7iTQ6gEsdMAfYl/sbgaWGAZuek
 RYnePZ+lxaucLpMkeklNkd6TYnOByY6jd+uhJpuVCga5vmS54ZkLSNGRqpuzupIgbA5x
 E+GE/IpWM+bJSXVZ4sfgAgeMU/tPGSGVcm6xCmZ7Pipf+DqL16F8GhOUykLSP0Zbbk/G
 WNsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cV2YJUSGiYhirlg/uube1HpzHXA1hdUUTg03rjPXzhU=;
 b=pi+Sjh4HiXgsJrqgGI85nG2ulKTisaptE/tA4uX7JTyFeqoYz0LsXUGN9bOII+sjHP
 9Ne7cLzW+QMQ8j+6dZe899TEvUH/o8+d8eVKV8uVjuTKnIv75eGkuseom7v3mFgxGIPr
 AlEpAPstsRmhLjM+7ZDfWV3sqCfyypvo0HeN/mIezKY8akGggp8ZmUnIMPBmkLhTtASC
 IGE2vCdfp1jXFH/hllmdANUFRh8RzRmiq1dTUwaddJNBdS6l9TZACTqnjQtRHL0Tpw09
 iI0EGQxFsx3HQvKkv8uLrulVDJrbTkPL1r1V2x2QRh13yMtwW4UtrIwo2enAxH9HbOMo
 bI7A==
X-Gm-Message-State: AGi0PuaD/5xNtbDgh2OZbHLsmCol0fa75n0IsbxPt8/EEw8jqGF1F+zM
 F8ql++j7zSSIhuuCBGbGpZWXczsKjacbX9n7PCU=
X-Google-Smtp-Source: APiQypL7sbH9klF+FlPxJEnjasMU4y+phrgXAF1Edoy5vXn5ogJpADPAhfAhA15O4BFZ6/PMgFphqicTiipdEmCS3XE=
X-Received: by 2002:ac8:6f46:: with SMTP id n6mr1362709qtv.119.1585808304169; 
 Wed, 01 Apr 2020 23:18:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200317101947.27250-1-igor.opaniuk@gmail.com>
 <20200330204604.GA11575@bogus>
In-Reply-To: <20200330204604.GA11575@bogus>
From: Igor Opaniuk <igor.opaniuk@gmail.com>
Date: Thu, 2 Apr 2020 09:18:13 +0300
Message-ID: <CAByghJZHvx_k==tcC+CoVk1NF7rnrMOTa3B8VF5SuRCa=d8-zw@mail.gmail.com>
Subject: Re: [RFC PATCH v1 1/5] ARM: dts: imx6: Dual license adding MIT
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_231829_544861_0BF091CA 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [igor.opaniuk[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Stefan Agner <stefan@agner.ch>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKT24gTW9uLCBNYXIgMzAsIDIwMjAgYXQgMTE6NDYgUE0gUm9iIEhlcnJpbmcgPHJv
YmhAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBUdWUsIE1hciAxNywgMjAyMCBhdCAxMjoxOTo0
M1BNICswMjAwLCBJZ29yIE9wYW5pdWsgd3JvdGU6Cj4gPiBGcm9tOiBJZ29yIE9wYW5pdWsgPGln
b3Iub3Bhbml1a0B0b3JhZGV4LmNvbT4KPiA+Cj4gPiBEdWFsIGxpY2Vuc2UgZmlsZXMgYWRkaW5n
IE1JVCBsaWNlbnNlLCB3aGljaCB3aWxsIHBlcm1pdCB0byByZS11c2UKPiA+IGRldmljZSB0cmVl
cyBpbiBvdGhlciBub24tR1BMIE9TUyBwcm9qZWN0cy4KPgo+IEFyZSB5b3UgdGhlIG9ubHkgYXV0
aG9yIG9uIHRoZXNlIGZpbGVzPyBJZiBub3QsIHlvdSBkb24ndCBoYXZlIHJpZ2h0cyB0bwo+IGRv
IHRoaXMuCgpJJ20gbm90IChvYnZpb3VzbHkpLCB0aGlzIGlzIHdoeToKMS4gUGF0Y2ggc2VyaWVz
IGhhcyBSRkMgdGFnLgoyLiBBbGwgc3Rha2Vob2xkZXJzIChpbmNsdWRpbmcgYXV0aG9ycykgYXJl
IGluIENDIGxpc3QKCj4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBJZ29yIE9wYW5pdWsgPGlnb3Iu
b3Bhbml1a0B0b3JhZGV4LmNvbT4KPiA+IC0tLQo+ID4KPiA+ICBhcmNoL2FybS9ib290L2R0cy9p
bXg2ZGwtcGluZnVuYy5oIHwgMiArLQo+ID4gIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZkbC5kdHNp
ICAgICAgfCAyICstCj4gPiAgYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC5kdHNpICAgICB8IDIg
Ky0KPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkK
PiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NmRsLXBpbmZ1bmMuaCBi
L2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZkbC1waW5mdW5jLmgKPiA+IGluZGV4IDlkODhkMDlmOWJm
Ni4uOTYwZDMwMGVhOWJhIDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NmRs
LXBpbmZ1bmMuaAo+ID4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NmRsLXBpbmZ1bmMuaAo+
ID4gQEAgLTEsNCArMSw0IEBACj4gPiAtLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0y
LjAtb25seSAqLwo+ID4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkg
T1IgTUlUICovCj4gPiAgLyoKPiA+ICAgKiBDb3B5cmlnaHQgMjAxMyBGcmVlc2NhbGUgU2VtaWNv
bmR1Y3RvciwgSW5jLgo+ID4gICAqLwo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRz
L2lteDZkbC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NmRsLmR0c2kKPiA+IGluZGV4IDAw
ODMxMmVlMGMzMS4uNzdlOTQ2YjNkMDEyIDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm0vYm9vdC9k
dHMvaW14NmRsLmR0c2kKPiA+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZkbC5kdHNpCj4g
PiBAQCAtMSw0ICsxLDQgQEAKPiA+IC0vLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MAo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wIE9SIE1JVAo+ID4gIC8v
Cj4gPiAgLy8gQ29weXJpZ2h0IDIwMTMgRnJlZXNjYWxlIFNlbWljb25kdWN0b3IsIEluYy4KPiA+
Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC5kdHNpIGIvYXJjaC9h
cm0vYm9vdC9kdHMvaW14NnFkbC5kdHNpCj4gPiBpbmRleCBlNmI0Yjg1MjVmOTguLjc1ZDc0Njk1
MjkzMiAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwuZHRzaQo+ID4g
KysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC5kdHNpCj4gPiBAQCAtMSw0ICsxLDQgQEAK
PiA+IC0vLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCsKPiA+ICsvLyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCsgT1IgTUlUCj4gPiAgLy8KPiA+ICAvLyBDb3B5cmln
aHQgMjAxMSBGcmVlc2NhbGUgU2VtaWNvbmR1Y3RvciwgSW5jLgo+ID4gIC8vIENvcHlyaWdodCAy
MDExIExpbmFybyBMdGQuCj4gPiAtLQo+ID4gMi4xNy4xCj4gPgoKCgotLSAKQmVzdCByZWdhcmRz
IC0gRnJldW5kbGljaGUgR3LDvHNzZSAtIE1laWxsZXVyZXMgc2FsdXRhdGlvbnMKCklnb3IgT3Bh
bml1awoKbWFpbHRvOiBpZ29yLm9wYW5pdWtAZ21haWwuY29tCnNreXBlOiBpZ29yLm9wYW55dWsK
KzM4MCAoOTMpIDgzNiA0MCA2NwpodHRwOi8vdWEubGlua2VkaW4uY29tL2luL2lvcGFuaXVrCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
