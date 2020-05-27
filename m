Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C301E4B67
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 19:06:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0dtv9+kaf5a5mUEeUEuwc7rSTulbt3qq7daS0vAvQMY=; b=bpmuIn4FF0DmDp
	CHX4Q0b/qCsUmxfpamufSytG3UEpPzLdYO6zqqpVjTexvglEAoolvTLdwSKwjKMtjdHHR7VpSr3y0
	KzNHd4/QTiDlOFy1uK5yt1mpxBWVOH6XpIoboMDflJcepMMMgFVqhwK9e9XaJ04Zc59gW03NR9SiF
	uY1iwrGNxKN+Aos/dsZRPpYGdVOPi3MTO+BI9973pA3CoDfLjOzNijDphiKS2vKwVHAxA4verSjnm
	NqCQpgtd3nCJJAhF9WYa4EDj0z6TemreOmTyU9BcKQUgTsxORFw74I9Ab174JE17jrsigEvyRYSdl
	SpQ6BnPhFRmRkkfXEqmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdzVx-0006t2-4Q; Wed, 27 May 2020 17:06:49 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdzVn-0006s0-Au
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 17:06:41 +0000
Received: by mail-qt1-x843.google.com with SMTP id b11so1067519qtt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 10:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2Lhu2ZcEcwwrOR37CL1brFOzPiOBufKSZIC4FQQB508=;
 b=yPtc2Wor4aOKqJgM9mCqbJiYDKwPnGCFGYXNxj12SXW369UtlgQZGLVdXV30NwYzZO
 xOPRn6AmKsb53FSpNBpXSjdR7FkAeWtZQfeFNThPDTZ/zYr+b0vRman0zIjoUfQoW5qZ
 xIHzSEuTDr68Xsyul5g7SSQnsI9O8JPUFz/TkKbNQ6fsO4MZ5Bt+HVOsqzKnZ7XF1L5l
 BexiMBwU9qQeCUB+L9tgJGedJHoQwuRNZso/rQIerZHTtzLdBZUdqde0hGTbv4aQxgO6
 HAUaM1GCCknfDzepc8ifaHScr+mr2SbwKX0HYEQRZMyuMN9DVgeK5trZQbWZQrU5o+A8
 N6JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2Lhu2ZcEcwwrOR37CL1brFOzPiOBufKSZIC4FQQB508=;
 b=IOJvcsPr63sxqSFmd/nl6m18DfqhYfc/yQohQFw/JAeuTz2ZIPYgfgr6vJYPV6XLCV
 Rt0/IHwLQdNnPitem84ODWNjB1rK4lttUR6XrPk6/KTI2yhONdkFUSxvN5t6dymDtxRv
 NbfYhFi0JieIszpQPjcx+NfmEbfK1NqoWLO1bizQNTMuE+iGbGf7NHaw2afK88wz7nir
 0Hy/VF4RJUadzMITEylXm4wsRBWehgsasz604mX5nWqVUbn7l/mhlqfRrfw5/CT9OFSs
 7s2NQper3NbRcTf0yZ5kCVwLyLgBN2hnDfWAN3lVCDEzWlniZPo07KlH4jdiZDZq8GzT
 CfbQ==
X-Gm-Message-State: AOAM532HibcnuMTLf8Qk+YEQWUrc5bU5Lr0byXhBU/iBkSbVm9Vf9cTK
 Ft9fciDRMXGmjv/03L4xi8DJnoNrbZbuH8qFHNYtSQ==
X-Google-Smtp-Source: ABdhPJxROTeFQEz0Kn+FsZBDkx+YaHV9yORoWcoDONnKZ1wtXCH8knWZXCjA6zt9CuIPkUvqUfwQCzIFXddHejoBTyI=
X-Received: by 2002:ac8:718d:: with SMTP id w13mr5369489qto.131.1590599197938; 
 Wed, 27 May 2020 10:06:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200527161743.15972-1-brgl@bgdev.pl>
 <58fca7418c8d18392562aaad2c3a6634@kernel.org>
In-Reply-To: <58fca7418c8d18392562aaad2c3a6634@kernel.org>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 27 May 2020 19:06:26 +0200
Message-ID: <CAMpxmJVPB2+hD8mZ+Bo9=UVEist7BSJrZej5O9_9a_SmWyTanA@mail.gmail.com>
Subject: Re: [PATCH] irqchip/irq-mtk-sysirq: drop unnecessary spinlock
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_100639_434580_11005981 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jason Cooper <jason@lakedaemon.net>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, Bartosz Golaszewski <brgl@bgdev.pl>,
 LKML <linux-kernel@vger.kernel.org>, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

xZtyLiwgMjcgbWFqIDIwMjAgbyAxODozOCBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPiBu
YXBpc2HFgihhKToKPgo+IFNpZ2h0Li4uIERvIHlvdSByZWFsaXplIHRoYXQgdGhlc2UgdHdvIGxv
Y2tzIGRvIG5vdCBwcm90ZWN0IHRoZSBzYW1lCj4gdGhpbmcgYXQgYWxsPyBPbmUgcHJvdGVjdHMg
dGhlIGludGVycnVwdCBkYXRhLCBhbmQgdGhlIG90aGVyIHByb3RlY3RzCj4gdGhlIE1NSU8gcmVn
aXN0ZXIgd2hpY2ggaXMgc2hhcmVkIGJldHdlZW4gbXVsdGlwbGUgaW50ZXJydXB0cywgYW5kCj4g
b24gd2hpY2ggdGhlIGRyaXZlciBwZXJmb3JtcyBhIFJNVy4KPgo+IFRoYW5rcyB0byB0aGUgcmVt
b3ZhbCBvZiB0aGlzIHNwaW5sb2NrLCB0d28gaXJxX3NldF90eXBlKCkgY2FuIGV4ZWN1dGUKPiBp
biBwYXJhbGxlbCBhbmQgc2lsZW50bHkgY29ycnVwdCB0aGUgcmVnaXN0ZXIuIE5vdCBleGFjdGx5
IGFuCj4gaW1wcm92ZW1lbnQuCj4KCkVlayBJIG1pc3NlZCB0aGUgZmFjdCB0aGF0IHRoZSBpbnRl
cm5hbCBsb2NrIGlzIHRpZWQgdG8gdGhlIGNoaXAsIG5vdAp0aGUgaW50ZXJydXB0LiBJbiB0aGF0
IGNhc2UgSSdsbCBjb252ZXJ0IHRoaXMgc3BpbmxvY2sgdG8gYSByYXcgb25lLgoKQmFydAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
