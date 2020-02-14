Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B39615D543
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 11:12:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9FywyF+9MTzQyP98AXkQNWAENncWztvwcAtFO6SDCSM=; b=nvEB2g+NpvHQxi
	TjhQ99CyybmuX3opj+6HKK25KC4TYu+5fnfgYKUtu1Z3kZoH+VyT/li3fbAGB5YqLlb5Ej6dOArtO
	ad0VCAATY3wnpIdqWiFtNmqXZzboBQcUHQaIP+fLzW+1cE7fDqLVVdPqaLmmeV2DodT/dvODeEXCX
	Upf0uDPFsCXtFMPhbnCRbKYrUUFDJVBL/z7JBPG7a8dGSG3/x1+srJhWzRAB4AsbIJJDlccdWQhOy
	XM6uqvcAQdBEHApT28yWUoDjuGpek7A/S3kADxAio+lIJIn/3j5ppnJ+bW3FKI1N61bTvhUMZmszP
	nLNovO1xf/StkTeSzxWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2XxJ-0006pC-UW; Fri, 14 Feb 2020 10:12:17 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2XxC-0006oo-Ka
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 10:12:11 +0000
Received: by mail-lj1-x244.google.com with SMTP id w1so10091953ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 02:12:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o/5McOUUnXkz5TV4IlWVeI1XmlL+DpFYRw0CINAYScQ=;
 b=fLUgkHzOqlwaE3VlTP4Op2nkxi0KRv0MOenWKTh0mQClY+REpbsfoDkuXEZPyqtNrw
 9QIEsaMfX8sPPEtVzv9av3GmwtKM5VFT/SBkztS/hASYB70MCDqzWi/ILc5/AvkJRpVf
 Ejb0xPHtLEvyUHvK9lbz3QXqmS3N4PMlOnekvvfXGRvIDAtiG6542trqEuj/ym779Oq9
 HP2E789FrC2/F9uCc6EHGBU83G+vzvmUPJs1GjZHcLm5rI9wKs0GM68LxlWCSWkK4Uqt
 vTVDViBC0lNe/od8DRCisjs93ESesDeKq5kV+KCn9n1yAsX/hFmQvvoi2btq3/4ddw/J
 0HbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o/5McOUUnXkz5TV4IlWVeI1XmlL+DpFYRw0CINAYScQ=;
 b=iw+lrV4qQ9kudExHijFyvdrBoDXH6sa/xcf3IrUxrH9lKB2RgfGXLk6L3FYGV21hGS
 DtkGYMbJCpMpr3i7mwlm80fYVz3AGo79edQu/3CTAHRlafQAPx2PnQyhg5Y5vaCRf+km
 edRjq4qvyeZ/RK6JB5X33Ff+DbufaYk25P0RYVTQtwI++4chHZhJgTLVOV3HgwoFOAHo
 3mQ/QjCQqBtXrPq9Xr5nzUNkNcTauR8ceES3wP8gKEHHM0aFFpZLCOtf3Et3EUL/R5PP
 s6WuQA4FM9uJnGKnL/QWeWKo34l4Ae8n23SyKP6F/rpPdsBl89g8VuQPsrTd6ORBTtVF
 7Jgg==
X-Gm-Message-State: APjAAAVnyCmVYGUWhAn7JLY5Iub4oEmfxpz1h+w2cLJF+GPeaSXRfyuA
 TcMg8L6ohv+HNKvS6e6fNeQ0daNVXSKk8tknirOb873DafE=
X-Google-Smtp-Source: APXvYqx5W6d++0Ze23o3nm7N8ujD1PLvR+HH7gGi4r46FL5nZDlL4gXm2GtaZSzkWtQqP2oZDZtjhYbBcC3ys1izZjI=
X-Received: by 2002:a2e:9013:: with SMTP id h19mr1661917ljg.223.1581675128492; 
 Fri, 14 Feb 2020 02:12:08 -0800 (PST)
MIME-Version: 1.0
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
 <20200121103722.1781-11-geert+renesas@glider.be>
In-Reply-To: <20200121103722.1781-11-geert+renesas@glider.be>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Feb 2020 11:11:57 +0100
Message-ID: <CACRpkdaKu_QhR9cEuvVRux38wJS8qYt9LA4EqE-XLreoDfCvCQ@mail.gmail.com>
Subject: Re: [PATCH 11/20] ARM: integrator: Drop unneeded select of SPARSE_IRQ
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_021210_705238_18014FCB 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Olof Johansson <olof@lixom.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 11:37 AM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> Support for ARM Ltd. Integrator systems depends on ARCH_MULTIPLATFORM.
> As the latter selects SPARSE_IRQ, there is no need for ARCH_INTEGRATOR
> to select SPARSE_IRQ.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Linus Walleij <linus.walleij@linaro.org>

Patch applied!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
