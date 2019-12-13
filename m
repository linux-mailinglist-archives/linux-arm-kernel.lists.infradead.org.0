Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C6011E69C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 16:34:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yfjwZ/Jpf8fsNILrtDLCG31h8b7NsNxIUz4ncDzKeqI=; b=oOmlidaaXF0BM3
	e6irUxzuYDSJ2jktyfRjxqDNkDjS3JH51fObj3zf6DSuCTZB6Wn78+jxnqc/uIP62AiqgIMZUgYS+
	f5umlb8owKM8PTgOtla6IxBq44CrTKBPQEUiLOaJ4eiX+57hDCulaB2v5eK8dYrScBukQfKtcmHys
	vIepxyEIxrP7Z1OTxROyboAEc7GG748XXfGOSIEFC8vLub8PN5ILgO7/VrzUsXzvxGjq370tSXFBA
	IeCn+CEX/PGd8YNai3paazWgZmekk0t8jbRAi/JGvVbrs/WcUJwp9nCSu3+D2BXUJ9gnBFQiFg8H5
	FKljRkV8X7t7eXpHBS7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifmx9-0001ER-19; Fri, 13 Dec 2019 15:34:03 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifmx0-0001Dl-Kl
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 15:33:55 +0000
Received: by mail-wm1-x343.google.com with SMTP id b19so2640367wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 07:33:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SAYkCWa+UKUtmAHpxZPtyf0202Fu23Y0TOqeEazyr/Q=;
 b=VB0Qc7V7S5H1KmeOm9KBILALqgHQYmF0aObNiHutpNEkYKmbpAjtI6JvdXopT8ToXQ
 qm9DbdizY6eiF3/gk9eh3FqiObj0x6V2jvz6Ylw/I73linNPmdpuQtck7H3uv4ntHObE
 zQqLulojG9AR9iQ3V4qz2nPme4DxxHaa4KFNI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SAYkCWa+UKUtmAHpxZPtyf0202Fu23Y0TOqeEazyr/Q=;
 b=kedy8ue+GoHuybxO1gRMd73GVF88dhIGe5Xd3B+9MQf7uPtm8WB8Z1S353V7Gs5Ajq
 9mfGI+cWqIUMbvq8Nd0JX8RHa5Hu15+8EVY0veDIvVNdu5SMEMcHXZMJgZhHfyxdtN93
 YsGoyhRfdNgb6Zl1gSdaG1pJvb0QfwZ+i2c5WAJndvu9SM8Yb7h2ACqTPiHh3+9AtBqN
 V+t6fdPKxkuqg+hlucUlM1qNsbiAyKfGcGAyS4dGMoV0GZ73QM3jmDOe2FTMoUyjCNmR
 aDphorMGuTA1sBzrXKyVZB+YivPXqOGXR3WtVULXKRxsvRPesQymXJtZ7uhxsk0YaN7w
 fNSA==
X-Gm-Message-State: APjAAAUBGoex+bR9pI608icX4iX1OpKTH0RGv0Z15/NjAGGIxzy47Eep
 taZuNbx9MOq/+d24KECfwySDJATptPTNKZQ32EdwKA==
X-Google-Smtp-Source: APXvYqzG07t8L0rdT/jCMyiZ1bizG1mmA/UGnwTTkXBgBiB92Pia9cOilPnt362sCSti1OdNCJDkL78l3OzGZ3Q6Gso=
X-Received: by 2002:a7b:c051:: with SMTP id u17mr13988989wmc.174.1576251232755; 
 Fri, 13 Dec 2019 07:33:52 -0800 (PST)
MIME-Version: 1.0
References: <20191212231213.29061-1-jquinlan@broadcom.com>
 <20191213114138.GB4644@sirena.org.uk>
In-Reply-To: <20191213114138.GB4644@sirena.org.uk>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Fri, 13 Dec 2019 10:33:41 -0500
Message-ID: <CA+-6iNz4WVJzfntJ5CUXBYvqQG4kEj8g8g_HOxZN5rFWTUvv3g@mail.gmail.com>
Subject: Re: [PATCH] spi: bcm2835: don't print error on clk_get() DEFER
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_073354_682443_6CEC2F4A 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <scott.branden@broadcom.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Ray Jui <ray.jui@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 6:41 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Thu, Dec 12, 2019 at 06:12:13PM -0500, Jim Quinlan wrote:
> > Otherwise one may get multiple error messages for normal
> > operation of a clock provider.
>
> >       if (IS_ERR(bs->clk)) {
> >               err = PTR_ERR(bs->clk);
> > -             dev_err(&pdev->dev, "could not get clk: %d\n", err);
> > +             if (err != -EPROBE_DEFER)
> > +                     dev_err(&pdev->dev, "could not get clk: %d\n", err);
>
> On the other hand if the clock isn't there and never appears then there
> won't be anything saying why the driver isn't loading which won't be
> helpful when trying to figure out what's going on.

Understood; I could do a dev_dbg() on -EPROBE_DEFER and dev_err() on
all other errors -- would that work for you?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
