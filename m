Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DDB1A3A97
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 21:34:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gz8stozMpuk2Lf/NoC03mcMPTC1x3/4/K/ROcqxmexo=; b=LRNxf1qZnu2R9g
	JXDn5AR5GCY65HnP4/W4+7i1GgnjTVGDe5EN/vn88Dfv+kDr+3NDFbD/oadKIVD5JzOEk9++5oYbq
	Qf1vP12i9BOjpaoQ7JhdJiA3EPumryXefgxXhHA7+ebaAoXmSRSuj+DxVinjXncpQSLWEMzdUUc1r
	m9JfKNGCaLMb2807JRQbuKv63kGvbO3qG6ZR6M+FkByA2yDM9HDkZdSRAcxo+/DwWvpbL0qZdOOCl
	vRwDqrzCEYvfBgqUqc7/iZulLMHUr9NpGaiss9vSMG4PGrhdgpO9jGBG3vuORiYeKqQgkfzjd7XOq
	/AnqKvwgSJw/7PC5Dtuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMcwp-0000uR-4a; Thu, 09 Apr 2020 19:34:47 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcwU-0000k2-W1
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 19:34:28 +0000
Received: by mail-pf1-x441.google.com with SMTP id u65so4594360pfb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 12:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=1/Ya+QtKcRpkMO5L+OVhHFCN4pIxugi14ksnOnlBROQ=;
 b=jx7XlSJ4M/6PnQzbIIUuevI0BuVrVwXZ/Sc1VEop+ig1SDYs0IcFtvRvqs1X1xOjAp
 9j+pcKvKonLf3DcG1zkKnJSvmpr4dUWgqJKIk5OdEggAr48hgEo2XPllceIsLJ2V8gLB
 544uFuCCJb6hBOo5UUKfTAItvfSnPI5ePf1HY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=1/Ya+QtKcRpkMO5L+OVhHFCN4pIxugi14ksnOnlBROQ=;
 b=klcPvxzg3hxQunjD1HYoMMPHeWh28sa8sAzd6WVMcJSSc13I1lD7ewGr3TF6fYrZOg
 ogAaedfZGNqklG+jQ2nZLr/LIuSswDakuhT1wVIFmGIzytyGr66DU4Rs0h5uZE1dZwBA
 8FFpg7Cw6eCO8KOP08Q0M+hUQWoPEyep/FtMxHqoS5t8d41aMXOyIx/Q0sSLbPrz6L3Q
 80lW085kf1jI8nwLWAJNVopNj8mdbw7M+C1yz5CKN/Q0hnBQrJcO9GzmOnf3TxoiQgIK
 kQnXruUaoQSvLtNPlnAEV7KYbJtlT1X//Nai63EByDJtGGelIOFftz6IolGTttsuSSeW
 VdQg==
X-Gm-Message-State: AGi0Puazcs8IdnbUkJV1Gd/7QBwbSuMdiS+tqdq2H7xDuu/ryDwv9zzG
 WbXaYYjqUoMRDycl2XiNGCGUTDXY68M=
X-Google-Smtp-Source: APiQypJaE149E9NVXPyDN7sUtJ95tAnrr/bsf+utPigo+nVxEnJuRB77gP8AkUxYHUC6bWjTW9rrmw==
X-Received: by 2002:aa7:9695:: with SMTP id f21mr1219522pfk.93.1586460864774; 
 Thu, 09 Apr 2020 12:34:24 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id d7sm19924914pfa.106.2020.04.09.12.34.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 12:34:24 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200409113538.5008-1-saiprakash.ranjan@codeaurora.org>
References: <20200409113538.5008-1-saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH] coresight: tmc: Read TMC mode only when TMC hw is enabled
From: Stephen Boyd <swboyd@chromium.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, mike.leach@linaro.org
Date: Thu, 09 Apr 2020 12:34:23 -0700
Message-ID: <158646086329.126188.18130247986266503723@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_123427_062579_9CE63821 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-msm@vger.kernel.org,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sai Prakash Ranjan (2020-04-09 04:35:38)
> Reading TMC mode register in tmc_read_prepare_etb without
> enabling the TMC hardware leads to async exceptions like
> the one in the call trace below. This can happen if the
> user tries to read the TMC etf data via device node without
> setting up source and the sink first which enables the TMC
> hardware in the path. So make sure that the TMC is enabled
> before we try to read TMC data.
> 
>  Kernel panic - not syncing: Asynchronous SError Interrupt
>  CPU: 7 PID: 2605 Comm: hexdump Tainted: G S                5.4.30 #122
>  Call trace:
>   dump_backtrace+0x0/0x188
>   show_stack+0x20/0x2c
>   dump_stack+0xdc/0x144
>   panic+0x168/0x36c
>   panic+0x0/0x36c
>   arm64_serror_panic+0x78/0x84
>   do_serror+0x130/0x138
>   el1_error+0x84/0xf8
>   tmc_read_prepare_etb+0x88/0xb8
>   tmc_open+0x40/0xd8
>   misc_open+0x120/0x158
>   chrdev_open+0xb8/0x1a4
>   do_dentry_open+0x268/0x3a0
>   vfs_open+0x34/0x40
>   path_openat+0x39c/0xdf4
>   do_filp_open+0x90/0x10c
>   do_sys_open+0x150/0x3e8
>   __arm64_compat_sys_openat+0x28/0x34
>   el0_svc_common+0xa8/0x160
>   el0_svc_compat_handler+0x2c/0x38
>   el0_svc_compat+0x8/0x10
> 
> Fixes: 4525412a5046 ("coresight: tmc: making prepare/unprepare functions generic")
> Reported-by: Stephen Boyd <swboyd@chromium.org>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---

Tested-by: Stephen Boyd <swboyd@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
