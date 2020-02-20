Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 102261659B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 10:04:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HEfQfz60q+93fY4On1KHzuvDcWbNjXXfieYs8SP7CY=; b=SMPmQ5pBZYPNZ2
	uoOQcs7l1yLBpDEikfXSf1ca7D38n9szZJ219tXQpg4N95y/DXFP78+PeaXWwCcFgL1VN7C/4SWZG
	DNUhEf02Cp/NMY+yay30me2tvsoaovOV7pMceQTwrbGD1RVFt1MCqHh6hkN2AwEa+z+xrOcL1A5r8
	++swAIVw4dgOzldgpqlXk+qoqODe0XQMOWIyAenZSTNQb0+Y1JzW+IylpTqjJDfLKMRSGXRa5X2dJ
	omcdVHRpTdfve3MR048r2d3KPZy9umfujzLhEPfDoY4vTcphwygqV9Ruy9XuFmZAbrbWTeMpUUQUm
	O1GEm21mIVy3vDDSCgxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4hkd-0002P5-Su; Thu, 20 Feb 2020 09:04:07 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4hkV-0002Of-7m
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 09:04:00 +0000
Received: by mail-wr1-x444.google.com with SMTP id e8so3697703wrm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 01:03:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kMRJMCeq8NZAOuDhnXD2Su6XH/Sug9+vybd1xVTnymM=;
 b=Oy34RglTmxJLtibBbGM0mOjmtCzIfi1VS84tpOVQPStsdzxw9bmDP/ccxGzVt8EqPJ
 QgLiArXg4cjojuSERHhIa8fgsIP1QgM9Y4K2rm2zhkxpu0w437Y9GZmAO3VH0xMokTRz
 k2FKaPRh7wlIh0Y5psMsLLpt9MsedKuXboQgLTepMW028eMy0jzy+79GZyDB5g4hAoJq
 Qx4XnhKsULmuMEOYNSwksD/UxjfS7UUshP7vMMiaZx7nx8msR2ipdxYAbwN4S2EapKrU
 YeQSP1DqMUaFtolcdN9QHhpD0ftXFGsefLviHaerCUre5Vivd3fft/J8fGZIIi8XtGvq
 ygXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kMRJMCeq8NZAOuDhnXD2Su6XH/Sug9+vybd1xVTnymM=;
 b=n2WMtzxrxEiHPi8Een7jfJfck0kDcE3jPy5vyakSHI9SePOh9weMNA5zM1D42HAgpv
 zYuB+Wi4Ejs/oIlKbJE6Ehm7QaV6xtIH4Fc4r+/mtNsG4Qpj4cF6vUPK0dw189K/cH+K
 c0hjKKK+5PAGNd3HICa3K+DDXFel02OfT/In2gCgGujGVzrq684vJ5NP8prfBcLm5uBw
 /GFHY4ymKjpuABHv2wlxXbpWGzJxrii/CYJAMuvUfdnkRtoCRNK4+/mjLthMLkJkpS0C
 3lDIHl+S9DxoJoOv6Ht13W65XjBgvR/28ds4W9Bxl0i78N9WfvrGAcycuY52NpMJXf9t
 nOXg==
X-Gm-Message-State: APjAAAXNHdHwz5XyjlFUoVqCTvht5JLjflSXrLsn0wZDXrfyzKqIvzgA
 iRHf97wGmfm9V8Qs4egxrIc=
X-Google-Smtp-Source: APXvYqyCkswrHjGraF8RCaW0bFvKpMzVB9ieAPAAGbQvXepjaII3MJ2D1bNhg/qX3pKIgcJCJ4JAbQ==
X-Received: by 2002:a5d:5152:: with SMTP id u18mr40578019wrt.214.1582189432341; 
 Thu, 20 Feb 2020 01:03:52 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id b21sm3635764wmd.37.2020.02.20.01.03.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 01:03:51 -0800 (PST)
Date: Thu, 20 Feb 2020 10:03:50 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Daniel Jordan <daniel.m.jordan@oracle.com>
Subject: Re: WARNING: at kernel/workqueue.c:1473 __queue_work+0x3b8/0x3d0
Message-ID: <20200220090350.GA19858@Red>
References: <20200217204803.GA13479@Red>
 <20200218163504.y5ofvaejleuf5tbh@ca-dmjordan1.us.oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218163504.y5ofvaejleuf5tbh@ca-dmjordan1.us.oracle.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_010359_304594_47EDE4DD 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [clabbe.montjoie[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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
Cc: mark.rutland@arm.com, jiangshanlai@gmail.com, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, tj@kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 11:35:04AM -0500, Daniel Jordan wrote:
> Hi Corentin,
> 
> On Mon, Feb 17, 2020 at 09:48:03PM +0100, Corentin Labbe wrote:
> > When running some CI test jobs (targeting crypto tests), I always get the following WARNING:
> 
> Can you be more specific about which test triggers this?  I used the config
> option you mention and failed to reproduce after doing the boot-time crypto
> tests and running various tcrypt incantations.
> 

Hello

It appears before any user space start. But according to the "Modules linked", probably ghash is already loaded and perhaps tested.

Removing GHASH lead to:
[    7.920931] ------------[ cut here ]------------
[    7.920955] WARNING: CPU: 1 PID: 120 at kernel/workqueue.c:1469 __queue_work+0x370/0x388
[    7.920960] Modules linked in: ccm

And removing CCM lead to
[    7.798877] ------------[ cut here ]------------
[    7.798902] WARNING: CPU: 2 PID: 127 at kernel/workqueue.c:1469 __queue_work+0x370/0x388
[    7.798907] Modules linked in: ctr

So it confirm that the problem is not related to the tested crypto algorithm.

> > [    7.886361] ------------[ cut here ]------------
> > [    7.886388] WARNING: CPU: 2 PID: 147 at kernel/workqueue.c:1473 __queue_work+0x3b8/0x3d0
> > [    7.886394] Modules linked in: ghash_generic
> > [    7.886409] CPU: 2 PID: 147 Comm: modprobe Not tainted 5.6.0-rc1-next-20200214-00068-g166c9264f0b1-dirty #545
> 
> I was using just plain next-20200214.  Can't find 166c9264f0b1, what tag/branch
> were you using exactly?
> 

The pasted example has some commit to try to debug it.
But I got the same with plain next (like yesterday 5.6.0-rc2-next-20200219 and tomorow 5.6.0-rc2-next-20200220) and master got the same issue.

But for reproductability on different hardware, I agree it is difficult.
For the moment, I got it only on Allwinner H5, A64, H6 SoCs and imx8q.
[    6.611449] ------------[ cut here ]------------
[    6.613234] WARNING: CPU: 1 PID: 157 at /srv/data/clabbe/linux-next/kernel/workqueue.c:1471 __queue_work+0x324/0x3b0
[    6.623809] Modules linked in: ghash_generic
[    6.628101] CPU: 1 PID: 157 Comm: modprobe Not tainted 5.6.0-rc2-next-20200220 #82
[    6.635710] Hardware name: NXP i.MX8MNano DDR4 EVK board (DT)

I tried amlogic boards and some qemu "virt" without success.

(I have added linux-crypto@vger.kernel.org to the CC)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
