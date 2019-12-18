Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC01412473B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 13:49:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BrHkMmAtOnSLy+xuzeF+O0OSf+94Q6Zu1fRl8lrOicc=; b=T4Bt2i3pGDHmg7
	UQYdjWoQJc38Rp6qUISL66+CtTDI8zNeFkM3U9WHm+d+au888qKx8bc6qcpPtAa5VXKYAkSM/W/eo
	vkvs70fGY8BYe22/wbuqdoQmRvmlLyTf9Qd49HKN9LONNmdg4Ellrv7SyS3XVW/RTwQcnTwyHnaBD
	5IWuE4V8NXomHBmKlIWcktWueq1ne8nipBZj5FF7Aifpy/mf8yTUgQWKb9r/R65b5FdCuKbyh7F3H
	H0xbpk7QEdMGMT+Z2mrT5ngzFZRagRem77XrfBQeDBkBUGsa5nK3XbzBuwsNpTBaNaC1ZSTIuaDt2
	+PKPi+tieMZXXnwLiFbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihYlC-0002ge-UR; Wed, 18 Dec 2019 12:49:02 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihYl5-0002gM-LA
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 12:48:56 +0000
Received: by mail-lf1-x144.google.com with SMTP id 15so1629459lfr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 04:48:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=puVqjGfUZqc69p5IbHMBZvLnH8lealCUIRVLLSvyh68=;
 b=CegjZJQnDRhZvA19wS9NRPHXrPax+EW+aA5TzuSzoe7qytrGuF4nV6ZBgCWjEAfinb
 KodRF8cIryYDy/YcH8FDDqXlRwgavUGskCHIfW0ROEVvLv922pvgyVl+m0N5Ynw7P0ll
 EbsknU1E8T8x0olITC2gY5Nib0H3R5yURtYeHIfA2JzMGkwyFXB4ywGNtyAdHAiHWUN0
 z9NBzJD+SjKwrh3T6GN0TYxniafqDKSbCJbVjac3ZIP1jw+dmulOtSrw8Rm5QHi/lE6Q
 b60rpMTQPA4YNm+R7HdKB2crWn5DBw19hbq6k7EXfmwDtKVR2hV3pwYZ/zBmZRSZhMUD
 2McA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=puVqjGfUZqc69p5IbHMBZvLnH8lealCUIRVLLSvyh68=;
 b=D2/9bWc6xtSKvFsNGRRNKQTgC6XE9B6m5GqEA1VvxT3zAtSRvAY4RegMkg6JpERABe
 g8pEl90YozPYgCOZzNFqcPCuPanbi+3cux+fMxcfSqXe/i2PNVV7hvHhtq0xqakf50Fc
 4Qe8vuu2cqb4aR8hgaC+ouGt4DERTk7AJOcuLQhaa8M/WPpZM74o+382SyfXbQ9I45FO
 KD2LJRQTnRZZZLy5ebyHPuZfe9LqzMr/eXYt+jKs5zh9OTzgzhdrHjmIFpmt8HoTZTNY
 /yF56TTGoJPrdGN7gMwecn1HlQFxI+baV4HTYw5b1s+gjpmespC3t4puYYkoEmoXdH9b
 RuSQ==
X-Gm-Message-State: APjAAAUvCtrUC0ZrzSnowPMGLs9cNTDXo5RN3rhRfsNiE/GUddsvXLsj
 JX5FDOfR4Lf5LCGElBDWAMp9ZhSi0XkxlhQrMsU=
X-Google-Smtp-Source: APXvYqxxr2ycXk2c/95HhTuw//BhWhwZCbDPO1lc7OiIlgU4kqTzX6dC1NiHbs00RN13nBGSqf36KHHnaQUo36J/HmA=
X-Received: by 2002:ac2:50da:: with SMTP id h26mr1594397lfm.80.1576673333979; 
 Wed, 18 Dec 2019 04:48:53 -0800 (PST)
MIME-Version: 1.0
References: <1576672860-14420-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1576672860-14420-1-git-send-email-peng.fan@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 18 Dec 2019 09:48:49 -0300
Message-ID: <CAOMZO5DeA24EUjr-E=V=tGNaZ7UkOEi+F5-kEBqEB288DSNSoA@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: mvebu: armada-37xx: use use platform api
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_044855_694810_B06BF560 
X-CRM114-Status: UNSURE (   7.80  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "wens@csie.org" <wens@csie.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 9:44 AM Peng Fan <peng.fan@nxp.com> wrote:

> -       nr_irq_parent = of_irq_count(np);
> +       nr_irq_parent = platform_irq_count(pdev);
> +       if (nr_irq_parent < 0) {
> +               if (nr_irq_parent != -EPROBE_DEFER)
> +                       dev_err(dev, "Couldn't determine irq count: %pe\n",
> +                               ERR_PTR(nr_irq_parent));

Why do you return ERR_PTR(nr_irq_parent) instead of simply nr_irq_parent?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
