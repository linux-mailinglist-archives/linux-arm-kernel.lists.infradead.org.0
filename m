Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F36A476BC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 22:28:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y6K2OsO/e+DGwytAo/a/i88gRWu1s1y5N5KUEIGKvpg=; b=K+9KPjIFCnyMlD
	674JQGq/JNxhNLDSGDD3rc41CVNhfT9bYjW7fBawy+StHDdsprMQSMrZDUr/it70wQ4miRw1eZcty
	ioZvR2IVxtZImSwBkle1uSbjslxUshVru4UUBXlKKbVIl8ftheXSNB1c+15YBxt4xSWTQwi+JCy9e
	Zqox3He1/UlZHE0gW70Ez7t9KWGlCUrrtGPQUSv5mOuXVOaiRcqW3gV3Qn7ETco3R2TDeTlQk2IDy
	PpdQYxsTeA7MfKPa5w8P0ixqea4JmrNDIbOaPRadwWqIBZtTgVzyLEoEP1//Zfrp1fof3MX+WBy+W
	GlYXBOjX9GZgabSK7c5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcblS-0005jG-Pi; Sun, 16 Jun 2019 20:28:34 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcblE-0005ix-37
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 20:28:21 +0000
Received: by mail-io1-xd42.google.com with SMTP id k20so16779510ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Jun 2019 13:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TKcNxxKKhhi5YCQ/Pl419pRxPJBD99sELxjgL+BfnfA=;
 b=myjxzjgoXUIupkBaaweKT1ABsInTa/eP6Ad/lNrbPvrZpC7kie0X/X+z7i5zcn6zaA
 vFQoMPql435QTdJ6T1+i0+yuuC7dT8cSPUSjQao/Cw6GVhd1PfZp6Qq80JJFAhGj4kKz
 MI7BbZ62UxthoRRcqNTRK5jH7sXN1IEBEFoKUKxkaZhQqpZh0O0qSVfsQM+vC7n4g6rJ
 GWSHw+D2SkD41L9UrOYsXuPdy47fwgNQNJ/SSyu3l/NQ4PyFqMWCxUzSY0jA2VH5rXwQ
 JcsQVUxPb1SiwMoP1jjntbXwV0YVqdYlqMPvtsZltM4vEbdO+wMwchom4U46IxRwiWBc
 Gc2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TKcNxxKKhhi5YCQ/Pl419pRxPJBD99sELxjgL+BfnfA=;
 b=FdTRjLkYRHUOd+d9n45N0fdTjNcrVAziYtXySU8PZ/aqzK7Cjp4AaU2dmg+M0jxJyl
 uC/J7fKQFmnkztKDzpBPfSECCuqIYrOzA2nPICSaRH5FQ0h4ErwO4UHbn/Rgl4p6VCCt
 SqhejNvinDo+SdqXBCsINBw/EezlqzO2PAfY7ZroIeE8RGV+XPJ04HrW9jWZLRhY3i9p
 T4bJ/K+PkOunFHkrQAp5DjjOnB3sqFWX9AiEMq5Vy7AaS1JUacz76zt+zpxuQ9k2gux8
 PmThIKZUZcSw/HZG9MF7Ndu9/EV/zHyjKQwfJ5G7YV53cAwj1DVrdegIXT4qYx+vY8Ax
 F1Zw==
X-Gm-Message-State: APjAAAUPRphHw4II005ikfCgoEeLN381CiKJL4RcTXnAFBdmnW+E84/n
 1D5gxytbbO/ODMuZy8mm/K6S6Ni1kuOzv/0riTOLJY1a
X-Google-Smtp-Source: APXvYqx4oKrbeKXzonXiv2aCFoGoAg6IWFHZF3WAkuBSLFqKC1HWrT1XTikb7ENMsriES2AutC/UUlFrA+4IIPsOMRI=
X-Received: by 2002:a5d:8347:: with SMTP id q7mr12879556ior.277.1560716899194; 
 Sun, 16 Jun 2019 13:28:19 -0700 (PDT)
MIME-Version: 1.0
References: <pull-1559115102-965591@atomide.com>
In-Reply-To: <pull-1559115102-965591@atomide.com>
From: Olof Johansson <olof@lixom.net>
Date: Sun, 16 Jun 2019 13:28:08 -0700
Message-ID: <CAOesGMhF9_3Y184zAC3bdyRMemnM4CLBiOp-vcRaXQOrtf0E1A@mail.gmail.com>
Subject: Re: [GIT PULL] mmc voltage and boot issue fixes for omaps for v5.2
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_132820_137776_8664BC94 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-omap <linux-omap@vger.kernel.org>,
 ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 12:32 AM Tony Lindgren <tony@atomide.com> wrote:
>
> From: "Tony Lindgren" <tony@atomide.com>
>
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
>
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.2/fixes-rc2
>
> for you to fetch changes up to 4ee23cd76c0ce8622976b3da0e2bc89e6d94f6d4:
>
>   Merge branch 'omap-for-v5.2/ti-sysc' into fixes (2019-05-20 08:33:03 -0700)
>
> ----------------------------------------------------------------
> Fixes for omap variants for dra7 mmc voltage and boot issues
>
> This series contains dra7 mmc voltage fixes, and fixes to the recent
> changes to probe devices with device tree data insteas of legacy
> platform data:
>
> - Two fixes for dra7 mmc that needs 1.8V mode disabled as in case of a
>   reset, the bootrom will try to access the mmc card at 3.3V potentially
>   damaging the card
>
> - Two regression fixes for am335x d_can. We must allow devices with no
>   control registers for ti-sysc interconnect target module driver for
>   at least d_can, and we remove the incorrect control registers for
>   d_can. And we must configure the osc clock for d_can as otherwise
>   register access may fail depending on the bootloader version
>
> - Four regression fixes for dra7 variant dts files to tag rtc and usb4
>   as disabled for dra71x and dra76x. These SoC variants do not have
>   these devices, and got accidentally enabled when the L4 interconnect
>   got defined in the dra7-l4.dtsi for the dra7 SoC family


Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
