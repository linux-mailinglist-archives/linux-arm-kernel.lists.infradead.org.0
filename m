Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A52D5F9DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 16:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ce3RFSt+ltZGfO1V+8bkSBhBYZzwKU6iCL7Zc72qMsU=; b=RaZHtMeyuQq69b
	W5ajoQM/mFi7PJJ1xhzunQBjV1r5IARxCKQ0HszmMXo5XorBt4XGVmb2im0ZBhWzOWI4oUJbrsUM4
	3bM271e4wEKVzqB7RuuYz1uQdc4SJvBrgcxzo1uhWxM36C2OZiCEVLe5pJa715AkOTtmrZ9bKn03V
	Mcd7EvGktNoqNugeJYU2NsWl8icY2EloIaKjgcBWaJZiMpZbMfLVA/TWWEQhNWSpA0Y9HKpczfYCl
	VzwpPiN0LyGnqTEdZnbfdCG37UWjnFMC8xUWS7V+LXFUlUWW2Pm3Z+JiDJBL5NUXOjvxnaqIrafdq
	pg4bf0xkU7+9iQ/pf+bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj2UH-0008MJ-4J; Thu, 04 Jul 2019 14:13:25 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj2U5-0008Lv-9e
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 14:13:14 +0000
Received: by mail-lj1-x242.google.com with SMTP id m23so6284576lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 07:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eQOFwYxvQ/kQB4qRjeF84NIALEn7xYhTleBllWtZXUo=;
 b=KSEvYjfYMvhCwVUAt28zxWVGbFpzL4F+rSy27C/uT2iXc7BFl+sOOoXRWs+VBO0/if
 GS5BQBmGDJb8hyIFH6oD02txLDeDg0t199O0leXdUPIKU8V1+LRJ1BHDmB9MPoeMxz6V
 PolYCVlBUexFSb1zUVsFq7i2t+I9cjaUGzvxr+00RFMVsT+rbxoE9KvjVb0hpoqeuQ59
 YvrLXN6D5jVq//T9kadLGz2evlQntdZtuKlgaSQAMa6VMkjEfzcDlX5Ub8Mb//TrQIWz
 K1IpWXpt+hrKo99C8MDO2KovIXdZRH9i2SYLGCWA2Q4wVroPclEKPH68uKTbTv/IJ6yO
 slHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eQOFwYxvQ/kQB4qRjeF84NIALEn7xYhTleBllWtZXUo=;
 b=j2mO5XdB9vsbgfXzbNptSjMpR0tuKNsiFerktDp3shoXd3slhn3KOIyVpy+ifpzUUu
 eF/oOV4By2HYA6PV5zoUUi9cb/Gdr080qLGk35Pciru5Hs05pRI3WUhFn8OWlTWWINrZ
 O55m2Apv4ch5YmY7EEQrwxns7CNcEtFtuy4R5jlVzUyTimG6me70O0VGC0rcOmDQk4Ve
 BjUxBPyquQ9/6PJiJLE9EqoKY4kgJKgYlSktAiX3/HN5NTuArxYscIRzxBdbYEWdA+Af
 l+cT62PV8seYHu6f5a9K6k8VIV6Jgfoyy0HhHQc0a+K9WlYiUFix/SrvwivkuTEV/ejA
 mCgA==
X-Gm-Message-State: APjAAAWTBXT11uB4ESU/msFg+3J0WnyedVdqcwyrf4oMK4nyeITCBkux
 lpYxSgvURAAbkV2Jp/0I2bmPQQ==
X-Google-Smtp-Source: APXvYqxL4MpkD8XMtnzv3QgZmFP7gMWthjEkWYE+U6BOAMMsvTeSAUF6uM+o+geS1ps5zoRDQjfSNQ==
X-Received: by 2002:a2e:9209:: with SMTP id k9mr5737686ljg.96.1562249591455;
 Thu, 04 Jul 2019 07:13:11 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id u11sm1239442ljd.90.2019.07.04.07.13.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 04 Jul 2019 07:13:10 -0700 (PDT)
Date: Thu, 4 Jul 2019 07:13:01 -0700
From: Olof Johansson <olof@lixom.net>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [GIT PULL] Allwinner DT64 changes for 5.3 - round 2
Message-ID: <20190704141301.wn4n6qt5lx5zrcvw@localhost>
References: <20190704065326.GA19010@wens.csie.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704065326.GA19010@wens.csie.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_071313_339888_842A691C 
X-CRM114-Status: GOOD (  14.04  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 02:53:26PM +0800, Chen-Yu Tsai wrote:
> The following changes since commit 9164665a390a2a42e9f56094eeec8c4a52748723:
> 
>   arm64: dts: allwinner: h6: Add DMA node (2019-06-12 15:25:59 +0200)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git tags/sunxi-dt64-for-5.3-round-2
> 
> for you to fetch changes up to 0bb9d1876c0605815ea0452f68cb819a775a75f9:
> 
>   arm64: dts: allwinner: h6: Pine H64: Add interrupt line for RTC (2019-06-24 16:07:14 +0800)
> 
> ----------------------------------------------------------------
> Allwinner DT64 Changes for 5.3 - Round 2
> 
> One extra change wiring up the interrupt line for the external RTC chip
> on the Pine H64.
> 
> ----------------------------------------------------------------
> Chen-Yu Tsai (1):
>       arm64: dts: allwinner: h6: Pine H64: Add interrupt line for RTC
> 
>  arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts | 2 ++
>  1 file changed, 2 insertions(+)

(Repeat email due to tooling testing)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
