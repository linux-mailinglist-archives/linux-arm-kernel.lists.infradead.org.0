Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB2B1448D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 01:17:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yz0XYxiTGNh8BLWFZdVwau0VMAIuCjZ+vzOpi6ALEeQ=; b=tJIxR8LUeHZFmD
	y2Eb45ZUC+IMloHNJs9+lNHCYfQW3FQ3x/hi5Tx86HA1nxhG81/P/PrnsCHA55VPKL9Cs5J20III6
	vXup6cqioPl3b43OnlzJCXQLGg56FJ5RCgxcAk5caxm5BEcNM3pZUuHifsmaRbQrhyogF6k4sHKHd
	eRVZR+3KNFyQzUfJEQRCeYCEJjuH3YQ+WRsbJ01Pz93jx09OdFcNh3J64GpEupXyGgBoeDCOCpVEq
	x/DmY7GbBG3Sf3J+OA3RIXf4wpJxhq9+BCjfC8iO6tfH2XqBHxZumzK0VnKhfZ9KKsHgcdMCqrASd
	kc1NpU/W1T37lXtIEn8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu3i4-0008AX-4S; Wed, 22 Jan 2020 00:17:28 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu3hm-000896-6v
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 00:17:11 +0000
Received: by mail-pl1-x644.google.com with SMTP id y8so2069032pll.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 16:17:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mjGh2rwq9I3yBu9wgudpicRsuc9hY6/QsJSVCCsHLPM=;
 b=B6nm8z1qqVez+oK+7yTJg6sszlYC6O9kGXtD5kpfkQk4qprMXwbCnzzyrMZ8b8VVx3
 SHIkF9fmKCI0p/graxqyCJRTBihfEu//EO1/xJEcZjUSgKMnTJuQLcW6BZjAMKuUZ+Jp
 pE5+i3MEJk3lQKsPBbCwM3FJ4eCbwBAClDdfcNMqcnGo9kiuCxzQu9FcJzyVkfcU0z97
 gDwCHMFjaBf3tvXU4QUSQCklUtXkVlZimYkHOsFKJZNraUM1fcb6jFVOdXbg0fDKE/7A
 OkBfHAPAH+QLZKROd1JavsL4P8fV9e7QF/OjVY34cciN6Cs6Y9sm1fa1ZCaqzSvW9PRt
 HYUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mjGh2rwq9I3yBu9wgudpicRsuc9hY6/QsJSVCCsHLPM=;
 b=mQ4pSGA49/GmqsRYaqTN746QO1pJioHtSo42G7CaqQLJhXsn6gJDkmPXs3nkY8U8w9
 qblCatmBH3NUzbvvSFjVO4kX9LfYa8GJdG3XMjJkKvM+W8UaJaxN7jx6M0+CYsNoGT0m
 2R8A7TFFU6QqZvZ7P0yzLVLk8X36OwXuOFi6njeFp/I4r8vgl3MJXFq57oqGTEyHOcM/
 B4H0EZj5YfRIVMG2T7JKZjFyWi4lGf3QZszGdIxmZ/0C+kLaOt6sSFbqGOgV9nc0IzD+
 mlkQmCZYbAHoQRdxtFO0+nukY1yScR23Jsuq8sTf1nN6fuarDoJb3eXPHJzlpbtH20JN
 4DsA==
X-Gm-Message-State: APjAAAWBW5GguXElbn15wSY/hdKIcsYOofCP9pCBWKwIJQ4u2Ra5SlPT
 w9JWoXDcM8hNbpq8EpMOXQ68+w==
X-Google-Smtp-Source: APXvYqww213yTfxwe2vax3fLM8dUAmMVmaR3lFSYn8kc8oBNqMcgFYUTNCt8/44plN/68lG27aYtAg==
X-Received: by 2002:a17:902:9a90:: with SMTP id
 w16mr7975360plp.93.1579652225779; 
 Tue, 21 Jan 2020 16:17:05 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id q8sm43284302pgg.92.2020.01.21.16.17.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 16:17:05 -0800 (PST)
Date: Tue, 21 Jan 2020 16:17:03 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Baolin Wang <baolin.wang7@gmail.com>
Subject: Re: [PATCH RESEND 0/3] Some improvements for SIRF hwspinlock
Message-ID: <20200122001703.GD14744@builder>
References: <cover.1578453662.git.baolin.wang7@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1578453662.git.baolin.wang7@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_161710_282075_36BDC088 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ohad@wizery.com, baohua@kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 07 Jan 19:23 PST 2020, Baolin Wang wrote:

> This patch set did some improvements for the SIRF hwspinlock driver,
> including changing to use devm_xxx APIs and removing some redundant
> pm runtime functions.
> 

Thanks for resending the three series' Baolin! I've applied this as
well.

Regards,
Bjorn

> Baolin Wang (3):
>   hwspinlock: sirf: Change to use devm_platform_ioremap_resource()
>   hwspinlock: sirf: Remove redundant PM runtime functions
>   hwspinlock: sirf: Use devm_hwspin_lock_register() to register hwlock
>     controller
> 
>  drivers/hwspinlock/sirf_hwspinlock.c |   46 ++++++----------------------------
>  1 file changed, 7 insertions(+), 39 deletions(-)
> 
> -- 
> 1.7.9.5
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
