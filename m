Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D066ECE1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 02:07:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCMTNmPCvtFE9FuZfGWfBMsrOc8TIbP0d25SP0M7fHY=; b=XEuINjHZ57U7+6
	KwhHplD8q3trRprU1czKe+SvLPqKMtnY4z01gsqfVvsmjbULgUyTcz131KS6hlvDsyCePxt9Y9Fok
	ixcIc+4C32lyR6tmwdy/vjg4S5x2unWQlyC557XBdcGbBGBUNBuOoaPu5tXWqcS4pF397XBNnL6Pj
	t8RznYVEObn2n06HqFs+larSgl9f0Lk76f9M8G/lqfcNGT2tPUi3q64NzGEYR4FxvhNhHJ/XHUSk+
	eAoAiw/dO+aFoLBW2lPxYrIKMFmN2WThT2U+k783Mq0HI154sz6W0qetPuSf60a5ojO7NtUqENdql
	Qnt26ojkdyyyOoA4BhKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hocuH-0008RK-8c; Sat, 20 Jul 2019 00:07:21 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hocu3-0008QV-FH
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 00:07:08 +0000
Received: by mail-io1-xd41.google.com with SMTP id h6so61954459iom.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 17:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HsLcrqMAUu4AoH66JxPCMj3rYWjxDVrsa6sAl26Keow=;
 b=1zBRrhsD6b4kEV5d0rGARv+pFRVIq7kjHd6qwcrFrCbayb36xIA9fxsHqe1zH3iIhT
 hRlMYekXOKtCfN7c6ck3opKS5NycMeay+Hm2dssqX1tt54eu5Ik+R4TrZgdcm0izqt2Z
 LM9V56b+/cUJOxSGr7ll+Tom5poJxME3GGq2Zv8PGNDomEtuNMbTOfmzsmQEgKIYtMk7
 OwnblDGQoMl22Qtf+9Pb86xtpbFiwh73fIqasXNX1EO1YReL5BKkrNAz4Ou0wtKvOw30
 lafDN6ukV1LplTTuaYxY62Ul2W5rGJKRu2rkM0etgEowaaWWhEmMWNHJ/6MeUq/VaOjn
 7Tng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HsLcrqMAUu4AoH66JxPCMj3rYWjxDVrsa6sAl26Keow=;
 b=YlDMxJ82HDcApWl1MAhN6+Gr6ce2Qb5kPHkZl2iySE7MEVyCA6AcO+J/UzxwDoZ3LV
 Gpr94iVxZAfQ2utXV1tt92ua9Tibnqhi7lxHqsh/gijVpI/JMT2JtR4AqoClk9uiOzF/
 qhPUYtucKBg3KTpQUB8TENwLk6QHtIXNR8D00dreR6FjFpnEixIjx05mQWmfnZeSOP4z
 WxjsYFTk79Ibv/nH7WG9AE8okjTLK7ow5RY8rFnvFdaEXlmcb9LbT860uksUHPXbTSMV
 1wPxlYTyAYJIAxTD8Ye/oqHqpLiL19tcBp6dYEaZSfo2Gvj1PxOFQapqsELG7q3TE9Sy
 g1bg==
X-Gm-Message-State: APjAAAXopsbJFsz3eNcUlFBgSyt5qBn6Hubwl1rfhP90TkGd9mcZ4CCk
 m/2OMnsj0F5E/anVKeVezSWpcS4Dbwyv9iP4DiM=
X-Google-Smtp-Source: APXvYqwdO98htBh+kZg9SXpHOHDdDKKpp1f6rO+ypEHc/scl3AdWwHpvw/lNhiCk+YJ0BdP+5c8Jr9HmNOpJZD3ycXQ=
X-Received: by 2002:a5d:9642:: with SMTP id d2mr29714178ios.278.1563581223042; 
 Fri, 19 Jul 2019 17:07:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190719235434.13214-1-olof@lixom.net>
 <20190719235434.13214-3-olof@lixom.net>
In-Reply-To: <20190719235434.13214-3-olof@lixom.net>
From: Olof Johansson <olof@lixom.net>
Date: Fri, 19 Jul 2019 17:06:52 -0700
Message-ID: <CAOesGMjW0fX4QidH2xhQf0nxbhRHWXDFg5KUR6a5AWsucCNyoA@mail.gmail.com>
Subject: Re: [GIT PULL 2/4] ARM: SoC-related driver updates
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_170707_514153_B537E011 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: soc@kernel.org, ARM-SoC Maintainers <arm@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 19, 2019 at 4:54 PM Olof Johansson <olof@lixom.net> wrote:
>
> Various driver updates for platforms and a couple of the small driver
> subsystems we merge through our tree:
>
> - A driver for SCU (system control) on NXP i.MX8QXP
> - Qualcomm Always-on Subsystem messaging driver (AOSS QMP)
> - Qualcomm PM support for MSM8998
> - Support for a newer version of DRAM PHY driver for Broadcom (DPFE)
> - Reset controller support for Bitmain BM1880
> - TI SCI (System Control Interface) support for CPU control on AM654
> processors
> - More TI sysc refactoring and rework

Of course, _after_ I send the pull request, I double-check my due
diligence on new drivers, and notice that "DPAA2_CONSOLE" is "default
y".

We'll get it fixed in one of the post-rc1 fix batches.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
