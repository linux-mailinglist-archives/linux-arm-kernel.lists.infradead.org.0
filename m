Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D13B8127FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 08:50:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ebg/yTWvJze6UvpY+eRAgpwnTig6daELWiqz7Z7b3/E=; b=YAU5THWJV4/83Y
	giogYWLu3q4VscznkjWD5vcwWjMFpjrj79meeXg0NmhSEKgYXXNqbb1Feu7B7aceO+8AZmf0HdKPd
	eec8Gf+guH9jWvPV1vfFCEAWgzhdCgv8YwuwwRwvfKlFFqDKEXTbn/+BdQQdTlFN3zYlmu34Kanmo
	Wa0xKj54eE3a8izBn+lrCck7E6P6OHRIPCaxGQ4xMmMMUHvWMIzDiJ5tf1LEInuzAM9rIuAcJXpmq
	+UCKJ8IO7KXM1pRSZmf1EvQZB1RXn7pX+/rOE4hCoeEmmPRK/cOXsbYK41QqEfBxaTZvxI3U+xk4F
	cMsO5hgTG5ZCrAp4QC2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMS14-0000R3-Fz; Fri, 03 May 2019 06:49:54 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMS0y-0000Pe-GL
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 06:49:50 +0000
Received: by mail-lj1-x242.google.com with SMTP id c6so4318232lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 23:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CXAK1ulb/vcSgb2pd77d2EZm7UG82ynLQc1JZ6Vcu+0=;
 b=jf69vmuwzCyDeTyzrpNf6Eu0pW34zkJvMy75KCm+8TajY01Zlp0oDtIpQvBxmIsA+4
 4jFnJUSbERgFEavYDawKg4UaNQmbIsm9PzvhQ5rFt/EurU/g1PnaxRvdXlNEyFRL6ZqX
 bfISG1dH3xJ3Kb4mxx7kkfsp+i4zU5cVtLLzSHfYODSlOnhtW2Doqdpu8a9dyDlNWbEs
 Oqtaloi6J6dKJI+sJlUq2qqaFx5lAOLLkztcLcJ8Xdnk4Z8mhg6MJ5S6CgvJzVzfBBXy
 iHsv894tXVMk/1nCzj3Oc/2gWguy9xornWA/xr8yoIapR4k79dgX0J0OajT4d7e1xA8R
 E0mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CXAK1ulb/vcSgb2pd77d2EZm7UG82ynLQc1JZ6Vcu+0=;
 b=jRgNShZl6CnDIT7uh+JOzJbjDBW5X5//aWvqpDcznyEpejewpcdWy/POTKQmUDmMDn
 GQfNF0Yw47cvvXvP+DhBoHMfh1sUVmo5WLspHkzyDXLvSIsJAtg6DckxAY1UgNGf/yJL
 lK0BTZ+QiNwV5MY+TUbejfECpJLOnAIogW3aPczec9+cZ9La+fZkM5T/7vMe7ebUQAmo
 sEHCXEVXObA6oQPuwq3ltUrya76NzSKtsEXtIHku70l/Hoi2SH2gkszAZK6KP1cIrwym
 QSGNxgh7xd/tYdV4N9taCNT8+Z5WDtyTV4tEIDdwWED+VM8CU5gcpFrS3HgTCxX9QzOK
 1WzQ==
X-Gm-Message-State: APjAAAXUzPnXHVZeEUB0TDOiO7VN/J7FM10D58BTZkjc05mKQ1ceoKZb
 gB5PAVreMXpJ9Z3l//mAzzzMWhuBfpLqnpL3JpFBSg==
X-Google-Smtp-Source: APXvYqz08Q0LXJKUPd9rh/k89P1WML5/iS1DxcMbScMPKcbZEELiLJ/4k/1lYnAK2jfH2rxmZAFg3ZsnLAyoJGznflk=
X-Received: by 2002:a2e:3a17:: with SMTP id h23mr4472998lja.105.1556866185213; 
 Thu, 02 May 2019 23:49:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190430092839.767e5bf8@canb.auug.org.au>
In-Reply-To: <20190430092839.767e5bf8@canb.auug.org.au>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 3 May 2019 07:49:33 +0100
Message-ID: <CACRpkdYBuBf7jA2nUitiZWRriXVTPWCyB93q2CzmP4tbVZXqHA@mail.gmail.com>
Subject: Re: linux-next: build warning after merge of the arm-soc tree
To: Stephen Rothwell <sfr@canb.auug.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_234948_569825_5036CB8F 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Olof Johansson <olof@lixom.net>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 ARM <linux-arm-kernel@lists.infradead.org>, Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 12:28 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:

> After merging the arm-soc tree, today's linux-next build
> (x86_64 allmodconfig) produced this warning:
>
> drivers/clocksource/timer-ixp4xx.c:78:20: warning: 'ixp4xx_read_sched_clock' defined but not used [-Wunused-function]
>  static u64 notrace ixp4xx_read_sched_clock(void)
>                     ^~~~~~~~~~~~~~~~~~~~~~~

This is kind of normal for timer drivers, as the sched_clock() call is #ifdef:ed
for CONFIG_ARM, it is not uniformly available on all archs. This appears
as a side effect of COMPILE_TEST which I think is fair to produce
things like this.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
