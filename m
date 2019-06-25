Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3AC54FCC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:06:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vvHoufDNpILlzbUa34aUYcyV2NNlaNunkwrsi6dslik=; b=qmVe28VdznU7Cc
	tvz6V0rlAF34sqydbCguMAnR1Gmm/SmwPhtMSvMxTFz7tlCR2kwRnQFLIQeYPW1LNjVGQ+t84xcAu
	g6HOIYgNtPMCxoY4dhYKtCIVymugzhTPFVZ1ty80LiL5ZLffuJq2vO2UZlc8iMmeaP406k6GJwBV+
	+CFi/RafpLTYYh0DUUWsqPqxiuKMa1YEhjY/lZljWQkaRIRiY/wWNIOOoRyvsQiq8jSmm+tW7Aaht
	okdpT5X2kn8P8c1Ycll7aEMizWgTBHHdwE4Sf15DFOk0ExUkcX4QoRUpwoy4LbM7vzZ1OUrdCByyL
	NUWD0RIk/oBOfpu9lrfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfl9i-0003r7-Jw; Tue, 25 Jun 2019 13:06:38 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl7o-0001QW-6s
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:04:41 +0000
Received: by mail-lf1-x141.google.com with SMTP id q26so12606388lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=f3XYF9cuhJkOb6QhXXJ0KUa5YjPq6bukEfwMeyaUtmI=;
 b=cPSybSE3tQ+hJbmv3UirR1NlgETQSrpjuWBZHOikqm6TAw/uu2yco0BLqH9kFCO23V
 dITc+yvMUEcjnMhPuobxbzVaS8FzaZEzoIhAulDCjOZeTohzXSp52CC8xVCYgZzqRCm3
 Uee772Ec+YiWmze4UIGOUHgrxcMLAwHlhzWkvTv0gWxt0LWG2mN8Aszw4CZC/Wv9xv2Z
 CNzIuV69BfnrF5Z3kiXVgd92eDEYwsgrWC8fUZQQKUeq74Me2ztb40bFU1Z1Gh84TntD
 d3YuZ3Ot0ym/AN+At8MKRCPId3Rcd7KZVeE11z1wHTVj9DPkkJ1nPzRAyiEFtizlbQdR
 3iCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=f3XYF9cuhJkOb6QhXXJ0KUa5YjPq6bukEfwMeyaUtmI=;
 b=QpBGcSpZo2KGGHolHPWPVyczGKE5K8mC6Hg5acPlTE6q5flMpcxtGzlDRCIpUeVt3K
 e+DBuD8Hjr6LSlFyYM3aGo2yN97BtmGVOzxyAUoGOuPL8vfa/FqZQJ9Hefv3VEG7ps37
 7gAWZWyvbpDFl5/SOmyqtZRBgZFyHj38Jyu4qBbziHZGeAunu/J5Q0hZryR6/8BABQeM
 DrwATaZOLNuHYukA8vJ8j1MXnWo2ZHFvmkWQlP/3LecTvdkUWRMQdqiqGSTMhyMMGsUG
 Fk1Yq7+fILJ9pK13VgCjPr+pM0vSaTvh6pIEVdcI3R96q5iBoWYKFnOTM4zJKHcY/wRf
 8gBQ==
X-Gm-Message-State: APjAAAVCPVjYzR313xby6pgn0lHU8GwslcN+QcgHg9yeeYTDbxp88lxs
 lHqy+wyfbVEParjQG1120PoHtw==
X-Google-Smtp-Source: APXvYqzri3a9/Cw5HhmsmeFZv670j3VThv0a86PRUSWtHQhxo0u4+wnJrkt0lL7kh8Xj0qRLxEDZJQ==
X-Received: by 2002:a19:bec1:: with SMTP id o184mr48295011lff.86.1561467878773; 
 Tue, 25 Jun 2019 06:04:38 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id 25sm2267647ljn.62.2019.06.25.06.04.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 06:04:37 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:21:16 -0700
From: Olof Johansson <olof@lixom.net>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [GIT PULL] ARM: aspeed: defconfig changes for 5.3
Message-ID: <20190625122116.6ah3acqgy5ixxpim@localhost>
References: <CACPK8XfL-U-BeynGQNBp5rPiv1gzD=7DVzyvrgtoL3njU1Kr_A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPK8XfL-U-BeynGQNBp5rPiv1gzD=7DVzyvrgtoL3njU1Kr_A@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060440_281474_03FC1E09 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Cc: Andrew Jeffery <andrew@aj.id.au>, arm <arm@kernel.org>,
 linux-aspeed@lists.ozlabs.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 22, 2019 at 07:58:46AM +0000, Joel Stanley wrote:
> Hi ARM maintainers,
> 
> Here are some defconfig updates for the ASPEED machines. I haven't
> sent one for a while, so there's a nice collection of drivers to add.
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git \
>     tags/aspeed-5.3-defconfig
> 
> for you to fetch changes up to 2d8bf3404bb0e65dffb7326f7fb6e96fa3cee418:
> 
>   ARM: configs: multi_v5: Add more ASPEED devices (2019-06-22 17:12:17 +0930)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
