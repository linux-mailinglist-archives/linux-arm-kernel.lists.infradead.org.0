Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FF7D39B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 08:53:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mBDytDmYrkWX+HDQCRow25yvbgeflIyX+ruPUa9L2LQ=; b=Q4vt92V0i01PKV
	25TBaIK3R39+f/3ZgDbOiL4wzqQ/wFnkmB6Nv101DQ+gskz2se3Ms5v2z4uDuaQW4oG8QGG/EHM2x
	8PQaDgwQZ6e8XKRXsyfkYzIJggPplFV4fgXM34ucIK1vYRfcdvTixpPoA9z7W4lybYdt3SKw79wue
	JWpgIueKCi5rVWM9vEYAmH8uUKd4sBKheHiTr8gfiTvuZiwwsmby8Zv4C9ac1n3lE48Y81UnQs/Ot
	dQjPVsBwXBzTWV9Gz1lFPZmi5VEPmWz61YAnDG+GC3ZTrxX7c9bWYgoo3y4WDjkueF0Ro8d+ffsyQ
	YngjAIwqhu43nhheZfsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIooA-00037H-8M; Fri, 11 Oct 2019 06:53:50 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIoo0-00036t-T2
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 06:53:42 +0000
Received: by mail-yb1-xb43.google.com with SMTP id y204so2770728yby.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 23:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=JnKueGQUcLxomX1ONLEZ0vUK161ExmGVyqV9RjauPMk=;
 b=D3QBL6aea5owB2yfoACjbaMKm3p4q64hMgKkPADtf3SEraDaGiWZkWJ0U+CW0swyxZ
 rA6AFv1+nR5UxHodgZbJhwrgPFQgTebb15x7F0wMM11CifCBCKVHCi6tdByxJlKhx9ve
 KnbTTCGzuIhxP6tvQQm5ZwBmXgzLehtE1LUSroEPTUwxbh4E68CGrd3t8cuZcohHAAS8
 /dt/VOVXmwiCZ7GzxjFiaj51De5WesLvzYSbuLSA55dfyAmeY0PJJ5px/+khciqQo4w4
 p40xvhrCKDudDvnrsi1/7kLJz70WJd6oiowD1NSvKWzNCMYuObuRlfb4Lhjzzf6i2fyF
 IHDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JnKueGQUcLxomX1ONLEZ0vUK161ExmGVyqV9RjauPMk=;
 b=OzdYtDEWrSz0T4HUuyg7PXZtVYkk7tIhfwQ/RyRyte0o1HmHDVCjg+fAgfWwbc1m6Q
 fSB1K5+aUrZR7P39pNAPbABvVm3m610pnUTdqQlS7F5icVfetKdMgKQW3DVcEVJnmByt
 SQo8df6CuH20MMc1mvNowWbAJHWQgiGbD0tY9JByhI+Qn1aQjI8aOiW4fln3VSCFZdOC
 /jIjniuwKUcMQJGk0M1dC1HRijnjnZpA3yCuQu+4s9SR2r2h4P7bjTDuzq+JE3m5u4J+
 RxNyv90v4yAxHf5oPrH9XEzPHySobF6FSbNzmIPD1NqfnBzFJOEwYidirA8uQQze6CJZ
 KKtA==
X-Gm-Message-State: APjAAAU25gQKBiIchY+FZhES8/cTYflLvaSVXq002vigaya4nTX3rOmK
 D/B4rrc8wEjGAJ/a67iK3rUiT3QiZXd9L1ySV6E=
X-Google-Smtp-Source: APXvYqzUjPoPLsL1G3m5vLe5OCMdaqaPVsJQGhbz8o6lpCZy/pbAjb9LOI48JnxWjoG0KWCdl6w0CRszGY+9Bkg+I4k=
X-Received: by 2002:a25:5386:: with SMTP id h128mr8487389ybb.362.1570776819887; 
 Thu, 10 Oct 2019 23:53:39 -0700 (PDT)
MIME-Version: 1.0
References: <1569483508-18768-1-git-send-email-candlesea@gmail.com>
 <20191011055951.wpngo7wyfssrczof@pengutronix.de>
In-Reply-To: <20191011055951.wpngo7wyfssrczof@pengutronix.de>
From: Candle Sun <candlesea@gmail.com>
Date: Fri, 11 Oct 2019 14:53:28 +0800
Message-ID: <CAPnx3XPDROKLErhMc16-+_7beCvXw9NZ1UL+1yb8SokLjOej4A@mail.gmail.com>
Subject: Re: [RESEND PATCH] ARM/hw_breakpoint: add ARMv8.1/ARMv8.2 debug
 architecutre versions support in enable_monitor_mode()
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_235340_941157_8BEEB530 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (candlesea[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, linux@armlinux.org.uk,
 Candle Sun <candle.sun@unisoc.com>, lkml <linux-kernel@vger.kernel.org>,
 Nianfu Bai <nianfu.bai@unisoc.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhhbmtzIFV3ZSBmb3IgcG9pbnRpbmcgb3V0IG15IHR5cGluZyBlcnJvci4KCldpbGwsCklzIHRo
ZSBwYXRjaCBvaz8gRG8gSSBuZWVkIHRvIHNlbmQgYW5vdGhlciB2ZXJzaW9uPwoKQ2FuZGxlCgoK
Q2FuZGxlCgpPbiBGcmksIE9jdCAxMSwgMjAxOSBhdCAyOjAwIFBNIFV3ZSBLbGVpbmUtS8O2bmln
Cjx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gSGVsbG8sCj4KPiBq
dXN0IG5vdGljZWQgYSB0eXBvIGluIHRoZSBzdWJqZWN0IGxpbmUgd2hpbGUgZ29pbmcgdGhyb3Vn
aCBteSBsYWttbAo+IG1haWxib3g6Cj4KPiAgICAgICAgIHMvYXJjaGl0ZWN1dHJlL2FyY2hpdGVj
dHVyZS8KPgo+IEJlc3QgcmVnYXJkcwo+IFV3ZQo+Cj4gLS0KPiBQZW5ndXRyb25peCBlLksuICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCBVd2UgS2xlaW5lLUvDtm5pZyAgICAgICAgICAgIHwK
PiBJbmR1c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3
LnBlbmd1dHJvbml4LmRlLyAgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
