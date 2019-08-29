Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D844A1BB7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 15:43:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7GBoTq89BeSE2p+sI48QzhoGZJY+hLBc44LvGy8siII=; b=Pnmc43WUfTmBv5
	74uywRWdBrYOuwsemjqJqLapAmNfRX97UJ163YEvZ47BzzwTGl/mMOw1gbTuz1iKJngZVz5tgmrTH
	TRLvqTI9TwnLI0EGK6+W+pEd0L4QbIzKAIH6eZ3mb9F6ywYRX38qfoLb72b7MLKp+kmgJCXqxTPbX
	hPxXkd3MoOrOwVsSCda6VC8psFPL2usZht2GFCZH/HI8g59mdl0+swcdGTNdoNUvt9OcShDyXUp/r
	D0nZ01QHHxlGN+fB6U+d/aodn1mkL8q4qBAoKuvQaE45wBRq1E1MXdXCOPJl5CBZdAA8ScDEYUvkb
	RWgWZiaLix3GZIvHoaBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3KiL-0005Tx-Vq; Thu, 29 Aug 2019 13:43:50 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ki9-0005S8-57
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 13:43:38 +0000
Received: by mail-pg1-x543.google.com with SMTP id x15so1611103pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 06:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8zPNbZDUiMhdq/ieedCuYewAeGQ+edqxjj6irK3rFuk=;
 b=ny1BJU7zHymSjrJnVno3H/+nPslnl3iVcEUY5179US9gDUYOyLuRNAjYuQGBGrRbdz
 l6GaK7U8gzf/eNTky7FvG4KCJeuTL2DuAFVVXeSCC6YCrX2v74Sg+oegZLOPn3OzZlZ2
 D5NyAOxMPjx/prwMNsL6bH1+O4sDRi/P3/K9jCwezfp14ZnPDl6sHvA5RYGYLdeaMvqT
 BUvDIh3lvVkC/yR3hCUhGHj+HQC8QzqX0kEwWpd6BRYnEuxdjBCj+lZfggxx7WT8O6DV
 oXC1MUGfOsEHujAL+drJYZqE+JiGuSPIri1oB2E6fXwWFpnxm0p7end0wbsy89dD4qda
 VLhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8zPNbZDUiMhdq/ieedCuYewAeGQ+edqxjj6irK3rFuk=;
 b=U5ktLzRTfGvDdNf6HfCsRmOrxfy0Cux2WjVn7mVxR/JRTKlCylab/cD6auKIjhHt2E
 ZkOL21eVdps7ZzUV1QZ51jop28MV/u6ArOJ7bkvH5aFyiK1GiMDqfUVcq3d2G48MVmvm
 P5sEritCBvn9NwsusE7Gk6rD1vUJhex+wJVaaMmkNMKaDr+wjMvkrionlbDlZg423YeE
 zGghvJjLsGvyMG8P7twYZa/2HaX8xUiXPqqqww1yIQahlMxGXtALZJkEsCvIHp414uMy
 yjgPxRElFOfUQBsOr7vNSlwSpNH2q+f0orW6q8YLar+AXtz+vjCt1pwCdOyqXGH/9Yo+
 DyBQ==
X-Gm-Message-State: APjAAAUn4oJR6uZOiEVsRrJD/a1egl//67UJ3OGf0dNu5aHNMLRzOLpR
 iWdQhY+li7qo1/m+wng/rzYjiAKbOVWJ9tMAN1c=
X-Google-Smtp-Source: APXvYqxBEzf1LYRCXKjSqfC3G4XRdlGyv3ix/Ro7ebl58PTSdhxOhn+Rmk9ARuIu9ZzwXYUK2aPiBTZDBQEnefAnMoU=
X-Received: by 2002:a63:1020:: with SMTP id f32mr8694066pgl.203.1567086215455; 
 Thu, 29 Aug 2019 06:43:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190829043716.5223-1-uwe@kleine-koenig.org>
In-Reply-To: <20190829043716.5223-1-uwe@kleine-koenig.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 29 Aug 2019 16:43:24 +0300
Message-ID: <CAHp75VeV8jDP1uP3HtkJ+j7+SbkB50cs4V9tJ+j9tS6icO95FQ@mail.gmail.com>
Subject: Re: [PATCH] [RFC] tty/serial: imx: make use of format specifier %dE
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_064337_198136_964361D8 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jani Nikula <jani.nikula@linux.intel.com>, Petr Mladek <pmladek@suse.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Documentation List <linux-doc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Enrico Weigelt <lkml@metux.net>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBBdWcgMjksIDIwMTkgYXQgNzo0MCBBTSBVd2UgS2xlaW5lLUvDtm5pZyA8dXdlQGts
ZWluZS1rb2VuaWcub3JnPiB3cm90ZToKPgo+IEkgY3JlYXRlZCBhIHBhdGNoIHRoYXQgdGVhY2hl
cyBwcmludGsgZXQgYWwgdG8gZW1pdCBhIHN5bWJvbGljIGVycm9yCj4gbmFtZSBmb3IgYW4gZXJy
b3IgdmFsdWVkIGludGVnZXJbMV0uIFdpdGggdGhhdCBhcHBsaWVkCj4KPiAgICAgICAgIGRldl9l
cnIoJnBkZXYtPmRldiwgImZhaWxlZCB0byBnZXQgaXBnIGNsazogJWRFXG4iLCByZXQpOwo+Cj4g
ZW1pdHMKPgo+ICAgICAgICAgLi4uIGZhaWxlZCB0byBnZXQgaXBnIGNsazogRVBST0JFX0RFRkVS
Cj4KPiBpZiByZXQgaXMgLUVQUk9CRV9ERUZFUi4gUGV0ciBNbGFkZWsgKGkuZS4gb25lIG9mIHRo
ZSBwcmludGsKPiBtYWludGFpbmVycykgaGFkIGNvbmNlcm5zIGlmIHRoaXMgd291bGQgYmUgd2Vs
bCByZWNlaXZlZCBhbmQgd29ydGggdGhlCj4gZWZmb3J0LiBIZSBhc2tlZCB0byBwcmVzZW50IGl0
IHRvIGEgZmV3IHN1YnN5c3RlbXMuIFNvIGZvciBub3csIHRoaXMKPiBwYXRjaCBjb252ZXJ0aW5n
IHRoZSBpbXggVUFSVCBkcml2ZXIgc2hvdWxkbid0IGJlIGFwcGxpZWQgeWV0IGJ1dCBpdAo+IHdv
dWxkIGJlIGdyZWF0IHRvIGdldCBzb21lIGZlZWRiYWNrIGFib3V0IGlmIHlvdSB0aGluayB0aGF0
IGJlaW5nIGFibGUKPiB0byBlYXNpbHkgcHJpbnRrIChmb3IgZXhhbXBsZSkgIkVJTyIgaW5zdGVh
ZCBvZiAiLTUiIGlzIGEgZ29vZCBpZGVhLgoKPiBXb3VsZCBpdCBoZWxwIHlvdT8gRG8geW91IHRo
aW5rIGl0IGhlbHBzIHlvdXIgdXNlcnM/CgpObywgaXQgbWFrZXMgc2Vuc2Ugb25seSBmb3IgZGVi
dWcgd2hlcmUgdGhlIHVzZXIgaXMgc3VwcG9zZWQgdG8gYmUKZGV2ZWxvcGVyIGFuZCB0aHVzIG5l
ZWRzIGFueXdheSB0byBrbm93IGNvZGUgYmFzZSBiZXR0ZXIgdGhhbiBhdmVyYWdlLgoKCi0tIApX
aXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
