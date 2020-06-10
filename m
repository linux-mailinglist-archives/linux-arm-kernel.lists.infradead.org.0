Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 181921F4EF6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 09:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QjfNT+tv7PO8HYNi0lSiKkk6QEECN5J/dAp1OBprExo=; b=h6mYzjKXiAXyzy
	y/K0cDc0sHvprI5MX6OCvGX9pjNootl6Mgdq8liuv46QAhNRmFhlX3ak3IpZRw3kl0V42kMOOvj1F
	Grux7+DLh1lD4op1kAUT3KoyN+yVsnT82LmkY/gNBpD9GOehfJSWGltKHPtkIPVQeyO4je5/h86sq
	5+EQeXsNUeetM7Ljq5HTn0Cwklx2CSjqrIRh6sXIk1RBdIgZMbTj02C4KvtwdULIJKrDBTGU5kqkN
	KAiE6WxA22X/QPPUJD4f7t4I7Fb+7lgmC9VEtBo0UY0MTBmGIZwm7zHxM95WoZkCqmix9uuNeGe+1
	TDAEheey41tVO0ryZ7Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivFl-00089f-7g; Wed, 10 Jun 2020 07:34:29 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivFX-00084b-1S
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 07:34:18 +0000
Received: by mail-wr1-x441.google.com with SMTP id l11so1064746wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 00:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=pPYsOkd0MaHFAV27/hleOZL5j8NZYoNpMPjKCa/pW6o=;
 b=cFrzZBDamQ0ImuwdVAAv5SjRaHfqNdiUIi6Qc/HehPCyDzY5hfUZAO1VME9wVuTrD/
 qBz6phph5DKUk7OUrcU2BTQYC4HauV9ooirfw0OPBJcrLz4bE0W5CnDp7NPnWS2TkFf4
 AX6Di1OlAIOceV5MZErq8tdDt+Gk+Gt9EdO1QLlxTlVzKA2EBqq+c2OeX1d0GDF9b/eH
 8jnSRagqTXZWRie2yKhEQj/ihPry8vjEBadq+j4UaNnxaZ6GJ6k/98uOv3vdc0Atcv4q
 xIUd1qGRKI/L/iRCpkHinfaxEvQFHYmGMlr//BUxZEYGnpXgpwXe/juoxCPLSQ7euUKl
 SrDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pPYsOkd0MaHFAV27/hleOZL5j8NZYoNpMPjKCa/pW6o=;
 b=Y0QceWJMdp5aoFMhNtYhEZ8upKg20AUaPZLEGrG+5uKsDljtSQDFS7Q6YBSYApiVh5
 aus11ZxwUAF0bNCJGhzA7HcAl+x8wq5UmtUEZjJtzmbs+P3cGJfMzpGzlfvYk5/3oXDW
 N8h/tSWV9EEDB7RdwTZS4sFKcJXjV3emLDBPiu9R3TwqnH3kfo00nA+cswAhOS8MDOad
 wb5Uk3LdRgresw+CeLSWWhrnonTx2ypck66mpNA2T6a+vmtIur6del0GqNKZ66V95lr5
 mthZg65W35KTP8KGg2jEj0+RMyOOp9f1dc36d0jP6KabvdVgWvy3z5bKKOvBib3u0xnc
 JJcw==
X-Gm-Message-State: AOAM531bSAg1MZZSCp6gg/WF3JgbnKemaVVE7IDlXTbrzaJ1KBS169eI
 0SQCBoPTeawdF3j/VePrbLYIS8jG+WUGQw==
X-Google-Smtp-Source: ABdhPJxuuz7bGzKCDK+AhMAYdJjDkuPJpla8oMMTj5kVQ7X046F67WswfSJ4/YH22hWhWbx3A883UQ==
X-Received: by 2002:adf:8b0c:: with SMTP id n12mr2219342wra.340.1591774453182; 
 Wed, 10 Jun 2020 00:34:13 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id h27sm7892299wrb.18.2020.06.10.00.34.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 00:34:12 -0700 (PDT)
Date: Wed, 10 Jun 2020 09:34:10 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: linux@armlinux.org.uk
Subject: Re: [PATCH] ARM: defconfig: enable storage for qemu
Message-ID: <20200610073410.GA16313@Red>
References: <1583423303-25405-1-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583423303-25405-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_003415_181814_042F0609 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 05, 2020 at 03:48:23PM +0000, Corentin Labbe wrote:
> The qemu versatilepb machine has some SCSI storage which cannot be used
> with this defconfig.
> The SCSI rely on PCI which is not enabled.
> So let's enable both PCI and SCSI.
> 
> This will permit to use LAVA tests for versatilepb in kernelCI.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  arch/arm/configs/versatile_defconfig | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/configs/versatile_defconfig b/arch/arm/configs/versatile_defconfig
> index 767935337413..6171b96cf9b8 100644
> --- a/arch/arm/configs/versatile_defconfig
> +++ b/arch/arm/configs/versatile_defconfig
> @@ -96,3 +96,7 @@ CONFIG_MAGIC_SYSRQ=y
>  CONFIG_DEBUG_KERNEL=y
>  CONFIG_DEBUG_USER=y
>  CONFIG_DEBUG_LL=y
> +CONFIG_PCI=y
> +CONFIG_PCI_VERSATILE=y
> +CONFIG_SCSI=y
> +CONFIG_SCSI_SYM53C8XX_2=y
> -- 
> 2.24.1
> 

gentle ping

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
