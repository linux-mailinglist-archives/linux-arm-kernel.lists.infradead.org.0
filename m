Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 444C0ED704
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 02:38:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DPR2SpwgrihpNjIZHWE8IblbGrRgRF4Y+I3UtptsDHo=; b=Dqt84r5JFZ/54K
	C274PCi4a2HUp0bAMsO2C2DXz6OAGERg8lEC+PHc7Zv64yvOd5lpXrK/JUTYqcXYi/exSWwrDXOrp
	NrfdhQDsLxQKaaPDMg+lCr0/s+oG1GXKQhZf1hJBIsJedMLZLTVFWRFecZRhYkSUHzXBMOHF2yb4L
	B7TJNDt4rK0TQwJI+xlGt3H+1611rr8cmdmk35/A1kYW4W8pSJqNi8GgwkYJqKGo400P30pDR0vCH
	Ml8n9dsPqxUpOSRPqvleAD/tvBGL4nuw+gw1cOFFjeo3J0cRH3iC4dpNa1LGiOMcKqpGZ6Eoa4JHp
	u1xKm2Ce4SVNHrCbVxKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRRJu-0001jE-VW; Mon, 04 Nov 2019 01:38:14 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRRJn-0001iX-Re
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 01:38:09 +0000
Received: by mail-lj1-x242.google.com with SMTP id k15so3655642lja.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 17:38:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=i647Q9NPLFm34sW7oYvZoFHC+Yy43qYER+sibvHRJso=;
 b=JWXSa3MyVXWpe/WcxH0bVKxOnzVohai45paLGphAyXjr+SBJ91aAR8wWocp/RYS8tk
 2YRv2Vnsl4z2qu7+CpzKu15Nlyx4+sHQXvkLA8/YdcMs0n+SmVpi+hBvexE86X4ALcOp
 tulte1kIG9egxuD+BdeTGZ3mWflG1+6ymtSfuiGUaodwQG5pSQdnxj+tNZLfdx9QigD4
 tFHHrMGuc9CdNuzrY11NAty38CAXbzCsK1bg1bpw2aWAjNrEgniZXGfbPVzzTKEJxucd
 mJWzQQ64z9Y13jsUISJljmQGy5zKd392HL0CFIC+gpZaNxc0Vb84DHPPtH/rGt/wiEe9
 9yaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=i647Q9NPLFm34sW7oYvZoFHC+Yy43qYER+sibvHRJso=;
 b=Y6VUxpGc9mxSrQhvDN21dWox17/YGbNDUt9uwfKaJKx/hTVB15ASPoAxKmmICVPBR6
 mijPiU+w7RhzyfVqqnURcUbVENsFtK42GUjOkXzhqeQL0/QokuXy+2IMSUQp6pPL9qTM
 jS2v99h5TxWzySYLsO1kk/je2shJZiA0iczDxVOxgJLnq/hsqQgjgQrxyTY7ODoxeRPn
 51uPTZd6o9ge04La0w1DZ44qH8qhPeSS/1HVTJ53hRm/vNMEpaoEM7PGPASwYs4QW25N
 xodcR1fJ9IGByD9/M3zBaa9/sLeQdo0U5Pgh/U0G9wkoWLB3fIcs3qEB/yQBg3mXKA4K
 A6ew==
X-Gm-Message-State: APjAAAVxB5//+MMf0ByH8Iyx/dmBMM4wijvDssbLbpAISqlV80i4k+7x
 daalJAjMGoWDjkpnti6rGDpNnA==
X-Google-Smtp-Source: APXvYqykbpP5eQGEXUMZmmiA0tqpyBW/fPm07hUEAWdMesGBV0yZUlzMN5L4qLEV7Fgx62t4tnbJcQ==
X-Received: by 2002:a2e:858d:: with SMTP id b13mr14965413lji.71.1572831485199; 
 Sun, 03 Nov 2019 17:38:05 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id 4sm6195236ljv.87.2019.11.03.17.38.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 03 Nov 2019 17:38:04 -0800 (PST)
Date: Sun, 3 Nov 2019 17:33:15 -0800
From: Olof Johansson <olof@lixom.net>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [GIT PULL 3/8] memory: tegra: Changes for v5.5-rc1
Message-ID: <20191104013315.isc5ktgxgnnqlvrg@localhost>
References: <20191102144521.3863321-1-thierry.reding@gmail.com>
 <20191102144521.3863321-3-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191102144521.3863321-3-thierry.reding@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_173807_948019_AA0E642E 
X-CRM114-Status: GOOD (  12.42  )
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
Cc: linux-tegra@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 02, 2019 at 03:45:16PM +0100, Thierry Reding wrote:
> Hi ARM SoC maintainers,
> 
> The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> 
>   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.5-memory
> 
> for you to fetch changes up to 8b04225c4464422f185e62c2cedfb9e234423814:
> 
>   memory: tegra: Consolidate registers definition into common header (2019-11-01 10:57:37 +0100)

Hi, sitting on this one for a few days to make sure the shared contents lands
in the clk tree unmodified.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
