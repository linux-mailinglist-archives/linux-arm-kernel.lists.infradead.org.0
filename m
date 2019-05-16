Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1EB20D8F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 18:58:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MMGW3Y5gqKO0Khql7CyiwBXS1wH4u0CEco9+w7zCuhk=; b=tywxhy5t+84BbC
	BHaE9AgweciZJlP8XtQvovS/lOiKLKmghWrtw3eryYpmH6fJ1n67i9vjau2U0SyJebjoN14XFvA7u
	r+5ImgFINaZDI3COuqUk8Vs42GV5UA2R/RJWEkolQjZZY6Me1v22kR6q7FuaQSWusm0/BFBEHTd/q
	IErGd+pvKdtojjyLWGDxioLzF3mDeJKZWgmYXLpzDU65Ji3V1olzA1FonPQRjIZ6B2UtNKkVQQ2tp
	Cj2jXexQOiH8T7qZJ93D9/B2zovTnWKRDUYLLCi+mgFHp0YMZBsS+HD0pRpAR971DBszgvAsM2YHC
	nuetZAhJPhOx6GLTF4HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJiX-0000EY-N4; Thu, 16 May 2019 16:58:53 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJiP-0000Dd-6Y
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 16:58:46 +0000
Received: by mail-vs1-xe44.google.com with SMTP id y6so2809261vsb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 09:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CIeWtimA7P9rrGuoEHFDb0M7OKtOA8ZV+AgbfX3hOsY=;
 b=KTu4I3iLkD6d25Qx/9ZfdJuiwwImY8tkog2XfJWMae7fnJz7hMQfsB3YluYGPWvkva
 W4oEQ+Mw86+nSDZlWZtIs7Vzh74xCnOKR7hFZCSSiAylCoIO5s+qZLGaqJKDS8QblmzJ
 7+AnU7kiJ3qf5MhmefdogpR3nFeT9Mrs0FqkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CIeWtimA7P9rrGuoEHFDb0M7OKtOA8ZV+AgbfX3hOsY=;
 b=tU49b+NlpZU8scrvw7Im3jMiBp4+9/TRwkWSv6AmPzFUBuo7ANJPfszj3j35R4QPSq
 ZXcyfSXDE15+lW90NESUeLJ4tjb7/wVJ8bv/fA5KXfDLaKOIC46DsUntjsrj0+8giyDL
 +SvNOaZDupXuGPzki5E7JseWqUIsPUT+tiArz5eSyDEpnwC1/JDtQTTRrR87vAD7+ta/
 gA4ZZnKhUEiNOyVPVu8MmdacueMFNIaahSmZRWlWDRiA4TNfYIqZGCxRsuYaRGG4AC1z
 WIjTdQoxpEMXlXYoS4ej9ymKCzSJ+1b2JcSMcon19LCQP2Q/Su60rht3Imd+NBzCzCQY
 tU6g==
X-Gm-Message-State: APjAAAWOWWmfbEJTCanA2u0vw9aIdbay7g8+FJupQj3a1AdbuiCe+pJH
 i2bdymzTo2E7xJA9ShIegQVquz0zjOk=
X-Google-Smtp-Source: APXvYqxY69jJQgACusctZ2COAVlsmjQ7+6n8u4dqDRvRNPzfnULSFSwoWxGvXzn7kB7WD7RKjRNmFA==
X-Received: by 2002:a67:b30b:: with SMTP id a11mr18937148vsm.86.1558025923545; 
 Thu, 16 May 2019 09:58:43 -0700 (PDT)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com.
 [209.85.217.41])
 by smtp.gmail.com with ESMTPSA id p185sm661417vkd.40.2019.05.16.09.58.42
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 09:58:42 -0700 (PDT)
Received: by mail-vs1-f41.google.com with SMTP id o10so2750096vsp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 09:58:42 -0700 (PDT)
X-Received: by 2002:a67:dd8e:: with SMTP id i14mr17782417vsk.149.1558025921921; 
 Thu, 16 May 2019 09:58:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190516162942.154823-1-mka@chromium.org>
 <20190516162942.154823-3-mka@chromium.org>
In-Reply-To: <20190516162942.154823-3-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 16 May 2019 09:58:26 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WJrfAPMvK99QycHLuoTqXG8UWWojF+DpGZwB9ijckLig@mail.gmail.com>
Message-ID: <CAD=FV=WJrfAPMvK99QycHLuoTqXG8UWWojF+DpGZwB9ijckLig@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] ARM: dts: raise GPU trip point temperature for
 speedy to 80 degC
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_095845_243796_3D0D3E46 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBUaHUsIE1heSAxNiwgMjAxOSBhdCA5OjI5IEFNIE1hdHRoaWFzIEthZWhsY2tlIDxt
a2FAY2hyb21pdW0ub3JnPiB3cm90ZToKCj4gUmFpc2UgdGhlIHRlbXBlcmF0dXJlIG9mIHRoZSBH
UFUgdGhlcm1hbCB0cmlwIHBvaW50IGZvciBzcGVlZHkKPiB0byA4MMKwQy4gVGhpcyBpcyB0aGUg
dmFsdWUgdXNlZCBieSB0aGUgZG93bnN0cmVhbSBDaHJvbWUgT1MgMy4xNAo+IGtlcm5lbCwgdGhl
ICdvZmZpY2lhbCcga2VybmVsIGZvciBzcGVlZHkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGlh
cyBLYWVobGNrZSA8bWthQGNocm9taXVtLm9yZz4KPiAtLS0KPiBDaGFuZ2VzIGluIHYyOgo+IC0g
YWRkIGVudHJ5IGF0IHBvc2l0aW9uIGluIGFscGhhYmV0aWNhbCBvcmRlcgo+IC0tLQo+ICBhcmNo
L2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLXNwZWVkeS5kdHMgfCA0ICsrKysKPiAgMSBmaWxl
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKUmV2aWV3ZWQtYnk6IERvdWdsYXMgQW5kZXJzb24g
PGRpYW5kZXJzQGNocm9taXVtLm9yZz4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
