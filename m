Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C67B54FD7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRQMOJ7CqLGTBiI8az6+OzmQoZiMaHluxuhOFv6jOSU=; b=GaR2mIqT8xBEYD
	CA9iOQpvHcqarw6GaWk71nhOJS0UDaCxwKxWOx68O14J0TAEPNIMGmbk1ugBCPTAGXvTI4149UvMD
	t7cV9XxMpgFKTL5NGZmkL0t+9syd+q4laNmZXHUw0b+4iaXPGt6s+VTd4mrnrC3AzL2Ao9JbNh2Q9
	LXIjQYKbMhf2rjJbsxRy5hqfRIdQa/fQu77iWKWtI3+p7LWAhSB157BQYY2Y9hSsc7NPoZG2xcYYZ
	OP+iXT+mXNIjsyWKV5xBC/Id5w+2+OcTgFs/q9XE6ohywSxJ/4k9Yr0gsJzzlfgNdP3sWMwKHmwEa
	14jeKPec6zbT69gWaztw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflBm-0005Ch-FV; Tue, 25 Jun 2019 13:08:46 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl7y-0001aV-Vx
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:04:54 +0000
Received: by mail-lf1-x144.google.com with SMTP id d11so12588201lfb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eQzUmO/yDPryTDEQ3h0y0bVtCB5daoADnlN5nOVyMMw=;
 b=bCVsNv5e5J0DQJ40FfhYgOy1q/MUPEySUEeS5QAfqvrjKk8oYduCz04Ybw4a98kb4+
 B5+uNxPXPMIBXiMt1QHCdzWTWU3xBt8fCvoHdq1tIZC81NjKz45z5HDISjNES/iifk6m
 WdK/ZgVvTaPD6pcuTj+2erFj5czL3+47idB8l/yj0oYjS9WBr3IzocTXD+txtszGqwRz
 jpDmmB3MVfA7LxBay9O6BiXVY/GM5CnMJpOEqsOM0RQMIxW5vSpaLr6i/6Oz2B62W8bh
 OuAD0JpmjoE1BkoVe7B9Yb5L5y+VpWCZs/yrhC9i3dAAJB7y7PnCD2XD3m+FDtONiI6o
 UfpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eQzUmO/yDPryTDEQ3h0y0bVtCB5daoADnlN5nOVyMMw=;
 b=OXN5UIcKmAGX235AGa0WHfyDt3XKXeiJV4h2k7Z22sfqAMzxvQ2hvsjHlEGe1j47yf
 /0a3om872qJKcCc/vsgLoXtKbMOr+D/768IE3yCcTU7RAkDtKeY4tzW0cJqPa1/hjQok
 q6ALp5StuHU+peSzJ/1tjKxIhFn2P84KkNj4aWLi7sJOYjpQ9RrxZs9spsaNAbrDyE2C
 nQ+CeV8QgoOPYPV3zHs3Zpcl3lrXKeI+l8+CQudyMSx+XOjUFCM9CSdnw7US7Uj0zy9H
 x1OVmF0Cdw2NTjDNPQ5bQWPvkAnJvrs6QyVkDx/FQ03hDpaixBQqleH+xyodGgim7xXH
 d46Q==
X-Gm-Message-State: APjAAAXkh4LcXy7gzwDJulrhS5dJ20aJO4dsIEE+50SHL5mZ88sgcGC8
 dvw81SwnF4vUYTu6dxaTP2W/myEpjOn0nA==
X-Google-Smtp-Source: APXvYqyI2hHLxBxby5RkiQn4JKsfR70VLafaWYQ4ovy6vtoE2UUiMLjtC3JanTeQ1zrv8W6cfAK8dA==
X-Received: by 2002:a19:7f17:: with SMTP id a23mr38316385lfd.49.1561467888965; 
 Tue, 25 Jun 2019 06:04:48 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id b25sm1941545lff.42.2019.06.25.06.04.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 06:04:48 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:42:00 -0700
From: Olof Johansson <olof@lixom.net>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [GIT PULL 1/5] firmware: tegra: Changes for v5.3-rc1
Message-ID: <20190625124200.toijgcugdtxheaxd@localhost>
References: <20190621150206.19037-1-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621150206.19037-1-thierry.reding@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060451_343544_48CFD07C 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Cc: linux-tegra@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 05:02:02PM +0200, Thierry Reding wrote:
> Hi ARM SoC maintainers,
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.3-firmware
> 
> for you to fetch changes up to 61ed7ef952fc482ec8d4a966ed0d1e32df276c59:
> 
>   firmware: tegra: Early resume BPMP (2019-06-14 17:45:17 +0200)
> 
> Thanks,
> Thierry
> 
> ----------------------------------------------------------------
> firmware: tegra: Changes for v5.3-rc1
> 
> This contains a single, simple change that resumes the BPMP driver early
> so that it is available when the various consumers want to enable their
> clocks.

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
