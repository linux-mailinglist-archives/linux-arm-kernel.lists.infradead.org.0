Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDA384C92
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 15:13:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3LJo+Njhvyj/CffyAUwBdGUWnzif1KtDTP4XY2LFkU4=; b=j3evT/Pml/80u2
	s12IA9jxcYhJzehxqT98yc4R32aiWZhuE7jvsVLRZKe/0mSHwf/F3F9LDCMTgp+3njpRl1gliGzsL
	uZ3Izc/aOhomq1YQak37SA8cx1EiI1ts6fIudamMvlWBpD0oS5ugPTBkj7ZY8hmtVfLkTw1aoDv4n
	mZdqQ11e1FHn9DmLPnsG8sb7hydw/SHoxnHyJVKmRkmek3CvNEICE/wG3fxUfnC9O0qarAAWR6jOF
	L/zlWlY2p6wcfXOpkkf9WvblP+nkN0UYyVJrsQV5kPVhg+N4YLtcx777X28AlWHQyCpiVF22ETrU9
	hOwT+FTSsiTP6ESgOWcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLko-00007K-Bq; Wed, 07 Aug 2019 13:13:22 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLkb-00006e-7n
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 13:13:11 +0000
Received: by mail-lf1-x144.google.com with SMTP id b17so64011258lff.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 06:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QPeSCYBgEa5oHwi1QvDtW28UD0MCoSfvST8mfWPIVyY=;
 b=c4cZ1y0tVhiymf92vKCdpgKV+43I/vq5Hq954nP/OGUR83Al7woXs7oQ+xM2A+9xlt
 zkLV5BhRMU4hBSd8vZW7ixinpfEKEP6SBL4D6TDHbJwfjF9Ca+5KZmlzPImEBg5RsHml
 wbpK1wfmu+hAZX8AxkAGBzpYPT6uFEIpMMKXMSbSnfLdcU4VXCHaET1Uw03eaFmy7PvX
 i0C2gHqF7qfGN7eqx+JZg/IiFbUy/euOvdAd+NE0qtyJCwObVcLbXGD7Pct7PPe8GWyn
 zJVpkNkJ4VowqJzICmPlcSAH1mJVVMBcZlAx49s2JPt3nD/l2hsgjSPpYkpHyv2slKSc
 E84Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QPeSCYBgEa5oHwi1QvDtW28UD0MCoSfvST8mfWPIVyY=;
 b=DCJ5NVVB5Jsc8IsvsA9TPkbrv39LAfNUm9fvlO+OpsmZUCw50MNTNB7DlbdQxJSYZs
 OxCQr55USaYe0AF+zsF1TyZ54/KNvx3OiKGQCaoZ9O5tNz8dJZVeGFX8SsP5hqWurLQi
 6KG2bmAuBiNNSPtUuBGLW8VpcV5G5riezrvJk+nj5/20AS7UsLwMQCjLvZ5XkVkhlnus
 QAizJ/OBgYkch7n5fjzma+LjRuhmS7GkKvxWzdA5I64NVWQ1VZu5K77DUhidfii+cVdW
 m4C6tty/Has/cTd0PQ05qsl6wLaao+helDTkqcpe9mfPTekT1zYreeRPq5uORXmB5PlS
 aoVA==
X-Gm-Message-State: APjAAAVSBh3ZQ9sqJGi7N2PyY7T59CWYraDXfj4yqxMW7lMokRCCSy4y
 8zKXFGSyYYNwbSBMZJoPtR6PiudT7qCdJGouPQ9v7w==
X-Google-Smtp-Source: APXvYqza6NtwlGeUFU7vhHOfryh8rYMl0CQaYDfKwaupdDGLNeQyV54Th56/MC1GP5/Xg+l8Cv9vr56lPJQ1c5I8FGM=
X-Received: by 2002:a19:e006:: with SMTP id x6mr5763750lfg.165.1565183584803; 
 Wed, 07 Aug 2019 06:13:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190728235614.GA23618@embeddedor>
In-Reply-To: <20190728235614.GA23618@embeddedor>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 7 Aug 2019 15:12:53 +0200
Message-ID: <CACRpkdZuC0PS7GB_rx4q7YSbVHan0Jy0L+pmDuJv7ec=b6UoSg@mail.gmail.com>
Subject: Re: [PATCH] mfd: db8500-prcmu: Mark expected switch fall-throughs
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_061310_156204_7D8D2C19 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Lee Jones <lee.jones@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 1:56 AM Gustavo A. R. Silva
<gustavo@embeddedor.com> wrote:

> Mark switch cases where we are expecting to fall through.
>
> This patch fixes the following warnings:
>
> drivers/mfd/db8500-prcmu.c: In function 'dsiclk_rate':
> drivers/mfd/db8500-prcmu.c:1592:7: warning: this statement may fall through [-Wimplicit-fallthrough=]
>    div *= 2;
>    ~~~~^~~~
> drivers/mfd/db8500-prcmu.c:1593:2: note: here
>   case PRCM_DSI_PLLOUT_SEL_PHI_2:
>   ^~~~
> drivers/mfd/db8500-prcmu.c:1594:7: warning: this statement may fall through [-Wimplicit-fallthrough=]
>    div *= 2;
>    ~~~~^~~~
> drivers/mfd/db8500-prcmu.c:1595:2: note: here
>   case PRCM_DSI_PLLOUT_SEL_PHI:
>   ^~~~
>
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
