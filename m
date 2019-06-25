Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FEA854E8C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:14:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GfaNWVxruMFRCzq+nU1tjzAMBJnVqcrciR/G/rpyfaE=; b=sIZuY151/gWqPk
	c6yomirmwEs6XGu1Z33v0f+7qiStZaECrt2llfSwaGj8D3TGW4ZhxrrehShOE/i4QMPJJaYk2G227
	9Ysg4WtId1ZYAjYr3ghPLbnR4TkPeKazEORGYjwu0zDXkxI3iZRG/YFGWl4q4KCXm+92FtSZ3y7A3
	QCIM8IPujSijIB4NjAFZwwFQCwjW7AOvXiAoXBhSdQnK5aVtGFj3IaLrisWWldxIdk1Y1XSvZrxQv
	wHLnxBkmetQ9UA3ySGiu5sEKXMDtXd+vppAKR09HT1wDSkxrAH1HTra19e39bPLitvPTXjhZSLlMH
	mspRH3nfsQbLniwWmECg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkKv-0000Q4-QK; Tue, 25 Jun 2019 12:14:09 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkCE-0000kF-Az
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:05:13 +0000
Received: by mail-lf1-x134.google.com with SMTP id j29so12416929lfk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qadH5+nzVEx4R5Bge758kjMglsEaEQxb20mDYvAc9Nk=;
 b=Tgl5EWorIElxYCJ8/Z9ivZktrSnJJ9N/vunRcYwNXCtLgahHZTs7/x44sG1HbPcfga
 iwqZTghzJbk+gQDBc5hw3cOCnFcQFap4WAKDZyfPMqPK5Pt3UDhReUBlmqLPtWA0c0uF
 cWVapDa+6FNYGnXNW9O3y3SC58SZVIDMUAJiiE/Oj+OxlMZ/HZZCqRezINhI7m/1A4M7
 d1zcWuWS2e69tOqhO6nFBBZsQcJjDbjEUEe8uNTlAUo2g+qAdxC9b755jL/VX+9tdSlD
 Qa7AJbs9/tIfKtRNTIFgRFQIff1mMyufZiNUrUxeBhUZxgXj9lmVITqJy+S/eplm8nqU
 euWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qadH5+nzVEx4R5Bge758kjMglsEaEQxb20mDYvAc9Nk=;
 b=fRj/nQBHUVI4rGcSAE+IsTRrQ5+MN2NsaFZk9xHuqBj7Ry4PH8puvFV4UKkfNiYuOm
 DuCFMXBCvAJmQyWXORy3WrTu0bt0oJ379tFPdWA8HAiXehlJrBKcGg959+ZSOV8umjBq
 lofBcltEaaSZK0NAIM/66g0TcX1dLJbiRrpb6JbgGM+MXcKhjpIT8fyvXOvyljSVytQ/
 8Qy7UcH5G3tE4yKqT4kJIsxRmz/aCFlt42jWzgOm3apO6Xdohbuc8GuCDq+S/PlYyveO
 OgaAp80lcssm2Ft4PH6EKog6Zmc3hpHIElg7ToNjJBlemSYV7mJBDKSlTUfYhSbue3ng
 UbKQ==
X-Gm-Message-State: APjAAAXYg5O7ustgVOeoxDCWqwlQw7HDNaSWKz65fo7C0sW51L6nGGSz
 4x0uIO2ZBeCSwOuqIYmbl538qA==
X-Google-Smtp-Source: APXvYqynz7kF7NDtkWFbRgZ9ZjI/KLxYVS4SqQXrVIvQYmQdRjihLKqNmSWqzhP/EmodnaevJXzc7w==
X-Received: by 2002:ac2:4c3c:: with SMTP id u28mr45327556lfq.136.1561464307675; 
 Tue, 25 Jun 2019 05:05:07 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id i2sm2224801ljc.96.2019.06.25.05.05.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:05:06 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:49:25 -0700
From: Olof Johansson <olof@lixom.net>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [GIT PULL 4/5] arm64: tegra: Device tree changes for v5.3-rc1
Message-ID: <20190625114925.qqei4zi2gy3p5rpu@localhost>
References: <20190621150206.19037-1-thierry.reding@gmail.com>
 <20190621150206.19037-4-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621150206.19037-4-thierry.reding@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050510_635636_B672C6F5 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:134 listed in]
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

On Fri, Jun 21, 2019 at 05:02:05PM +0200, Thierry Reding wrote:
> Hi ARM SoC maintainers,
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.3-arm64-dt
> 
> for you to fetch changes up to a586c88eab65619f3654194dc90d46c98e712af2:
> 
>   arm64: tegra: Enable PCIe slots in P2972-0000 board (2019-06-21 16:06:00 +0200)
> 
> Thanks,
> Thierry
> 
> ----------------------------------------------------------------
> arm64: tegra: Device tree changes for v5.3-rc1
> 
> This contains the bulk of the Tegra changes this cycle. It has a bunch
> of improvements across almost all boards. These are mostly small and not
> too exciting additions.
> 
> Most notably perhaps is the continuation of Jetson Nano support, which
> is now mostly on feature parity with Jetson TX1.
> 
> ----------------------------------------------------------------
> Jon Hunter (3):
>       arm64: tegra: Fix AGIC register range
>       arm64: tegra: Update Jetson TX1 GPU regulator timings
>       arm64: tegra: Fix Jetson Nano GPU regulator
> 
> Joseph Lo (1):
>       arm64: tegra: Add CPU cache topology for Tegra186
> 
> Manikanta Maddireddy (1):
>       arm64: tegra: Add PEX DPD states as pinctrl properties
> 
> Nicolin Chen (1):
>       arm64: tegra: Add INA3221 channel info for Jetson TX2
> 
> Sameer Pujar (2):
>       arm64: tegra: Add ACONNECT, ADMA and AGIC nodes
>       arm64: tegra: Enable ACONNECT, ADMA and AGIC
> 
> Thierry Reding (18):
>       arm64: tegra: Use TEGRA186_ prefix for GPIOs
>       dt-bindings: tegra186-gpio: Remove unused definitions
>       arm64: tegra: Clarify that P2771 is the Jetson TX2 Developer Kit
>       arm64: tegra: Clarify that P3310 is the Jetson TX2
>       arm64: tegra: Clarify that P2888 is the Jetson AGX Xavier

Thanks for this one. The numerical-to-product mapping is quite opaque.

Merged,


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
