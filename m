Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 236D71BAAB5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 19:06:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YpimXxx2t3rQG5qQPo3CPm45AoMlaIiuymRXmL3t8KY=; b=n9yXBEeF0615QR
	CaosRIoLqaFU1Gs8Z1EIRgrL2j36iRq2Q9DMKbESDJxJH3sKYUA5fUFzvm/kx8O8PYsgFSBrDH0pF
	yubs0nqUyRmrAFT7nEAsvtVECGJuCbMYp0j3cWbUgD1AiDCFazosnWh9E995LbSpooPb9CmVogS4G
	i3TfCtR/CmsokQdpp/rbFjruxHoFCms/Zfe8KXHwHxUHCL7cVFionODj8yHpPUZr5z4hHHiSPSUlN
	Ko4dl5LNMGJxahWELdf5RX1jxbTd1yypaByGrqCLm3QQcF3u+6qiD77iZ4a63S4janlMNsZ9qo6px
	u3hVZzf1VsxPX6Mp4ATA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT7Cb-000673-Dm; Mon, 27 Apr 2020 17:05:53 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT7CQ-00066J-1G
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 17:05:43 +0000
Received: by mail-pg1-x543.google.com with SMTP id t11so8961439pgg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 10:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ugUiSTA51a3TxFzvH/Md8sJqfO5EABbD3KGZpESGulo=;
 b=zpSP43aKOka+ao+TyrRuSjP9XbICnrOvk2mLe/OYmlgP0KXPOh9Y+4BJqAm2Sdar38
 xLRA5zqPQs2DKq8Ydj7/gWTgw2xP/oPerB8VxOGu1JUC1QlcVeV+NBgHrvjswZfnD4eZ
 2HfmLknQQFmIX/aU5vMeXowKtt0B+x0NcUU44KDW9kRpj2yqnggaIw5vKK3EQKD76BhA
 henIaE1eO4hq36X2x/INYe5wRnkFM0deVb3gqqhQBEL9B8GjCFFRwpeGx4xbh1lygQC9
 53Pw9LRS0N78Xppp1rFcUQRhA7SwQn8A3oH4undZIugEiJALgS2gJ74rkZP1DzzkVqyP
 nUbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ugUiSTA51a3TxFzvH/Md8sJqfO5EABbD3KGZpESGulo=;
 b=RyKMRnplP/nklEM1tz+xe9Vpfqi8WaPD8GfRCb3+KT6vLPArqRLLqIzMPmWnz2RvIW
 znvGKVfwao82yD0IBTC0qAkI+pHXHaM/ktzmI9skg/Q1AiLt/e4I1DOTcbpKhpMCm3vB
 STA4OQ8Or6fuSzbaoaj+LC9LyAoovVt7nZLBgnDdAN7sFLzmlvxTWy4fkMkWNUpAtAzw
 N5ROjNty+v22mt3cZLU3z76znfT2mkxOk0MPYgD9fT7KCci3b7QDtEjvOzYCkzJLGo5n
 EWKHjnf+hTSSfJOajQXQBMED5bmRCqHESsdf612IEga4p2JJ7BCxGdgOf6bof2KOyilf
 ndlA==
X-Gm-Message-State: AGi0PuZY8sFi4O9/9nyf3ROjeAS7mhzMaOmfvRR9XbNRmNT2jiMn4OgR
 qbgrQJtFfksTADe6edActGIecA==
X-Google-Smtp-Source: APiQypItDToSKZEi0i1ntlAw5OVKT4qn3Sw0vM2nyEVQmNub6gpTp3JIr7K7r4zvaoRLgGYg7a0Ctw==
X-Received: by 2002:a63:b649:: with SMTP id v9mr21343786pgt.402.1588007141308; 
 Mon, 27 Apr 2020 10:05:41 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id 140sm10385889pfw.96.2020.04.27.10.05.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 10:05:40 -0700 (PDT)
Date: Mon, 27 Apr 2020 11:05:39 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH 0/5] coresight: Minor sparse and style fixes
Message-ID: <20200427170539.GC10601@xps15>
References: <20200426185805.14923-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200426185805.14923-1-swboyd@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_100542_086005_04B9EEC4 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Douglas Anderson <dianders@chromium.org>,
 Mike Leach <mike.leach@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 26, 2020 at 11:58:00AM -0700, Stephen Boyd wrote:
> I got a report that kcalloc() didn't exist in coresight-cti-platform.c
> on arm builds and that looked like we didn't include very many headers
> to get prototypes of functions like kcalloc(), etc. The first patch fixes
> this problem by including the headers and then the rest of these
> patches fix minor sparse and style issues that I saw while looking
> through the coresight directory.
> 
> Pathes based on v5.7-rc1.
> 
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com> 
> Cc: Mike Leach <mike.leach@linaro.org>
> Cc: Douglas Anderson <dianders@chromium.org>
> 
> Stephen Boyd (5):
>   coresight: Include required headers in C files
>   coresight: Mark some functions static
>   coresight: Don't initialize variables unnecessarily
>   coresight: Initialize arg in sparse friendly way
>   coresight: Avoid casting void pointers

I have applied patches 2, 3 and 4, so no need to send them again.  Note that I
dropped changes to coresight-cti.c and coresight-etb10.c in patch 2 as the
changes were already in my coresight-next branch.

Thanks,
Mathieu

> 
>  .../coresight/coresight-cti-platform.c          | 11 ++++++++---
>  .../hwtracing/coresight/coresight-cti-sysfs.c   | 17 ++++++++++++-----
>  drivers/hwtracing/coresight/coresight-cti.c     |  6 +++---
>  drivers/hwtracing/coresight/coresight-cti.h     | 10 +++++++++-
>  drivers/hwtracing/coresight/coresight-etb10.c   |  2 +-
>  drivers/hwtracing/coresight/coresight-etm3x.c   |  2 +-
>  drivers/hwtracing/coresight/coresight-etm4x.c   |  2 +-
>  .../hwtracing/coresight/coresight-platform.c    |  4 ++--
>  drivers/hwtracing/coresight/coresight-priv.h    |  9 ++++++---
>  drivers/hwtracing/coresight/coresight-tmc.c     |  2 +-
>  10 files changed, 44 insertions(+), 21 deletions(-)
> 
> 
> base-commit: 8f3d9f354286745c751374f5f1fcafee6b3f3136
> -- 
> Sent by a computer, using git, on the internet
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
