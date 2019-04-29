Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF6FE86D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9lp6VWuDoX6wXQsSs/RAmFZlNAoh6jbCN1kfU2LIjn0=; b=rxiHl89JLaFbHS
	KiGtzfpa+x2lyUgMiEFrC7R7yC+oHVaEhSCGthGi7ep2CpMZz8KKdMXuIWEarPy2bl3Bews0Phb5n
	thka3NrS4cA74aq4UPgBDAaweOWbpy465Ot75ZDgJM6Oug4wrFl9I/UO1qAx32evJH+ejmR52Qy3g
	1hb7q9BPQLp2zujzL0LDYnApktMuBWrg9rPMArzS5YZzlqs3U7p4q4/vc5hGvrNeln7t50M8f8+FP
	7dvd3Jp7Ghd63/HI5VXEoNzfB6br7Mx/hd5hivQsS00l8XNqv4fm8vgsu0uG/RDJkQUUmhdjoj5D+
	R5ETfMWugsfDYj85xs7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9nC-0004jf-MO; Mon, 29 Apr 2019 17:10:14 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9kx-0002rz-26
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:08:01 +0000
Received: by mail-lj1-x243.google.com with SMTP id y8so3664961ljd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6ehK/YFhlb7ZxAagjUyzZkge5JL22b1s+yiy6nCuiSk=;
 b=bOzaUCnxgAM5TOc+qPRvdsMIzXt+4DNke7FgxBySdG9v93p4OxCB18BJJNmwDv0des
 aKsVWZgKYeRTI2qt0Su/FcsVsuJtbCi7+A7leHMJ/qUPQIdlGNPMLzJR2flFoicfkqNl
 AsUi25cxz8MVUgnJ4OMjjjp3uSkByI5odZLxBnq6F7n9oAXBpoTO7a+QF1ITvp4bqhBt
 VIBdYTMXWNh1xI1N0TdSmrwKjVzKZhr7W0oRKDTve1hkzOZhUHoRZirYEGIqsqF2y249
 TrmecpX8cAH2nJ2LTc42VPzNVeDNSxJmvDG83NIyi++BM6IMJeX7zztLOwva6RFEOPsO
 QblA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6ehK/YFhlb7ZxAagjUyzZkge5JL22b1s+yiy6nCuiSk=;
 b=P5PuWPVLjumvH3M1db+dWIeFCLNSO/PVRwi+V3ZcyzQxvL+I5GFwcILn7VnnRoLbvG
 40pA1qV+LRbOqB+wQWFRvk7rtFdtQLlcLyziXMfnGfx9Va20uBsoj6WRoIr5hnCwltMq
 tC1HXO9RkXx7B7fyQQCl7as8QtMQQ5cjfu5Ngx1O5hTZUYLSHFtfV+Q3VG6DrHGBP7Ju
 HaRkU9Xd2a01kjnMN3Sa6pMd6pbfBjpX3992qqVGKuIEat6sxZpoY2UvKWfmVgGMFXR1
 6IDbBmn2G2azBNZ36rgX35Ss+WHxSDRGcO9hkuxENSXysKylABEVzjLN+xz/tOlENDIC
 qz7w==
X-Gm-Message-State: APjAAAUw52jjMYkf7B/uJj7sKM2iHThSOL3Yf/8EKdnDiPrVa/7u93eh
 3Iwh6WBYSkjg4dIs26gv05jxjg==
X-Google-Smtp-Source: APXvYqwVrWESZs1otXMX9r4FErLdlXN+Vn5pyw32HfFs5QqWMDqyrTYf3l6xwugBOsqP7bysU0VMsw==
X-Received: by 2002:a2e:9956:: with SMTP id r22mr17859685ljj.143.1556557673502; 
 Mon, 29 Apr 2019 10:07:53 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id w198sm7449083lff.10.2019.04.29.10.07.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:07:51 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:39:32 -0700
From: Olof Johansson <olof@lixom.net>
To: Andy Gross <andygro@gmail.com>
Subject: Re: [GIT PULL] Qualcomm ARM64 Defconfig updates for 5.2
Message-ID: <20190429163932.itif6tddapf4flek@localhost>
References: <1555997248-11513-1-git-send-email-agross@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1555997248-11513-1-git-send-email-agross@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100755_487641_906768CA 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, arm@kernel.org,
 Kevin Hilman <khilman@baylibre.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 12:27:24AM -0500, Andy Gross wrote:
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/agross/linux.git tags/qcom-arm64-defconfig-for-5.2
> 
> for you to fetch changes up to 2e8382955a3efa133c2e9d8e154681a8aa2cd92d:
> 
>   arm64: defconfig: Enable stmmac qualcomm ethernet config (2019-04-18 23:32:25 -0500)
> 
> ----------------------------------------------------------------
> Qualcomm ARM64 Based defconfig Updates for v5.2
> 
> * Enable stmmac qualcomm ethernet
> 
> ----------------------------------------------------------------
> Vinod Koul (1):
>       arm64: defconfig: Enable stmmac qualcomm ethernet config

CONFIG_NET_DSA is a tristate, and you're enabling the driver as a module
already. CONFIG_NET_DSA should be =m as well to avoid bloating the main
kernel for non-rootfs-critical drivers.

Mind respinning?


Thanks,

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
