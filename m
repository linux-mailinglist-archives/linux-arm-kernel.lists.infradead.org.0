Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42278162187
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 08:29:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGmfZPNEocgUliw4UxQ13toaQtZFmJbCT0zvW24yJVo=; b=Obp2PD1c9mJw7m
	gcMVzXbEeDLzIprZg2A27WMDsGRaPwtBl2QTWwfXiuEkJIDoYBgXcmT7E268DIzXVeFiDPbXdvMb4
	6KvT6jfVuyG7jn0R0chKeZLsZzCq/JS56q7DJyX/dysRsbVH0D69pOHyMeYH/SwdXWTg8t2aRc38n
	AIhoo4j6qFP5+fTI/hR5hSmUrfI23KFMvTATHKzC6Jma+Lldxm3bvbj7k/UhKQXp4evfi48EtSkF1
	cjsaRYVO5pchmC+AREzAU2ez50A7CFLji1qDkLElWZ5vnp3udavPlt1ibWvxiv4z1J+2KpcUAviE0
	yZKs0p5/cfl3toUW+TgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3xJa-0002bN-5q; Tue, 18 Feb 2020 07:29:06 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3xJR-0002b5-70
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 07:28:58 +0000
Received: by mail-lj1-x242.google.com with SMTP id x14so21694616ljd.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 23:28:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2ecO73Tz4R3BzjxpGeijJ+hbGI3X2WrncLno2Gd5yhc=;
 b=qvXPwFFrAD/ykGjO85luJE3kU77HQXUWu8f4slCNgNL8zyJDGMdLGg4PAlXA/DQAzl
 WmhWIx3s3e9LKVudJlmMBEb/nh0DlDsExif6opzL9sNHX4eUz0lSTSIibX0pegnra0B1
 YoJL9Sc6y9lO605QB1ckz4BlCOzKMFy9CA+RWRBJNEWJfuehXUSBd5IWdPcwgR0XiFL+
 an95vxEta88S/rXaKQ20GRhq5AIq5k6OTQfnFt/O4mH+ogGeRh5p8ykc/p7qpOKlJtUY
 TdOKvEU/5KjRVInPBKtkRKdCEJaaVmMEDuMDFhrT6v1E+2d/ebzPX1inrloJ73KO2McT
 ojLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2ecO73Tz4R3BzjxpGeijJ+hbGI3X2WrncLno2Gd5yhc=;
 b=SRXWNm/ltzcBtTFHk5i3b07WAC9hLM4fXV+thVi/PJrmB5kXxuDuKAKQbXp7OSbvcC
 H+3Pi7b4qSJUl5Vst2dYYjA1MttJUCYZ1LtpHiTvuxKmlEnOzpav7kyfQJoW9a+mWB9o
 lfT0yVvyi0qY/UPswbc0r1T6oTcnl/zodUPQNgWNBQJ4nFRSErFiKItQt7N74jRunndG
 6yPwociwYlLlmZ7ZSdSQS5lc6GN2QXGGsNf7Aj4QxEFjPAWLmFuXFj54aWI32uV6iXjQ
 OHhRqE7x88gpwN9/lxCF1SpKizP/Gj6voqcyxFeznIs+jdYHJ3OLMtDITjDbrnQr9Mx6
 h2mg==
X-Gm-Message-State: APjAAAUDfPwb8dsyxwyFnVl7P0UH7wnUxrwClBBW2rr2n59+Skuv1pF9
 2+tuvgMz2xOkgOQZvq1be4XOU22f3m5R06TehN0=
X-Google-Smtp-Source: APXvYqzXF4qXUVGsYrNpcGaWpWuysDCxSYh9b0+WaFhTVbWD6IqzhOWe7wbQAi54Arggdc3xJEfAbyjZgbh42rkngzc=
X-Received: by 2002:a2e:9618:: with SMTP id v24mr11955147ljh.181.1582010934474; 
 Mon, 17 Feb 2020 23:28:54 -0800 (PST)
MIME-Version: 1.0
References: <20200125221410.8022-1-pthomas8589@gmail.com>
 <CACRpkdZjFpyp=fySNRfMCnm6-JJ0xY-sGU4deDc6i6iPOuAG+w@mail.gmail.com>
In-Reply-To: <CACRpkdZjFpyp=fySNRfMCnm6-JJ0xY-sGU4deDc6i6iPOuAG+w@mail.gmail.com>
From: Paul Thomas <pthomas8589@gmail.com>
Date: Tue, 18 Feb 2020 02:28:45 -0500
Message-ID: <CAD56B7fNkP9oLD=+G8YSL+KBsdVG0Dk8X-mwr9F=EosUDpSC_g@mail.gmail.com>
Subject: Re: [PATCH] GPIO, Fix bug where the wrong GPIO register is written to
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_232857_282853_31E26976 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pthomas8589[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [pthomas8589[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Fixed up the subject and applied, added a tag for stable.
>
> Thanks!
> Linus Walleij

Thanks everyone, next time I'll do the subject better.

-Paul

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
