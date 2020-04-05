Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3A019ED60
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 20:38:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=os0r0jO4lF8GlN3qb3wOilfOco0KjibUr2EovMwEgV0=; b=XeQgdP4kPWIxAk
	n657pC/byiGOni8+qQMEUWDUJZ8bE0pwRe3cSRjvpVH2MBHLYm+I8+zvFI+hvcLs/FUgHtRIsbBOM
	CSWTW9ebyvdMMFt+qtuzgNnIPfxUZzHbc2mMZciPD9XZ4sUzFkZnWlH1BwEBabWKM23jtmFozXHj0
	yDPIYpxQ9snf7PtwS45SPE3yfn/1UzjkbtYHzNotqlgEIjr9yAAtYANeRdbPAfLwRLNBF7mb62Nww
	XnRRXIIktB+wnZ+BRpMeOfhjfEyjZbNcnWpvnipFqQxJh0dgYs3nYO3qnwxJqhYnTLafYxpNA29Dk
	YH/smWC1yY3zb6a8TssQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLA9Q-00036j-Qs; Sun, 05 Apr 2020 18:37:44 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLA9J-00035c-JW
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 18:37:40 +0000
Received: by mail-pg1-x543.google.com with SMTP id r4so4950765pgg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 11:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=r/V8xd48qmZ3Tejwsg4uBw3R9OCUKDXWmgs0tD6ufjM=;
 b=L2on1fYhGNBawXv6/jnFwWDhknkWKqq5q+rA9VgKHFe5sD+XmwpdZP/CYX2iLsmWb6
 as4PbmFjU1bkxGoGX5OTvJ3tkF59UDXK1dBBGyheqiDx4sRB9b9K7K0AbcXgw5KZsoIx
 b6zNCtHhsutOsmprl7smP3wcXJTb9Ma5MleU99OKZZm82fqElDUPQgGBaODIa7ShSnEd
 jplXT7J+sGPiqdTAZncH1pF73WEJXwpFoZaWQCzuPMUB/LEKaCVXUl9d3MP/DzV+Oo+A
 kvAE/2cjr0kRbsAlvaASDtj5dDvGk+w9/GN3sPOILpSUzkN6Bq/VY0VSlnrKXCJRmHY2
 8Wkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=r/V8xd48qmZ3Tejwsg4uBw3R9OCUKDXWmgs0tD6ufjM=;
 b=nEfBiNxXtp0J8W5Qg9iLY1ejfyWlnIICz+yFtcI35g6YizefrbdBSp6LHvVm+crYbX
 8zLphUNpaM7s+JQVmnkghcLBdCln6WzhSbVXSJjXAgOyxnxza5SgrehBDiHNumjF9sJ3
 qFI7o6TaOxVsJt9HTLi84CL1rrCHSZbJJ1OtZ7pqX6dfRpSsIzcISwMUEijSeUVJb/D9
 tK0dEzANhbzixRL5s7wTqNCuajOvPge1BmqFVMPS2p4NqjnSkqItQ9InPKwprfJ8duR/
 rdjyEo0FDMoewt0Otdmi0LWfniCfa4kiQRH5xt/xwz7aoqj36x8YMUW430ORZG18x/g2
 wB7w==
X-Gm-Message-State: AGi0PuYCI7HaZWva+Nt0NrysfSX1+WlAbW81+45rl0nH1KYLY5h5CHi8
 FD0eQ8XzBJoDSGNiL3D7h/MXtydXz4D4
X-Google-Smtp-Source: APiQypInL/Tpz4PVWz0R2bHqtkcOI8x3gaf98ELwYcqe4gYzx4f3CfI5QxvBE8L1c/LoRI/KQJe8Lw==
X-Received: by 2002:aa7:9888:: with SMTP id r8mr18233535pfl.293.1586111855211; 
 Sun, 05 Apr 2020 11:37:35 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([157.51.125.214])
 by smtp.gmail.com with ESMTPSA id v20sm9197825pgo.34.2020.04.05.11.37.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 05 Apr 2020 11:37:34 -0700 (PDT)
Date: Mon, 6 Apr 2020 00:07:29 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V4 00/22] ARM: dts: stm32: Repair AV96 board
Message-ID: <20200405183729.GA9410@Mani-XPS-13-9360>
References: <20200401132237.60880-1-marex@denx.de>
 <20200405144305.GT8912@Mani-XPS-13-9360>
 <38dc1697-28e3-8680-4998-74e30339a2eb@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <38dc1697-28e3-8680-4998-74e30339a2eb@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_113738_163342_B4F416DD 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 05, 2020 at 04:55:54PM +0200, Marek Vasut wrote:
> On 4/5/20 4:43 PM, Manivannan Sadhasivam wrote:
> > Hi Marek,
> 
> Hi,
> 
> > On Wed, Apr 01, 2020 at 03:22:15PM +0200, Marek Vasut wrote:
> >> The AV96 board device tree is completely broken and does not match the
> >> hardware. This series fixes it up.
> >>
> > 
> > Can you please share a git tree with all these patches? These are not
> > applying cleanly on top of mainline/master or linux-next/master.
> 
> Alex asked for them to be rebased on
> git://git.kernel.org/pub/scm/linux/kernel/git/atorgue/stm32.git
> branch
> stm32-next
> 

Thanks, I'm able to build with your patches. Btw, I just found that the
current mainline versions of u-boot and Linux kernel are certainly broken
on old Avenger96 (588-100) as well.

u-boot doesn't boot while linux kernel has MMC2 and Ethernet broken as you
reported. However, checking out the commit which added Avenger96 board support
in both projects works fine.

So this clearly tells that there is a regression which caused the board support
to be broken with mainline u-boot and kernel. I didn't try to find the offending
commit(s) as the support for STM32MP1 got matured in both the projects. But
we can go ahead with your patches.

I will review the remaining patches tomorrow.

Thanks,
Mani

> So that's where they apply.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
