Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A88F1FD5E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 22:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJPk1OJmeghJiIxstNETq00m5BOR0o8wM5QwF7dfUjQ=; b=BWHjPknVkrQebB
	e2H8ADlwhPTI9tmbuAkcMlV88hViWVzM0zsRJNjjzZjzpfFvL2AIubrN0TWQjQYjQitC/MYPftBjh
	HhHBPL0girMCSC/TXkjneBy70RQnzSeEku6VG4dpVpl8WNzoD5Uj9r+svaO4Ja6eGTbnBs7V2GUkU
	8E0qij4NwPtPNV0fFfkUkGXOefg+oWmkN+Ku76KJW8AoZ1nuIZdYDmfB67v4ar5whsyvW/i9fz0Us
	YvkREZFkUpeGHDid4ItUgWCbVu+evAa+j3zemMmANb2qqPmuV+urXEe79itRDgTgvYI7OtAz1EWoE
	OEQcpBSpQIlsPN7aee+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jleU2-0001is-DC; Wed, 17 Jun 2020 20:16:30 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jleTt-0001hq-Un
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 20:16:23 +0000
Received: by mail-lj1-x242.google.com with SMTP id q19so4513981lji.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 13:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=llMR4XP929ZlX0ktOlskzBn+oIEoOfRqB8eqQjrjFOM=;
 b=RcjQboxpASiHG7fxPLYiYz5Qsa067b/Y7vl562EyU/eKD/7YLcsaUuCfIdUTFBIHmw
 wHu1OwrDlNQHnWt4Ew9oNmuKIrDMqXCfolYHnFGrjkmeyGXdLquSjo3gFjVUR1nfQq/i
 ZK6t1/zTyaUNnP5hURPNXEeotoLQhdR6NJOnbSNL2A0LapL/0QmmidRZK86i5GdxS0L9
 jP1ZHgwGyeRQrZuUnxjyUCHcPXBBM3N5+LS4Ao9rF9K25pqmqaMxUzIWODCR9fG0TcDO
 bi+9IEPa45OkrbM3kjub8tE3MWQeGbESE0rN8pj6AZO0BV4H+yNG5Einj+yC97ghVEgl
 z+nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=llMR4XP929ZlX0ktOlskzBn+oIEoOfRqB8eqQjrjFOM=;
 b=FQe80Kbvp1vjVRieQecWeIfEGn1Gdql7efIByNC1B0uPmcMltxcCZjBSHfF/Jm4viD
 dkbf/aKHJ3zE/84No+cD5znu1NLCLBwAcXlM8BcvXtFZWir3MTaw/qLO9uzg/n9Y+vbI
 wSZD7HDEDO5NBYoWkZ7u172picV2UJ95KUD9/NfmCkHZahu878ImoRbB8K2PvAFYYd6X
 ptKO9qa2c/McW7bvVgZz3i4UFDfZi4X7HNJ6Hud61/risxgXfGDz+fXiRqGErpdAw++2
 u6cK6xVKib3fWw9IZ5O0fXPOlWePj4mqH1u0LcG7FFT2m1eE8YZkA7ypNyeGpGSdcaFc
 4VBw==
X-Gm-Message-State: AOAM532mvqP/8QNrZXxPhCtYrgLDBCuAfe2zESeeHqHQk4rgmRDFc5Lg
 xC6bsO9yc937lDbpyhowknxOLHLiCG4LGC33AmT2nA==
X-Google-Smtp-Source: ABdhPJwSuKXzvk5zn5fk4tSXh655bmsbFyqQJkONPwl29Qe0rVGDqzm/i/OqfAbWrrePE2TK2xM+/wTuvOvXd6Q6bW8=
X-Received: by 2002:a2e:9147:: with SMTP id q7mr513712ljg.430.1592424977772;
 Wed, 17 Jun 2020 13:16:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200409233350.6343-1-jcrouse@codeaurora.org>
 <20200409233350.6343-5-jcrouse@codeaurora.org>
