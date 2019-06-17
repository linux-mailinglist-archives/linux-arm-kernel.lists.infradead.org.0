Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 946D94817B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aC3hmqpOMSLBiwcaT24E56BG/YfD9+5cgmGnHbwr9kQ=; b=LolyBhW7BIxYvH
	fKJHS/7a8U/TJqKo+v1MgLQM7lyWsc7CjTqHc0TDkHBi88pg0J8AQxO3DEQvA52S07EKrH3h1SQiK
	yn4iLT9g7G3GX+GttGksNK0jWknYVdTgmfSxGaJCNZx+ENiuNz7zxPPP9Lmyo0rHZhIVhHKgQnx87
	c8pFtWMuUpQZwf51FVewz+F2ILAWts1Q1nneRpwiJ7PpdeZUpW4iQMHrts4QqEgOc6VQVHAIcoefg
	eGihe78u9LCas4n1PvTsv38AIFTbHH+lYUxKhk7F81LCIOHsFokeqEdQ7G0fW/+lv8DfXMMN6Qyku
	WpdTKEoDp0ZE8BmAo/LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqLi-0004C6-1g; Mon, 17 Jun 2019 12:02:58 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqJp-0002wp-K2
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:01:03 +0000
Received: by mail-lj1-x242.google.com with SMTP id s21so9002349lji.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 05:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1hxMvr3AFMBt/2KDCsNWa1jyIIc9m7a7I03nJY/RIlI=;
 b=ZLJgvKf4ch9jOUgy8gLGHbioq3uYLN0at1dSCYd4HdoN3e+QgDutShCB3hI+h6cmxJ
 pwxS0S6cYBFkv05Mcn9UeevqOH8HXKJgeLN0KIec5sTNuJCQBru3bumtFT6HOuCNYnpX
 J05t4qhnfW64GyGKW5iEkuS/lzsKvvdH8TaBMaHzC8kDBybUiEW9SO1nepPiUjTgccpe
 IYG8/NRY+VwhSs1UHAUXTZ10Rlso+pbp1qwZXbTvL3v2szVw3kcCnwr7lyVg9exCOSYC
 LcBfSp5MZ+QUV739E1O6KfyGyKDrFVdb/GunT9fMRusyd0y08WjJrrlqKM5QdhiCk52j
 jaBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1hxMvr3AFMBt/2KDCsNWa1jyIIc9m7a7I03nJY/RIlI=;
 b=VKzqDUyBC8V37hxcx1BJtI7tv0c8mh/VVSb5K/AqbvFWbE0XrS7vbBXEiLAlXsVisk
 4XAXI3+eWkUzh7FxEEx9B0XL7qKzEFij+QT8+ruJ7ZLFDVZo1AhyMl78vVc8f0IYF5oM
 UtbmRIZFxmcWMJkkQvBzuS05EGGDaS9Ebwk08DZP9fBloX0bKtXbxG6g09mujwIJoafa
 aGv24pV82gBegJxbE6j65pTz3IFJnKcWAF+TwfZQf9x1GPH6EIA5c8FERXNbM25z/aFw
 9g/SDEWx98LhNMOuxxODJCF4f/eUqLCr3VTVujap9WyKAcba29uKd7DBxGkkTBBZQK8p
 aLgA==
X-Gm-Message-State: APjAAAUP2+euV2VqB036Y6p7qYPeAG139/Ega3xdmOqxelS3TVw3Go0E
 Nsg0vszzX4O2blh8Wlhj0mEKWA==
X-Google-Smtp-Source: APXvYqwcBLgdw5efzzeHm6rpocFnUVn9FdBNfs/iye4cCSJhoeAKZDLuJueacDyMzloq/O1LygASjQ==
X-Received: by 2002:a2e:995a:: with SMTP id r26mr18949264ljj.107.1560772859708; 
 Mon, 17 Jun 2019 05:00:59 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id q13sm1732255lfk.65.2019.06.17.05.00.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Jun 2019 05:00:58 -0700 (PDT)
Date: Mon, 17 Jun 2019 04:53:52 -0700
From: Olof Johansson <olof@lixom.net>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [GIT PULL 3/4] ti-sysc driver changes for v5.3
Message-ID: <20190617115352.enwk67aca57fm3im@localhost>
References: <pull-1560399818-512977@atomide.com>
 <pull-1560399818-512977@atomide.com-3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <pull-1560399818-512977@atomide.com-3>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_050101_722286_B5A79979 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: linux-omap@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 12:10:52AM -0700, Tony Lindgren wrote:
> From: "Tony Lindgren" <tony@atomide.com>
> 
> The following changes since commit 4ee23cd76c0ce8622976b3da0e2bc89e6d94f6d4:
> 
>   Merge branch 'omap-for-v5.2/ti-sysc' into fixes (2019-05-20 08:33:03 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.3/ti-sysc-signed
> 
> for you to fetch changes up to 4e23be473e3063a9d3bc06bb0aee89885fffab0e:
> 
>   bus: ti-sysc: Add support for module specific reset quirks (2019-06-10 04:52:22 -0700)
> 
> ----------------------------------------------------------------
> ti-sysc interconnect target module driver changes for v5.3
> 
> This series of changes improves probing devices with ti-sysc to the
> point where we can now probe most devices without the custom dts
> property "ti,hwmods" and no legacy platform data :)
> 
> We add support for platform data callbacks for idling and unidling the
> clockdomain the module belongs to. The rest of the series mostly adds
> handling for the various quirks needed by old legacy modules such as
> i2c and watchdog. Some quirk handling is still missing for few modules,
> but those will be added as they get tested.
> 
> The related platform data and dts changes will be sent separately.

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
