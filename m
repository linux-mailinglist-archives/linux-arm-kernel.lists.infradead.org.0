Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5ED3EFDB5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 13:52:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WIhK0FcOsLXNwBXWpH1b7uxbrri9aWRWXKPxsYbhU9U=; b=DhLB7Q+VL8J2Wf
	2njm/LEjJZjc7YWeyqIhUb0v1YgVDitldBUWqFdpiOo+8Z+vIg7bd9+MtUJj7/Cz7jWv52UIC/+pV
	C+4gLI2TmGuJZ8jzxjwxzRDVAEemep0HDJhL9CPQe1MwzBnjNqibiX91B7CvBJ5ITzKKSQmrGlhAV
	JIlq1AmW/rAxJJDk1z6Ygf6IppFtbTjAINCnpbTLKlrom+pJIr58ge+EW0NGc7J+avFW1geTnNNFL
	xU/khREQQHtdF5+Gu/MZxWjxGh11w9vM1Ob78xgttttLE0pJmxysu8NiDduvnGjHSH5UFgHwLw1q7
	6and9VmaNo4Ob1sLupnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRyKL-0006vU-0m; Tue, 05 Nov 2019 12:52:53 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRyKA-0006tL-6s
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 12:52:43 +0000
Received: by mail-lf1-x142.google.com with SMTP id 195so15011026lfj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 04:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YOzAXaD9/z5O/VkzaeEi9wDLIjI1mz7wj0WzoXrtE/s=;
 b=u2h0XJa1uFBukj0rea7KKqSm5zUDn1Oqe9ydsrss5VqYU0ABN0gEgV8f5QhvOIw4Cl
 AkTUFAZCOva2k9OcXo+tEX/Pgib/WinvY/ybsUKVKN7viynkAT3mwRi+f4rpQ6BaFGdp
 mDoIMQ/GdmZ9hPjOm6nExeHSfFT/VjpIlMddeCbi7etK47baLN0vx9rrswBouMihEUeU
 vu56MBc4iw4NNBHbit/g/L+koZt+wbsSyktFVKDSGSAW/95R1Q/bNbVaSamsiRDzBnt1
 myZkobc9FW8jpbpUUvbV81WtdS3LygE1l4UTVpAAqvpdanPURHxAwKTuGj12RTwDJYCV
 lK6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YOzAXaD9/z5O/VkzaeEi9wDLIjI1mz7wj0WzoXrtE/s=;
 b=SnozV7JCHJ7wsjGUkK3aBBHj7yV/LZflY0I1gmPzPd5pJBk7DgMF+H8yNAclucehKw
 GC+QvJeCiaKobcLAb1TGAW+PHdcvGH22Ls5qNOHnzbAM89AsJez6rSbe7U7Q3tQm8gPo
 Kcqyswfb2sfme7d9MEJB4y/1YcBZqlFqze7EBDBb5jg/mWzf5VzuGJGPEafdpJhwTBan
 t7EwRwdR9OLbtet5IYBzT7myI0kjpyQ6zwM/9RzqO6epIpM5EeufF83b6OlypRPhhYt/
 Etv42KEFjtB4/KTai7oMtoe4y+8rtRMHX/wsKT364a6y2NnQNKnt6MPsYmKhc7uERhMp
 carg==
X-Gm-Message-State: APjAAAUwxrDGxbdrDtqmKeZm6oxK/tOPQjp+CnB9+TRlDb0Sqp063aYz
 R/kDIb6CL21egVL09BVOSATMYie3vTYZMcwhFArOU16V
X-Google-Smtp-Source: APXvYqzvsT6SpTRuwQNrmaN7BrvGXAxWBfcAcsfwk3Zp++JoZRocV2CnpG3DpFVY3Il6bjB2V0Pw5CdFeLjKTPCa2sM=
X-Received: by 2002:ac2:4a8a:: with SMTP id l10mr12918658lfp.185.1572958358931; 
 Tue, 05 Nov 2019 04:52:38 -0800 (PST)
MIME-Version: 1.0
References: <20191105073413.23129-1-sr@denx.de>
In-Reply-To: <20191105073413.23129-1-sr@denx.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 5 Nov 2019 09:52:33 -0300
Message-ID: <CAOMZO5AbbT5kYgOKhynBut9p_E+z6Wqc1Cw6mTdOTetTS2++AA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6ul: imx6ul-14x14-evk.dtsi: Fix SPI NOR
 probing
To: Stefan Roese <sr@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_045242_251766_8CE7891A 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Shawn Guo <shawnguo@kernel.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan,

On Tue, Nov 5, 2019 at 4:34 AM Stefan Roese <sr@denx.de> wrote:
>
> Without this "jedec,spi-nor" compatible property, probing of the SPI NOR
> does not work on the NXP i.MX6ULL EVK. Fix this by adding this
> compatible property to the DT.
>
> Signed-off-by: Stefan Roese <sr@denx.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
> Cc: Shawn Guo <shawnguo@kernel.org>

Thanks for the fix.

Please add a Fixes tag so that it can be backported to older kernels.

Then you can also add:

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
