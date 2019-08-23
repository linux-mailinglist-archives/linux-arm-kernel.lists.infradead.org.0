Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3FB9AA37
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 10:26:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+4fklOaPTgZaZLcFwLNdxsTHUmVX9ptDruj5BHprb0=; b=Qzn6rFA8+WH2nN
	7wVSvhZNtnvegdM/XNIfiKpmzyc5PZ6lXlUi/NM6p9O9as4H9mWqyO2AkXxrrIXNPE4si3wLHNyDa
	6qBskysWpNX/uJzLROyGOmdR4gWN/je2iWc68k4Qe9u2/TdQALw4eGUJ6TAdHLeVuoh2DcM8v1wEA
	SBzP2k7CV1clzFgWPip23ZY5uBxfN2eIWEOMkt7pduC8JiaVoIiSNJf5jjRJcY1H5AQBKALNS/abb
	aHyC01QNTlUez0nvdYrWznh5aspXZZspesl3LrHgAkUiMYTALFZ1Vgt1doj5lOTD/qhdfwxxl5nSP
	FwekYGFcH2XKHvMuqsZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14u6-0008Ti-JK; Fri, 23 Aug 2019 08:26:38 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14tu-0008TQ-RP
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 08:26:28 +0000
Received: by mail-lj1-x241.google.com with SMTP id m24so8060341ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 01:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jAjMP4xmuyulOMV5YHvxWXlnTiDG+r9Si9f0jb+2WDc=;
 b=wnqmvTiQ4ZhkeUMMGa8l+1/vKLWR57cpy51RNA8D86BswIXgpaC66WZNEnz+gaAtEd
 yaF5lSTARq14IcDa5Pb7Im1swP5IFnrdkL+zBM8oXP3mSJ0sjyWSOc5tP5EUjnjIUqvE
 yXIIsrDNXL/poNk6ChLnNmVn3TZxuhlh/UgCm/+Z0A5ASVSF9fyBygW85hnKhlRIOy7L
 yDSegJk+yU5y+DmcU3onPXtkgt0fieVYFJMNJyBTNSKmhjVeghLmDd1/CPqCOWIlbXnI
 VYie58F4+bV8/Alw7sqLSe/Bhl2Zrg08cX9CK0YNfr1hMdI6fYIJWa3/6HSN4vqfu6He
 pkZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jAjMP4xmuyulOMV5YHvxWXlnTiDG+r9Si9f0jb+2WDc=;
 b=FsoOKQ42/+s+GtnlC24yDGALXwn82G9GlyWGPwyg5J4GruKPMYOpEA0K2cGsRFpobe
 pwZ7xTm61kJZrgFEWf6kaD1hf0mMppq2Rz5+Ua3Hn8aEHyDfP3LsBnjiz9ppVp80Damk
 DaXlPdp35yymA+hE1Gl1cCoOvd5WJeqvhj7ojQNZlF6yZVIuuxx13Q//qaKme+ZPGYL1
 L5fPv0D4q84Mozu3SGTWmF8LylPWtNkye8i61KxWqjVg4g2MMBlPtaRxokQP0dAunIH+
 l3lCD6rQ6Gv6lFEGYabcz7wYMwHwpFm1DUrMBZD6R8KqDEZW/AsI44pVQxNTbz+uzsPE
 b1kA==
X-Gm-Message-State: APjAAAUySvxc4qcNBIBVHKPxTIMwdGBDoCYKuQmatOqcCtF8fnyyDZeb
 yMUhoUx4/Q2h6gx8PQfD+VkcqQJI4W+RawWiFNBvJw==
X-Google-Smtp-Source: APXvYqyhTMDzE6GdzWuXk5RzTjGHl0wxLPmcdtUjxeFGV4fqNcsMAPshNok8qNzvW4m2O1CDv3ny2IJQx10PdbaavvE=
X-Received: by 2002:a2e:b174:: with SMTP id a20mr2217761ljm.108.1566548785065; 
 Fri, 23 Aug 2019 01:26:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190819080028.13091-1-geert@linux-m68k.org>
In-Reply-To: <20190819080028.13091-1-geert@linux-m68k.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Aug 2019 10:26:13 +0200
Message-ID: <CACRpkdb66GWnW6j=G==vAP_79ePyVCL=dHwcM2ui-GRC58eCjg@mail.gmail.com>
Subject: Re: [PATCH] soc: ixp4xx: Protect IXP4xx SoC drivers by ARCH_IXP4XX ||
 COMPILE_TEST
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_012626_898760_DD1FCBEB 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linusw@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Halasa <khalasa@piap.pl>, Imre Kaloz <kaloz@openwrt.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 10:46 AM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:

> The move of the IXP4xx SoC drivers exposed their config options on all
> platforms.
>
> Fix this by wrapping them inside an ARCH_IXP4XX or COMPILE_TEST block.
>
> Fixes: fcf2d8978cd538a5 ("ARM: ixp4xx: Move NPE and QMGR to drivers/soc")
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> ---
> v2:
>   - Rebased on top of commit ec8f24b7faaf3d47 ("treewide: Add SPDX
>     license identifier - Makefile/Kconfig").

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Do you want me to also take care of sending this into the ARM SoC tree?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
