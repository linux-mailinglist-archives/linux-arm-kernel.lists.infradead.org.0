Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C73724BA46
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ReHADCuoioxLCEgzj96cXUfKcgoWhEE0ndRPHBuF8sY=; b=ZN2AbZft9N7Pdh
	2Vejj5RqorFxZa18HURYaD1IU67chiWOhGRNdc91Hxue6DtjPKIDB45XFH/oAwuPi+pm6n3H7Csg4
	+DbgzPbimQr+4saSNLXSKpA4+cUhnNmOPHk43Y6KsmfhWmRn1PhbNUH4F2GCp8Ryv4j9Ihm53I/yB
	PKgwvvvwhD+3VAZ1DEV68XThCFdTz+jIpKcTfT3Oyy0qpykVUCb/wRAwp67whSfaUY8G9nKQvdlzx
	aCFFJTSnMCQqnJDCrJPCKyqD88oYZvOJqK0nXfdd2RR0CifmbIpBLGW1rLlgndsOyd3o50TbAPOYc
	sSoTudyiYyIe6V0zWLkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdaqI-0002G1-DJ; Wed, 19 Jun 2019 13:41:38 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdany-0007aI-RT
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:39:16 +0000
Received: by mail-lj1-x244.google.com with SMTP id r9so3311566ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 06:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=I8Nrwj4ElZXBcf5FVzV3Tn26XcGAm+m+0urFxFQjV6U=;
 b=N0wVLI3jKk4wObXwz8cGz+NvM5k9FfBKEJGf2fNZDS9Juh5qYLFbZZ+7lPUw6YRIze
 mbrYkXj5x7m0+q2W4L0/oJFqtsuETgjfmQbQDnszyH5WzhPOhj1RLZ3LPwS6TRyYD9EG
 mEB3QJb+hALovKwsDjoHPja1+dZ0Yy/fa4AMgmZtOnSrByejKpa1i8hDlhIx8BGVN8BU
 W6gtnle9d1Czq7W/jiNq3W3nIPle3u6x1GHTVksOFl1+SoC5e7Odg0KnuYXiGyR+WfAA
 gleCahfGsWUuLOPJhxVzEyuUeoa/635yMuILmCB547Uf/zjeQEw0nlzH+6viwTZUqFgQ
 8eDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=I8Nrwj4ElZXBcf5FVzV3Tn26XcGAm+m+0urFxFQjV6U=;
 b=eOz5qbeQniy2nzlx2Cb5QtU/LOGAfyEBggiAH9nWIJVAvQ/Aadt/BgzNdGfuQ735xt
 4s9UpqUIJbOTjvEKoXm+bV2nZJjb/R6C8Srjqt/x0FOWuHXrYhdg3PslbJY/w+hHNwsj
 A5JdRT00jd5DJ5dP8R/M9SthL3ds6Yw3YzIQgVmzxweileWeMB3GOREME6Syh8ZfjVTo
 FakAK2MGbzFl2AntGBQKsQqvVxFC7fvZNJzEiqSunO3tJjKJwRlfVwwOwfx4sr7fDxGw
 U2b7aRggh3sTLUdeaCNdE1hWW02OCE3EHxiMMYGsZfSafB88uVVOkqMguBcpBbK/TCPl
 W7tQ==
X-Gm-Message-State: APjAAAULY5hgli6d/uFErErNYNnub/Tv8zHOHFoG4yPF80tf9VDFMTV7
 PnV3k2T4bfMcB5SrJevisPC4+MZ4VoQVzg==
X-Google-Smtp-Source: APXvYqweauG+YK6x1oUHhM2R/NzXwxeZlWtJjJkH915o9vNzhAi8CToRGyd13k1Te0NB02ORTjn97w==
X-Received: by 2002:a2e:9ad1:: with SMTP id p17mr35460317ljj.34.1560951553415; 
 Wed, 19 Jun 2019 06:39:13 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id b6sm3020618lfa.54.2019.06.19.06.39.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 06:39:12 -0700 (PDT)
Date: Wed, 19 Jun 2019 06:25:43 -0700
From: Olof Johansson <olof@lixom.net>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [GIT PULL 2/4] dts changes for omap variants for v5.3
Message-ID: <20190619132543.ojwfslo7rbmznsog@localhost>
References: <pull-1560399818-512977@atomide.com>
 <pull-1560399818-512977@atomide.com-2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <pull-1560399818-512977@atomide.com-2>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_063915_037100_3C482F90 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Thu, Jun 13, 2019 at 12:10:51AM -0700, Tony Lindgren wrote:
> From: "Tony Lindgren" <tony@atomide.com>
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.3/dt-signed
> 
> for you to fetch changes up to 8f62581f820d32eec9698e477ddff21ebfbe0541:
> 
>   Merge branch 'baltos' into omap-for-v5.3/dt (2019-06-12 00:57:27 -0700)
> 
> ----------------------------------------------------------------
> dts changes for omap variants for v5.3
> 
> This series of changes improves support for few boards:
> 
> - configure another lcd type for logicpd torpedo devkit
> 
> - a series of updates for am335x phytec boards
> 
> - configure mmc card detect pin for am335x-baltos

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
