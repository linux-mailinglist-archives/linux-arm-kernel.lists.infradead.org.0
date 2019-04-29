Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7055BE86F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lZQXny4ofBKtVO2qsTtz0WQK2VMOz4Poz9w6BaliK2U=; b=CN6SXM28B5UaUo
	9rFgx1//ZGgKY54xYuIj+HeLZIEohbCmuXhkhj/tVBGnz7wnktLNtHrTevvJvCfBwgvrqEN38382/
	oX+aYIjGk96V78BUFPp5SyuSW4Yb+pxaKnYlBC7ijRBwnr1RUcE3CividkL6cDrCT83WLBWz+ESsv
	VZ+wTJnrNpJs4fmxSI3Tm+Ukz0oXe38KHbq5u83uYF0mISYp6aSXQwOG6tYDVMjKlOaH5uoK1cjKs
	SVmhUVL5ehUo8vR1HZcjNbQPdujhC0jyiNpF87Jq2DVyOv0RGuubdUXNuUjIkT8PDsDI67DjxYaZT
	FCVfqL2w7xjV3ntbnl0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9nN-0006C9-9Q; Mon, 29 Apr 2019 17:10:25 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9kz-0002vV-MK
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:08:04 +0000
Received: by mail-lj1-x241.google.com with SMTP id z26so10097870ljj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PdCYTkykEbqNyJUv1QhMsSVMEq6usPhaqqUWwuxAvtk=;
 b=VDhrs3Nfh4iuNIDLF1qiTWsjAPiReNTNGFsNLTNvNrrVEDbNQLgJhxYYDAFHOKJeKV
 He21gd1pMsKWqLM9cUgNXLQZBIaBGEKp45I3QfzJqnadyk+qfCTuxI3/PwkmgWQEqe+Z
 5BU4K/dLm1l1+PwIEjZDZFUnK42Knd1LvZeQ32KdIozO+yDqDaIJ/rw/apsn8gb3psfK
 ASt7x51wH0aF7rXWm/83Pdfp3QQqQ6wk9PYC4mqmlT9PFx5WtFVTfys/xPWiiL//tTL7
 zxrzdQCjz6TFiEgDTRSpOmqrrkL6OsAEDPLU4jI5SyoYn+HWZYFFhe4ewdix9fjVu3NX
 p0xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PdCYTkykEbqNyJUv1QhMsSVMEq6usPhaqqUWwuxAvtk=;
 b=YzuHN046bzE+Pg+vXnXLT2haptBqfxDaduBf4pqoMK9+zWydqfktUUNQ2j2dyZMEFC
 G2hVlAihBM0ARztCSql9MSEl3LQYSpWEuG11P9un8+q74Cieyanv22sVH0Jrh2SzD4H6
 27gpcoQET1xowNyVe1x7K+eKqxK2a+FvFE3Yh1TivsHEmYgJ+MNx539545RQNfmey4t4
 Q6ZJsr4pe+jTTUYo6V++zI6AFSYjW61Wv1y/+II/Mt5wU9xWjq/g7y/GjC7CVRaXntZ8
 cKNy1bRQVziukh9IS1LoD2u/8PRzTGvMfpek+24Js6cyVohzlPN2blIijkB7yGBrXghJ
 KUOg==
X-Gm-Message-State: APjAAAWXUGMpHNQWUv/wfb1yqR35H5VGQkcLQbW8/pTUoxa17l9RTrla
 Ft+IQYml1cgasF0UvLk9SrxisA==
X-Google-Smtp-Source: APXvYqyF+pfhsIvgx5JUYt0POFgwIJ+EfQKp7BSeq5gszV06NSv1t4yY4ty+LhSovVi6jTTJo3fbDA==
X-Received: by 2002:a2e:884a:: with SMTP id z10mr23642105ljj.21.1556557676125; 
 Mon, 29 Apr 2019 10:07:56 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id b78sm7433376lfg.38.2019.04.29.10.07.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:07:54 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:40:14 -0700
From: Olof Johansson <olof@lixom.net>
To: Andy Gross <andygro@gmail.com>
Subject: Re: [GIT PULL] Qualcomm Defconfig updates for 5.2
Message-ID: <20190429164014.5fbrpws6o2k4xvpn@localhost>
References: <1555997248-11513-1-git-send-email-agross@kernel.org>
 <1555997248-11513-3-git-send-email-agross@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1555997248-11513-3-git-send-email-agross@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100758_271505_7EACC1A7 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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

On Tue, Apr 23, 2019 at 12:27:26AM -0500, Andy Gross wrote:
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/agross/linux.git tags/qcom-defconfig-for-5.2
> 
> for you to fetch changes up to acd92c5a11493bdf137aba6e21e865331d7d90d7:
> 
>   ARM: qcom_defconfig: add options for LG Nexus 5 phone (2019-04-09 22:37:39 -0500)
> 
> ----------------------------------------------------------------
> Qualcomm ARM Based defconfig Updates for v5.2
> 
> * Enable options for LG Nexus 5 phone

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
