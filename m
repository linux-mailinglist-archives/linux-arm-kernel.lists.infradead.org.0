Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F37CE27CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 03:41:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RGjhDV/X5tP5O51/AhqAXT6Bj9j49G6uNlC+/r8G4pY=; b=kMI9JbkdiimX2l
	Ln/iWFBxOUDUJ9SNE1Pb612OxRaKviOJgAIpQfFMon3drN0gpMubf+hKreThN1aMwgKdz84W9YLOn
	ZbAgeUM5Wy80+dfZyi4cIHTyUR7hbeitDaQjNsSLgVHBvP4pPo+RQp31WaTQGENjHXssz6TT2fyzs
	hlr+aJR0zZH6md6Vhui7x2ObsB3VZ0gQLc0thew/KtD7fHIB/90PdbnukO5VNCAhRsoQxBXHUFJVC
	c3KYix+tyflR3BSOtX+rAEYxTVxq9BjioP6y4fPpkz+pmr+KyCE5pRMztUOfpyAlTshQsxaomcnw6
	Q5GnQ1jIgD/sJU5+mqOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNS7k-0005E2-Ip; Thu, 24 Oct 2019 01:41:12 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNS7a-0005CY-Qn
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 01:41:04 +0000
Received: by mail-lj1-x243.google.com with SMTP id u22so5133555lji.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 18:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NOCBNMFhsUwuaWySwxiGRZhWupa8CafL3k0FP31MP/Q=;
 b=ZMiwS5zrfJyYariAhNC1SpAi0ujVKhx1509aJ9n6WNfikliQqfcT/zQuWbz5uFjzfV
 S00s1C7j4vZLN962DkZSiW4Erwj4t4/twZVDCBR5aWVWr0OF93eGvWdHkWptpG6epFNH
 mjMB78Q44BNgGJ7LjpNLsvaOB8eyrvM2YMGQk7V0fbumYIJ666fy9Fiik4uVGEv5PvC1
 aBNkLKyZASWlNxoEy4vU+QBvRFsviUf67oygzHknmJ2mhxjswP9dVI/fBG1wmXGaBuPr
 mv9WKRyJyUlR++4tZDqDld0U/XsqGKe96uBSz9oKj0Y0O9yjaHOVYdEq3dKuYzr/fhmD
 J+Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NOCBNMFhsUwuaWySwxiGRZhWupa8CafL3k0FP31MP/Q=;
 b=uWJ3RZLXFCrgq+DuHpUZRQ9k/D0OtnrI6ViMNwJSTLyTjlfsOhciGCK9H3VIU+RjQi
 K+fPnIN9E+P7rvLrVmBgNgc7cpnabRWE1YJJXa5oQQEmaPU/fcGdrE1P97mF6XrXH/RL
 heto11APm8B+ZmsZ4b4IK5COjF/I0hM1CgfMwHdrLvGAjimD6lJOct1ucdLDfK056qWQ
 Q6tMeDJ4g4CjnrWlzJ2VGXpqIG/9sgfXx9d4QkgzD+Pg4nHMQ1dyzFQSAwMJLoFsTgtV
 88uwlu0zliWdSR0zv8eJmoz1eGrLrsU42s1EhPTkrLOT24vlbM7ZhPGpVxffRY5RFxPG
 QFRg==
X-Gm-Message-State: APjAAAUEqKnOzRm4rDUQSspQ4kTRTr2hDqcn/SJQvCIg2znJNdueqmiY
 Qvc+nyaKzTKh5unwvY3oprBEI/mHv+bDx6MgCQMROA==
X-Google-Smtp-Source: APXvYqxGLbN1RIPFksaMgjLVXnRobxv32AuLFuk74an6GGmU02IXj731v3vVwQHrAHz7MkHmxSbqCpHm+AYCQkYMSTA=
X-Received: by 2002:a2e:8e35:: with SMTP id r21mr7711485ljk.36.1571881257797; 
 Wed, 23 Oct 2019 18:40:57 -0700 (PDT)
MIME-Version: 1.0
References: <2e3d8287d05ce2d642c0445fbef6f1960124c557.1571828539.git.baolin.wang@linaro.org>
 <CAK8P3a0i_xvSzeRxfT-5LLpaAfGx3USsuXX1dv1x6Bg87jeopg@mail.gmail.com>
In-Reply-To: <CAK8P3a0i_xvSzeRxfT-5LLpaAfGx3USsuXX1dv1x6Bg87jeopg@mail.gmail.com>
From: Baolin Wang <baolin.wang@linaro.org>
Date: Thu, 24 Oct 2019 09:40:45 +0800
Message-ID: <CAMz4kuLOWq7TT-iho5URZXbN_pGc9uEW8TH+WJ2YGat16a1yiQ@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: Update the Spreadtrum SoC maintainer
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_184103_008602_E50972BE 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lyra Zhang <zhang.lyra@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 baolin.wang7@gmail.com, arm-soc <arm@kernel.org>,
 Olof Johansson <olof@lixom.net>, Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 23 Oct 2019 at 20:17, Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Wed, Oct 23, 2019 at 1:06 PM Baolin Wang <baolin.wang@linaro.org> wrote:
> > +F:     drivers/power/reset/sc27xx-poweroff.c
> > +F:     drivers/leds/leds-sc27xx-bltc.c
> > +F:     drivers/input/misc/sc27xx-vibra.c
> > +F:     drivers/power/supply/sc27xx_fuel_gauge.c
> > +F:     drivers/power/supply/sc2731_charger.c
> > +F:     drivers/rtc/rtc-sc27xx.c
> > +F:     drivers/regulator/sc2731-regulator.c
> > +F:     drivers/nvmem/sc27xx-efuse.c
> > +F:     drivers/iio/adc/sc27xx_adc.c
> >  N:     sprd
>
> Maybe add a regex pattern for "sc27xx" instead of listing each file
> individually?
> That would simplify it when files move around or you add more drivers that
> follow the same naming.

Sure, will do. Thanks.

-- 
Baolin Wang
Best Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
