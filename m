Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 924D61BCDDC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 22:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9rfv5d90W5Q9znF1m5VcssMiS0QOg/V+2QQG4hy1n8E=; b=CZ4ZIbsQBWX7cm
	cd4cpirQ6eI+qKHKk6ecZNXQhARreVA1+0Ew5dR1ZfQvFCaKzjkOF+VXf99iN4hm5kVXXxy4tPy5U
	czLXWb3lYZ8MxPY8yGoK5b9yoFRnGq0U1T0MnWt/xTRFgbi8XmaPb4l7IsoWZTUcB0bTV1dAsTuOJ
	hTPN4oqAWI+4dLQnA6mMJ1I69DvgfZJeUFpTczwm8R/XCndgEB6UZn3CEtouc2D2/JN8vaFU7IEPi
	P6XTO++I0Veb+Q4nE7vt89grpW50nRwg6JVrnrdJZZbWe2R1PBx09fPYMMFdcw67ojnIN95QHPwHW
	FEMlrcZQBPSeg/CNuOPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTXJq-0001ph-EK; Tue, 28 Apr 2020 20:59:06 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTXJN-0001aX-RY
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 20:58:39 +0000
Received: by mail-ej1-x641.google.com with SMTP id q8so34273eja.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 13:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OSzO1rJO0R184LhoOiiy43Vbf5CZ5lYIXfcp6IiNMuk=;
 b=fW8/VJuKoPUP7uviDlRt5iWPklR6159dL8OqPXAYkQt9jT0QXQH20Vj9C11FGoyFvc
 OmLtFM7kkC1koJGiB6xpfGZtZ5KQla2TT0FJ0a62xNBnSaBDE5mcnxixIXf215wOmA2x
 bz5s03577i+7pt7SX5d+h4+D+TvfNRIGHm5exgfywa5JPZAkLGGlYKVJ1xOOXfp4y32z
 H/OOSJvk+DvAC9eCBwXFeQ72VKvf6z6DSYPHye8eGQW9zYal4Z7bSHNJMbnI/Ugqef1v
 U6385QbNHByFEDZBtIQhEEYNiVIsvaguzMhSGX7AJ6VGb7NALY801/q3RB/Dl4z90Kza
 Ej5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OSzO1rJO0R184LhoOiiy43Vbf5CZ5lYIXfcp6IiNMuk=;
 b=oVrd4K/eqC8cMhjLnARijqQUdvfD5XKSBAteWu2Z+HrBxFM5cG/OgKztmKyT8msWAI
 TxjY227FiWzFklnAOdYdX0udxMTKYJ0jxgM4/EeQXd2OMBLAPBckSF12W59txDzwKJB5
 jkibIEL8+ZlwyAcrjNn9KJU4kLN0eN4WAA0MSsNG2EwlMna5RLFYPPF8R1kSWnfmdmTj
 cFzj3FLVTYswnZbU6bSq/kMs4eYOYTJGO8dQsuTjV8oB0aIul2WPd7/BGmo5jYtX/L5X
 FeOAj4uVDJQ2OitafTaT7L95LDVAt2DJNJJzaow5dwPx04CFRdGJPJ1O2Gr8Ih9UrVAK
 /iYA==
X-Gm-Message-State: AGi0PuaG+HFc1WlrQ6rQirs/tbzNL0RFLNyFEVh5KIb+feZctD0NoeUs
 X20VFefCt2MVUHgQdqk0NEV5Lti6ZKEvWb0tgD9Zig==
X-Google-Smtp-Source: APiQypIDmIaYEXVfqX5Ab4PeJvhjul4YnZzP2xIfW1kiZtODLOShV6xLWrmLPJ+wBx6xyCCV+2sKrWG5awxiNEHaSK4=
X-Received: by 2002:a17:906:5918:: with SMTP id
 h24mr27104025ejq.210.1588107515478; 
 Tue, 28 Apr 2020 13:58:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200428181010.170568-1-swboyd@chromium.org>
 <20200428181010.170568-3-swboyd@chromium.org>
In-Reply-To: <20200428181010.170568-3-swboyd@chromium.org>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 28 Apr 2020 21:58:24 +0100
Message-ID: <CAJ9a7VjJpZWMJFkwxwnc=w8p1cemx-vM7yrWWWEHp_ThjkJoSA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] coresight: Avoid casting void pointers
To: Stephen Boyd <swboyd@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_135837_959042_09B61CBF 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Joe Perches <joe@perches.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reviewed-by mike.leach@linaro.org

On Tue, 28 Apr 2020 at 19:10, Stephen Boyd <swboyd@chromium.org> wrote:
>
> We don't need to cast void pointers, such as the amba_id data. Assign to
> a local variable to make the code prettier and also return NULL instead
> of 0 to make sparse happy.
>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: Mike Leach <mike.leach@linaro.org>
> Reviewed-by: Joe Perches <joe@perches.com>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>
> Thanks Joe for finding my thinko!
>
>  drivers/hwtracing/coresight/coresight-priv.h | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
> index 5a36f0f50899..36c943ae94d5 100644
> --- a/drivers/hwtracing/coresight/coresight-priv.h
> +++ b/drivers/hwtracing/coresight/coresight-priv.h
> @@ -215,9 +215,12 @@ cti_remove_assoc_from_csdev(struct coresight_device *csdev) {}
>  /* extract the data value from a UCI structure given amba_id pointer. */
>  static inline void *coresight_get_uci_data(const struct amba_id *id)
>  {
> -       if (id->data)
> -               return ((struct amba_cs_uci_id *)(id->data))->data;
> -       return 0;
> +       struct amba_cs_uci_id *uci_id = id->data;
> +
> +       if (!uci_id)
> +               return NULL;
> +
> +       return uci_id->data;
>  }
>
>  void coresight_release_platform_data(struct coresight_device *csdev,
> --
> Sent by a computer, using git, on the internet
>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
