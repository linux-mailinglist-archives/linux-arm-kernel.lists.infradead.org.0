Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A3785BA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 09:33:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVHFL9mmcMzF+ztZXGw4Aa6sPrTlrpssDt9FKsmNn08=; b=WnmHN20ayCt2Oi
	guEG1Sh9zlQfuPdPCoU/4J9UIwbmjSw3NoLN/dBgKfYCq7SM8hz33VozoZnYdFoBaI+MOx/XunnT/
	n4lxnq5LAKfJXW/kgjKs99uZp0/giY7I8u1wyByLCFODP8D9ERfAbSvhv8EwTljOSB5SfxpUxhc0z
	JgA7vRwKyJKG8kM35vPIUnaXvvfSHT8ZAB775OVooiP9hKRs6g0cgrLbpnAi4+YTyryUvo0IkyInl
	SXFBlmG0Rph0Ga/kIn3vrkaVYiadZtkcXlGJZWFwIcKGmHruu1XDtSiQyV5BrnmVNqzg6lwiawxtp
	dYOdnV6l9IfbKcIloZGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvcus-00034b-Mj; Thu, 08 Aug 2019 07:32:56 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvcuT-00034C-MG
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 07:32:31 +0000
Received: by mail-wr1-x442.google.com with SMTP id t16so3721953wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 00:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=3YWeeONpn3kFjgXjqVxK5rhO6iGNIdqgi9iiTkhqk4E=;
 b=hdjZsTf2RU0z/QEpg484A2Q/YkuXiyYQ6hG9jchmH3l2BIEbmVV7VnSY4qWhfC0Qw+
 CH9gle7f4Yb/X+Wzp4ptf8K0O6elLfRPsW6jhDx6DFKOt9qEJkZKUbEMng+BDXP6uMxC
 gq8dhtGkfhFnI3NMle5AFR33QIOQ//qfNagulljPJ4dXvODvPeTzmJDoaYcwyOSjxx/K
 Go9Vk4o8iIQ+mV/SoBUcqqHodSl7Gzyqe5mT+58s7wvqWSYuWB9EJ+YXuReHUH8lTg+S
 /r+7H15N1Zn2WdEMbGqiwHEIelD5AkIc1pbAJ59iLX7Sy8VekZCT/RQReK98f0pStNHD
 YUnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=3YWeeONpn3kFjgXjqVxK5rhO6iGNIdqgi9iiTkhqk4E=;
 b=iWZ9DUHPk2UO87NozoY8koqfr5ka2o/IMLnMOw6rDBDzqklfc8QazHgXUdz4P/34kG
 09yxCZh3cUl8kEjWIpj2oeWeHy9J8eal85rDEi+Yok5h0psCiZyvN9NK151RsuOmqWz+
 pZnWOLryxBRPHj990ENRhCjV8HJ7YGs6En3cv36NBYkdcQoP1bj+Aw6tYzkvktNVzAX7
 y4Ar28bAD+B+7lG/TvcdUfVZ1t3wccog7i79YGWp5sk9A4ufgeBUXtanZsGLA1tg28nl
 qpz5jhYuZx9fHUiHOrgAN7Kz+3TZt9FTXTPFliy/4PgbucpeF6Z/QRgaEMHUjJ1kdpLu
 htdQ==
X-Gm-Message-State: APjAAAWO0LLcaRPT5n29V4YuAj3bGEnepFm5q3aERG0jE0TuDqIQOfDb
 eZZQ5i7+Bn82zh3w8Mr/e0+26WciYpE=
X-Google-Smtp-Source: APXvYqyOCEm/r7tnoj7aXoWm6m4nMP79YC/UVxxGxoFrmtJi9d9zHFdWug+OgSU386/6lXAScggVkg==
X-Received: by 2002:adf:d1b4:: with SMTP id w20mr8320212wrc.301.1565249546980; 
 Thu, 08 Aug 2019 00:32:26 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id n9sm143092362wrp.54.2019.08.08.00.32.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 08 Aug 2019 00:32:25 -0700 (PDT)
Date: Thu, 8 Aug 2019 08:32:24 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/3] mfd: ab3100: no need to check return value of
 debugfs_create functions
Message-ID: <20190808073224.GK4739@dell>
References: <20190706164722.18766-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190706164722.18766-1-gregkh@linuxfoundation.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_003229_765562_E8219F01 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCAwNiBKdWwgMjAxOSwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3RlOgoKPiBXaGVuIGNh
bGxpbmcgZGVidWdmcyBmdW5jdGlvbnMsIHRoZXJlIGlzIG5vIG5lZWQgdG8gZXZlciBjaGVjayB0
aGUKPiByZXR1cm4gdmFsdWUuICBUaGUgZnVuY3Rpb24gY2FuIHdvcmsgb3Igbm90LCBidXQgdGhl
IGNvZGUgbG9naWMgc2hvdWxkCj4gbmV2ZXIgZG8gc29tZXRoaW5nIGRpZmZlcmVudCBiYXNlZCBv
biB0aGlzLgo+IAo+IENjOiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+
Cj4gQ2M6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gQ2M6IGxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IFNpZ25lZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFy
dG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL2Fi
MzEwMC1jb3JlLmMgfCA0NSArKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
PiAgZHJpdmVycy9tZmQvYWIzMTAwLW90cC5jICB8IDIxICsrKysrKy0tLS0tLS0tLS0tLQo+ICAy
IGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDUzIGRlbGV0aW9ucygtKQoKQXBwbGll
ZCwgdGhhbmtzLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVj
aG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBT
b0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
