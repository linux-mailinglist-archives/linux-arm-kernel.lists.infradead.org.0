Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71741A1F47
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:33:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ObveGJOuE/BYHDYIBNMc8Qy4gExTHXTekTzHxjtMpZ8=; b=hm4m159Tr1UHgh
	OVaphtI0W/ZykyZa+yMOQY1SfFg2EFqzqG9vx8+h1zrkxJLL02oU8MP6vwyJlxkGIjLGzNXR6n1py
	FEToPEOF7mz6HPVIVEVMZs9qPs6aPLB0+klP2rKfxeOYtY9wrIcaBbOnmtMDMKvJywyQJJ6kPeuHU
	IO/fiEHV9NjpHXXYtgZvlg6htprd+f+0PoCAThvWsfNv+kr2aotAsvxhntlwKb+YUSyh8qUaFdFGY
	dNFL/pvudJZR/vQsTI/vcJoDxgt7kvHkFLbraIIFO6SorhrUoModZW9SmMX8JnWaFIhw4Dc+EcQcM
	gt2QxT/scXPOob1NuaUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3MQ2-0003Hg-Ni; Thu, 29 Aug 2019 15:33:02 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3MId-0000nF-Dz
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 15:25:25 +0000
Received: by mail-qk1-f193.google.com with SMTP id m2so3253395qkd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 08:25:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0mHHzudUkCQcPt1wULA8owTufUJouDmPGZVLzU80PzU=;
 b=Jce16FmgdcFF+0s7tNTWks8iT9m3B2nQg+inHPpTVDNiZfdvJY10iwOTBIv+xyAWqL
 nGfVoYyHzUYtU3bOf1dne3k7d/x2LLuN5LkvPPLnEmRHnU4TZYfHUFB9hXeoX2LaJ1L+
 iKFX84G9d9ThwOR58TvVM9fV7K779mknD8r4XyX9jhHUbFxHC/8au2G7uCrjPlDWcMSE
 PN4g7TML9klGcM+wSTcg0tnZtyMP2DQSUhgSnMqd5fuMNcJtd+mR6CaezK+GMvN40Dum
 jR2TfElUtzu0W5nUrXRfEF08icPtQkMXA31PbaAdcEUkDlL5nC44JDf9vfPgnpCu+NtJ
 kDaQ==
X-Gm-Message-State: APjAAAU9cWxYWmVOE1ykp0/bhkc+a+Sj4e3Aa/9tNORbdA5+GkNNu7eT
 EzXkWh9nX4bZj32KZpO6LkmONYDEZX24FZj81bx9aWoA
X-Google-Smtp-Source: APXvYqxse9IwiB3NzD3hX4SWgAcDhZXn2uWJ0Ujx5Ucz70UYZnwwtgbJfuf5IaBrajYl1n7GZZiZUTBzaq+gWzCJ3g0=
X-Received: by 2002:a37:4b0d:: with SMTP id y13mr9983002qka.3.1567092321745;
 Thu, 29 Aug 2019 08:25:21 -0700 (PDT)
MIME-Version: 1.0
References: <5D562335.7000902@hisilicon.com>
In-Reply-To: <5D562335.7000902@hisilicon.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 29 Aug 2019 17:25:05 +0200
Message-ID: <CAK8P3a1t20bmJxfijrNWnSGoR8BOvUYGxDaoMUTV78Lp_LPi4g@mail.gmail.com>
Subject: Re: [GIT PULL] Hisilicon fixes for v5.3
To: Wei Xu <xuwei5@hisilicon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_082523_603897_5475CBBC 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Tangkunshan <tangkunshan@huawei.com>, linux-pci <linux-pci@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>, "# 3.4.x" <stable@vger.kernel.org>,
 "xuwei \(O\)" <xuwei5@huawei.com>, Sasha Levin <sashal@kernel.org>,
 "arm@kernel.org" <arm@kernel.org>, huangdaode <huangdaode@hisilicon.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>, jinying@hisilicon.com,
 John Garry <john.garry@huawei.com>, SoC Team <soc@kernel.org>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Salil Mehta <salil.mehta@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Olof Johansson <olof@lixom.net>,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 5:30 AM Wei Xu <xuwei5@hisilicon.com> wrote:
>
> Hi ARM-SoC team,
>
> Please consider to pull the following fixes.
> Thanks!
>

Pulled into arm/fixes, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
