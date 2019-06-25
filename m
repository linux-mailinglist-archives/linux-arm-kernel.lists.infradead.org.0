Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBD354FB4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSzAjwBohsD8o0pGlVkj/sTK/01+uNyato6PV6H/YAc=; b=S4rmrjFSTyXU4Q
	wmyCPanNZyAm7RFsbfvHcKJpeOZK0zzLZWEsrwzr2jSBg8q6ocKqDMsJmjZbrTjp5XUhMRdijtlww
	MNpTS9Jq7O/+5kdnvZ/uzmS9faqxNdDQcxbARYaOG89qEZ/fADODU/KtNvUPvM6hKAgvDNZ1LqKob
	fp6md8/UTJOJ2PDAJ6dfFJ+ITDAnsb6gsoPCH7u8Eac7fyu9YjDhPiD/MkoIYpSclGcq2QVmsIedD
	ba/xUL8svZ8fKrzpMANoWza3ZBhvNWam5GG3ZZj76l/qmAtzp0F317gLL0agavZu/8PLLZJ23DZb7
	G2UDXqM4d7s4Fpev35pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfl7p-0001H2-W5; Tue, 25 Jun 2019 13:04:42 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl7Z-0001GI-59
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:04:26 +0000
Received: by mail-lf1-x144.google.com with SMTP id y198so12591233lfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wHDI9J2V46AreMDztiNynfQnp1GMzSLYSH3qsAERslk=;
 b=pgzGiP1T7skarqD32Mpgo2wd2OPX7DOqj6+nU4Aw7ct8jcR4l8XrjchxAdg2Kb5ChV
 XHEUHuJjd61SUE2rMfpPo24Oq0La+XX0KB39etzW/6cz0Is7S0b0J3k8gN6iTgsWXk4L
 FBAc0p3KNjKmy8I++sAVbmBkbvJH89csCHHPH5ohEw1OKSZIp65vRcyZofEdDghbsVjr
 wcV/saGiM5DtSB1r7MOIrBuFkD2k6HnDs0VfOThEqg7vqY/H3e8AKfQKJC4PbVU4YF0D
 Y1ejY8KgMLFxnvcz+ittXr0oqFcihqpsmnQLjPjS6rJUVs9My1W17BuWHGA9X/RGR6to
 6QwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wHDI9J2V46AreMDztiNynfQnp1GMzSLYSH3qsAERslk=;
 b=W281iWcnTEJYAKHjX2UGRR7UM774AP/H0IsF7pji9qXns1HLMcZGXzpHKm4gYIK0nw
 RzF2WtAltofwHtH0BHroNdyQbyuv3kez5vdBN3jcWzfXh1l6SpzEJOMYBn9py4dMVTl7
 rVBISnnuDhF0sJlkyDsJprFkrIDjhrPY2/xjBgEoXOfOaavV87l9vGIlIKahPf4VYNGA
 5dcKgBecWnvrVJUW4VOBuxClzScCnDRV+1hrbMNcpCL847GsdCwUcfTdPSzejvxnHqfZ
 z/3Y4A9n18VzJSvo4Jreh6omWGzTgBvwuiBMQtEGGOvl4AbQPyErLNz1DznI5Y2VD8FY
 0jmw==
X-Gm-Message-State: APjAAAXYI/O5RUPaweskwz79ilhL0YnpI2QyWvN+tOF04DW5xVTIsmF5
 rUnRgdy8BP34599RBHdBUG52Jg==
X-Google-Smtp-Source: APXvYqxLhcQ29Q9w06c9KAetFvO74uNTbpH4aLACUO+K1MkqKosHGb6nLJq1zkgUQnN/lmPzq76vIw==
X-Received: by 2002:a19:f601:: with SMTP id x1mr79056973lfe.182.1561467863327; 
 Tue, 25 Jun 2019 06:04:23 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id m17sm2249201lji.16.2019.06.25.06.04.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 06:04:22 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:13:50 -0700
From: Olof Johansson <olof@lixom.net>
To: Andy Gross <agross@kernel.org>
Subject: Re: [GIT PULL] Qualcomm Defconfig updates for 5.3
Message-ID: <20190625121350.5w5oaz5ott7s7qoe@localhost>
References: <1561006911-28519-1-git-send-email-agross@kernel.org>
 <1561006911-28519-2-git-send-email-agross@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561006911-28519-2-git-send-email-agross@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060425_230205_D19108D3 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, arm@kernel.org,
 Kevin Hilman <khilman@baylibre.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 12:01:49AM -0500, Andy Gross wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-defconfig-for-5.3
> 
> for you to fetch changes up to 817bbbb7749decb99262dc3bb1569a579eea5ba8:
> 
>   ARM: qcom_defconfig: add support for USB networking (2019-06-16 11:31:50 -0700)
> 
> ----------------------------------------------------------------
> Qualcomm ARM Based defconfig Updates for v5.3
> 
> * Add support for USB networking
> * Add support for display related options

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
