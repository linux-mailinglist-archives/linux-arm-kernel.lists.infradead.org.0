Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFBC43762
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 16:54:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jO85q1cT7tymZ32c4E6SVS35cWnM/Bf6nxYzkdxwzRw=; b=IwsB9kibj3gSmtsX43XsH/dmiM
	f5fDTa8ooxK2QP7hyzkRDqkWjrzdSxuiWst+VR2EDoXaKQJg9DHwYM3ToFzgw6Tb8fLpv2gm35wlw
	3u2bQqt7DmHCF5SEu0o4DnV7ZUPhNjpQpluXMa9SXIfy7IolmX7WjdfRhQ72KINfQ9ByFs/k+OIoJ
	LtAJ8dowL2K7dxU7QdGuegrxw8M+3Y4uzcvsg4H75a3Z8pQG/Qmpfkt+oBoniNG5HXLc4F06pN1KX
	HP9n6zHPp0W3sYNhUDlx4zlS01aO7QE8QB8mhi9L6BZgzzmB6FW46ZWtldEN1Jt6DVf4IvzminUPu
	HR7zOHxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbR7O-0005U9-W9; Thu, 13 Jun 2019 14:54:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbR79-0005RI-RF
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 14:54:09 +0000
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC85F20B7C
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 14:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560437647;
 bh=GYf/+gkGyncHp31uy7FPojBQ7mL+yl6nzbXTfvhlMGc=;
 h=References:In-Reply-To:From:Date:Subject:To:From;
 b=TcJCjqavWAlojNJrYEhlAxJC2cZ5+UcNQ+J8ry2eA6PDcyKHn5GTWrvlFPceYjtSN
 fNESd+v8TcrthsynLoOq6/UUiPKuYYYpkBjUXEUYtQvUnIEhzpGldliabELRtYoQf4
 H75jbCoov7obKq4HVZrmdfy9zEZ/PwTSrtP3JxCc=
Received: by mail-lj1-f181.google.com with SMTP id m23so18804186lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 07:54:06 -0700 (PDT)
X-Gm-Message-State: APjAAAWtWx2fHY1M0VT8i4ufOTpWeYwFSQhgcgokCxFxt6/fAO3E3W5B
 nYI1xmaUCvzl1H4DmL+zTDdnutEq2zAvk/HfwlU=
X-Google-Smtp-Source: APXvYqxHuV7Q03SqzPQJxsXIaEVNMtkbU1nrHhyj83hOaQCq0FDxpomV2Y8SgjCcQw0UPaOf6ZfRnkeRkUssQQzCFAM=
X-Received: by 2002:a2e:124b:: with SMTP id t72mr39255568lje.143.1560437645055; 
 Thu, 13 Jun 2019 07:54:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190604185229.7393-1-krzk@kernel.org>
In-Reply-To: <20190604185229.7393-1-krzk@kernel.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 13 Jun 2019 16:53:53 +0200
X-Gmail-Original-Message-ID: <CAJKOXPd4LVFGgonbsuxii-5Fu5wWhxU9yotLHw+OXsPcxYw_3g@mail.gmail.com>
Message-ID: <CAJKOXPd4LVFGgonbsuxii-5Fu5wWhxU9yotLHw+OXsPcxYw_3g@mail.gmail.com>
Subject: Re: [PATCH v3] ARM: configs: Remove useless UEVENT_HELPER_PATH
To: arm@kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-aspeed@lists.ozlabs.org, linux-omap@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_075407_901925_0B9061D2 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 4 Jun 2019 at 20:52, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Remove the CONFIG_UEVENT_HELPER_PATH because:
> 1. It is disabled since commit 1be01d4a5714 ("driver: base: Disable
>    CONFIG_UEVENT_HELPER by default") as its dependency (UEVENT_HELPER) was
>    made default to 'n',
> 2. It is not recommended (help message: "This should not be used today
>    [...] creates a high system load") and was kept only for ancient
>    userland,
> 3. Certain userland specifically requests it to be disabled (systemd
>    README: "Legacy hotplug slows down the system and confuses udev").
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Acked-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> For vexpress:
> Acked-by: Sudeep Holla <sudeep.holla@arm.com>
>
> ---
>
> Changes since v2:
> 1. Remove unrelated files.
> 2. Add Geert's ack.
>
> Changes sice v3:
> 1. Change also mini2440_defconfig.
> 2. Add more acks.

Hi Arnd and Olof,

Do you want to apply it directly or maybe I can send it along with
other my defconfig pull request?

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