In-Reply-To: <20200409233350.6343-5-jcrouse@codeaurora.org>
From: Eric Anholt <eric@anholt.net>
Date: Wed, 17 Jun 2020 13:16:06 -0700
Message-ID: <CADaigPWJDEwPZyUyEO9H3=+zzdEX=h+gSa-w1ppNpM9ryY0LZA@mail.gmail.com>
Subject: Re: [PATCH v6 4/5] drm/msm: Refactor address space initialization
To: Jordan Crouse <jcrouse@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_131622_044296_36450DDF 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, David Airlie <airlied@linux.ie>,
 Akhil P Oommen <akhilpo@codeaurora.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 AngeloGioacchino Del Regno <kholk11@gmail.com>, will@kernel.org,
 Wen Yang <wen.yang99@zte.com.cn>, Sam Ravnborg <sam@ravnborg.org>,
 Ben Dooks <ben.dooks@codethink.co.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Brian Masney <masneyb@onstation.org>, linux-arm-msm@vger.kernel.org,
 Sharat Masetty <smasetty@codeaurora.org>, Robin Murphy <robin.murphy@arm.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, zhengbin <zhengbin13@huawei.com>,
 iommu@lists.linux-foundation.org, tongtiangen <tongtiangen@huawei.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Drew Davenport <ddavenport@chromium.org>,
 Wambui Karuga <wambui.karugax@gmail.com>, freedreno@lists.freedesktop.org,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 9, 2020 at 4:34 PM Jordan Crouse <jcrouse@codeaurora.org> wrote:
>
> Refactor how address space initialization works. Instead of having the
> address space function create the MMU object (and thus require separate but
> equal functions for gpummu and iommu) use a single function and pass the
> MMU struct in. Make the generic code cleaner by using target specific
> functions to create the address space so a2xx can do its own thing in its
> own space.  For all the other targets use a generic helper to initialize
> IOMMU but leave the door open for newer targets to use customization
> if they need it.

I'm seeing regressions in dEQP-VK.memory.allocation.random.* on cheza
after this commit.   The symptom is that large allocations fail with
-ENOSPC from MSM_GEM_INFO(IOVA).

Possibly relevant change from having stuffed some debug info in:

before:
[    3.791436] [drm:msm_gem_address_space_create] *ERROR* msmgem
address space create: 0x1000000 + 0xfeffffff
[    3.801672] platform 506a000.gmu: Adding to iommu group 6
[    3.807359] [drm:msm_gem_address_space_create] *ERROR* msmgem
address space create: 0x0 + 0x7fffffff
[    3.817140] msm ae00000.mdss: bound 5000000.gpu (ops a3xx_ops)
[    3.823212] msm_dpu ae01000.mdp: [drm:msm_ioremap] *ERROR* failed
to get memory resource: vbif_nrt
[    3.832429] msm_dpu ae01000.mdp: [drm:msm_ioremap] *ERROR* failed
to get memory resource: regdma
[    3.841478] [drm:dpu_kms_hw_init:878] dpu hardware revision:0x40000000
[    3.848193] [drm:msm_gem_address_space_create] *ERROR* msmgem
address space create: 0x1000 + 0xffffefff

after:

[    3.798707] [drm:msm_gem_address_space_create] *ERROR* msmgem
address space create: 0x1000000 + 0xfffffff
[    3.808731] platform 506a000.gmu: Adding to iommu group 6
[    3.814440] [drm:msm_gem_address_space_create] *ERROR* msmgem
address space create: 0x0 + 0x7fffffff
[    3.820494] hub 2-1:1.0: USB hub found
[    3.824108] msm ae00000.mdss: bound 5000000.gpu (ops a3xx_ops)
[    3.828554] hub 2-1:1.0: 4 ports detected
[    3.833756] msm_dpu ae01000.mdp: [drm:msm_ioremap] *ERROR* failed
to get memory resource: vbif_nrt
[    3.847038] msm_dpu ae01000.mdp: [drm:msm_ioremap] *ERROR* failed
to get memory resource: regdma
[    3.856095] [drm:dpu_kms_hw_init:878] dpu hardware revision:0x40000000
[    3.862840] [drm:msm_gem_address_space_create] *ERROR* msmgem
address space create: 0x1000 + 0xfffffff

256MB for GMU address space?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
