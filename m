Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA93E137BD9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 07:24:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fb6eKb0MMnQykKYbDO5HRSclxE/3js/Ji1VOf7p7Q8E=; b=lzwwEK21AlZyzZ
	108ZxNQirPI+3IfTr4Foi+tJB7mmnZ4K0SnG29GiHTtaOK0M0eaCFF0IR3E1IyWWIc+pEBuJBPcYC
	+VeR/t3N2bfrkovZT3DeIXLsPiR85TQX1oSIcbmdFrDRwQv7AUoKU6Babd/wVCzOBFAGCo+QjSGkP
	qHLlIzR1kyNaVzjzmdFCU69vAe4GD3FxtSGDaiWvDFAkzZAju0jazi08jHu8PfQwDq+oFm42k2MyY
	Z1SWRamkHl4qd1R4HTvLadddQHdk+uB1+CaEoPSNIvwTw0hLTHbrLnvBjOcgcgcIbLp4nSR2lk7x+
	G9Fkjb/PVvoSxvjcUMqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqAC4-00033f-OE; Sat, 11 Jan 2020 06:24:20 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqABv-00033I-Lx
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 06:24:13 +0000
Received: by mail-lj1-x242.google.com with SMTP id z22so4414219ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 22:24:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wpZ5PoKKRd15qOuI0SNAciXiJpKUUbFsosRz3wh7nlg=;
 b=wUshejiHdsNXjOSPCUjvIeGq/Ot8fOv4cJ5isAPotFmZi1/O7aPiq8QONpxu/qcJLT
 2to+wp2tmRKTV5XyBRiXlHmdbjrQC3Jw75HksQcDnH7nIlSzP9ryh95JSOtrxTz+jN35
 cffkDs3+lywNfmr6HDFZnzG/MoQo29wDQEHmda59javYiVRNZDbLvaiLt7F8niHJb6zd
 7F64HFGef4mmXTARefe+7xpOkP3sx3zfYl9+BC4bNvuN4Wh/8VyLp89rh2AG9+3sZT4t
 gLxJmeb4q5IZTtJuX9S3OSrtRquDsKihcMsGwpZS9wKYcE8KB5gNMYoOEXh8NI9SuiFG
 0RIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wpZ5PoKKRd15qOuI0SNAciXiJpKUUbFsosRz3wh7nlg=;
 b=RYeXoOibDr4L0h3AuwNW8WwAb9/698rPjVpAsQptM2CFOAm6XVLwjV+YGjgXzOS3Py
 SMy80nFzjiGTtRisLrlaYYHfrgmPrlMKZ8ODwWXB70z0vRGQ6cCgwPD8f2g+/VUBrkDl
 9XAW1fzeXiMIxkNlbKIsxmo92PFZZecj8CXy9dRR7YHBZI27BQJQEu/zVM34FHR26BgY
 dOYEw5Ys5v2ApW42CLiSmKKLxq0HU5jfJKBZGsJ43c0MrrtcrtF84bKuYVzwFx/c3Nex
 2yoYZ401ZeNuxdgInQxvgJpa+5k4vS5rv8wr7nv00G+9mFT3/Ri+LC1piNijDKPT4wkP
 5JFw==
X-Gm-Message-State: APjAAAWCczVpqypHZcTKgZSnlM/1x1IGeMRvbRAkygh93hv2el567UkP
 HGzhdrPyCux9514BeWt19MOjTQ==
X-Google-Smtp-Source: APXvYqydJPzXrQYXHB//CvuUEPG97yRIQPyrupdMvctwGiuSJOMQdia0rmZfmLHdvyN2esmzwRqgig==
X-Received: by 2002:a05:651c:1b0:: with SMTP id
 c16mr5061540ljn.236.1578723849430; 
 Fri, 10 Jan 2020 22:24:09 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id y1sm1996438ljm.12.2020.01.10.22.24.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 Jan 2020 22:24:08 -0800 (PST)
Date: Fri, 10 Jan 2020 22:23:49 -0800
From: Olof Johansson <olof@lixom.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [GIT PULL] Allwinner arm64 Defconfig Changes for 5.6
Message-ID: <20200111062349.esn2rfeppbt4b5kv@localhost>
References: <3b09a9b4-9d46-4f05-9c4d-420b93f0f88b.lettre@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3b09a9b4-9d46-4f05-9c4d-420b93f0f88b.lettre@localhost>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_222411_856097_B35699F5 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: soc@kernel.org, arm@kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 06:13:57PM +0100, Maxime Ripard wrote:
> Hi,
> 
> Please pull the following changes for the next release.
> 
> Thanks!
> Maxime
> 
> The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
> 
>   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-config64-for-5.6
> 
> for you to fetch changes up to cb4132672f76954ddc234aa343b4d2a1f1b8437a:
> 
>   arm64: defconfig: Enable DRM_SUN6I_DSI (2020-01-02 10:30:35 +0100)
> 
> ----------------------------------------------------------------
> Two patches to enable the new thermal sensor driver found on newer
> Allwinner SoCs and to enable the MIPI-DSI controller.

This adds a SUN8I_THERMAL that I can't find in the tree? (this also goes for
the 32-bit branch)

Also, is there a reason to have it =y, or would =m suffice? I see that RCAR is
=y, but we should revisit that as well.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
