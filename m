Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CC215087B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 15:35:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zy0XSfglLMt823DB9jDKgtYycN3s3VxWBMc8rfwYSgw=; b=B6lj+4EcPoSZOW
	ILKSbk31UoTiQTFcC8yhUekaHIjZMnCaE+Yp3c0rMYVrpfy5QeFz8yM2ATtO89PjnfV48NOKIXksO
	M00NHSjYIxp3iiq1iky5VZXxbwnOCf4ByJTcxbKDaxYHcDqJX05l/F2vRKjOrOYvHn90P2uDSXycq
	ryX/8dNE/cr+IZcsss0bGg7i2gyVZhPUCt+Ehd9QhVD9A2fgrFIcKqagAG90vJmlJbKTy59/B8LTM
	0RQ4JhKCZkW72IMeWhiwHZM2LnxmDDJ5HwogZGxYqOS+UbOHyyQ9A6PJIlmqgjDukhNc3DqJqndat
	C3xGhAaFUAR+NeJ9ZzpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iycoq-0005SM-AX; Mon, 03 Feb 2020 14:35:20 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iycoi-0005Rc-I2
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 14:35:14 +0000
Received: by mail-il1-x142.google.com with SMTP id v13so12777750iln.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 06:35:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=PeAE2050RUwA2PhxvSVJSMNprANdC/69hQV8eL+NY48=;
 b=TUaaPrZnYM1tgevoqkuJWFXrJMpt7+22SMpJkevzbwT+vt6EMOU3Sxf5Ll8wF7cWhx
 7wgPwHJBuaVxTxd2/kVnoxRg3aW8jdNZabM+0Z/6I40M8Hfubj7S1Z5RTdQgDwPFOlFX
 OVICfMVZyyoNxzFIvNvbpQZVApef+W2nMB6qVASrRYzBY8X67KyEq3DacxVLhs9NYN9H
 vqjOWSLE5mRse511pO6UqBzDcy18YqEX0PX3v8nMk5Y+GMUrUyHqK5xTkzftOzmp7jp5
 zRsbdXlVnXf4+DzZwS5E3lmroWXUCCzizzdOG527hxV8gTth11yutKox7zlpOIfLMnZV
 5aRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PeAE2050RUwA2PhxvSVJSMNprANdC/69hQV8eL+NY48=;
 b=H1J/Bt1PlSVRqngE7ng08qEym74zVtawUOyUAbCLW2PC/f6P60ErwVENlGPfBDqR/O
 Hb5AFriYYijMp6GdadzXFJsGQKM6nBS7kdpACVn4+QVurJR8xWeSYT6OQT0eI9FpV/Aa
 Q81d6+lQ1to7iHOXgEVG8yeswxJ1SzHNe3aujXWxMPP8T9dUKBMD4WbRrF/jxUl/osG4
 398qv82s1cQ+ez4itGjjSIISroEbGnsSih5Ti0Mfh3nlJl+BcxMOBo9+Hzzm7UBucq4O
 kcdvxr/BuzpaY4cEVepnnWSH81v1yss4TLIqWc5zsrBPXVBGE3Ko2W5n2/5PBK/YC4aM
 89Qg==
X-Gm-Message-State: APjAAAVFgDud95edA53orJqJ+jJL1/xmwYGlbDSpI02coOsR6qp6CZrY
 JIXWwbBH0xueN7BdppE2/TV/4JSltvIK4C70HgU=
X-Google-Smtp-Source: APXvYqyHSJVh71XbyNxUrseBdDaOrgsCKYEgH80cZsvYCQFfhjuOIwCdgh9E8GWzYcLhFnLBPzjp7kW4MaZ05lXAWdg=
X-Received: by 2002:a92:981b:: with SMTP id l27mr22497981ili.118.1580740511331; 
 Mon, 03 Feb 2020 06:35:11 -0800 (PST)
