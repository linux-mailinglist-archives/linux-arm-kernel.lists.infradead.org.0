Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D5A4816C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dn2+P4srOOTFWRId9hY7Ak9qJkPOjWhfPyn5msXEPQs=; b=mQiI5eDKBCC4fV
	HMqoxn8xa5gU0XyLjRBegRC7TT8OcwOQ+2mO690muNFzTE6P/Lo7N1CP2LcqU8otj4eZwpCpYvzDJ
	S7HA+r+7t1gocUWNLOaoTCT//NAa4eznYDnC22lgGP6WN/be81YQf6ytRDDFg2SDev0EpdK3rpwvx
	zfDp8GaOFAvf+AvvKHQf0ftl/FsPBHDhPZ7Il49G9atr49/5XHcbsiaLQEN2OTVf7ye7FAKj197Ys
	Zw4t14jNV42EY6mFFr+bcKU2jacHeUzLPbWQ+2DmzvZXczFCxAAOYIzGe7MHZU5Z70y4aChHO8qc1
	c24k88EdLh+5ValQn9Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqJp-0002lv-6k; Mon, 17 Jun 2019 12:01:01 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqJb-0002lE-3g
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:00:48 +0000
Received: by mail-lj1-x243.google.com with SMTP id v18so9019239ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 05:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xGIILVfXf7VmS4FvscoSNixWx+XWfKfE5N4G3kPEMwo=;
 b=aZZBbp3yrNPfUMQPOcjDFQV9k2zoDpsVWrIXoMpLQrpqRYkS1vahaodU+eBIGDVXJz
 kI2kTUdwax/aS4nnG3MDZ8DhyuYmE+cSOHvgZpgGL7RULOilnoUmCZi8TFDXiJsq2dQ+
 BDXIMsDwFhMnB+kub7yEt6iq/RZj+KS6PSIXX6wqpENgJUYOK3OawX/qVRQQJX2KwO+S
 HHnqnU1JnuYnXBYtxCW7kD12ik2XNeAcTqqjNuxYb0k6bGP2yZobZnr2hS0VSj613A2t
 sC0sUqWRmHYL3D0TbyuoJmiMaRs0D0SUhux+mEGPiEkd6V+AStCgIEYq/1XeM6VFOGBi
 5O9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xGIILVfXf7VmS4FvscoSNixWx+XWfKfE5N4G3kPEMwo=;
 b=dRapGvVf57bTSd/fh1DMqCF0R2VHCQwiq7QQtvO+iZWIi9ccGTJqmXC4ClGCO5onxA
 9zpU7FEK2Fv8BrwctMli2SilWDn29g8FmurzjRrrO5LLeNy/fUhVRfD19tF19OV7blLD
 00bc5aMOcftHNVtbLg9LhGydCK0m9ZPpXH8qE9od2wCX+d/XidZYckTA7VNq7uQfWbah
 r6eij/T2UEawpGZvvfTVSxFZ41ZsTgExpksmu+8Hz6tj/t8GNhOzcDPbrixlXsredYZ1
 4HvLJteT4aU8A1yOeACIclDYoIj3JBk6O/ESi5CMksb+Kqd7TcsWtzPYTbJAHRL5wuV9
 TQsw==
X-Gm-Message-State: APjAAAXDc/5aA4zgItle840YBmB7L5Kaj5FksqxFt2xf2ASIW+ZbAMBY
 KUD0n5gwiPVMkgCdXEQ3qKO1Yw==
X-Google-Smtp-Source: APXvYqyp6cCFvtccc98Mr7cwSB/h75VTWC+F6gFL8fxb/D1x44pKnPB27rv0DjAhw1uUrmL7CbcgEw==
X-Received: by 2002:a2e:8741:: with SMTP id q1mr31348628ljj.144.1560772845064; 
 Mon, 17 Jun 2019 05:00:45 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id m21sm1725308lfh.20.2019.06.17.05.00.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Jun 2019 05:00:43 -0700 (PDT)
Date: Mon, 17 Jun 2019 04:40:22 -0700
From: Olof Johansson <olof@lixom.net>
To: Li Yang <leoyang.li@nxp.com>
Subject: Re: [GIT PULL] updates to soc/fsl drivers for v5.3
Message-ID: <20190617114022.54oznl3l35dzespw@localhost>
References: <20190520195215.26515-1-leoyang.li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520195215.26515-1-leoyang.li@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_050047_291461_B3C65159 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: arm@kernel.org, shawnguo@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 02:52:15PM -0500, Li Yang wrote:
> Hi arm-soc maintainers,
> 
> This is a rebase of patches that missed 5.2 merge window.  Please
> help to review and merge it.  Thanks.
> 
> 
> Regards,
> Leo
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/leo/linux.git tags/soc-fsl-next-v5.3
> 
> for you to fetch changes up to 5d1d046e2868fc876a69231eb2f24f000b521f1c:
> 
>   soc: fsl: qbman_portals: add APIs to retrieve the probing status (2019-05-20 14:28:16 -0500)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
