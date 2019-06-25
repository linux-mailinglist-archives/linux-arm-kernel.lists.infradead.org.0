Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F13D54FDD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:09:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uBxKmZB9Mru3oBblIEQ5aLJnXDNowc3h8xbsbGTL6cs=; b=AUUj9KcKyPY8yM
	K4K24VI5nzwG09WXYbeWDUxQ3M45u9kV1o4WgDtIT9UFDYMa180lXlFGn2/9pBpT13fFSsq9Qqqa8
	To06H4SDX+KRXGn7tPDw9GYY/l67S1JZmuUDiAQsH5uebexbrqlvjgt5hdbP6RIW6eVhvR4+yKxY7
	+EgqHDqqjrORDcjcV0ElQE2fG2ZdeeHyIiW+MsOnRKv/5PGqRzAr8d4N88nDgKYQ5V1VJhW7W0tBS
	lMxbfIdUGN4ngbm7evCDVsfjVok2O8wMwXafXg7C11XGFtNAgIojANyORYRlCCfv64jK1MvVQ7Iwd
	EyRlP9LJGIIJKw8cVL8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflCl-000697-OS; Tue, 25 Jun 2019 13:09:47 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl87-0001go-CY
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:05:00 +0000
Received: by mail-lj1-x242.google.com with SMTP id 16so16161074ljv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=st+E8fYdmsyzlWKQ2bkjorD+wBcj+F7QhrsAiWtDQDo=;
 b=IFJjSeR94T+bWh9AfUVCX2d8OUPtzLbt4LJMDo/nHvNyXa/bH7E7cTNhz3j0DaTfk8
 9aQWB2C3UwJrEQ6gKNbsHPNwV945eMixqS+B0o6xcWVYea6lS0noe1V6+EwFAFshyETu
 L/qxZRd3jd+l2t56UGgFF2zvMAsueRIYDf+SaEBXMqqaJsxc2E/rMM2asBwns4RA+42A
 Abez+/0jZXut6+FVmXNKZTLrkNvU2hb40C95xHsImW5KP7c15aa5lPLvjfnfGiUdiUEs
 Ros5N61zpymfjIOivB9VIi9LsaodCZmJkDTmcDRXHSFrNh968/djmqvgx+InuY5wtMO5
 6f1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=st+E8fYdmsyzlWKQ2bkjorD+wBcj+F7QhrsAiWtDQDo=;
 b=o+nWoJePG1qlLLNcqZEpqTOrL6UV2s+QT8eefxP3mUaQ9afATCqskfvV+YoAnBWgaL
 JYD0w7f5NZrDOqmc2NUPaXCma9+wAXPs6DCbg5RO6Z9FbobUo1o4KrqFSygpMBvf0RnG
 hsXhmkzCQ85DlegRT+5+nSai4wXKlP2PC7Qo21wvz6BsWh+yLBpPmfq9VD02Vlg5Nrbh
 8/zR5n3J1sL60KYukuzZUo1nnM+Y1CCq5/nvQ/8ZgYFkRd0qXaaYkZ5/j5ZHHMH6/L8G
 k//qSZrboE9csMOgHcAVAXMsRg8Uf+P1Bunsrl3fLmWXa9x5IvQe+cwKwzlBmNy9V4uQ
 rSyA==
X-Gm-Message-State: APjAAAWhXHqwAOCGiNkkrTvo08LbGDOTXddRjg24uxXMAJ1it1JpuZ4U
 EBRTy8kG0lZUfF1RJtvu5kcS/g==
X-Google-Smtp-Source: APXvYqznGxCUWWGSKzfzj1kWayo/HjioNbWdXU6Itex0x3IpVXjNyIi3FwExdiylH1BU5L+H7pLS1g==
X-Received: by 2002:a2e:3211:: with SMTP id y17mr22050871ljy.86.1561467897892; 
 Tue, 25 Jun 2019 06:04:57 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id d2sm1931492lfh.1.2019.06.25.06.04.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 06:04:56 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:45:38 -0700
From: Olof Johansson <olof@lixom.net>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [GIT PULL 1/7] i.MX drivers change for 5.3
Message-ID: <20190625124538.wrxlx6mk3vtyij3m@localhost>
References: <20190625075305.29082-1-shawnguo@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625075305.29082-1-shawnguo@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060459_459912_5BDEF84F 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 arm@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 03:52:59PM +0800, Shawn Guo wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-drivers-5.3
> 
> for you to fetch changes up to db10496c0064ba3355936de801cd3ba0b6711bd1:
> 
>   soc: imx: Add i.MX8MN SoC driver support (2019-06-24 09:15:57 +0800)
> 
> ----------------------------------------------------------------
> i.MX driver changes for 5.3:
>  - Add i.MX SCU based SoC bus driver for i.MX8QXP SoC support, which
>    talks to SCU firmware for getting SoC ID and revision.
>  - Update soc-imx8 bus driver to read imx8mm soc revision from anatop.
>  - Add i.MX8MN SoC bus support into soc-imx8 driver.
>  - Various small improvements on soc-imx8 bus driver.
> 
> ----------------------------------------------------------------
> Anson Huang (6):
>       soc: imx: Add SCU SoC info driver support
>       soc: imx: soc-imx8: Avoid unnecessary of_node_put() in error handling
>       soc: imx: soc-imx8: Correct return value of error handle
>       soc: imx8: Fix potential kernel dump in error path
>       soc: imx8: Use existing of_root directly
>       soc: imx: Add i.MX8MN SoC driver support

Given that these were posted at the same time, it seems silly to post a patch
with a fix right after -- they should probably be squashed before sending out
(or when applying).


Anyway, minor nit. Merged the branch.


Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
