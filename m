Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8D8F2154
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 23:04:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EShT9xXpycUOMGPt92pdADZjdehX7lUrqFUzOU8d9ZI=; b=kxAxu51vkkdJa9
	fgp70yY2v0AtVC9VSbQHHK6dmPo6Rif8Tw0pWm3YdYZJQ3WMZ0Gnht4ghGhIGPnGaJfBrewGZeDwT
	KqKkIDMpeQqgDSjHFc1INAHXTkaPn4/UQxty4TB9UolvxSEgkgRil2HXdrz52mfzTC7jRItRgjn8g
	Iqdq7K0nPI9eHLSrwFKQ2Js4Gjpi1QoRmErogjSb9FUeLC5+Ao28KTSFsxEjCsbQ8hAfkDcEPF2ic
	Xu0QiqVY4QKNI9yfYfRDjk3QHeInKEm1n8/ZePg5itt4+g6wpeN30uPNN0ZwJxei+p1ihr/V5tY5E
	wuSyLyaU+EbOCIz4kzkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSTPh-0004RW-Vo; Wed, 06 Nov 2019 22:04:29 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSTPZ-0004Qp-D0
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 22:04:22 +0000
Received: by mail-lj1-x242.google.com with SMTP id v8so12307240ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 14:04:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=b4Y1JPpjGMsxvPxn35W51flX+hoR/EOYHK+rzP1aHWU=;
 b=yHivMyiQij6HNG22rsWf26KBLWEI0yzWYNqfVYXuognM2nw2gJHeKPFxasY5VUVa8h
 kZXae0rnxEe1UABLDYhpmyl2ovMKRLAN/satzWx8LVMT2ZH0namNhozNhmo193OB0lJc
 JvrEp34RYW1CIOUFlPhWxYEyqAtOPECL8L77RuXj+Gz6jrx371DCD5b1DFNCJGEhWnVM
 u1rGVky8AuwgixhGFXeyo5Z+ZHosjyco1FHT3sCLxM20Gql/Ie8rbe/pXef/RMd9qW5+
 uV5Q51kRo/y00h/SbRLVpVGjQemvl0v26b4+k4q2jdd9TOdjxY8rDTjYSZz4imceJS53
 Ubmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=b4Y1JPpjGMsxvPxn35W51flX+hoR/EOYHK+rzP1aHWU=;
 b=NIr4uwlO1Gh6QpICxBiJuA1nISXrceWSnkLRCmZCMmLSPVovUIvGLivk90PJemW7Z6
 21dYK9YnMVzHjZkx47sBJAywhsKZxIscqFUHpPAEPknFppzsDNaBdGfu9VmqeNSn+9WV
 i9quzxH/pVsHDDYcMa69OVVIrpu1a+sTFwOSgghzC14QrfU9DER8qu/STKl9Uymf97Yl
 68gZVOkw8RCaCMYSUhs9lisAN8XVINlzgwHM3mLmI5Q6DLB66w0doZAHPeTyPr/pS4Wd
 6TzWzQ/xqczg2jBQ2QlEOs8rLIurvCkX5p5x/mz1yanm8dKE1aXs9V+OAUSHMcWPe4rz
 ogcw==
X-Gm-Message-State: APjAAAXnTXbh5KtcyzutiTgc7sC9yRQU61XEhvMobMVR37+AulWzJGBH
 2bMRZurwIAX5RtLc7tIxJY85hA==
X-Google-Smtp-Source: APXvYqy+Q/ffmMrHnPVMwxBzqY/VK8fGVA2u7nV7S2PwD1HF/DzGA/s6as59bd/04V/o3XsSAgeQhA==
X-Received: by 2002:a2e:b053:: with SMTP id d19mr3680770ljl.36.1573077859341; 
 Wed, 06 Nov 2019 14:04:19 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id r4sm39612ljn.64.2019.11.06.14.04.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 06 Nov 2019 14:04:18 -0800 (PST)
Date: Wed, 6 Nov 2019 14:04:06 -0800
From: Olof Johansson <olof@lixom.net>
To: Andy Gross <agross@kernel.org>
Subject: Re: [GIT PULL] Qualcomm ARM64 Defconfig updates for 5.5
Message-ID: <20191106220406.4aoq5suvwww6c3ov@localhost>
References: <1573068840-13098-1-git-send-email-agross@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573068840-13098-1-git-send-email-agross@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_140421_472179_5C606285 
X-CRM114-Status: GOOD (  13.79  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, arm@kernel.org,
 Kevin Hilman <khilman@baylibre.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 01:33:56PM -0600, Andy Gross wrote:
> The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> 
>   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-defconfig-for-5.5
> 
> for you to fetch changes up to a36612b7469cf76953cf237a2b9a62f6c97730bb:
> 
>   arm64: defconfig: Enable Qualcomm watchdog driver (2019-10-20 23:04:59 -0700)
> 
> ----------------------------------------------------------------
> Qualcomm ARM64 Based defconfig Updates for v5.5
> 
> * Enable Qualcomm cpufreq, watchdog, prng, socinfo, SPI, and QSPI controllers
> * Enable SN65DSI86 display bridge
> * Enable QCA Bluetooth over Uart
> * Enable various Qualcomm remoteproc dependencies
> 
> ----------------------------------------------------------------
> Bjorn Andersson (6):
>       arm64: defconfig: Enable Qualcomm remoteproc dependencies
>       arm64: defconfig: Enable Qualcomm SPI and QSPI controller
>       arm64: defconfig: Enable Qualcomm socinfo driver
>       arm64: defconfig: Enable Qualcomm CPUfreq HW driver


Hi, this turns on the driver as =y, when the option is tristate. Other
cpufreq drivers are also modules. Is this driver truly needed to be
a built-in for a generic defconfig?


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
