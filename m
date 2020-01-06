Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8D4130FA2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 10:38:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=buwjIoUR5s03n+b7WCcGOr4F++K7aZDrZJexr0of6N0=; b=BVMtj9ujBwS9go
	1Q2owhwZ/MEkIumE23PgzAYB7yH1sGAvEAee2ndIpf3Dohu2PhLi1zVrkNZU4SRnTZcEwXUiAkMJX
	6XkVdF2Y5O7mOIzdAh3MbKjD/1IIjsMzU92QhDlx8PvzviNRuQe5mYBbDQzKhLgPWAXfhex8NDkib
	ROgBPmB03fkETkj7J+bP5ctyAT5xxSlu7dck7eAZNCvhZeqAesuQRGyBzhTEDRBbFrp4W8CZEZa5g
	91Q4gSqwZIvRcC8vXy+G1nbgzhw2XSI83eYXPM8K26pslyn1Z7O/q/8pUUN7nVTK8q6szA/XJd7p7
	oyx1vRE2zsZTsrE6jZkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioOqQ-0004Vn-3g; Mon, 06 Jan 2020 09:38:42 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioOq1-0004KR-Lg
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 09:38:18 +0000
Received: by mail-io1-xd42.google.com with SMTP id z8so47942669ioh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 01:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=k2+obkL6rebOtdriVSVT+QmM5oPrNk9dBLg/jYY+wfo=;
 b=D1o966MxyHxQctJ7rWTwJMt3NjGv7Dvvox7er9lgSNNvWFHHGJwcWONCfWtZi6gN+G
 sRs4vR0DB2EcpFyAOnNBrO6Ga7QtFeR72FBTF9427T+497Qzcfm+8pl2pbBszlc9JvVQ
 5lkYYgLVWA+odDpMbgsGqK5RaUIs7BmqtrPT75mjcq5Cps8QL2hw57ZZN4r24h+9vHFL
 a+0FUA2QZ2/EndxTc3PDJardW9IZ7lhDOn+2+dkqYDe/IvqXD733Uy0eoMyHFCObNslD
 T6Kj74zvZbASdqOn7QT7jqwZ2Hbx2etpk6CtUIx5rIfvpbv2lv5teqA/qj36BoqxsUw4
 LIzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=k2+obkL6rebOtdriVSVT+QmM5oPrNk9dBLg/jYY+wfo=;
 b=dC9NWrG6HRcUR4iWkNtas+l1pSH8UTfaZMxNwI+pvaV5BhH4XPCq7Viz1E1csQuqoc
 xcl/RpCRx3sWzK33LiOAuEq4og9m8ShPZdLApVS819vTvbTMU06wBR7dr+Tj3+J/grG3
 8HYceoOQ+4fM5M/d8AwlibiHODV6dYV32MtsIA7ml5IF1xvnNbYMIC4hMbBiiMCuBFK0
 MH/xDXP+WqyK4Sap5Z1jsE77DCCk4wn3onlx9K8ydjrRINJW2FwI8nhs6Uzay8Hmjemz
 Mbo+UqxvqyJejxDmKuETyo4r4UEtBqVIo2FBfZh+bcNuLS7EiHiOTHUIqGipy+w9cSzx
 kmEg==
X-Gm-Message-State: APjAAAVqtlyeykW/I3+X0wd+K9mvCVT5qAqFmdTQSx65BNG5ysYBFUCP
 hLsY64O5GeJ4gbjivkNK/e3qgumTWY+yLIzGtYhKYQ==
X-Google-Smtp-Source: APXvYqzE32XYz3+At4KghXnJsLBu7odv7vp28Pnk5lZat2Vp4MBrZzHnDvUV6gAXMdReOEfzJCGFp0QdxKmkLf29OSM=
X-Received: by 2002:a5d:9dd9:: with SMTP id 25mr58696986ioo.287.1578303496369; 
 Mon, 06 Jan 2020 01:38:16 -0800 (PST)
MIME-Version: 1.0
References: <20200106045833.1725-1-masahiroy@kernel.org>
In-Reply-To: <20200106045833.1725-1-masahiroy@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 6 Jan 2020 10:38:05 +0100
Message-ID: <CAMRc=MeTC8X9wDV7bowEvjPxjUNH8hXSJC79iy9s9W9Yn6Fh8A@mail.gmail.com>
Subject: Re: [PATCH] treewide: remove redundent IS_ERR() before error code
 check
To: Masahiro Yamada <masahiroy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_013817_739007_F5CB79FE 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree <devicetree@vger.kernel.org>, alsa-devel@alsa-project.org,
 Julia Lawall <julia.lawall@lip6.fr>, linux-acpi@vger.kernel.org,
 netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "open list:MEMORY TECHNOLOGY..." <linux-mtd@lists.infradead.org>,
 linux-crypto@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-i2c <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cG9uLiwgNiBzdHkgMjAyMCBvIDA2OjAwIE1hc2FoaXJvIFlhbWFkYSA8bWFzYWhpcm95QGtlcm5l
bC5vcmc+IG5hcGlzYcWCKGEpOgo+Cj4gJ1BUUl9FUlIocCkgPT0gLUUqJyBpcyBhIHN0cm9uZ2Vy
IGNvbmRpdGlvbiB0aGFuIElTX0VSUihwKS4KPiBIZW5jZSwgSVNfRVJSKHApIGlzIHVubmVlZGVk
Lgo+Cj4gVGhlIHNlbWFudGljIHBhdGNoIHRoYXQgZ2VuZXJhdGVzIHRoaXMgY29tbWl0IGlzIGFz
IGZvbGxvd3M6Cj4KPiAvLyA8c21wbD4KPiBAQAo+IGV4cHJlc3Npb24gcHRyOwo+IGNvbnN0YW50
IGVycm9yX2NvZGU7Cj4gQEAKPiAtSVNfRVJSKHB0cikgJiYgKFBUUl9FUlIocHRyKSA9PSAtIGVy
cm9yX2NvZGUpCj4gK1BUUl9FUlIocHRyKSA9PSAtIGVycm9yX2NvZGUKPiAvLyA8L3NtcGw+Cj4K
PiBTaWduZWQtb2ZmLWJ5OiBNYXNhaGlybyBZYW1hZGEgPG1hc2FoaXJveUBrZXJuZWwub3JnPgoK
Rm9yIEdQSU86CgpBY2tlZC1ieTogQmFydG9zeiBHb2xhc3pld3NraSA8YmdvbGFzemV3c2tpQGJh
eWxpYnJlLmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