MIME-Version: 1.0
References: <20200203140425.26579-1-erwan.leray@st.com>
In-Reply-To: <20200203140425.26579-1-erwan.leray@st.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 3 Feb 2020 15:35:00 +0100
Message-ID: <CAJiuCcfRuHXajo7+cDMpQ73vhGuerW3_ObrfG0YOEzogKaH-sA@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] STM32 early console
To: Erwan Le Ray <erwan.leray@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_063512_602748_24A467FD 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Gerald Baeza <gerald.baeza@st.com>, Olof Johansson <olof@lixom.net>,
 Nathan Huckleberry <nhuck15@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRXJ3YW4sCgpPbiBNb24sIDMgRmViIDIwMjAgYXQgMTU6MDQsIEVyd2FuIExlIFJheSA8ZXJ3
YW4ubGVyYXlAc3QuY29tPiB3cm90ZToKPgo+IEFkZCBVQVJUIGluc3RhbmNlIGNvbmZpZ3VyYXRp
b24gdG8gU1RNMzIgRjQgYW5kIEY3IGVhcmx5IGNvbnNvbGUuCj4gQWRkIFNUTTMyIEg3IGFuZCBN
UDEgZWFybHkgY29uc29sZSBzdXBwb3J0Lgo+Cj4gQ2hhbmdlcyBpbiB2MzoKPiAtIGZpeCBhIG1p
c3NpbmcgY29uZGl0aW9uIGZvciBTVE0zMk1QMQo+Cj4gQ2hhbmdlcyBpbiB2MjoKPiAtIHNwbGl0
ICJbUEFUQ0hdIEFSTTogZGVidWc6IHN0bTMyOiBhZGQgVUFSVCBlYXJseSBjb25zb2xlIGNvbmZp
Z3VyYXRpb24iCj4gICBpbnRvIHNlcGFyYXRlIHBhdGNoZXMgYXMgc3VnZ2VzdGVkIGJ5IENsZW1l
bnQgaW50byBbMV0KClRoYW5rcyBmb3Igc3BsaXR0aW5nIHRoZSBwYXRjaCwgdGhlIHdob2xlIHNl
cmllcyBsb29rcyBmaW5lIHRvIG1lLgoKQWNrZWQtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24u
Y2xlbUBnbWFpbC5jb20+CgpDbMOpbWVudAoKCgo+Cj4gWzFdIGh0dHBzOi8vbGttbC5vcmcvbGtt
bC8yMDE5LzQvMTAvMTk5Cj4KPiBFcndhbiBMZSBSYXkgKDQpOgo+ICAgQVJNOiBkZWJ1Zzogc3Rt
MzI6IGFkZCBVQVJUIGVhcmx5IGNvbnNvbGUgY29uZmlndXJhdGlvbiBmb3IgU1RNMzJGNAo+ICAg
QVJNOiBkZWJ1Zzogc3RtMzI6IGFkZCBVQVJUIGVhcmx5IGNvbnNvbGUgY29uZmlndXJhdGlvbiBm
b3IgU1RNMzJGNwo+ICAgQVJNOiBkZWJ1Zzogc3RtMzI6IGFkZCBVQVJUIGVhcmx5IGNvbnNvbGUg
c3VwcG9ydCBmb3IgU1RNMzJINwo+ICAgQVJNOiBkZWJ1Zzogc3RtMzI6IGFkZCBVQVJUIGVhcmx5
IGNvbnNvbGUgc3VwcG9ydCBmb3IgU1RNMzJNUDEKPgo+ICBhcmNoL2FybS9LY29uZmlnLmRlYnVn
ICAgICAgICAgfCA0MiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tCj4gIGFyY2gv
YXJtL2luY2x1ZGUvZGVidWcvc3RtMzIuUyB8ICA5ICsrKystLS0tCj4gIDIgZmlsZXMgY2hhbmdl
ZCwgNDAgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4KPiAtLQo+IDIuMTcuMQo+Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
