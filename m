Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C721258CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 22:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mcgi6es68NYbLxcu/cQJs/lhY4zIZ5Hz3yAz1jrds9k=; b=W1OL4IWP2CW8Gh
	GoiY4z3u9O6vj08hUePo/yP+jmsES+NpB9JbNyeXbpl7z4SpU4t2Pd8QE81A2gXyUu9qORmnUQ30J
	6T5R/oXLu9gPgvTTovlL1EHNQEhF4h2W2ioSKKbvpID4ht3UI7TK1/iN9Z5SwJy/hc7dUVxPzHZI0
	wnEVMShxF9uSaMNGaMw9Jb8BCcA/uJ65gcRnif7IRPG8gJWK33MLAYa2gxOgVffLAkGrEZOVpXpry
	vuUj69pZR/p7zatyRMYWkSa67Md0Dru0YoW5wEEK6AT1tqg0szUOcET1FxImAlW+gWXnurKtL2pY5
	hhYZjWe6QSdqSz7MkczA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTBIo-0000cq-7b; Tue, 21 May 2019 20:24:02 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTBIf-0000aw-KZ
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 20:23:55 +0000
Received: by mail-pf1-x443.google.com with SMTP id u17so27809pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 13:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=jL1S7zFzjAxE4JNqh4L9FDfG4cAz8JcsD74o794kTBQ=;
 b=HTDoWsxi7QDqVixev1f6cqXoZsue3n3xEMiTeFWZaXgqKnKMwHNLfC3f+dJJhqMBRw
 nDQtVaPP/Z0+mQW6Cy9frq6SwMcF66bdeErddgk7YrYR0WJIYRfOZsfwALK2a95aELQF
 DAIWkjIYzMPYDvGxpWXquPJ9JJRDVKkErl4fs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=jL1S7zFzjAxE4JNqh4L9FDfG4cAz8JcsD74o794kTBQ=;
 b=uEhGH0xyK3dDvM9OYzkt3vL+JOptBL4nWCqkt6TwNs+Cn9+OGiC7brxaorS9gjHkM4
 dhJzD/JG7nHH1SVFV/ZAFzA1OIQd5EJBr9nMy84bE2zGuud5eONjtKTcuWCH6xxAmJSN
 SUmFvkc0dF8gK8LYnzP7j2up+2JuYMgVvqbmo9UIKZ8OiLznijTlPJP6lZMxWojLaUkF
 3zk5tHzMl4yodGF5HHet17JWvwRz4fBonBgQK5niFbywvz/+UL1cV5v6OHa5by7p9l+M
 E4/kiarpWiiT3YYfGaE5mkBKdrgFwWOaqCpk41iyKHA2A5AIwBh79tV/IfdGoUGZ8XsF
 QjJw==
X-Gm-Message-State: APjAAAVQRpV++2rf/Xwj8HfNHqY+WR1FdHtFJUaOg+4uOixZrmWlni/Q
 0n12VAd0yMnA7QtzOAn1lgz7UQ==
X-Google-Smtp-Source: APXvYqxOxJPANXcitp87yHMwwlb908gqPaSxiqSVECmGo+Kntyeadkzvfnc3UlOr5MMFdZisu7CwHg==
X-Received: by 2002:a63:1061:: with SMTP id 33mr58636901pgq.328.1558470232784; 
 Tue, 21 May 2019 13:23:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id q75sm32078478pfa.175.2019.05.21.13.23.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 13:23:52 -0700 (PDT)
Date: Tue, 21 May 2019 13:23:51 -0700
From: Kees Cook <keescook@chromium.org>
To: Philippe Mazenauer <philippe.mazenauer@outlook.de>
Subject: Re: [PATCH] arm: add missing include <linux/elf-randomize.h>
Message-ID: <201905211323.7064F60D@keescook>
References: <VI1PR07MB44324E07A6AFE89A920444AFFD070@VI1PR07MB4432.eurprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR07MB44324E07A6AFE89A920444AFFD070@VI1PR07MB4432.eurprd07.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_132353_692571_74108E55 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Russell King <linux@armlinux.org.uk>, open list <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMjEsIDIwMTkgYXQgMDM6NTQ6MzZQTSArMDAwMCwgUGhpbGlwcGUgTWF6ZW5h
dWVyIHdyb3RlOgo+IEluY2x1ZGUgY29ycmVzcG9uZGluZyBoZWFkZXIgZmlsZSA8bGludXgvZWxm
LXJhbmRvbWl6ZS5oPiBmb3IgZnVuY3Rpb24KPiBhcmNoX3JhbmRvbWl6ZV9icmsoKS4KPiAKPiAu
Li9hcmNoL2FybS9rZXJuZWwvcHJvY2Vzcy5jOjMyNToxNTogd2FybmluZzogbm8gcHJldmlvdXMg
cHJvdG90eXBlIGZvciDigJhhcmNoX3JhbmRvbWl6ZV9icmvigJkgWy1XbWlzc2luZy1wcm90b3R5
cGVzXQo+ICB1bnNpZ25lZCBsb25nIGFyY2hfcmFuZG9taXplX2JyayhzdHJ1Y3QgbW1fc3RydWN0
ICptbSkKPiAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBQaGlsaXBwZSBNYXplbmF1ZXIgPHBoaWxpcHBlLm1hemVuYXVlckBvdXRsb29rLmRlPgoK
QWNrZWQtYnk6IEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPgoKPiAtLS0KPiAgYXJj
aC9hcm0va2VybmVsL3Byb2Nlc3MuYyB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0va2VybmVsL3Byb2Nlc3MuYyBiL2FyY2gv
YXJtL2tlcm5lbC9wcm9jZXNzLmMKPiBpbmRleCA3MmNjMDg2MmEzMGUuLjczNzgyMDEyZDQwMyAx
MDA2NDQKPiAtLS0gYS9hcmNoL2FybS9rZXJuZWwvcHJvY2Vzcy5jCj4gKysrIGIvYXJjaC9hcm0v
a2VybmVsL3Byb2Nlc3MuYwo+IEBAIC0yMyw2ICsyMyw3IEBACj4gICNpbmNsdWRlIDxsaW51eC9p
bnRlcnJ1cHQuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2luaXQuaD4KPiAgI2luY2x1ZGUgPGxpbnV4
L2VsZmNvcmUuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2VsZi1yYW5kb21pemUuaD4KPiAgI2luY2x1
ZGUgPGxpbnV4L3BtLmg+Cj4gICNpbmNsdWRlIDxsaW51eC90aWNrLmg+Cj4gICNpbmNsdWRlIDxs
aW51eC91dHNuYW1lLmg+Cj4gLS0gCj4gMi4xNy4xCj4gCgotLSAKS2VlcyBDb29rCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
