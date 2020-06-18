Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 294E51FFA97
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 19:52:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p6uSI/6OagrRwKoAjtVGeXr272tatt5p+eOVrhpY998=; b=qAP9L9akGQUzkl
	1xbldytJ140OIR/Zj3MmkDvs4mdS25wpY2b0mAcD6BnNl+adXfOuDbfY4P3j3Mu30+Eeia08N3naG
	Cr0F8rNF7ZXukezoLFqR1CItMC8/Az86dSN6eihy0alcdMQ5EyUOzV2Jbxaj5E6vs7VIwc3j+m+ex
	fUrYMsyP8p2MCGWJsPnvnCnCfZh1yXZXmqzr2yQ8JhikTaT/biItueFVWnrF4yz4hC8eBOWoL8PFr
	MvRCmlJ/E8+hCfPNUXVik/Jn7deBv5924SgfWkJODMm2ehIrjiwoohdGYpKJIyFU4wGHfBFW0Q5nY
	oza9phfF6vzupTWgcEZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlyiJ-0007rJ-J9; Thu, 18 Jun 2020 17:52:35 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlyi8-0007pI-1n
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 17:52:25 +0000
Received: by mail-wm1-x342.google.com with SMTP id r9so6013313wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 10:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Lb6ruUo4th4gczpSuevPe5msRghKn9eEg7we4tRduH4=;
 b=eGgDOyjrGAgWo8+oJBjv2YRlI0KPsVR0vk3sX9sj5UkJB3QMBW4oB/V3LHRO5p+jkR
 AzFtvoivhxfC58Yswr8wRmbhgXOtENtAyrJUVC1EV5C0H+PasAaahOh0c7MU6DXy4eBw
 fuWwyC4exoBoszRiG/M/X4Hssfd9RctogKm2Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Lb6ruUo4th4gczpSuevPe5msRghKn9eEg7we4tRduH4=;
 b=XBvDJb2vYEapKAZgvfe9mjgTjeGZnbYVpir6nP/deDGbIuIow/5RN+rbu7W0/NB3dT
 SmUOPcy5jsmk5PmKshTgBasVq2Rz2Sz/4c+KrqP0grVtb3toURDPUasGAMFqKh2Obnq8
 q0oRPw/ljiUXYKQg8b/dqCVdBq5b8mK2ChqZ/N8jOeXx65Eet9PSQoZ8QOeKwobUlGyJ
 Pcjg1S/Yn1sMzXQhvZ1jIlUXHhbhu27kOqnB7fXnX36jEaan2qsnb6cmaWr/66B4vWbk
 ghSG1/8LF402Acrax2984kRHwssyiu3xpWrZDpHr3kyfXlJmNui7cujVOMjfPWajQ/l+
 ZuFQ==
X-Gm-Message-State: AOAM530IrvtJ51/kOD6YUCWbC94ukQ/rcKDRqagrNOQwNYaWcvx6XnNK
 K4W/5zv7pb711S9xPJE93SZ0kQ==
X-Google-Smtp-Source: ABdhPJyN6ugEFVxfi2oUTpklkACeaBduQoso3/vz2+EfcawKtoU105dOecEZxHdsjW8oylGRMPEBSA==
X-Received: by 2002:a7b:c2a9:: with SMTP id c9mr5352893wmk.11.1592502739874;
 Thu, 18 Jun 2020 10:52:19 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id o1sm4589796wrw.20.2020.06.18.10.52.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 10:52:19 -0700 (PDT)
Date: Thu, 18 Jun 2020 17:52:18 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Yunfei Dong <yunfei.dong@mediatek.com>
Subject: Re: [PATCH 1/2] media: v4l UAPI: add V4L2_BUF_CAP_SUPPORTS_RO_REQUESTS
Message-ID: <20200618175218.GB10831@chromium.org>
References: <20200617014928.4374-1-yunfei.dong@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617014928.4374-1-yunfei.dong@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_105224_096481_5619357C 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tiffany Lin <tiffany.lin@mediatek.com>, linux-kernel@vger.kernel.org,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yunfei,

On Wed, Jun 17, 2020 at 09:49:27AM +0800, Yunfei Dong wrote:
> This patch adds support for the V4L2_BUF_CAP_SUPPORTS_RO_REQUESTS
> flag. This flag is used for RO Request.

I think this patch series lacks two major things:
 - a cover letter explaining the feature and what it is needed/useful
   for,
 - a user - is there an upstream driver which would implement this
   feature and benefit from it?

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
