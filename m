Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC601E4BE8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 19:31:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7F9dPIHc3ziqA+g2cxALEbQQ5vN873YHXJ7u9jAYy8=; b=tcVgIRdrA1KOZT
	SY6biMB85OCbiH+gy6fNlADqa6oXeaynWqXNweD6jhhnOKuCPFqgihLxd50X7qnQNKw+ELImYI7yO
	LVIwJZrmO0XWdPdW6BE8kj5tWYcmV8tsQF5CZgRSWv1SVZ8rKQaLcESwpkzcQrdL5FVvR11a0mVQR
	rSQz1K4mxC/pCc1p3o0Ls49xxvc0Nzl9zcjjijnmbh7vNOzFej4xgihpqVrWBD3sfDcAZB4x0kTOC
	qCqgpJepPUmrHFdYSt9f7ePyTKmVCm1PgVzJkfYm/C3vWp2K4yh6LeajUCHd0+iLbJ8yAZCvbAJUo
	og1XF8XrBDvINn9GMJiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdztc-0007fv-78; Wed, 27 May 2020 17:31:16 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdztJ-0007Zz-MT
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 17:30:59 +0000
Received: by mail-lj1-x244.google.com with SMTP id z13so20264291ljn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 10:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MXtUXHnihi65Qkky3QBg/wO8Z4FKZ8HK0jwFU/d0C1U=;
 b=mAXh/LKAKtst4Z3OgR5OvCltmndxuNEjZQX+8dipX11S4NVUuzI1BduWwJIOd+6DbB
 6a+NxABiUGXEAf0RRGCvjxerV1sRnnXWb9tnLSD2EL0cWq62ZIoDDhmWb3h6DcFZKRnq
 vYqaWZiaXxv8mG5WFibpZalTRI7liMgwoPwfLPMs5bjBFbIiOiNdnugZKvOwMzZ6uSfX
 Vy6rNk6gQ584/+hDTLOf+SvZBSBIpqid54R/B5q4Kq+q9O1s9BbZ7hw3UWlJxyFPE8+o
 UZE1fx8or/NhVPUNdYyYiAIl2BUAVuY70wq7G5z+Y5QcQk6Lr81KS6MqXz1eHZwM3Q4k
 6Jow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MXtUXHnihi65Qkky3QBg/wO8Z4FKZ8HK0jwFU/d0C1U=;
 b=WLhL0X9VrcRSExwG440GNAvasGuQzCRmWPm+8mF5z+a7oy3ouEqTJiwnOPj86EZ+CX
 345npNDCgXLMHZy4C3wge35KZaTPRjLXOKBqsNsQRmwO3ddNbs1CiMwdGVA5EnnHdI7e
 umCyhMqlntQunXKPzU3c8oVa/sXYPDf9egGbF1ffdAQ/xT51HO9VujIiw8VkRxz6oOL/
 n48ACUsdV0CxPTMoMO71mNwlLR9rf90qvwixXbxFb1wJD49RRNT/zAIeI37dWzHR+x/6
 n3qqhiIVujij7Z/p0JXSK5Xa9OLBJZsMOvKBOEAZx0g/rpZsyuJ+DyqMA1ZEAqBaV1y5
 4+gw==
X-Gm-Message-State: AOAM532VTPMINEnqBYM78GKYGv7+rrfqUM2E5Zyx5L7C1myYwkAgYurn
 5016U+UzjdGUQJLlrzJUpqVcaKfOqQZFyP7I70w6aA==
X-Google-Smtp-Source: ABdhPJxLtTyXye6ERqUE6zRYmVzfg6k8wpZJsO3V9z/mvydFM0oASGA02J46IB8UgDa1+yhgHxpCV04mqchdroj6ayc=
X-Received: by 2002:a2e:8ed3:: with SMTP id e19mr3799428ljl.367.1590600655617; 
 Wed, 27 May 2020 10:30:55 -0700 (PDT)
MIME-Version: 1.0
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <2c6a651cac6359cb0244a40d3b7a14e72918f169.1590594512.git-series.maxime@cerno.tech>
In-Reply-To: <2c6a651cac6359cb0244a40d3b7a14e72918f169.1590594512.git-series.maxime@cerno.tech>
From: Eric Anholt <eric@anholt.net>
Date: Wed, 27 May 2020 10:30:44 -0700
Message-ID: <CADaigPVObO=mS5zKmB7qKPgUke-mKz7xQ+N3hatkU7dEAAAOVQ@mail.gmail.com>
Subject: Re: [PATCH v3 040/105] drm/vc4: crtc: Turn pixelvalve reset into a
 function
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_103057_767795_494CFD4D 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 DRI Development <dri-devel@lists.freedesktop.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 8:50 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The driver resets the pixelvalve FIFO in a number of occurences without
> always using the same sequence.
>
> Since this will be critical for BCM2711, let's move that sequence to a
> function so that we are consistent.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Patch 34-40 also r-b.

Going to take a little break, this is a lot to try to process at once.
Hopefully you can merge reviewed stuff to drm-misc and shorten the
series.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
