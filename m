Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 393BF4BC8C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 17:09:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+/tBlEtC6KjpKvKIxoH7bzxyNUmOShEOcTcDcsTa24=; b=Sw322N7j1rA97Y
	EP+OYLQKS7BspYYuQgHssOyGFwln+vqnERsFbmqYXolBNmbn8gdMQnX4VFjpuxdOdMTkhMQnpcQou
	Htq4JGUjCA7lvGD5MXfRClPWif/WDuJ+lcig73BVOwQbhlkUqTbouvA0Nk2j7AnA6pF8yAO2IMyrY
	x5JKv3vefDnk8+PHDvtCit2e6MiM3skJ7KKn8AC8zZ90wFIwvkUbHUPILdp2iJdebmjMpnXEXMELU
	TRe14g0LmXwQdCnuTWVYt7s6+enbZH9N98H1ZZcJ1oOpNrE8H6H/xfzJEDV1/AZqBvpKCYiJnVMxo
	4pc3iNfNIv2j2TuHW+qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdcDi-0004za-KZ; Wed, 19 Jun 2019 15:09:54 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdcAH-0002Rg-5c
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 15:06:22 +0000
Received: by mail-lf1-x143.google.com with SMTP id q26so12424316lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 08:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=N9UmPuG8eyMQFf2zZMnHUzycwUcXHQfMhZ+Ci6FK5Nw=;
 b=TL++paOX3QtbueoNj75FSxcCW7Y1hW1mFCfKBb6++fL10hRtB7A05BVOG6UoENd4hl
 c4IybfQFRG3xu7/oDmv1Yl/pUWdC9ZbGiEVM12zO/d5uQl7RQkMrChaqGM97pHJ93hcA
 6OXY/utcGsyapDeVhiG+XIyCAGW24GaJNZH/6p1DCwWfNkXTTdKU16VSvz0R2uKNI/E7
 KX5XabsYE5aVOFHFrGG97g+/zSnbgyAOaAjwZymeJoYw5+qlVujo6bGHfXFTMTz3mEBH
 wuPH65fyTfZy40TCXydI+EnCy11qZkBJd2XmWSI64wOyhoPmHyqRl3zvFUff40LxiAUT
 WUDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=N9UmPuG8eyMQFf2zZMnHUzycwUcXHQfMhZ+Ci6FK5Nw=;
 b=hLOGXfi8QSAJOjR1JHWH2rx6Z3s44uQ8SAQ+oklN4GUvXFeBzzDXE4gtWluJGLw5pf
 JfLoAcBxKHJLRINxh61z5DZSnWO+Li8dRJTYJwOcGCkEXVPKp1F3ZNe9ErteMcCt7EXx
 flhLKVkO1MD9ruez0pQ5ZxMNitJs9QirnQstzuW+Iu5ZXMAPLHxks1s7zlVMi1hZ48FY
 Eas42p3p6KzkcwlUWBFL5z92oMseuPka8QBtyk3XqkXfTp2XRJAlR8gXf9TOy3kpF0V4
 tuz/M74WdndhSFQ/fkDQDE+n/GRVuJet+SK1AfN039pqsatrVBFlP5np9pz1+wXh3COV
 wbVg==
X-Gm-Message-State: APjAAAXhpWvPUBCaWyIULsmVwisBrkpTkGWP9RaX/f9uabVi3Ud5xcjf
 ATOv+j43CngPzutfJq6G9F20rw==
X-Google-Smtp-Source: APXvYqy3TNRs0UiHymU1HBaluXj3WA9t2nIQyj66vUf7LI55jVX7HlGMA9ORDA6RPiQhkdW+oyl1Qg==
X-Received: by 2002:ac2:43b7:: with SMTP id t23mr13794523lfl.110.1560956779145; 
 Wed, 19 Jun 2019 08:06:19 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id d10sm1675962ljc.15.2019.06.19.08.06.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 08:06:17 -0700 (PDT)
Date: Wed, 19 Jun 2019 07:26:14 -0700
From: Olof Johansson <olof@lixom.net>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [GIT PULL] i.MX fixes for 5.2, round 2
Message-ID: <20190619142614.rf4rgjvef25guexa@localhost>
References: <20190618140401.GA5908@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618140401.GA5908@dragon>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_080621_606967_EB7FDAAD 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 arm@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 10:04:04PM +0800, Shawn Guo wrote:
> The following changes since commit b25af2ff7c07bd19af74e3f64ff82e2880d13d81:
> 
>   ARM: imx: cpuidle-imx6sx: Restrict the SW2ISO increase to i.MX6SX (2019-05-20 14:32:32 +0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-fixes-5.2-2
> 
> for you to fetch changes up to a019ab40679715ea680cc8561a02888be70bc4e9:
> 
>   arm64: defconfig: Enable FSL_EDMA driver (2019-06-18 14:32:43 +0800)

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
