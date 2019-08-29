Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8970FA1946
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:49:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iVX5/DBoSXcDrp8xmON5zSXdnzOSg+NJ3dJhOqQJpTc=; b=F9R61Iteklwhle
	gx7sSS2D7NNObsshH5ioh8NUdnwcIs0X9FirgixZE0hbttyK3ZLYfGo6JZtIJbWbkjFLR7QEOgc1h
	hnQKlO/Hja0Q/flm+E+znd2BqWP01kvmOSFTpjFTEmwxahxCrKU3qBcb+gZK7ecsu2XDDo3p4F+in
	rFBRP7lwEXjCgFde8EkihkoGHGRpLIBIxbTEkuTkLycGOzo2u3NxgjEH99aAKAFqjTS7chIPenA9x
	iqvgvcndpQepPbzf0X0+iiLvip9XXLrB15aBdRF2bUE1m4sngQCaphYJDMGrhENa52ZBRjwZ89O4j
	IGQqTkd6UghgKL4E3QeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IvJ-0003By-41; Thu, 29 Aug 2019 11:49:05 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Img-0002ST-E7
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:40:16 +0000
Received: by mail-pf1-x441.google.com with SMTP id i30so1862164pfk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NYPdFLxnP2SpVPuKchfoNl7WNRTdf28Sddkoq+zSktk=;
 b=Ip9Rj1WgWixO0eEXukO7vDK+ZT/ww9GvUEQkD4LC64n0/0Qc8GDEpoiJuF0HhCPuHv
 8k4jneSJtvEEBym3sMHR53AkA3eg71HYWuNxXW1CcXtubN79R/IgzxxMfWiolR6p76mJ
 RjT3LqZ8+4eLAnLRK0mUAkZvRBlAjc5cHW/67Mk1xB4JqrGKuXSDRUSAqoGeI+vFf12T
 KA592ORTLduKPak+3fJDP31m5Q3P9d2+SPjjxhWGqlOA6xMEpymJ+Y1tqS7eJD8fFxp3
 3grDR3y9gQgOb/Z2rRaY8jXXMc0dRwtsv0403OLzRGTji/E1Fsrui/kqBTZ5Z56MRqN4
 oE5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NYPdFLxnP2SpVPuKchfoNl7WNRTdf28Sddkoq+zSktk=;
 b=NqNRCHwr+tQ5sKtOY1Msr/YrjuBXeS5NmiJWJtWi5peLzJcVyn+Y7vP/2rgG8XsyEY
 4Ic0CS3aB+FdEb5QB1oQr/Aoni1bFWvyMFoN3osR6SZRpHWXBnmc/k6oqxKMg2K6xvxh
 I7m6dXD+GRgn/zrLzrf7BQ36Vn/hdqDaOa8aAothQV3eNNuPUW6NDC54NRgRxpZuymgf
 V14/y7MxJDuVbHlqCbe70wyJ6NyfjKH2EO+XiGIGdF2tTvVZcTYXJmSBXfWUBLe8poNG
 DJLCQhzS2RbVTGtqI2MqH7z97KAjeicyCMNN8KGz4Bc7e3lGTgKzvf5w32e9z1+BKdg8
 pU7Q==
X-Gm-Message-State: APjAAAVAr4lQuK1D6T/8jrntLZBoVQFME03mrMvDe5p1XxH8VWcRWwqB
 GDmqPg95ehx7yrnyQ6f9Uul+PQ==
X-Google-Smtp-Source: APXvYqzEAzoTB6eQRNtv7b/1zJHW4m8QqYQpqNOMdCVDQ9YzPCbag3DRbr3h+bUoBTWPo4qrzC12pA==
X-Received: by 2002:a65:50c5:: with SMTP id s5mr7913573pgp.368.1567078809383; 
 Thu, 29 Aug 2019 04:40:09 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id a18sm3924333pfn.156.2019.08.29.04.40.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:40:08 -0700 (PDT)
Date: Thu, 29 Aug 2019 17:10:06 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: Re: [PATCH ARM32 v4.4 V2 00/47] V4.4 backport of arm32 Spectre patches
Message-ID: <20190829114006.ptxnynqcetqbprbm@vireshk-i7>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_044010_687325_59D2ADB8 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 mark.brown@arm.com, guohanjun@huawei.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01-08-19, 13:45, Viresh Kumar wrote:
> Hello,
> 
> Here is an attempt to backport arm32 spectre patches to v4.4 stable
> tree. This was last tried around an year back by David Long [1]. He was
> backporting only a subset (18) of patches and this series include a lot
> of other patches present in Russell's spectre branch.

It's been almost 4 weeks since the first post on this. Can someone
please help with reviews ?

thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
