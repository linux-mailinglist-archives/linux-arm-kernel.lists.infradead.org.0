Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E971714CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 11:12:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yAk92Jz2L9dsXq0TPYiDADdr0ZWA8vfMMg7bvXLhJY8=; b=lh8V/sYyKXhd68
	xn5X/MemkbNdGuMF28ISjLzMQNLRD1dHs4l6Dh+MlVBPm+QK4DJwjilFwr7v+R8UmsKX56dzrqaMM
	aFoljQBUIaMdsCXz0jIHPidjv0CmFdGRzul/YmxIOj0OPNZwBEGnnq9LtnEi0GYEhTkEdZsfR0b28
	Md3qZog9BdSNAnGzLfrimD03zkujaRd3WnyCB0GBtfxbnft23Y7GIWjoRBG0UtUvVIprxn+lC5pkc
	Ob0CoB9ARWKMbcU898TSeSvWtZ5qymh+ykIm/mNnf4UlDCGOUBP4azvnFAknPfSJK8kUCFT7gXY4t
	DBSR4BL+30KMpRwUru6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7G9P-00088M-QA; Thu, 27 Feb 2020 10:12:15 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7G9G-00087r-7t
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 10:12:07 +0000
Received: by mail-lf1-x142.google.com with SMTP id n25so1664093lfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 02:12:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=23xg3xXgAfGKhWk8U0pLr4SmL7oKXrfhT/YKVSMTCAs=;
 b=cNwEapeFUzaWpVHyTde34ajOhYtNgyscBOY0MMR7uoUnIttkKKjV8jTh8GqQdMDbgO
 nZKn2PP4N8AC3WjQfvbK1KY9vCpIMf5CZUleHiQlmNd8Ct4X8IG7jWgIgEHNOOYvGuYW
 0GZKZC4qtpFuySBKmVhGJaG9721lK1J703CXFcNYEZ2yzoHjtGcElxDmb2sC6L0Qf9DA
 rECkOSktr43ZGYKuTdzUu1USz98cH/EKBlMSak66p6bfjiQR14QFpSkFYb6fRBOsHhkS
 wzXA4o0ZGYyDT6Hb6ntwd5dFnLC661+BoV9e4xEPUCsWj9TYeP2G2ie/OQsLcSa8rU0Q
 1bIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=23xg3xXgAfGKhWk8U0pLr4SmL7oKXrfhT/YKVSMTCAs=;
 b=P++8sx2t2LFL6/9+cNGWU+z/4GtRnuN4ne3uy4YxPvlAPWp5JAAOCniUTANmn5b7BD
 1bHkfCPXsSkhKZnawShvos6/xx964pftq31AHVTpHHvlAH0tdWBj4Ppf2OAtjzW2Amv9
 8ShxL0d5lwVluu+KNhWRJ07+UmNsjcr+6q01Qy8XElIS3O+QGyhp2b20Tp3zaaRLAYuu
 6+GQRoj8HX55m1FQ9kou3jbVDv6owxgJxTd6zNjmdulkDUAuJkrMLNWeeufGwyaqOFk3
 b7UB2yrH2vGgRmAxRPavXg/x+rj3gJMyKAITOTByPodkJNGpny0vTBr+l7PvbsTBSK4H
 Awaw==
X-Gm-Message-State: ANhLgQ3FZ/ZmGZ+BlUdZHOMqghYxSXt+oQVDuHpbAhfJOix1+w4LNeYb
 fPNujrUFlBCNhOcequNmmhkscjfBzqWt+AdFgnmxSg==
X-Google-Smtp-Source: ADFU+vsc2T2jZf70kpZMvYMwpfS+uLg4OObFA/cnTervsw+SJLOvoZvVNj5I9uhJjuGVX8IdlnaMjTx8rjO5JeJrKis=
X-Received: by 2002:a19:ed0b:: with SMTP id y11mr1776494lfy.77.1582798323589; 
 Thu, 27 Feb 2020 02:12:03 -0800 (PST)
MIME-Version: 1.0
References: <20200226165738.11201-1-ardb@kernel.org>
In-Reply-To: <20200226165738.11201-1-ardb@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 27 Feb 2020 11:11:52 +0100
Message-ID: <CACRpkdZ9WR7wEjgscAF=Pwy0=YwbNPjtH6BQWa5wfXW74Md4xQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/5] ARM: decompressor: use by-VA cache maintenance for
 v7 cores
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_021206_286677_163523F0 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Nicolas Pitre <nico@fluxnic.net>,
 Tony Lindgren <tony@atomide.com>, Marc Zyngier <maz@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 5:57 PM Ard Biesheuvel <ardb@kernel.org> wrote:

> So instead, switch to the by-VA cache maintenance that the architecture
> requires for v7 and later (and ARM1176, as a side effect).
>
> Changes since v3:
> - ensure that the region that is cleaned after self-relocation of the zImage
>   covers the appended DTB, if present
>
> Apologies to Linus, but due to this change, I decided not to take your
> Tested-by into account, and I would appreciate it if you could retest
> this version of the series? Thanks.

No problem, I have tested it on the following:

- ARMv7 Cortex A9 x 2 Qualcomm APQ8060 DragonBoard
- ARM PB11MPCore (4 x 1176)
- ARMv7 Ux500 Cortex A9 x 2

The PB11MPCore is again the crucial board, if it work on that
board it works on anything, most of the time :D

Tested-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
