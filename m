Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E26113F49A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:52:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pgQgqpwe2oJSiAxNMQQ8rwBlVYhlVrszZc6aqwzRQFc=; b=j/I/OPae1DVmDE
	5XwdVHDr9FVG4SsDb422S+DedlDr+98UV8pWRFe3GQUMTcQwHA3U1zzTw05NoZCBpi5SHYf54TXHI
	DMaT8u9+HhzDc89Awcel+2uMbv7d9KqY6zl8KFF0d87lThStEMK/pTc+e68dKyuR2hmGjIHTX4WeV
	t788dIWjN8v90cLANleox1hw6DDaT5aYxAQ5LdJIl4uTnk2FwvvGU0eVDiB/Oh19fqqJdqe/SEXLf
	7Igb88lMh3Cq1huwxbwJgKhc8L5YidXFdED+Qoag93vWFHXv20M+WoIoLdxONdD1nDMfWQnskZMAt
	3pxFhtijNOI3ZFkNiJZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isAFZ-0000N4-CZ; Thu, 16 Jan 2020 18:52:13 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isA3V-0000p8-6C
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:39:50 +0000
Received: by mail-lj1-x241.google.com with SMTP id q8so23500ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 10:39:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1NkxS1dJ4///PjDnpw3zqOnAHEcQBbdtsaoyImvFWzw=;
 b=r+BCuOqk6DerwPHy3jM1T4vB+EtBpq4eqDuj5WdCTLhucLb9mR75gLvie4tcMoZ+2D
 i+3VQyNa2eU4BZsH/70szQZkzCdCrYxrqyjlgBEOgH7uAus+pGgjIXiN7vvVCHrfO9Q5
 9qhy//XHIa+yYjpT2/nnrYrzxPrBC+lxIH5VeNgkFUR6SH9DHxGO+v4EeQfEGKt+bNs7
 ay//+Rz0Z6TZIaVm7dxqzkdC/5oA21DwhzKNoxFngX+gJbhZDOEiqcpmED0KG4wLVb0W
 UNn7KBzcZvoPOdyxxMEFwQC1cFYQIZlRlxVgqquhyiMFYNoVvBNO6Wt7syx0eTMJZA9I
 JVAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1NkxS1dJ4///PjDnpw3zqOnAHEcQBbdtsaoyImvFWzw=;
 b=K3fpR6OCROWiEfhL/TJt/0EqNC/XExUVkld8rDJqId2lLZNKgbt/kWhGsVkinLSwSq
 2fzcgSSV5VYTzg1hhpx3XO1XY1d7WRTBAk4bz31zpBksPZVSCAUGHhstKRazVNMY8EH4
 NZSNQ2vP3t2yXcrv/dNUvtO3vf9fY++eIBo9NAhnx5HYLeOxlzPSopyPvK9d9YXNKyLQ
 jiRZTIfTYkWTvFWPI4OoLQcV8m4glLKThsJ5Fa9yxV4Ponh2o91Bn/hutM9iHQ3oqium
 tqiUbY9wwGGVwlW7LKF3Rr76ojYXRowL1VO3HCToGdeIz4D07BM2Mj+xSIuXyPVCRlnK
 dciw==
X-Gm-Message-State: APjAAAVexz8xhb5k9qsjGxrqvRtA81GOJk4mDQFjtQVwgQh/qtFcFHdz
 EPd+YnvnQkRgrjiOBn6l3Hm5KVcTaHc+tw==
X-Google-Smtp-Source: APXvYqy1r4axnNLypvtxCDCBusTSJPvQ5bBth2V80eQ2aWR3SDteItjF5tjp00AcOpEuhWvIgDGEAg==
X-Received: by 2002:a2e:93c5:: with SMTP id p5mr3077169ljh.192.1579199982123; 
 Thu, 16 Jan 2020 10:39:42 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id h10sm11007576ljc.39.2020.01.16.10.39.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 Jan 2020 10:39:40 -0800 (PST)
Date: Thu, 16 Jan 2020 10:39:32 -0800
From: Olof Johansson <olof@lixom.net>
To: Li Yang <leoyang.li@nxp.com>
Subject: Re: [GIT PULL] soc/fsl drivers changes for next(v5.6)
Message-ID: <20200116183932.qltqdtreeg4d2zq7@localhost>
References: <1578608351-23289-1-git-send-email-leoyang.li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578608351-23289-1-git-send-email-leoyang.li@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_103945_264939_7E2455DE 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
Cc: soc@kernel.org, arm@kernel.org, shawnguo@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Jan 09, 2020 at 04:19:11PM -0600, Li Yang wrote:
> Hi soc maintainers,
> 
> Please merge the following new changes for soc/fsl drivers.
> 
> Regards,
> Leo
> 
> 
> The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
> 
>   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/leo/linux.git tags/soc-fsl-next-v5.6
> 
> for you to fetch changes up to 6e62bd36e9ad85a22d92b1adce6a0336ea549733:
> 
>   soc: fsl: qe: remove set but not used variable 'mm_gc' (2020-01-08 16:02:48 -0600)
> 
> ----------------------------------------------------------------
> NXP/FSL SoC driver updates for v5.6
> 
> QUICC Engine drivers
> - Improve the QE drivers to be compatible with ARM/ARM64/PPC64
> architectures
> - Various cleanups to the QE drivers

This branch contains a cross-section of drivers, including those who are
normally sent to other maintainers/subsystems. I don't see dependencies that
make them a requirement/easier to merge through the SoC tree at this time --
for example the ucc_uart driver updates are mostly independent cleanups.

Am I missing some aspect here, or should those just be merged through
drivers/tty as other driver changes there? At the very least, we expect drivers
that aren't merged through the normal path to have acks from those maintainers.

Mind following up on that? Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
