Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 219B4B67B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:19:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rWUskQcXLd+Xrs/xyUMHnmIiJ48xf4s5OYjxejvkMPg=; b=bvLE8yIg2KD9Qn
	n5HpoJaZfGUhw+npK5qftrZzdg/rZNSdach+c2Wap2GkFCpmMgrzRdSolMjpj5RtByVcrErHyf5rm
	FPcMjcwrI3HPYyi1DQV1+yXQpTdzh8XW8C5EOsryRnMvwq/VyfBUKkZGzE5h88P2nKdb3mp2QQF26
	3Tm5GeLubCj17MA37BgX7vuFT72vkoUQkPV3c/iAb900C0NxyujA3qE7L2xm4NTcxuHmAoWjNfnSu
	MLXoAPq6YuAet+X/g6YugqjbaYoCwbTQHQm8FIv3yTWHR+J0n3cvCRm5BRmC4MutJb1vXThqfF1FT
	qx2+Z6P9zPY1GRXzCylg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqGx-0007c9-SV; Sun, 28 Apr 2019 20:19:39 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqGP-00071y-Hj
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:07 +0000
Received: by mail-lj1-x243.google.com with SMTP id b12so6279999lji.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=F+7POzr3vji3zRz5tlUooKP9kyvJDj5vvoNje8ar98g=;
 b=KB1OcBfqCq4WwVBfkNKxc28n29n2lNB3qKN2a/jEscK7gBWk1OflwLc4j6zAUZG2lb
 F7oqleC0z2+OBsoh4Coqp7gXcBI9zm1XohCQ2WHcTjFkAIDkAppbfbkpuDf2jw/ltGKO
 CVcvLrQqNWFDFgSvCvVz42Ax6JoU1TLUZE+fddYphaGi1e1qsK0opFRL+K1Ydhcv1CKq
 3ysOH2ZCPBsV3HUkL5dqoUGb84lfa34ZL2w+BpGHo5z8sj82PbjOVP6Mg4o5heEUG2H5
 V/J9nYRvDRUUj2cN+Zk4L/btWSBhCK8vuDklMz4aob3W3u3JmFjqWU3PZxJVphTqmv2c
 3awQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=F+7POzr3vji3zRz5tlUooKP9kyvJDj5vvoNje8ar98g=;
 b=H20z78TnoUKwsUAtf50XQ9NUIQHuIISnvbZe+AAUUeQbB/D/xX5WBzC4HTrWraGyKr
 03rNflwwDLFFVIkC7aD1zaG0MPI+Lo/Pu4lDbauZsqaJ/iKViP+VfY/0eIY9QN2xqXCd
 dMsvuSs7tIjAuaQdvwtCr3Pbi067Fi0RAK8e6YaTVIqq0VBxYJZw+Nv9yC6AQEbYXrKV
 caMlncgex7QCWBVzNvJ1yOOjYgN+5scz97bas15WWNT2ouJZ5pbfnrenfs2zuCnLyrX0
 DXeIDpBcWvFsoQYezOheomlqvDzZD353Vn/YCCIrjZm2Wqy0B1cZ2P5Ck3EWzLqIsCnP
 bGlg==
X-Gm-Message-State: APjAAAUFwnyrCLjNDD//qkrQ3OYfzQkyqNW0FOusM1szVsqsO9zMT2kd
 QDZsdwZrur5UHWQS8V9K5qag9w==
X-Google-Smtp-Source: APXvYqyzJRHtfjaZVNuiWO+sylCJZpZNXvKXsL1axFNPrMnDOspZZnT+ZcQzNcmQmYG8w+/QGvmgYw==
X-Received: by 2002:a2e:9a0f:: with SMTP id o15mr20674891lji.130.1556482744014; 
 Sun, 28 Apr 2019 13:19:04 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id l16sm6534107ljb.24.2019.04.28.13.19.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:02 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:09:21 -0700
From: Olof Johansson <olof@lixom.net>
To: Kevin Hilman <khilman@baylibre.com>
Subject: Re: [GIT PULL] ARM: defconfig: Amlogic updates for v5.2
Message-ID: <20190428190921.cms7kypilbnukhwi@localhost>
References: <7h4l7lwew2.fsf@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7h4l7lwew2.fsf@baylibre.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131905_606321_25B2C67F 
X-CRM114-Status: GOOD (  11.61  )
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
Cc: linux-amlogic@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 29, 2019 at 02:26:53PM -0700, Kevin Hilman wrote:
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-defconfig
> 
> for you to fetch changes up to 029da5e5266c113c533abac6f5a7ca5ffef02bf1:
> 
>   ARM: multi_v7_defconfig: enable the Amlogic Meson ADC and eFuse drivers (2019-03-29 14:01:25 -0700)
> 
> ----------------------------------------------------------------
> ARM: defconfig: Amlogic updates for v5.2
> - multi_v7_defconfig: enable the Amlogic Meson ADC and eFuse drivers

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
