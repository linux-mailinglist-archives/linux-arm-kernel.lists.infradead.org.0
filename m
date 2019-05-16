Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 816DA1FFD0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 08:46:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1JwV5+4QE7UV/aFALIR5JAYxtGJU2D5tEiu9hkjo9tU=; b=GASXAhyP7+hBTm
	BE90Sh0nM5WBWXfbJkviqbWe8Zmsyw5tUJjwwNb3PimHlCoTSEe0McsPIjbQjIciXTZYtc6qSmJof
	TNNO6Q1g7Rp3rczKHJb+zTWwGBjAA9uF9EoSkiMR8HMDeSHGEHHd8Lu12KDT7aDRaHd5M3GCVl443
	N/r0ZxnoKh4E6QSD/FwPZSo6ZqXvEFz5/Wm8del7Rt7iLDo7jJ1DlDCH5J/Ce21AGvbMV31E9gSR6
	/N8Pihxih+zTEYDgepzwzgcT+TMsQIZltFMRXWqSk9XGHRqmq4rQrCmsGpGjayN6qr4MXP1RdzMcw
	vfSx6CALJovViSwiV28A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRA9k-0000MQ-1k; Thu, 16 May 2019 06:46:20 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRA7X-0004tv-Lq
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 06:44:22 +0000
Received: by mail-lj1-x232.google.com with SMTP id h19so2016529ljj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 23:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8yurLJpyA0snpLnIGjamuwRKPvsvK8FXGYHhAr7DgIY=;
 b=Lcvg8Qo1qBVcFayiUvzfuO3LDeMv4N4WBpCapOdbXqCygNdcX4Yyd5z++2ibiMxRPT
 bbukiTP/9rfzFdHlCczOnaOsHjTW+DhSClpcUxkiOzXzcHukJmY6UiZSxMJrkE6/I71t
 xtTYCDJxDhztsSwQQJ4Z+HZ9Xo6rRCKvS1kaZ3SHCM4EKcn7KgoGQhJuEGH1ieBMYGFm
 K8Av3C/IT5ddYW78IhCX9mryXkq/+bVtHXg8jNZmQbMas8C83CxqiH8m5DA+3q0OgJyq
 YPDSO6JcATTx4KKdgvzqt5AATbJMqvCY4gWYvB+EU3jl+CoPfPuMEcjU+W0Y1k/2l7s6
 i2YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8yurLJpyA0snpLnIGjamuwRKPvsvK8FXGYHhAr7DgIY=;
 b=Q6EHYyjVqIxsWMp83wQu7f8nIxCGK2MMOi/3u+1twTC8Q1VJ3+5Gd2Gh3W0lKepNig
 MIzm/ILmqtj7dd03G4aY23MkAnv1WTWYzpvGL44eC9LFGOU9etDD35cH3n3UxJExXb1R
 lNr9asl1z4OxWgDeODhJoDDvd/RWTKaj5cDmnFdCOalTcfWV5ABm3CxoPUnhzkTrmkjv
 G00iYo/ZNyVQEulSZ/pJFLOMRllEtAoJMloPDlueO8r7vIa7pNeq2uPlDXBjqP4LK8DW
 HMD1XwE60Sy/K/8IahToo81DO/+xPcSZIelNvc2G8+McpJWJv1nxCkYPyznxXKiKPQsI
 Sb1Q==
X-Gm-Message-State: APjAAAWg3A6ZlJkO1X+ytwlKEWv8kQXMJjTkYqwu2RF1yHiqr6M4xOgw
 zTf4mx1rX1W+KorEQ7gK4SQUA8VDCHQdkA==
X-Google-Smtp-Source: APXvYqy09HBgLwF7m1aWd1LIfy0bE+Abvteu88thzOKVVs8WcbdKZefmw/RC7hcilZ/wpcpuZzXeWQ==
X-Received: by 2002:a2e:6c09:: with SMTP id h9mr7854039ljc.37.1557989041820;
 Wed, 15 May 2019 23:44:01 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id v3sm238311lfi.44.2019.05.15.23.44.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 23:44:00 -0700 (PDT)
Date: Wed, 15 May 2019 23:26:35 -0700
From: Olof Johansson <olof@lixom.net>
To: Dinh Nguyen <dinguyen@kernel.org>
Subject: Re: [GIT PULL LATE 2/2] ARM: dts: socfpga: updates for v5.2, part 2
Message-ID: <20190516062635.gliymjxvg3cbyfs2@localhost>
References: <20190506154205.32759-1-dinguyen@kernel.org>
 <20190506154205.32759-2-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506154205.32759-2-dinguyen@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_234404_072509_0C784B0B 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:232 listed in]
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
Cc: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 10:42:05AM -0500, Dinh Nguyen wrote:
> Hi Arnd, Kevin, and Olof:
> 
> Please pull in these additional dts updates for v5.2.
> 
> Thanks,
> Dinh
> 
> The following changes since commit 4b36daf9ada30a66c93f8701e8c6f23bc3ce94e2:
> 
>   arm64: dts: agilex: Add initial support for Intel's Agilex SoCFPGA (2019-04-05 16:36:07 -0500)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git tags/socfpga_dts_updates_for_v5.2_part2
> 
> for you to fetch changes up to 2b88976d4183aa9416d8c4efe5d4da98f48a5e3e:
> 
>   ARM: dts: arria10: Add EMAC OCP reset property (2019-05-06 10:26:40 -0500)
> 
> ----------------------------------------------------------------
> SoCFPGA DTS updates for v5.2, part 2
> - Add the two ltc2497 devices that are on the SoCFPGA Arria10
> - Add EMAC OCP reset property for Arria10

Not yet merged -- the arm/late branch doesn't have the DT contents yet. I'll
stage this once the main branches have been merged upstream.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
