Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDF02C604
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 14:00:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6rVzXpQgw7bxB2jlak/QYauP9O7eHAj1IoFJPmIOQMw=; b=MjxBXWnpBHozqC
	DaBI5zELgaS+v1mA3kL1Sz0KoCPaUnAOX5sDsU9dEB+UhsI6vV11+o7lZoinIEW1bNQaAk/UQGRxP
	7fn12yZAH3G+X5PxV97aVjg8PNW48gz3d7DmzB7KfYZ9c7GGy0M3ydNcuN6ihM9LBspsOn3T4/epn
	QRcH/0TQge73Ge96YlwGtgiIyM6gHftZgDor39gp3+IRJXIkMkQ+JSrupuz9IG0viQtx49EqAPAAf
	OPf9fUOqhwENoKxZMURzEzs4GvD1ZYQnedMGxAludoMqKoIn6c3ADKiCBJui7VEguZNT2WRQAMdaG
	E8CyrL4cuIN7ENdskEHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVam9-0000NT-GO; Tue, 28 May 2019 12:00:17 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVam2-0000NB-Nb
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 12:00:11 +0000
Received: by mail-lf1-x144.google.com with SMTP id f1so14339068lfl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 05:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+or866nusWv4sIZAHRqBmPt7yJXa7/be8EsGR10LEm8=;
 b=ubYDcEKknZAiavskD6nTjssl96/1BLRgbiX9tu0kzWw2OiPn7nkndmmZuiCTCznsYH
 w+uc5DK+lFRYWLgoGWWwxrdkm3iAvILMy6dX+jg/c6KhHxhlS4HytAyk1ENXHkVZi/pB
 FGWJLCG1ZC3gx9FxAxVSglbH/pMT2xTcwpdXtM0SqVM/+GTpnjENHK0GN3RwUXdKXu8k
 gHEVheyNSEBkmNZTjvFrQoo7lCstDIipQ1SbG3//OFhIlOd8CcAruJadz+6wOquoD3o5
 a0mriiXblHdQQD4cgoGgvEzm+GuZAgMMOgwsFWP3suY2xCS8GC1Qmfq5D5eTtIbv3R2g
 vhJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+or866nusWv4sIZAHRqBmPt7yJXa7/be8EsGR10LEm8=;
 b=AMF+iLdm1HnzwtK3Ug9bIb8QFiWgQFtGVsG+a6KmpB56lmAInLQbjpMDpbdho5vZxw
 twS9jbDMUQWa95rw2AEGwygeRP1DWZP+f8Y93fhHL+qc11lvW5I3oZroMXAG9jHYV5NL
 c5mcEJavUs/QQ/h71Z7B8e2AbaU+r6KHSV1ha8vPJOgMB5kOec8ssAA1kGT5vaogg1zg
 jh34gg9B8X12cP44YmYNWvJQ658V2DHEKmpXfRdfuhBOutleE7xCmv67L71MyZVAXlhA
 dsB3GVwJoOq7Z8HpMZFha+PF7YBB4HYEOVr77f2u+VZNk49kdom9h9sdQo/LX/cjidLu
 wvQQ==
X-Gm-Message-State: APjAAAUAJuMUSFIhvXCqRbY7HKdt6OE1OKmTV74pVN6jjO0Sz89iWcLX
 7/heUSHllNZoS27OooZEikhUoTiMQFQy9i2qWQ3Nlg==
X-Google-Smtp-Source: APXvYqzLFHdhp4uQSAnKEAPreNUf3VQwahyZMuckb2vplOQwFm1PI26Uuu+dVvnKOnGGITChcKEIiXtOdNrDAWF9wY8=
X-Received: by 2002:a19:f60f:: with SMTP id x15mr11398039lfe.61.1559044808882; 
 Tue, 28 May 2019 05:00:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190521082137.2889-1-wsa@the-dreams.de>
 <20190521082137.2889-8-wsa@the-dreams.de>
In-Reply-To: <20190521082137.2889-8-wsa@the-dreams.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 May 2019 13:59:57 +0200
Message-ID: <CACRpkdbbmqLn4BZmyZBdVTB48fL-OUsAGkpsicGft3rdDCL4pA@mail.gmail.com>
Subject: Re: [PATCH 7/8] MAINTAINERS: add I2C DT bindings to Versatile platform
To: Wolfram Sang <wsa@the-dreams.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_050010_770793_E5CB7D6B 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-i2c@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 10:21 AM Wolfram Sang <wsa@the-dreams.de> wrote:

> Signed-off-by: Wolfram Sang <wsa@the-dreams.de>
> Cc: Linus Walleij <linus.walleij@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
