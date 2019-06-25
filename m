Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 840E054E88
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:13:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oCDHCBBjVTuADp4tDmKJ4fO26C/16dAoZ/cTtJj3Xow=; b=dqfyPpO7fh+K7r
	FFnH2Pab04fSUkhbdHxRSeHxsxiSrMXVCFhU9HCKYsJdfSttV9XnboIs9B1RluUYJ2Ms1mIX5jI/7
	NzGdrbKd3p3OXRZZdGCUjrCbdwBHGWkuEgtrSlSsVpt7G5qHTNyQUTyB+Pt3E7Of6IeSiqdSz99Nt
	cfvKjjZXXCQuhx2LNM+cVzut/5OuGXFxB9AWqiuaV9g/NBmtPrEk3cKdCaEPIMs7Uu5eALA+4yei2
	F1aItHghm6whO1GbAn3WM0j+ozHmQoB9NfrZ2ubxw7f5F9RvV+iQlIPfu6xCA09xPOIc40ZNLPw7I
	Q8pIh49gB3RmDspvORLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkKf-00008H-Sv; Tue, 25 Jun 2019 12:13:53 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkCG-0000w2-2e
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:05:14 +0000
Received: by mail-lj1-x243.google.com with SMTP id v24so15962074ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qxqCorAGy2MAZQkuKJiyGeZj1RhrCJf1RH+LL3myVCQ=;
 b=Y/D9VWUOPy2ux7lYcCLTrBdCtUsgdrOSNJVrmxTtEVY+zFPNI5hIxYiTXc32XzvPXk
 UYy/LUJQwOuo4BxifzkYthYi4t72FWLzfRADlj5QKdV0yxNoZe+RashX7edY0qtPU/KB
 KgF0lckeVvTDgmbBduixuFX/44dhFRslylx66OA1udRchf87GII2vku0DmKyb4R6xWZa
 thBDs3BxA+ixP6NpIpAFWymW1vFvyZ1BzXuaj9/Wx09jWNOTYXGLquZJI9GcSjH0kNL/
 sasdo4BVUXdpVpZ5qPWIz+YF0A0/rtTSW9Ac7PYCQj8nsGQPaEwyWOJ2rIKMs77s/sVW
 hngQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qxqCorAGy2MAZQkuKJiyGeZj1RhrCJf1RH+LL3myVCQ=;
 b=iFSBqUneKWZox4dqAKLxcDjFPRz/gPFcx16Q7mbLtKs4WUaL9ywLhzL0q17/YMdoc4
 7jO6PEQDYJiU7SE0BpysfvygSl4TJpkIe9otiHwfX8jCaRFL5+MQpGoCjSCJzUVtDcsV
 r9/E6gNz1YCPfiDtrDdBHkq9RrqIB4Ey9MYwfji+y1N6MyRKIQismYxAZ4bN+OD2QNia
 fXS2wOFgmhhbfgIlyBE+KXHnUxjOQ1SGmwV9axbzF7VcG1iVzIj7HDQ4WTVbL+YZt8pG
 db71xtrJByxD8pfzsu0xcLTemyNQWhTdDdGaSBRPU1gD0/yWdkeGK+akTOAXOMwRV/54
 DBGA==
X-Gm-Message-State: APjAAAW2Ov6wiAlKVzi9mfa10bvouxsk+exYOLZA5e1TqyAGdgB8wWe3
 HTQtaD9URNXUBFEA9IQi+EDD0Q==
X-Google-Smtp-Source: APXvYqx/DfSTspXsgLNKDQN1Bg+yw1ClAxWIVQMzZAtoBqE8/QLkbwzE6qtwYd4+GmtO+VOpu3BhOA==
X-Received: by 2002:a2e:9ac6:: with SMTP id p6mr3074324ljj.100.1561464310105; 
 Tue, 25 Jun 2019 05:05:10 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id j11sm1935335lfm.29.2019.06.25.05.05.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:05:08 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:49:56 -0700
From: Olof Johansson <olof@lixom.net>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [GIT PULL] ARM: at91: DT for 5.3
Message-ID: <20190625114956.y6nrvfiuwm5duitz@localhost>
References: <20190621212246.GA30172@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621212246.GA30172@piout.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050512_262240_2BADE6D4 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 11:22:46PM +0200, Alexandre Belloni wrote:
> Arnd, Olof,
> 
> Still very few updates. It is mostly about removing DTC warnings by
> switching the sckc to the proper bindings and converting the atmel
> bindings to json-schema.
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux tags/at91-5.3-dt
> 
> for you to fetch changes up to 271839b0a819cbb76ef3ce5c7237d6cb624b3eba:
> 
>   dt-bindings: arm: Convert Atmel board/soc bindings to json-schema (2019-06-20 11:13:52 +0200)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
