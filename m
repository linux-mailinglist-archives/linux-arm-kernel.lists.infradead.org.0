Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C62118E99
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 18:09:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMiqxlzVDa+0QuKcAl2Dt626Ce24DT8G8VFlnsn0VMA=; b=Qc9mxA+UHczhwz
	FiceSIav+wxnAF8R0YzhgcVS2A2j89BH4EynzTRcYt8WX+koxkT/u6ovcR3O2N4Z1qnzNLtO9fgWA
	Sa0rly5U9VyqfM9mOe6+EPtaONCjCD4qbszccz7HnG/X4FlYBry+EuhkQkYu0Vo2TQxHpycVqd3st
	cS8zU4Buz4BndgXInslMHOICYDsxzu4bWydUxPC+dY9FhaI5snD3S7QbrSqNuMGq2dnW5FTOzWjbx
	HqW3ExDXSDVSYMmzUAdYaNK1Blsa3QtzqdJVYsrtgEiwqx9L/DNMkBYjVzkl00wCVDWbCJaK7fgGG
	Fj8X5GNJB8qFK/vdWfJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iej1C-0007ve-Pw; Tue, 10 Dec 2019 17:09:50 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iej13-0007ue-Uw
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 17:09:43 +0000
Received: by mail-lj1-x243.google.com with SMTP id m6so20791711ljc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 09:09:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=K8JiV5XMl1ac7XRD5k/O7VNVwdh93m34JRZ/SLdtoRs=;
 b=ZX6+qqMxhPUpUTDWrJnuNPHxxz5etn1hLQ1wuYuHaoGAb1gSrHBhPbjk2TX99LxMeG
 9agC5GfNWc4RhmnVU3DAFqYRBoOoWP7bve2KSpH0mS0Bk7WQmvglH+l9E1Gx3eVbLwYZ
 FkILqbcx4HbsBJQ6atLX/RCvk7xnThcheD693wemIlwoYjKEwMcPPE5FQD+SPpWb7hXP
 B3J9xhfJ62yfg6+cRj2gGA39+2LkRV2mR59v/ttAhgtjavJ0FbeLAGCJK/+NKi0T7Wnj
 8YngHG/7TaGTZZLWQ5brkgQKqK/yTKwIDabygCg3Vf1zIUO4bOo2QJq6hpdnZW67pNkl
 o9fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=K8JiV5XMl1ac7XRD5k/O7VNVwdh93m34JRZ/SLdtoRs=;
 b=tbBqo5Gznnk3uWXH+DQ4JgAR4dJNg3W7s69FPE4BmqBQFutHM8HPrcLWaIKkaeNeQ1
 aoOgTbVJyQEFB0xxx00rmIZEcEqm83VSzy65iwGtsl0BeCnzf0r3A87GIxByvBvAp/pS
 DqvaHzI3YQFdPkHSR6XoL907RhagVh4g6iz2DXJ6vttZCSWVH/cFMJPeN6IgiIpUmCJ7
 N/qX5au/uPX3MbUTHCkhWQ3OoMCtTtziL2jiPPQ5jV4xX6vd+tmq5pGz6tSGkYN9kNzS
 V0diPYxTGygqpbahmNepEFYZs7GD95Wq4cW+ISlw5oSRNcWqOCKQx1tmlnH7ilSstnd8
 ZNRA==
X-Gm-Message-State: APjAAAWiSgeHbNbE7fp3yG8mbMwExT1RdtKC5UVBBaeuYjZiRAQ4aeJ5
 o+JKKNP0X4CuknAOEZXj2oxKJiU2Zss=
X-Google-Smtp-Source: APXvYqwSNC3AoVowSGKWAMoJO0wCskeX6zxpbF6jEyh/Z2ToHaoH1Qc1J4IoiIVdIrO7JnqeEDq8gg==
X-Received: by 2002:a2e:880c:: with SMTP id x12mr18636490ljh.44.1575997779156; 
 Tue, 10 Dec 2019 09:09:39 -0800 (PST)
Received: from localhost (h-93-159.A463.priv.bahnhof.se. [46.59.93.159])
 by smtp.gmail.com with ESMTPSA id k25sm2099775lji.42.2019.12.10.09.09.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 09:09:38 -0800 (PST)
Date: Tue, 10 Dec 2019 18:09:37 +0100
From: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] ARM: shmobile: defconfig: Restore debugfs support
Message-ID: <20191210170937.GA6956@bigcity.dyn.berto.se>
References: <20191209101327.26571-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209101327.26571-1-geert+renesas@glider.be>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_090942_052426_97115225 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

Thanks for your patch.

On 2019-12-09 11:13:27 +0100, Geert Uytterhoeven wrote:
> Since commit 0e4a459f56c32d3e ("tracing: Remove unnecessary DEBUG_FS
> dependency"), CONFIG_DEBUG_FS is no longer auto-enabled.  This breaks
> booting Debian 9, as systemd needs debugfs:
> =

>     [FAILED] Failed to mount /sys/kernel/debug.
>     See 'systemctl status sys-kernel-debug.mount' for details.
>     [DEPEND] Dependency failed for Local File Systems.
>     ...
>     You are in emergGive root password for maintenance
>     (or press Control-D to continue):
> =

> Fix this by enabling CONFIG_DEBUG_FS explicitly.
> =

> See also commit 18977008f44c66bd ("ARM: multi_v7_defconfig: Restore
> debugfs support").
> =

> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Niklas S=F6derlund <niklas.soderlund+renesas@ragnatech.se>

> ---
> To be queued as a fix for v5.5.
> ---
>  arch/arm/configs/shmobile_defconfig | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/arch/arm/configs/shmobile_defconfig b/arch/arm/configs/shmob=
ile_defconfig
> index 7f0985e023313b57..64fa849f8bbe0617 100644
> --- a/arch/arm/configs/shmobile_defconfig
> +++ b/arch/arm/configs/shmobile_defconfig
> @@ -215,4 +215,5 @@ CONFIG_DMA_CMA=3Dy
>  CONFIG_CMA_SIZE_MBYTES=3D64
>  CONFIG_PRINTK_TIME=3Dy
>  # CONFIG_ENABLE_MUST_CHECK is not set
> +CONFIG_DEBUG_FS=3Dy
>  CONFIG_DEBUG_KERNEL=3Dy
> -- =

> 2.17.1
> =


-- =

Regards,
Niklas S=F6derlund

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
