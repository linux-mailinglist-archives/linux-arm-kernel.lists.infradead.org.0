Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EF6ED648
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 23:36:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4nJRl7xcq2nXqI4fTPBiU3uXQUPMbAJc8HpmYPNY44=; b=OBzkVa9QExr17d
	c/QAYfXptflhChssLgFy1uOuH84haYW2S0befv/4nWMkcc8GQEl8WkE6M5Qn+dCKo/y3mud64Xo2X
	ccKHYqjIR+Smnuo1s8dwVuCxEzU9+aBCVxdsSe4HAt/ejgHPFvfCVoBDMkDziGCyPmUWm6cNcdCAt
	KlN6d26qe7oaPgyW0467ZU8KnVodWovcZ41HTBMpY3jKtV0UUFmrW/mWMgwcXSpE3nhvoSwj34dM0
	7TKAREiNgVwIKDdMap7EyTtVrt7ZJyfPkt9R6KVn11Tw7eYavsTQdXJAYV4ZoLOie8mA4R49P0YDL
	mkjCC1NWD1N20COFTypg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iROTb-0003uS-Bz; Sun, 03 Nov 2019 22:36:03 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iROTU-0003tZ-6t
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 22:35:57 +0000
Received: by mail-lf1-x143.google.com with SMTP id z12so10797565lfj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 14:35:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EHtdTbqBxd9JTKBkMBRWhQaNOyW/MKSbbKYTSzXac2s=;
 b=RW20B4HiwisBi+QgKxV78+/7ahWabvD2Ujxzw9C0QLTzC4lFBaXW/aDjyAQ4YzYlJm
 f3LfHiRVzK5cZLHWD9MeQlwlfdoZAjS0ICQyJePB3LKjdzNjnECwfLNrAWcp5S+jkwtA
 WPDyoXQ9ItnxCrxoSpzzcO5bYucDWQQTO87rEgzoli2PkRZMdJK111r8tuZVp0oFLzQK
 DftFukh3yFDXJqncuJ8LLANgiTMpNxAgOfEBLnDayf5GlGhIxOjJZGUaRg2AW3zSvU5V
 2xdXlUKsIfdOzrVQ1iVZG87Be66/5/OwWDKbuMP0yL9EO+wmE6Qz/J/7Ur7JDRTiaP9v
 RHqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EHtdTbqBxd9JTKBkMBRWhQaNOyW/MKSbbKYTSzXac2s=;
 b=FPEcT9YBltQmp+XCWtC4LxiOaOmwwWkyjxbh6ivsLa0q9cw70hD9q3ntYr3c66wphm
 S7u5oNCJWyriPMVuetV+XVyo+hKHBVqqxofO1vol8PcMFkxTjCJ+IvqEEheZ4BkoTtyZ
 KtqZbJhQB1YyZHmbypTcy8+Uu3ez0q7lI2F+YDcwnF6T/a8wiGp6cTGIcA3dARkIvHqB
 4BnnJcTIaZQZDS8tpD3P1cWGOvA6vNQOLzzs9tSuw5yHaXDnZpTh1y5CxND7lOIEuyGh
 YXOFvjrE3pZ0jddE96BKGuJBhf5y7jv1ma26bCOtJWvIST+0Ino8s8o2nD2PzjnWCNxU
 7sYg==
X-Gm-Message-State: APjAAAUicE6iO89UikmFdWJDtXNMiQBHmLP6MZ9FcA+xkvj4Ep27Jr6L
 3n/o3Gi0qfHydGVbA3Jm6dx35XrWtEuauUtTXBOYuA==
X-Google-Smtp-Source: APXvYqzgwn2ea3wgkeAplcvs+z5xFC8B7B9ZgEIYnEjFBzdQK4niVCmNaMSjFFIdFzKBhXKld0V8HRZoBmyNEWVxAhg=
X-Received: by 2002:a19:651b:: with SMTP id z27mr14242065lfb.117.1572820553199; 
 Sun, 03 Nov 2019 14:35:53 -0800 (PST)
MIME-Version: 1.0
References: <20191101092031.24896-1-codrin.ciubotariu@microchip.com>
In-Reply-To: <20191101092031.24896-1-codrin.ciubotariu@microchip.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 3 Nov 2019 23:35:41 +0100
Message-ID: <CACRpkdZh-gV8T6cN2R9DrLE32EPGk9g07z_K00W9n+kbiSW7Wg@mail.gmail.com>
Subject: Re: [PATCH v2] pinctrl: at91: Enable slewrate by default on SAM9X60
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_143556_257153_B65F0121 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 1, 2019 at 10:20 AM Codrin Ciubotariu
<codrin.ciubotariu@microchip.com> wrote:

> On SAM9X60, slewrate should be enabled on pins with a switching frequency
> below 50Mhz. Since most of our pins do not exceed this value, we enable
> slewrate by default. Pins with a switching value that exceeds 50Mhz will
> have to explicitly disable slewrate.
>
> This patch changes the ABI. However, the slewrate macros are only used
> by SAM9X60 and, at this moment, there are no device-tree files available
> for this platform.
>
> Suggested-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> ---
>
> Changes in v2:
>  - updated commit message to reflect the ABI change

Patch applied with the ACKs.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
