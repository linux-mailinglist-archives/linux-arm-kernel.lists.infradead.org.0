Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82647177635
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 13:40:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KHQILDpsQ0171UWu8pASoJaup2ZmeoCPjXaOhOx0MDo=; b=XoJi3MECsPgwOK
	xuWKa4tqMfpeCEJK1KC/MKwgpRG7m6IH0md4P5tKLbOzj7NRQyCH2vUyZJzuhEeckWdcodlkcqBgN
	EHsfC8/K7o0WfK+w3CB1m2893VVs8hxS7TZ1MIJxUYU1DSLa1lGKbFM14pOT6qAt/96IP3H31N7uJ
	gHJOQlFbl9Kmnnk+tGJkfbf5cQarbpAD1ZenY1GPQtwJr0CEEAmg8Vagc6BpQ7H8f9Sn5i2vOOsp1
	5UzVOoeqU190rgOPIa1Pqv4KoTgJ5dx06g7mgVytthBtFp3RSb+d2WmpWVjKIYvzQ0jjG/+Vn/YY9
	+l/KvvkP5Nelcw/um7fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j96qe-0005jw-41; Tue, 03 Mar 2020 12:40:32 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j96qW-0005j2-I1
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 12:40:25 +0000
Received: by mail-lj1-x242.google.com with SMTP id u26so3322919ljd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 04:40:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zN8pyMGel5CV8Q9nKyqGu12Vu+yCXPWrrYbbRn/lVPU=;
 b=HwKCTO1rlByKTsfERL1oZ8pKPr5JopkC3uXIMLMJIlq5BKoyM0rhAXFSdGParUncGI
 gV7KLS2Ud8c3rgLcmIKl/JwbANUHsWH7ieo6Hf8lgu6sYMT4Gtij+ZyzjmfVPH9msRvu
 1zn/Nma3BCSgTDOXXliErlBP4mJgVTqAknqNjZoddALJjuSsgq804W9iLhlz0YdeWtii
 y7FT0h7C76rVSI7Dy4lvwije9Pbu2idIGncUJmoiAtlVd07EvvtevxoMQZjmz9W36fce
 5GUVEc3hD5Ne8dCmXdKLJ8T4cdJjcLyedUo91UsS6oNA3xb3pDYu1DG3MhVV8CW4PlPq
 1Aqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zN8pyMGel5CV8Q9nKyqGu12Vu+yCXPWrrYbbRn/lVPU=;
 b=mkQucG7dHUFvqGyNTO9sbz6yL3w5ATq5anf62b9X51LKRrKdOOvMrctkdHgxlU+JDt
 LKWupzpmEF4Fvp39jX0cumAPpgbH6xLkZFEiUKgxZrePvdyIMPlNeAAbF3dhfFanuPsc
 85X1TzVvBe1JRaamU194FFNusKhj912fE/QgRt68tGz5H5zxtzMQsIN+GTfPa9i6nutF
 alUVkMmLodfcoz0C6O/ZEJ/hLyGf0ZQn2nvcGRJdrYzqLReK1q8eVcJ6ndOFDHrpSCAD
 MgTs/BXxXYqb4I3oQXxBwLoOFWn4+wTF7VjcJ5KycarL5XYUrf1wCgLvxJo+KrCCUBoZ
 ljog==
X-Gm-Message-State: ANhLgQ2CfHaBkAlVV1Mlc+92qoJQ5pCxubIqGzLgVtgHaoUwG8op5tGt
 CQjuhvKMvXuX3nGgJhnVnphRNAzVHsNPDyfswT1z9A==
X-Google-Smtp-Source: ADFU+vvSSKGCj604RxzVxw0FhFpXHGXXjroDOMjzjjm8qVvTi5OQFjHlZtkT1au8AJ7UHhJzsPJpENZWs84jZE3Hfxk=
X-Received: by 2002:a05:651c:39b:: with SMTP id
 e27mr2176389ljp.99.1583239222137; 
 Tue, 03 Mar 2020 04:40:22 -0800 (PST)
MIME-Version: 1.0
References: <1583124056-94785-1-git-send-email-christianshewitt@gmail.com>
In-Reply-To: <1583124056-94785-1-git-send-email-christianshewitt@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 3 Mar 2020 13:40:11 +0100
Message-ID: <CACRpkdZ4+-26Q01nx9iFJLUSCfM0Cuh6U8=gdtP=63xMd+2jqA@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: meson: add tsin pinctrl for meson gxbb/gxl/gxm
To: Christian Hewitt <christianshewitt@gmail.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_044024_625406_02BF2DED 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kevin Hilman <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Igor Vavro <afl2001@gmail.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 2, 2020 at 5:41 AM Christian Hewitt
<christianshewitt@gmail.com> wrote:

> From: Igor Vavro <afl2001@gmail.com>
>
> Add the tsin pinctrl definitions needed for integrated DVB hardware
> support on Meson GXBB/GXL/GXM boards.
>
> Signed-off-by: Igor Vavro <afl2001@gmail.com>
> [updated commit message]
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>

Can I get Martin and/or Neil to review this?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
