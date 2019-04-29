Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AE3DC5D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 08:56:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0IsdI5Hoexi2KjxN9t5zID243FtNyiWS1HMdAYi/OTs=; b=tnFpLrlALMGgZj
	D7sLhu6h9u1b1MfgudlbMPiM9qIPFpDbnH04A3H+DuAXOSNdVS/72TBqoLFPGbwocysw9Z+5fBMDb
	nujwGwDNr4+b1Ounyfthex4x3dFVdA8+YH9gpbPov3mvLd/DAKyF1B8G/W6lRbuha7pkdfzt08W0i
	qnM67Y3GckujayFBZNg8dlS11rLK7N6rsNZG1Skpg8aePg0gsO/hxM8F255ROpWL58/DgxuB8wLMt
	cJmu9BU+jDr1eukqwh+vhmBUKj6itJYV3G++0QG46B3lr7/Gshwg0OZ69en1GZr0vIybVQzeT2GW9
	FIXBDb5gVubXnLjgcYKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0DU-0006PC-He; Mon, 29 Apr 2019 06:56:44 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0CF-000502-Mn
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:55:29 +0000
Received: by mail-lj1-x243.google.com with SMTP id f23so8347682ljc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DTcI+TPPe5EJLND6HuBIIVVxUZaTIvlxK3bYlX4vQ70=;
 b=bWu06EuCAuaNVptZM7bEjQNaVrv+D1AIW1G5FnIHoEHKlswlK33tYPJNw+JxlM1NZz
 asLNJu05DT76NNk4dPTiVjPJIOouqwU7plnM1Fbqr1YLVWvpK0hcSBLOOcZ7pIXFmzno
 4k0GB3fkRbKE4Sk7GIA7J7ONsOotNmx/h3IZP5mA1Z8gGlQ2SzqnqS6ajdhijdDhc9Iz
 CVKHyYJIVFF5pajL5DA628rEaFXVuN7aUqI+xCHWrwYTcc4qLvUK6iE2Mb+oOLN96KoX
 aDSyWxknfOc55OdrMkADtyy+m860+GqQIxmPTGYZGlSMu8P21A7B3wG/6vxMzlK9Feaa
 tRng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DTcI+TPPe5EJLND6HuBIIVVxUZaTIvlxK3bYlX4vQ70=;
 b=NifqAoalz9cBkplI95OTCOtukege+QR0scaDU64nqM2VxxbAis0VkvuGl983yLLLTS
 XuV+gXuzaVNyzqNV0tNXgsyvnPPeKOnzvZGuUtZfv5y8zw0YwqoZwuh3uqnPg+ILIL5B
 62jBV0px0iNUh3FeocA76B4xM7WfsBd1C8HJCMqxAO1Ymei06huQNblcR+VOgm85cIdO
 IokWOX1c9BcwKkME3Yq2kbQPczfTPqUWGmjNjVWB7g00EAx77t+paOo2I+EQ44QpsbR6
 1Plx2e8LyZF7oT2SsKnf5JmHyuJZFtHBicRnx8e3i7+2b5RS2mGw52YVBlwOsz3+pym1
 V0PQ==
X-Gm-Message-State: APjAAAXs3sRXfxKv5f/f/vbxbEnpb47vvMLS2s3eSo9DlaIbQ8ATv8fY
 okHCGbW2Oys43o/0DExGizLc8AEqI3nT1A==
X-Google-Smtp-Source: APXvYqzjVUQEbH+f/FCRP/CNXsf1VJPcKVbbeqfbRYN26J18ON42BmjrYL+w+NCSZOPOFyS1pB9+Qg==
X-Received: by 2002:a05:651c:106:: with SMTP id
 a6mr2632901ljb.175.1556520926191; 
 Sun, 28 Apr 2019 23:55:26 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id z16sm8477617lfi.9.2019.04.28.23.55.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:55:25 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:07:17 -0700
From: Olof Johansson <olof@lixom.net>
To: Michal Simek <monstr@monstr.eu>
Subject: Re: [GIT PULL] arm64: dts: Xilinx ZynqMP SoC changes for v5.2
Message-ID: <20190429060717.lv3uznlj7cf433jt@localhost>
References: <2bb66114-c976-9c44-6db3-33a5dd12edde@monstr.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2bb66114-c976-9c44-6db3-33a5dd12edde@monstr.eu>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235527_751196_CD2672ED 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: Moritz Fischer <moritz.fischer@ettus.com>, arm-soc <arm@kernel.org>,
 linux-arm <linux-arm-kernel@lists.infradead.org>, Alan Tull <atull@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 15, 2019 at 10:39:04AM +0200, Michal Simek wrote:
> Hi,
> 
> please pull these patches to your tree. I have also taken fpga series
> based on agreement with Moritz and Alan because it requires changes in
> firmware interface. It is the same what we have done last time with
> reset and nvmem.
> 
> Thanks,
> Michal
> 
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the git repository at:
> 
>   https://github.com/Xilinx/linux-xlnx.git tags/zynqmp-soc-for-v5.2
> 
> for you to fetch changes up to c09f7471127e9debf3e814ffef4f4012c31a5a3d:
> 
>   fpga manager: Adding FPGA Manager support for Xilinx zynqmp
> (2019-04-15 10:23:18 +0200)
> 
> ----------------------------------------------------------------
> arm64: zynqmp: SoC changes for v5.2
> 
> - Add support for ZynqMP fpga manager
> - Defer some probes which depends on firmware driver to be ready
> - Debugfs fix

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
