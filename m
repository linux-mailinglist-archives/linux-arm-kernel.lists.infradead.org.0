Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F7C132374
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 11:22:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7vIeRb5Oo25gJCt2rLKlkcPHb2/fjyGKergdxYTNgRU=; b=GF9wshn5y2vJEG
	XVb7GnA4lk7OW+H1fuB/9VCt8v6sWT2lob3VporPbPQY+h58SetB202ihGe6hbYlap+i2VxXQIdOO
	y50+lw4YEmfBHGA43xlk43lKpaEBoCv2R2O0Kwja207WFPiPMks947N8pCUgmuBcyAWBwyYd+TlS2
	DOZr/DLiJ921W2uLxDireJJbnF53WQlCu1coDCf9aQhZhFVyQgJJT6CGX+MvgGbQoR2eLoX6Fj7Lb
	W80XajMJMdzOfnD6Ff+XhbeYbP/I7e1cU1Su1schKgpC6CWeNIP9Yn4G/4f9HscrTQB84S2BR83ZZ
	hGXjEqAAURMTuV19XTkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iom03-0006Y4-6y; Tue, 07 Jan 2020 10:22:11 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iolzt-0006XL-Nm
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 10:22:03 +0000
Received: by mail-lj1-x243.google.com with SMTP id o13so42705988ljg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 02:22:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=feoOXtnj/48eID5q4+nHQx+NhKQCedVmAZE1CGkwypE=;
 b=VtGCkan5np3byUChW4aFxnm5yaN4zsovrbrrNL2pV3TXPJ8ug9aSzneEr0kuM1Tj0P
 edzvWeTniw0GUWQofo54Pp1v4q8dV8I68CAwW2CuiGggie2uyBCFnBJNFXABB/wFknWN
 aHv6ds9bHX7S8mm+0nC+ZNjKMsuF0rQ+cVM+sSOHXBaIob0AVlMAA6GpBALgkvTJfIbP
 jJ285SLdjWpvbeYjQ4VK8HZgyKPdySbY5rr5DSjF4q8dsImHeDow2p8j7M6s6Hs0VnAe
 tmf4/r7N14nCP0rjiRyD6k3uq9pQJBEracEo9Mz1Q/jiJXL0gQbJtosbb02O2M+Zk3rP
 K2dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=feoOXtnj/48eID5q4+nHQx+NhKQCedVmAZE1CGkwypE=;
 b=tzDtW4kFtDO+yJJ2Tuq5knoDBH3rfm9W+0yBzTgtvboezeymZjNbWuDAhbL938GSA+
 qvkGSIc8D3i63u6ClH9P7D8ZFC2xgVL5TEu3Yep8cxmJaOrd1SPsHfTgjq2bJpFCcmHJ
 rjElgI+mwpBaXQm8tKQfwBs/7CwHOtVyfIGAMci+7le7hThBmqF/qYfEumjoMIPfoeNd
 8vF9zXL22Q2Le3xboPjiWoJpIdbMdfJBnsXShX+ZDOxtvAdm0lUqScfXl+Ji3+zVp40Q
 4pxwFkGYL2A88vZkHuqk32xgbVMGBDmacnWR5wIr6HMJGniC7MJcIVPa7X59DZukk5FS
 Whzw==
X-Gm-Message-State: APjAAAV6sDgp2toBRBn788UFG3mQh20AlYOFTnW9CE2pO0jEZUHI804h
 zZiepR2FfwL9vEEW00dk7eY6NEJRLfT8pJ+Jwjd0mg==
X-Google-Smtp-Source: APXvYqxXuZipIZnMlieWvK5RQa1ocYuWDkqnEH6fOTVKgMsnd3pBbW5G5g/YQfew1w9JZF43RyZBTUs4rRB/hKpVxec=
X-Received: by 2002:a05:651c:1049:: with SMTP id
 x9mr61861878ljm.233.1578392519784; 
 Tue, 07 Jan 2020 02:21:59 -0800 (PST)
MIME-Version: 1.0
References: <20191226023734.9631-1-qianggui.song@amlogic.com>
In-Reply-To: <20191226023734.9631-1-qianggui.song@amlogic.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 7 Jan 2020 11:21:48 +0100
Message-ID: <CACRpkdYCGcUNuDOG2qSjRhZm-3c8eTUE4ib-tVAxsaCzU-RqfQ@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: meson: Fix wrong shift value when get
 drive-strength
To: Qianggui Song <qianggui.song@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_022201_816538_0A2A0169 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Guillaume La Roque <glaroque@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 26, 2019 at 3:37 AM Qianggui Song <qianggui.song@amlogic.com> wrote:

> In meson_pinconf_get_drive_strength, variable bit is calculated by
> meson_calc_reg_and_bit, this value is the offset from the first pin of a
> certain bank to current pin, while Meson SoCs use two bits for each pin
> to depict drive-strength. So a left shift by 1 should be done or node
> pinconf-pins shows wrong message.
>
> Fixes: 6ea3e3bbef37 ("pinctrl: meson: add support of drive-strength-microamp")
>
> Signed-off-by: Qianggui Song <qianggui.song@amlogic.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
