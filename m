Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A568DC49
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 08:55:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xsb2DMdrzrMCJ34HDEwoXRanF80UyrLrD+JKnnQQu2Y=; b=jU23JQBhMLs8zM
	DRpREbRsAzEFlnkO7RjNr5HFVxdqbAh5sGDuU7d0sQ0F8N06p7o1H1uvQlWwDAdb/ymekdV2P4vJG
	2A6ERb0SyqGokFVZYdeI56ckW7oayrjXL6lvKvHV/HGIYbNJcsrkxmbDiAlAYYiyI9Z5TrMqCEivE
	HfWOqgnZH1mYdfad2OJXr3XTzlvnbP3tMwcqx5icSqwpSgm+33aj21mZdlWq2IKd47dE2FpuUoACz
	KgNF9g5JrQ7d2IByQaZWpU/uJdJCL+5yVlfaYREgUBzU+rze9/cOeLsrl5Ap7Dbz/LFsWYrO5dAcK
	9vpWHYOh0m3MsJjFSMGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0Cf-0005AT-NG; Mon, 29 Apr 2019 06:55:53 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0C5-0004mi-Q6
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:55:20 +0000
Received: by mail-lf1-x143.google.com with SMTP id v1so7085465lfg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ViXw/lf4TfCaqZAJA/ayscALfbBnnynlxB3s2q++euI=;
 b=w/r4dGlVy/3p3S5Hf8IIJ5/BicdNfPr0uxEiP2F4BP0Duud2oMc4gpEBnRVm6E8arH
 QCSSvwxeaNKd03GHLDTgEfP0WGxhRBefeW+qZpMLyHD7O+Wpz1Wmlp7theKmkdkAxTuj
 PAF1SPhLDZQ9pMjYmV0zYcYtKFNh0vBIpIdg4J4+0eZ5Zz+hhflbMOP08ojUWs803z6t
 wiUBlJPwPg/AXntVwR5khON/SYe3hbWiuc1GYrbr0x94ehSBPkfeLGOL9+D2Cag3Vme0
 IyKJ2vf1P6x3BUrZKr6czurBxWuw9EZiCX24riKTxpFy8yUGyq9v8M9xmxgIinPmSc+X
 7Ewg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ViXw/lf4TfCaqZAJA/ayscALfbBnnynlxB3s2q++euI=;
 b=NasE6KzBqQyRdVQ6ang1IUIF2Qk++B6jfbZ8NCOF+QSrXGbJqbb5eZjymZEzXMlVD2
 68b5g+63ty2OsndLvl9A5JKRCoMiSYQxgoNepYM1T/TEPSLQsYZyw2IiZ2BgYsH2if44
 Hr+MIOKowZpT3nsOsV4a0JLCaQqnqrLPrEOVD/MWfhrOBeb3RFRoh361I3tcrEJrh58r
 /GPBcFqArLTb1XldQ1QL8pMvD8QwnVWKxraNhd/kUABbGZf4ZDVAOiTQ/6o/0rYWO8sz
 vddJ0AJ3gZDZWLeHfrrySAKcfQul7mFFHeBP6n1bxz+fs5eXgHSgXqZjc7ZQ0vM+Vd4d
 x9Ag==
X-Gm-Message-State: APjAAAVvOJqIloayFswaDZmNXY5FnvVEDfeINaE+2LwhgPIlRRC1B+nx
 Cn4Dz7JkxlCvGwywt3rffIHqQQ==
X-Google-Smtp-Source: APXvYqwpGjKZmuvRiMk+BcHWxPQnvC03XUy3SCqS56zU/T9W2waRywWBysHx2euCS7YqwCqQE6HPpQ==
X-Received: by 2002:a19:428c:: with SMTP id
 p134mr32928239lfa.108.1556520915728; 
 Sun, 28 Apr 2019 23:55:15 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id q12sm7125567lfa.37.2019.04.28.23.55.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:55:14 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:03:07 -0700
From: Olof Johansson <olof@lixom.net>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [GIT PULL 1/3] soc changes for omaps for v5.2
Message-ID: <20190429060307.5mb35baxsi5iqlcw@localhost>
References: <pull-1555087688-487222@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <pull-1555087688-487222@atomide.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235518_149461_FA089A64 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-omap@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 12, 2019 at 10:02:05AM -0700, Tony Lindgren wrote:
> From: "Tony Lindgren" <tony@atomide.com>
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.2/soc-signed
> 
> for you to fetch changes up to 72aff4ecf1cb85a3c6e6b42ccbda0bc631b090b3:
> 
>   ARM: OMAP2+: pm33xx-core: Do not Turn OFF CEFUSE as PPA may be using it (2019-04-09 08:05:17 -0700)
> 
> ----------------------------------------------------------------
> SoC changes for omap variants for v5.2 merge window
> 
> This series of changes mostly consists of ti-sysc interconnect driver
> related preparation work. With these changes and the related ti-sysc
> driver changes, we can start dropping legacy omap_hwmod_*data.c platform
> data for many devices.
> 
> There are also two am335x and am437x related PM changes for secure
> devices that have ROM handling some parts and needs EFUSE power domain
> active.

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
