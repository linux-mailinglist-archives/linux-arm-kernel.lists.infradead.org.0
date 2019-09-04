Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F041FA83B4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 15:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wegy+TCfoWRSBfq9i4XN4R4EzWmuwrlGQKQNWJq9cGI=; b=cEbI5VRtv0reIr
	HZUJHG8qSSt+ZySHO8m7UHEJAZvkbxeIbWsAvcAFYNLzy2cbfMOh838dLHhSn2kTvNGzbqBxhXyXg
	AQvcevSJkyL8G2GhipZdwfMNrEcWUh6ZaK4XIMSGljOpJWY9GudeiOWZ3rN9pQM2FKnJMn3IYhaiT
	YD2qdfVK2ix4mqNfYoA2ahSUXeccp0mrSIUw3/52L7haeGqwICe6Gaf1Q4d23EXWWSOUhpejDHR1c
	OgEJQU23br7rlU7seBtW/gfubbDS8dGjZtVCeohnXpLytq1BRhiRw+bE1oo9bqxi2gCM1nh7EaCtk
	NBFTK2xTYQm0dAekhlog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5VH7-0006Wq-TA; Wed, 04 Sep 2019 13:24:42 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5VGy-0006WT-3y
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 13:24:33 +0000
Received: by mail-qt1-f196.google.com with SMTP id g4so24316965qtq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 06:24:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lAg8GIJ4I23SXpEKcanten4ohl4QPXP5evOdJ4kjwIg=;
 b=OyuR4O7ibdsl/YqlubbE8r7UW0x5Ekg6O2NEsIaVQNoS59Pl7laoltIdUvlpk2seH1
 tCWddL3NrNzyZkqAmq12HzUFX4J4vGTJT06QyHftKL3FiKk5igof5mZfJDUPfwl3FbLa
 BLIZvqHN6KhLokkyK3AMOK+nNH+LEsfXnZxKmU7MV1xb71ILZ0cKqZHUzGm7e3wIC8Dq
 7Sm8M5HZSvXZoNRFK8zxJg3Uz8CQKCxrVHJjku96LIuA8eM+bPgCru9Qmo1lvNOtSpSt
 J9Teh/9/PgIoId2Lq9JQ1P+Qjp7RcUmdJpsDyQcTIMEr6Mj6wsGvahHJ+Bywh8OzuLvz
 QQrQ==
X-Gm-Message-State: APjAAAXmGUNZd8IUcLnpn//UD/oCy/kBbsAOhxZY+pQN1iysFTTVu0bT
 +310zRPlOLWJ336pNfBVvZ9hDXxArxJ+x9a4HqU=
X-Google-Smtp-Source: APXvYqzUDpAdPIg8CzPgwlVc9y5PKdADRLSBboI9h9N/p7e7Q98JVgxYuksb4BHmqVm1NuS6FgmkdeWWwRPiGPVJjgI=
X-Received: by 2002:a0c:d084:: with SMTP id z4mr16589291qvg.63.1567603470314; 
 Wed, 04 Sep 2019 06:24:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190828151754.21023-1-nsekhar@ti.com>
In-Reply-To: <20190828151754.21023-1-nsekhar@ti.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 15:24:14 +0200
Message-ID: <CAK8P3a0JEdtfP+OcpdBgZHuzz1Z+0Z4WYzLa5_h2--==v4hrdA@mail.gmail.com>
Subject: Re: [GIT PULL 1/4] DaVinci SoC updates for v5.4
To: Sekhar Nori <nsekhar@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_062432_161273_215D3719 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 5:18 PM Sekhar Nori <nsekhar@ti.com> wrote:

> This converts all DaVinci SoCs except DM365 to use new clocksource
> driver. DM365 conversion is still under debug and will be part of a
> future pull request.

Pulled into arm/soc.

Please remember to send pull requests to soc@kernel.org rather than
arm@kernel.org now, so they show up in
https://patchwork.kernel.org/project/linux-soc/list/

Thanks,

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
