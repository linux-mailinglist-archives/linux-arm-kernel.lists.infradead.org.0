Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0415D54FE0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:10:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7f+n1i9fIDKapqdl9wX0aSoS+UjXLF5HVwg0wwpyJ8=; b=FsEUyc3Yv+5RF1
	+DIUfQhS0YiRTUlfZIjUrlMbiDixFNw9kiRk0SwdCgOdEyEqe5J+T5BFwQWKXQ7EBaazP70Mi11Xb
	W57Axgwzk5mkA46yDigy4IwI5pSThOkIffBdSnP+0wDXhb7F0lPAqB7pstWg4vxllLosceLyV2/Tr
	/zCfsghL3PtKIwPYuFVK1cfQi5rbOK0mDFks55AgiwrTri65fw7H4BvDtF4ojzaZoPFFJTB4w5VBw
	1hs3juQUDwPcHCWRJjMEvBdOklBXSyRK2eUlKsFtCNq0XllV0f54kkTThw4qD+EHhZ4yST6gMf33D
	qGzAJo+gJB+P90RbjT9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflDZ-000840-3N; Tue, 25 Jun 2019 13:10:37 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl8F-00028D-UA
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:05:10 +0000
Received: by mail-lj1-x241.google.com with SMTP id r9so16171935ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=R+Z1yYfjSUnTExoN9SGXj4QaFJxhrnDmjKItt/HBN0A=;
 b=0YbiNJyTg1Bp+lUZir9dfuY6jY17rdk3rTETLK1dMvpBIEc/kKtVNffgI1JOg2AU3X
 FsZ3A+PuSR26Nss8MIMlD5lbW2Yjk9Rczv6RjxCjjPT7zBarN64MgWVHlknM3J/Wp7xw
 hGqYBEzyiMy4GcGzByiBMQgOce1tKdhubXXPzifuZBBjzpRUZ/LseN+5D931KWeqyw9P
 R7F4Kvt/rb6spXiIsl2gF9UrcKYG9t9vIuwlbokCNivmFzQIOmFDEURegRKZ5eHe0IJE
 BOekELGmJ8pEjS3WW4pc+VCUnLGoKOsa5hxlqNwR1QqgRIrXb3H389OAVWGxoCbisUgq
 Nd4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=R+Z1yYfjSUnTExoN9SGXj4QaFJxhrnDmjKItt/HBN0A=;
 b=G29TWL8o/H6GeZyqZDUOAHJdKXNUbCILOiEXJHxnbkRQafXt7Vw6zxEqgB5r1yEdSR
 /+tFfIsKMcWET8n9a5jmpQxGs+/tT4LOkLZtAEVvkgoX4te5QtF3Au6wHTohRVS9FRPU
 zqbc6ce6ttMhb1zPSapz61AphCua1C+ySTapFTJGWTYV9+QECnx7OGO8CojrqRMUQuvR
 3QFWeKYc0DEitZrAQoBV7/rOTLpPyrsBfOCZvFKGk0oO6BfRD2FtAMiGeWKZKOrzn+wE
 4py8dO+TqgH+9mghu3eFOMJjNdya5qpJ2WwiAP4Aoo9PX4J6BuA03L35sZfXFCfSkxsz
 VvlQ==
X-Gm-Message-State: APjAAAUMAw9/36ezj2ABYcTZvAd5HJ/GxvYvk+iMsGJdBmLiUU3h+2yv
 +MdroW4G9VwrE9+LXHwMe1JbKQ==
X-Google-Smtp-Source: APXvYqyX3iah1YDtPpl89NoliPkNnma+10zBnqN0jSuNEDvKqCzEobABmxFR8L1alc6B/PgvEmASoA==
X-Received: by 2002:a2e:3a05:: with SMTP id h5mr74711064lja.114.1561467905360; 
 Tue, 25 Jun 2019 06:05:05 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id s24sm2116329lje.58.2019.06.25.06.05.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 06:05:03 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:49:57 -0700
From: Olof Johansson <olof@lixom.net>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [GIT PULL] ARM: mvebu: arm for v5.3 (#1)
Message-ID: <20190625124957.uca7hfbksobhepue@localhost>
References: <87imszmc5c.fsf@FE-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87imszmc5c.fsf@FE-laptop>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060508_508158_25AD6717 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Arnd Bergmann <arnd@arndb.de>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 01:05:35PM +0200, Gregory CLEMENT wrote:
> Hi,
> 
> Here is the first pull request for arm for mvebu for v5.3.
> 
> Gregory
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.infradead.org/linux-mvebu.git tags/mvebu-arm-5.3-1
> 
> for you to fetch changes up to 332bbefe14e8b9cd77cfa3b0db5089d98ed6c3cc:
> 
>   MAINTAINERS: mvebu: Add git entry (2019-06-11 13:24:09 +0200)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
