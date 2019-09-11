Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2B0AFA04
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 12:10:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jld8FDWTLggnOaS1FsA/+Gmgk240o/UXZmI4/1N0LUM=; b=eK/ql4suq0ssVS
	kU7sydBGOZ5+x+a6lNobCLuSxyQrfPHkLD3sqegyzkZBsQ2HFNfWq65+MdOMZwVtrTR4a3LYh0K9l
	dsmdBYWgDY96alJQSMNIAc9sOkrcGYts337rK+sz0cKn+emxuV8g3mr5y33XVQyEFiEf9XyZbwXYA
	lFVni6OwKHrExczjhEtfvwmT1O98gqPD6QTKLjNVXcTOZa3zg6cpnOrF8uBwSEOK2zj7yk9XC09nL
	GUDykQvrPi62LO1XGGAGQkKhs2/M6b+Bo4F5g4pgaL6p9TCDDXBX1gkd51L1R4601/BY9tMPcaGbZ
	N3bOK2TbzCEMbveIox8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7za2-0006c2-Mv; Wed, 11 Sep 2019 10:10:31 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7zZo-0006bI-5w
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 10:10:17 +0000
Received: by mail-lf1-x142.google.com with SMTP id j4so15955543lfh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 03:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fd44UJ2qp7SxlmPH92Hh2fZtRoYOa2yVKq8dtzIHoUY=;
 b=weAyWjo4quJcwmENKcNerNmyN+gz/QJ9hYm8rmn0/rQ4AF+hN9LftSYTgS3KxWM9dR
 tlgY+fTeAXsDs4FJRXwaCuDUUcOv2DWlkbSIIiob2peEB4Hnw81+IpJetrTGCEbx7O2I
 9Yl6U/Lfnxb4U4Jv1lwMercoCINucwno4J2A0Jf/rYQ26oAWmb4i8bR8Zl986fCF3crW
 ZNeQ+TUh0b9lN4q6SdlSC5UDgTPgH3z1QVTZQtYPrJHV4hgeFpDRZQD1+vDtcmyzoI6N
 2fCBXQEVf8qcPbNDTCxRpJQyxaAo2YjTtrJxGC033lysc/91IdDBTbwvU/a3KTj20yWw
 dR6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fd44UJ2qp7SxlmPH92Hh2fZtRoYOa2yVKq8dtzIHoUY=;
 b=EIe/xygCzgXAROY7jYyIBR66n5K9vCVI6XPg6OJRO0eDC5JFyzJbZvF7QrVbk6mYhG
 ZoB+J+vRSfTKEt2N8DttGuUCQFlC6z2tnfYipr079hCX8RP7GDyUs1plhq0vRcIRFxVd
 rmw5g2fpBM/shlzsFOIbIOshFo1oBT7h+tB4iDoNyb6l+yhoEGfXJP1BnMWTeIJfIAwT
 yaUPD3tNwqpKm/ZhgjwOkt6dAmIFKkqVXYLQgSJO4F1qxLVcbsiw7UMA+TwWdw8Nt59c
 k2KohrB0vy3iqG5LLBvmKfNwW19nR8McV43MfwfNKWWjeYK/FjwdAgr22fL622lU87yf
 V03g==
X-Gm-Message-State: APjAAAVuTf9yg2e6Cncjl/krAV4ZpItTQNHKrtu/X8EidYabnA3K5ker
 3M1PtOzVXaGA003oWal4VuLYY0O3SbYxtExlWnJI7Q==
X-Google-Smtp-Source: APXvYqxXrKv8m/NgHM1ig0qAYSi29B4YPdGe3bL55eGb9Rww2zvzQ3IpVfOta67Ay2PtbrLdxjwEiKNEmAnXzj6hqYE=
X-Received: by 2002:a19:48c3:: with SMTP id
 v186mr23663867lfa.141.1568196614289; 
 Wed, 11 Sep 2019 03:10:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190906062644.13445-1-rashmica.g@gmail.com>
In-Reply-To: <20190906062644.13445-1-rashmica.g@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Sep 2019 11:10:02 +0100
Message-ID: <CACRpkda7WAZxUSjOXRj5Q1mSC0ZhYey2E9RkuX7p6Wcs_kXB=w@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] gpio/aspeed: Setup irqchip dynamically
To: Rashmica Gupta <rashmica.g@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_031016_226381_C1089F43 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-aspeed@lists.ozlabs.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, open list <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 7:26 AM Rashmica Gupta <rashmica.g@gmail.com> wrote:

> This is in preparation for adding ast2600 support. The ast2600 SoC
> requires two instances of the GPIO driver as it has two GPIO
> controllers. Each instance needs it's own irqchip.
>
> Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>

Patch applied with Joel's ACK, needed some fuzzing but
fixed it up.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
