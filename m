Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6761D3351
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:44:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MDK0Y1FrdFQ8ytetTvUkxoy9XWfAm6W8lXVgOtJlQkw=; b=oju3JnK5lkLdg1
	bodb0/ooSf9uxmnOG5JOUXzsvKJLENvnxHkIcq/OHf30Nu3bE78sBDhY7gcpHEt+lI1DpMIcs+TCb
	szEqrh7h7MR/4jpqFNVBTchLCEAE48YTePLFvvPdn7V/4S6Sz56IV3Bqyn26orhWj2T7bi1zLzVvT
	oXOZ6l/pe6szSZ0zgMmFrplvIOewe/D3m75UAsbwFSzTtUsB7cuHaoAKb1njUY+Hp41eFbuvA32HC
	aOQk0FM+m9RTpq6i2hyFTHtIzT7kMtQ2Knk2xWRcT5eVN0IRK+FXv+eMiPHOeQaNZNztNJ1Rbak+w
	lk1WfSae5vasPwfI3zxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZF6C-0001Mx-3k; Thu, 14 May 2020 14:44:36 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZF61-0001Mc-OL
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 14:44:26 +0000
Received: by mail-pg1-x535.google.com with SMTP id b8so1319264pgi.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 07:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3517NpCaDBacg/Dwp902mIgUINgvR6pFPGbL/kslfaY=;
 b=blFSU6/kX50CoVlrbhPDy8DHQmKvZ1iW5M5e060phVc6yrJAI7mhafMTdfQ8a5yg8K
 kek6m1LiF3MDFjjFB7XMLpcjP1b9fqTCsBplPrLzh4BzDHMECFlXzJ/v6D5aNI58YqSr
 zdol8qDrATXLReGmRCXdVRXEgxpVJqqJVH0+svDutlfjhKLEGTuwFY3uUpvF8xQU1K++
 6vnZuE4QNeEhxUt5c7ryXSZcdtH+lGXE2bT3GAl8WnVbDe/ABhm8gAeiGVfLLW9Kf+UD
 05RdbAQ3f9Hk5nCbXPcQTSu4Ox7vTPoXvCk+Bb+0RHi3LoGRwiFUEMMUPKMRGvu+6UyP
 6QfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3517NpCaDBacg/Dwp902mIgUINgvR6pFPGbL/kslfaY=;
 b=r+UCtJlG4jBWy+OfgReg7BgolIRJ1xZEfRC+megsdtJ4DsISrBX9AjacBFvWNdTxEf
 NX4htojngMvxOJB8gPP9xmVXV48SYXzPrgBbb9LOLJrWhENTePcuHq+GN7Y3mCyqCvhy
 DBPZDxFXY8I/2i8kHbgL5gjt6T/cOVTwdtVfQNKICybKU9OpPC1CEdBRRXZaML+uImxC
 NpYQIS+WGJAsMuBHJQ/BK9dDz9O+A2eVMPh8X7p8HBzg/KK0Ad8Py59icm1YsVVIQq3G
 NwwsyPSdTl2HHu8AhH/B3HaUkDeppzfTJ5WjYHCwMkJRUpSkO5wKAPHz9t+qh8I0xLz2
 QTfQ==
X-Gm-Message-State: AOAM530XBcSqbkWMZ6z9QChRSxb9DifQe8jr+Uv3BdIlYQVMJcNx9a/X
 trQwH4KhhlzQ1wkvlwqHQkE3LSs8
X-Google-Smtp-Source: ABdhPJzTN+o4BlFp6Ad0119sdkLFW5d512QRy4tNm/IM3mh2dtrtu8tX3mFraIaxR60CiEHH6aB7Sg==
X-Received: by 2002:aa7:8c0a:: with SMTP id c10mr5081607pfd.177.1589467464241; 
 Thu, 14 May 2020 07:44:24 -0700 (PDT)
Received: from localhost ([49.207.51.148])
 by smtp.gmail.com with ESMTPSA id o21sm18060707pjr.37.2020.05.14.07.44.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 14 May 2020 07:44:23 -0700 (PDT)
Date: Thu, 14 May 2020 20:14:21 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: ARM: static kernel in vmalloc space
Message-ID: <20200514144421.GA6090@afzalpc>
References: <CAK8P3a3OC5UO72rTDWi6+XgmExJmkATEjscq8hns8Bng06OpcQ@mail.gmail.com>
 <20200504091018.GA24897@afzalpc>
 <CAK8P3a25sZ9B+AE=EJyJZSU91CkBLLR6p2nixw_=UAbczg3RiQ@mail.gmail.com>
 <20200511142113.GA31707@afzalpc>
 <CAK8P3a0=+aBJLTvHOskTv=tba_s5b5MzWrYG8mxH3iLNy4hfBw@mail.gmail.com>
 <20200512104758.GA12980@afzalpc>
 <CAK8P3a1DQWG1+ab2+vQ2XCAKYxPUjJk5g3W3094j-adDXSQfzQ@mail.gmail.com>
 <20200514111755.GA4997@afzalpc>
 <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
 <20200514133545.GA5020@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514133545.GA5020@afzalpc>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_074425_813974_A0BD1698 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:535 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, May 14, 2020 at 07:05:45PM +0530, afzal mohammed wrote:

> So if we make VMSPLIT_4G_4G, depends on !HIGH_MEMORY (w/ mention of
> caveat in Kconfig help that this is meant for platforms w/ <=4GB), then
> we can do copy_{from,to}_user the same way currently do, and no need to
> do the user page pinning & kmap, right ?

i think user page pinning is still required, but kmap can be avoided
by using lowmem corresponding to that page, right ?, or am i
completely wrong ?

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
