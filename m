Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7C154E8D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8tHcnZZky6sqwdr96CVvB2gVd/tVA50v3ncdT0jMjw=; b=cK65fl2Kad7FaZ
	TnRx61kcYTIBem+2U0Hit5P6QYsslwmcEcF5mikJF1hg1TkrGR6db6+J+eGW9dSdbAx2+6upIjz1n
	Plr+yC2bYZbYfT1p4QiLFC3rJQhNqZ8AXdcAB9r0VLPzRjR5SYrNVx5gUNvzjw+qy5WUt1/hERSzW
	jQsmWRyfdmLrwk4wXECLiL5Xo2kvTi2PjRllO0SeaJNgo5tTouBTdaKij565Gw/K67xwtQqQedjJD
	gMMevIJhdKHp9vqY6q3NV2r0DPNMsBBeApYe7HoPFEzJsGAcysdyAZzzpycY2D+Drnx41+RuzhVrw
	vCiGpfRbDqfHBLG23L0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkL5-0000f7-1c; Tue, 25 Jun 2019 12:14:19 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkCH-0001BY-JR
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:05:16 +0000
Received: by mail-lj1-x241.google.com with SMTP id i21so15997177ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xdsnLrsYJbWERRxV/nWb2MgRMp7nkNf8MeT+JdwKIc4=;
 b=ROxVYJGUnQP1c0Gh5ckMQ8ayBmQuVwDQpvAFJzk2/AFEuA9/hngDWesn1SS5NrllBP
 rwNcSCYOtzbaUym3oQkFdnxan4tbjhwihsV3/Wcf2AaBM44wuPNB3pxLIAtOR6n894WW
 YFOgjQWt964NbmSzCfZuVC/Wx+HY8YTg42/uyaoHORJ1PC1xj1SftkQyWYJSPxtFvGvM
 MZCHgcOR6PY6CQinuRIMoIx3+bmfwbNB82oDVcFvpjztigk444YRkHU9uZ9CK2/gNoSm
 8KyHkFSYK8lOt2b7TTpPOaEjtCJNnpiXukgr/6T+h+3m4NGGb8Us3N+/zdj/BY6SXvyz
 AY9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xdsnLrsYJbWERRxV/nWb2MgRMp7nkNf8MeT+JdwKIc4=;
 b=oWVVee0GIBQvPUk9NVM1ZErf0P1VEk25BsNCuohsMDREwSLyqbo227lZ6/qzIrtcjC
 UrHhLI+p0FL5IuQW08JilEeJiH2DZVqZ1t/5tNwBeqqw9HizmYT9Up1gOPSk+sGIEI3l
 WT9IsPn7sGCG5AERoZEg3Fye5WRVXjmwlPWcsBDIQDw9RLtBGG7olVy3fbIS2IOa6RaQ
 RJFxvPX4hkYx7C31eLwCi7dk7h/j3wYwTT80nXcZ/hMj1GAhikRfkYoeR6yYqc4YlUIQ
 OoHW2OYndbUMiiaUFr2cuLxPJCd/xIf2iGm4An2u57Qp5IpCy/EvWRL/LYFq2FLY5CUo
 xTBA==
X-Gm-Message-State: APjAAAVnXm+AvpiOzT5iUECyp7oMSlRq73Q1dPwRXwDHY+dbQAVJ/PRj
 mFLsttBoceFskrqgdelnE19XtA==
X-Google-Smtp-Source: APXvYqzrIs/OYd5IboKOCIHa0eUKnsXaFdu6aS2fUzEOM0jbd9xTAXplq2G7a30bDl0eXbt1kQ7lxg==
X-Received: by 2002:a2e:12dc:: with SMTP id 89mr21141179ljs.40.1561464312159; 
 Tue, 25 Jun 2019 05:05:12 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id 89sm2218804ljs.48.2019.06.25.05.05.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:05:11 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:50:42 -0700
From: Olof Johansson <olof@lixom.net>
To: Robert Jarzmik <robert.jarzmik@free.fr>
Subject: Re: [GIT PULL] pxa-dt for v5.3
Message-ID: <20190625115042.qrlpbjzehjhxilvh@localhost>
References: <877e9ayg88.fsf@belgarion.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <877e9ayg88.fsf@belgarion.home>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050513_767102_18EAA2D1 
X-CRM114-Status: GOOD (  14.06  )
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
Cc: arm@kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Mack <zonque@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 08:45:43PM +0200, Robert Jarzmik wrote:
> Hi Arnd, Kevin, and Olof,
> 
> This is the pxa devicetree pull request for 5.3. Can you please consider pulling ?
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   https://github.com/rjarzmik/linux.git tags/pxa-dt-5.3
> 
> for you to fetch changes up to bea8754e784ef894a7aaf1821a1e8b700cc70f32:
> 
>   ARM: dts: pxa300-raumfeld-speaker-one: add channel output mapping for STA320 (2019-06-24 11:35:02 +0200)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
