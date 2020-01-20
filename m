Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C65142608
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 09:44:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=07DwJ6s74AQxiaYKi+QLRz+QsJsznQui9gYssvVGQDE=; b=hUarEYyLJtbKCV
	CT0XwnTVFZn3jLKpEWhi9gZw7gXUf9vPLk1FXB/ApE3xvQL7Bo8z0techs+/AeMvk+3WLZZUqMzNb
	66y6OuT8FRICkZye84zDKd9yceCMvlgb/9JAc7KyolKCsM6c2ZA2oT6k5Swy3ELGirEllAu+tpHjd
	bYaunOPZKdwD55N9grYtdFuqKudL/fPXU3v9BxwY7d1ThqB44/QrT7VIE3AQBHoxPeUnXDOn7zglM
	u4ksCc+gAXyGxqq8c0kEmOsGn5w1ToLRTI36X60legyg1uUowX2yj6Hp8p+IllzSGvzbanTlTc1fc
	kefAXXc36yINXfRI1LPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itSfn-000126-Qs; Mon, 20 Jan 2020 08:44:39 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itSfZ-0000zK-Sr
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 08:44:30 +0000
Received: by mail-wm1-x343.google.com with SMTP id b19so13492077wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Jan 2020 00:44:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=s+lxv8yS+tPPVLLVda+OIOe+B0+kZ5og8HXVAwOgVOE=;
 b=DS89j9PWMbSs7Q0oYxvC9+QxP7mMSQtykSp6CPFm9blhsNBPlaMHsPGvSxHMFwMWYf
 mce//OGWonh+G0xoWFBeMQ6MygHTpF/5MXnrL8h2bDTKR5wY8YOQ0tCm1yfjldA1AzcF
 DdOkqgraTIAY2ENvTPKz6wEVvJaqaVn/g0objOAyDQ4PagQTQ75B5YcW+L3q6VG0qrLv
 QOoQ/s7+hBCUPWP3K8MhMjLpe5THZ8jHhX5GoXsIBpf+VGSNSXshpqmK2meAgKvEwHQL
 d7AxVplHo9ZfzqOwGdNhqWXXLBe8I9I0KxmqKoEYZvXF1IWpMDYPcXH9SUha06mzy86L
 m3/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=s+lxv8yS+tPPVLLVda+OIOe+B0+kZ5og8HXVAwOgVOE=;
 b=sQGk2goCend5F3e8V1gxDdVg9/9SuQVn3VrfiRk82sFLWiQKO9uI6U9oSceQMDc+D/
 DJkXJe15GDVwtpRSvgHjJ7wTyqnqH4VFpFH2iGWNUUIK3EZF0+bl9nfw2vJgntjR9Dp/
 doAoTlazxZB7hkO5ruZhPcD/66uEjYJETKLJ/BLZGuVm+42GYkJevJMTud1g1Zb/9AYP
 H6M6MEz01pmaDpH8BT8obMHDcbsVsqdFDAtLNyTDyELVViLL+kF7qQ6GyfVqb1By4RlG
 CAzKh07/9W1rZO92Vn3g7Bs1b6Rnzyt1q3epmLDd9Bcb262AqQPqS7Dtq8FAjrTZMo9C
 hCIA==
X-Gm-Message-State: APjAAAWSOdq1JQpMWn3sjeYHBHrrPqn1B1SbLVQ+Vhw4yWpl5+Hd9h2y
 mXsxhwq6+80GBpiGz7Z82aqcjg==
X-Google-Smtp-Source: APXvYqyxULuntfgFhWunP/TGRe20THFA3uILY3jQLy0UfU93w71D1ribWIK30iqLIEbqoWtsxy0iAQ==
X-Received: by 2002:a1c:9cce:: with SMTP id
 f197mr18331493wme.133.1579509863421; 
 Mon, 20 Jan 2020 00:44:23 -0800 (PST)
Received: from dell ([2.27.35.227])
 by smtp.gmail.com with ESMTPSA id b137sm3009206wme.26.2020.01.20.00.44.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jan 2020 00:44:22 -0800 (PST)
Date: Mon, 20 Jan 2020 08:44:39 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Wen Su <Wen.Su@mediatek.com>
Subject: Re: [RESEND 2/4] mfd: Add for PMIC MT6359 registers definition
Message-ID: <20200120084439.GX15507@dell>
References: <1579506450-21830-1-git-send-email-Wen.Su@mediatek.com>
 <1579506450-21830-3-git-send-email-Wen.Su@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579506450-21830-3-git-send-email-Wen.Su@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_004425_929001_FF3E9B83 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMCBKYW4gMjAyMCwgV2VuIFN1IHdyb3RlOgoKPiBGcm9tOiBXZW4gU3UgPHdlbi5z
dUBtZWRpYXRlay5jb20+Cj4gCj4gVGhpcyBhZGRzIE1lZGlhVGVrIFBNSUMgTVQ2MzU5IHJlZ2lz
dGVycyBkZWZpbml0aW9uIGZvciB0aGUKPiBmb2xsb3dpbmcgc3ViIG1vZHVsZXM6Cj4gCj4gLSBS
ZWd1bGF0b3IKPiAtIFJUQwo+IC0gSW50ZXJydXB0Cj4gCj4gQWNrZWQtZm9yLU1GRC1ieTogTGVl
IEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCkZZSSwgdGhpcyBpcyBhIHJlYWwgQWNrZWQt
YnkuCgpXaG9ldmVyIHRha2VzIHRoaXMgc2V0IGNhbiB0YWtlIHRoaXMgcGF0Y2guCgo+IFNpZ25l
ZC1vZmYtYnk6IFdlbiBTdSA8d2VuLnN1QG1lZGlhdGVrLmNvbT4KPiAtLS0KPiAgaW5jbHVkZS9s
aW51eC9tZmQvbXQ2MzU5L3JlZ2lzdGVycy5oIHwgNTMxICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA1MzEgaW5zZXJ0aW9ucygrKQo+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC9tZmQvbXQ2MzU5L3JlZ2lzdGVycy5oCgotLSAK
TGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5h
cm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFy
bzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
