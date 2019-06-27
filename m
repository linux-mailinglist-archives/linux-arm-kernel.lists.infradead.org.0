Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7B257B51
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E3s4rTVryW+LrntcG17Crf2OcGiCu1U4heu008lzrlU=; b=ipekjdlPAvzd4w
	tpl541fvyQwm91UeNz4H3GI/kJ4F/kJuFmZSyVJk7+XAJW6S+hPEg+9yCGYTGMkAUI1FOpb1jKTw9
	go48iqebPaJb1FYlnwKkKW4h7oVBR0ZOAF02TV0XOJI7mh6YEOqAMmq6FXi8eBhkU//vrxlI8apEH
	4EJG9o9/1/hPMt4PU+xv+BwnzIUWefq89XGzl0zWUoc60AYeAjaGpFWhjMdWjJXx6Py+QBCF6FqXV
	ryhhqVH56IFrqy1wX8bXcNR80nCcbQ8obzB4Vp5wdsLJm9IpvejnjdZXu/7JX2lTyYQ4ispZVBNF1
	6OQly0u4TuKzSSQadpHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMv7-00067R-Uk; Thu, 27 Jun 2019 05:26:05 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMpW-0006ep-35
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 05:20:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YfeVGiINGvcAL0ylcIiHvWlPZAP7LI/BWFr7j7u+Ma8=; b=NOuzAQNXvvmkxWVWDtwjztyCY
 tYdjY1dHC/nI7SWQzGQR3UAFKrWyiT32Nlt2MI5k2dKSBkDXhTITs8+82rPu3P2N+2RvrfMSdIj4B
 8i2ggOokfVV0jWtDUDaoJU6u2S2JbZMZkd0KwMt6nAhJfQ+sI8fSU8jZsfZrfzY5qrJyazByNHxPB
 bADpBrbd8i+1C7SjLa7dBADGyNyiIIf/sa7yVb9ZOe7vClVWDc9S57jhtY3/6KBbJYeYB27UuqlTk
 41cNipVMyPtNep4RyTnvdo2pG6WinoYxPbvyV4TSGAFqmWNCSzR6zKabandux/VS+pRT9+2ddkYNV
 LWDzGxWzQ==;
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgKGZ-0003eA-Js
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 02:36:05 +0000
Received: by mail-lj1-x241.google.com with SMTP id h10so676025ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 19:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YfeVGiINGvcAL0ylcIiHvWlPZAP7LI/BWFr7j7u+Ma8=;
 b=sAfqDvGMAcNLiFr36fLugkcYKTHTYqWGqR+DQH4MoHxYQay0f3uqvRcAG5APx+IHyk
 w1xSZLlLM0yaMsIrS7gfZM3FsTGTYVNyKaUMpnMspaRbpwpSc1P3rftfh11sTf3ko0JR
 dy4up0doEZpK5BGyCa4P4xssnDTwhbSR0KRdwJromVUxKLK/x3CCof7M3jKz4AHdKZfj
 YokdCmbzbQKUMLm2w6xj3hMiAYn8aw0zjSnQ2JxSM7QWpqZWQmUS0Ulqe8bV3f8mLQkL
 J2Wlz842sGj602Acn+0iV2uDg1jmTQ6XJ7Re60v2onqcugRBmiSGLpIVBlfXd3eWi0TF
 h+0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YfeVGiINGvcAL0ylcIiHvWlPZAP7LI/BWFr7j7u+Ma8=;
 b=pQq3Gtfisx8lN18O3C2Dcwg23yEbo/hZc2dqGiJPXR6h+Qf6K74IgFXtvyyGG0ApSq
 uBIxFDvKDiayvWmHPKJYBl0kR81XZu1rKF0SFQ72hC19A06tY9tAtKbf+UueyfGNRtZ5
 s+HL7nfJocDdseh6Cy17Dq8+4K7gIc/kDXLRgLnaW072tn2RJvdIhGnS61e8vqci1q8h
 O4ZrFshA1I9ntH2OPr9u9v2wRUwGqnEVoYxfK2cTZu8A3CR8lbNkkU5PtDDNL8meq0HU
 uyutSt+aiEggvDH5FLZcw+v4NMuXWbjNEmCOfhUv4Gtx/IYRlTU8mshSRfXf5HIvQOEL
 wMrQ==
X-Gm-Message-State: APjAAAXiCaYzFpwpaNmPU+8ziZQj5SDH2RbISNM05wiYDrZKhsBiXJ1H
 ne7d3aJHoo0QmvbUBPSIv5g4mw==
X-Google-Smtp-Source: APXvYqwZ7Y+xuY7WVTjN9K0TZJUIVEdEoWWFv6u/0pgw4bKbyu+FElNlkWjxmys8iw+aEojM9sjLvQ==
X-Received: by 2002:a2e:5c88:: with SMTP id q130mr913537ljb.176.1561602840483; 
 Wed, 26 Jun 2019 19:34:00 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id 25sm106720ljn.62.2019.06.26.19.33.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 19:33:59 -0700 (PDT)
Date: Wed, 26 Jun 2019 19:28:42 -0700
From: Olof Johansson <olof@lixom.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [GIT PULL 1/4] ARM: defconfig: Samsung/Exynos for v5.3
Message-ID: <20190627022842.k4gccn6enqd75ufs@localhost>
References: <20190625193451.7696-1-krzk@kernel.org>
 <CAJKOXPeCQZPsF1kGKmhSWgxsWSsb4cre6mhS=n=kJbH63LjmUQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJKOXPeCQZPsF1kGKmhSWgxsWSsb4cre6mhS=n=kJbH63LjmUQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_033603_670230_ED512030 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org, arm@kernel.org,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 11:14:04AM +0200, Krzysztof Kozlowski wrote:
> On Tue, 25 Jun 2019 at 21:35, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> >
> >   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> >
> > are available in the Git repository at:
> >
> >   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-defconfig-5.3
> >
> > for you to fetch changes up to dd50a69b5697532666023766688c6ea642e5a443:
> >
> >   ARM: exynos_defconfig: Enable Panfrost and Lima drivers (2019-06-19 19:23:35 +0200)
> >
> > ----------------------------------------------------------------
> > Samsung defconfig changes for v5.3
> >
> > 1. Trim several configs with savedefconfig.
> > 2. Enable Lima and Panfrost drivers for Mali GPU.
> 
> Hi,
> 
> I forgot to mention possible merge conflicts (although Stephen Cc-ed
> you on mails). Resolution is to accept both sides:
> 

Some of this could have been avoided by basing your branch on our fixes, but
not a big deal in this case. Thanks for the heads up!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
