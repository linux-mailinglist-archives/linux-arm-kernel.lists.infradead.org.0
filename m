Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2953A1C95DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 18:02:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqycjiP+LK6M06me5dOGKDEtL/vzW3MkJASL871hWRE=; b=RVM8i5AoOhGMrp
	oExi1IWq1UWHFMWRAsUS6UdSufYEc1izm7RWEk6UVLLZhLWDm2aIID5C/FEqzrDQkAvJh+KFW5Qj2
	IkbxJ/p1n87XoVAqunLiAXsaw78IwAX6aMdRUsw/v6CtRYWxLYoikkkFBZRkdC7dqGi/et2r87bSq
	PXhCH/cJ6/lvN5GskuzuK0HK4xB95ezvObBHIG14LvioFPpwVtxxRgJeihVFAILIMoBdYt5jvqFke
	24t2ZfP51eVv11qBjEtlMG7gEVc8NliFZuZoqM6Rp3Q5EVAXH82u3bs/5mbybeSkMScGLvMQsGG2m
	IbKN08zY40lj4BL9b7eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWiyG-0006kO-H5; Thu, 07 May 2020 16:02:00 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWiy0-0006gK-0l
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 16:01:46 +0000
Received: by mail-pg1-x541.google.com with SMTP id f6so2862446pgm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 09:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Vq/DlfbSPyVVIVTh/o7/6qUzLWtMfyqE8W9dYn39NuM=;
 b=R8HKj6DxTc0LO9F+Pw7CqV6hlQyRjBt4v65MoFsK1Cmz0TxVccLPJY6pSQooudqnK8
 MnZJ+q1lMvlV5fE9Kt5Z/z92WhK41OVHWalgSZiTk1zNdJprnZZaYFbzloCnu+DhfxHv
 FocM4isWUVHi1F4CTvvIX5z/QOTqq10F5I5IjWWO24scb6Rc9Y5zNaJEJYUKC95c5rDF
 BNoAt+k8LClIZJ7LXnnfbyz86dye0lnXFc9oQQM64jDJzIhNbOT+wdYHR2eLLCLDjCsQ
 H5iZtpS/3kvje1GhQ/Zy4iDv//XIQS7hkBDQmwEkkL03zOW6y4Nfz5OVOQdxQgO/5MWZ
 MFEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Vq/DlfbSPyVVIVTh/o7/6qUzLWtMfyqE8W9dYn39NuM=;
 b=QrJmjJNLXPXqEu/b5w5YnRM6juYFL3pe69cy2XzaFdO7hobt0IMitGBh1MZ5A8nWLF
 NyhvQsFInp9L3wWjuTe2VLMMrWbZK/yciZ6kj5a3dr+20XH9JSVebdCbn5N+taPUR9Ud
 iA4jTxNi1mUbKMoeqptrGgXDSyczKOefnycHS4osUTBI4dFsKgd8Dni4xHEmRxEpZYdv
 24gCkbTQPAdoLE3vvfn7z3hpKwr7DY6dtCQxBaaE7gEswEPzrHEB9ZWY6Kl9ZtlNw1yb
 NY/Uc4COHJEH7Mp/mCfkex53F0XpAfYKQoqWUgTxl4CkK0ej9HMFOZ08hKSFWrt2E/h6
 dsKg==
X-Gm-Message-State: AGi0PuYh72AiBD3tq0850a4kZ9P4wyOjc0+/jIAxXYQW/+VDluVByJf/
 IoI4293zrN/Kf+NjBUt+dXkMpNiw
X-Google-Smtp-Source: APiQypJmzz+qARIIR1x3MXcG9ZqL0GP+2xbEJLOhPc0Wmm2jy7FnS2cdlbujfCArT3WF9mGSg3GXgw==
X-Received: by 2002:aa7:8b42:: with SMTP id i2mr15117982pfd.21.1588867302441; 
 Thu, 07 May 2020 09:01:42 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3c2a:73a9:c2cf:7f45])
 by smtp.gmail.com with ESMTPSA id a2sm3984978pgh.57.2020.05.07.09.01.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 09:01:42 -0700 (PDT)
Date: Thu, 7 May 2020 09:01:40 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH] Input: stmpe-ts - add missed input_unregister_device
Message-ID: <20200507160140.GH89269@dtor-ws>
References: <20200507151213.792640-1-hslester96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507151213.792640-1-hslester96@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_090144_062185_0E872D99 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-input@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 11:12:13PM +0800, Chuhong Yuan wrote:
> This driver calls input_register_device() in probe, but misses
> input_unregister_device() in remove.
> Add the missed function call to fix it.

The input device in question is devm-managed and therefore does not need
explicit unregistering.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
