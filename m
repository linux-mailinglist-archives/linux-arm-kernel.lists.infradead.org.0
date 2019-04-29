Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3729DC7F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JHObmVlT3gIYAdrdCY98imXV0dBy9iBwXHaijl4eWs=; b=r/p5H1BeNCkHEd
	9Mk5SnrSMnsBvapUoYokBWlj6QTaPNwEWhyMLqHOWB9Xyt/+D9Bz+T6Scf9iEK9DzSbgrJlr25r8D
	ez2yqqVuP3QsulYsVH+zbfi+2celN2Kz/5ZCyJ8GmHna3x8B6bgyNdnm7JDlyth6UTNxCoNC64voi
	wt4OQkuXbTbnd+ZChionIGfRv6J4wBCvfn1O1ct7Iayfn62iGFS6hvWOg/GjEj2S8U/RZkEpb041P
	CsU/gZhHyYT0Vd6P4LZp6vlSgcUdwDLBy9NOMQVIwb4Cae/0x3TqZa2aC9PdBB2LnklJV24WQNs8E
	aYpE8p8/gzLP1vg06fRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0JA-0003cH-Hj; Mon, 29 Apr 2019 07:02:36 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0DA-00064Z-6M
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:56:50 +0000
Received: by mail-lf1-x142.google.com with SMTP id k18so6929579lfj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FZF9cclvG1CqpNtldd8ZIhldVBCl60ciGNHvB39t0uc=;
 b=lo14Wc2Eg1Qi8meppjp0KyQGfysNNICoj9ch2e7uHw6xOrq81MEuyO9xTT/mHsMN2m
 xJp7Z17zglqrJ1DTrnX5pbMnEHbcm0CI3keQsq0V0eIsQC8r8jUaz/+U0eyYcf10pEmf
 TNrvBGfXuXL8tYxBMC6S2+EGap75HrEb2E61lIRKDgegOg917vkT0QSeH0xl8reDrlRv
 rPB8YhpNoRd80l3e/ojmXuV8xJlMgKGfvxpUPF1SWt6xEIJWd8hkvMinz8jvNSrbV3Xe
 S3ghZzyUuHOKEOHNCiNdGcQ2rqC1uUDG4r0J6kWAfACgGDWrOkX+rplGNf/5hWWvNIA7
 LvIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FZF9cclvG1CqpNtldd8ZIhldVBCl60ciGNHvB39t0uc=;
 b=LB/yDrOvXVhy3w+2Mr8GeeYKyvAklpc/zNakrdBe7/jvxsSyyuwyvIaKNamcMz2x0g
 57GTKI7CvVMBjItdKjTSeBgnI9TVVy1SbS56jxla6xMsM9breMftsDjC2ffhDz0VCUW0
 Bkei/NyhxTaIo0igectT4BaQWb4KuujkcayEucFaY2vvwurQxlUVK6x/9Q/mT3hyv3VD
 DmDW5zJyfP67mDEauC00e+8ScdSl9QyVve2jX7dNdXCTHeiPmVhjDI6ejx5aQcql8ptP
 BvIGUGN+akXJUvBFprRTIZmTHfmoHkk2d5vlZv4QY8j0FuqYAO+XdVwgA4QX+S2wDje7
 /RZQ==
X-Gm-Message-State: APjAAAWsndhpYqPqg++7lavaCJduTeVXv6hmhNGbr3lH0CufyRqMNnqf
 U+f/UF3Sf/EvKXwdq6VmCK9odg==
X-Google-Smtp-Source: APXvYqwzGE51HGTtXUl9Bpo6Hc+hD2rJqxX71kFcBhlSTT+F5FFBRXU3fDN+aRKucBTdkfYfBvSx8g==
X-Received: by 2002:a19:f24c:: with SMTP id d12mr31555491lfk.163.1556520982572; 
 Sun, 28 Apr 2019 23:56:22 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id v14sm4088827ljj.44.2019.04.28.23.56.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:56:21 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:41:11 -0700
From: Olof Johansson <olof@lixom.net>
To: Simon Horman <horms+renesas@verge.net.au>
Subject: Re: [GIT PULL] Renesas ARM Based SoC Drivers Updates for v5.2
Message-ID: <20190429064111.yccbizwdbmby47sn@localhost>
References: <cover.1555684066.git.horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1555684066.git.horms+renesas@verge.net.au>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235624_506337_94DD4E1F 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 19, 2019 at 04:35:20PM +0200, Simon Horman wrote:
> Hi Olof, Hi Kevin, Hi Arnd,
> 
> Please consider these Renesas ARM based SoC drivers updates for v5.2.
> 
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-drivers-for-v5.2
> 
> for you to fetch changes up to 15160f6de0bba712fcea078c5ac7571fe33fcd5d:
> 
>   soc: renesas: Identify R-Car M3-W ES1.3 (2019-03-18 10:33:42 +0100)
> 
> ----------------------------------------------------------------
> Renesas ARM Based SoC Drivers Updates for v5.2
> 
> * Identify R-Car M3-W ES1.3

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
