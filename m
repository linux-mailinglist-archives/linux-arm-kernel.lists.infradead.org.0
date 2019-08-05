Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C1682138
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 18:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4KmTqafSv/e4JJD16rXK/x0yaQI9wFFvpoLUh2/2r88=; b=Bg6wAIMKqxMIVn
	SpetT83vMtk6Q/Jj6d3IW0K4vOfLMK0TBMYeNTTthF6S3hyBSWrsc1yV+zselVN0zftYJOjLv7vir
	NfjLDRmmn5NXwY5rbf92sc3TFLVK8t3YKMVRsDGFnDWyn1jwM8VGLMUrbvhmha/ya9DezKUcUFVnk
	QPJGOmvafK7jK4CjMEESXMAIKTnzsKtIkQbcwFeovnQsYSR4WlOBL23d3Kpg2wijLVllOdBWmnk0m
	tLOuD67sGCliyJB/eFgS2iKkldk6jvLKCCYUIh6xKUOl3VE9yLe6+Un62mYGLvxC0obJ/9Puo5Ete
	GfSQ8MMlsOJGf0fe1ISA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hufUQ-0008Ls-98; Mon, 05 Aug 2019 16:05:38 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hufUB-0008LU-ON
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 16:05:25 +0000
Received: by mail-lf1-x141.google.com with SMTP id h28so58391534lfj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 09:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=61p5AzjQF9OjwcCgDHmk+Gn1Hy4tPflyDpQWg2DQeqY=;
 b=Wpyzd4Y2/nkmPiRjFFM8P8mROdyXEGby1MykkxLW9L1Exfr+0LwcJOAJCMZms0c2Im
 /0Ir/txcMgrbgOV1l8OtAba+XUIKIq55sZqgoSCknx6AWCJpLu+LwC9fDZiEEiRBaHgL
 fqdm4ygFQZzcnCi4raOJMsAdKGJ9l+fKlol/w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=61p5AzjQF9OjwcCgDHmk+Gn1Hy4tPflyDpQWg2DQeqY=;
 b=bn9KKR0ZWZnWiwoyebtj5rlsdp5BEJntBRLAPZzgoi2sOLfb1mHbzfQb/qx/yGsDwm
 +M6iq0WL3OOe16WJHiaVayeyVYQl3coDLR0je9ke8VgNHKqV1xq6G3xP4v5vv+C96UMJ
 3qmtoMzcc7xvdVCf7Mnk48MdNIVdkRAfhoKB47J3qsarJbFrrX9jj2XOH1PAzKCC46w8
 hegkYtFlbnK86pevvaYhDong6fQeh1irv87QWgW4rz5jdXoYYJiAn0qtmoR8hROBe0At
 QWkgo1DlPaXNl/EzYDx0RN4wZjoQM+9k91uRSmXjP4DMHcGiNr8lbR4hzdg8rF/9tR1L
 HtGw==
X-Gm-Message-State: APjAAAW/0/BjGeb925lkpm5AddSJRbM9QfxRTKfJZ36zSO/CGwUPLBcA
 bR/d8YnCHGHvLoIOMY3RrJS4tPTlK5E=
X-Google-Smtp-Source: APXvYqwnqU8b04U0tgb9EoCidKwZaE7fX3OqgR972kYVTwsLZajzyz4S95pLAjGceaAq6uIUmD7HHA==
X-Received: by 2002:ac2:48bc:: with SMTP id u28mr63087093lfg.126.1565021121348; 
 Mon, 05 Aug 2019 09:05:21 -0700 (PDT)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com.
 [209.85.167.54])
 by smtp.gmail.com with ESMTPSA id q21sm1869550lfo.18.2019.08.05.09.05.20
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 09:05:20 -0700 (PDT)
Received: by mail-lf1-f54.google.com with SMTP id c9so58377472lfh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 09:05:20 -0700 (PDT)
X-Received: by 2002:a19:cbd3:: with SMTP id b202mr8777985lfg.185.1565021119654; 
 Mon, 05 Aug 2019 09:05:19 -0700 (PDT)
MIME-Version: 1.0
References: <752aca6f-4f69-301d-81ef-ff29bc25b614@linaro.org>
 <20190805153332.10047-1-georgi.djakov@linaro.org>
In-Reply-To: <20190805153332.10047-1-georgi.djakov@linaro.org>
From: Evan Green <evgreen@chromium.org>
Date: Mon, 5 Aug 2019 09:04:43 -0700
X-Gmail-Original-Message-ID: <CAE=gft48ytM4Bb8iVdE7=mZkum-xx8TBm9=vE1Dj9fxnH7stnQ@mail.gmail.com>
Message-ID: <CAE=gft48ytM4Bb8iVdE7=mZkum-xx8TBm9=vE1Dj9fxnH7stnQ@mail.gmail.com>
Subject: Re: [PATCH] interconnect: Add pre_aggregate() callback
To: Georgi Djakov <georgi.djakov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_090523_821768_FE147DF2 
X-CRM114-Status: GOOD (  17.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pm@vger.kernel.org, Sean Sweeney <seansw@qti.qualcomm.com>,
 LKML <linux-kernel@vger.kernel.org>, David Dai <daidavid1@codeaurora.org>,
 Doug Anderson <dianders@chromium.org>, amit.kucheria@linaro.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 5, 2019 at 8:33 AM Georgi Djakov <georgi.djakov@linaro.org> wrote:
>
> Introduce an optional callback in interconnect provider drivers. It can be
> used for implementing actions, that need to be executed before the actual
> aggregation of the bandwidth requests has started.
>
> The benefit of this for now is that it will significantly simplify the code
> in provider drivers.
>
> Suggested-by: Evan Green <evgreen@chromium.org>
> Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>

Thanks Georgi, I like it! We should confirm that it actually does
allow David to remove the sum_avg_cached and max_peak_cached shadow
arrays.

> ---
>  drivers/interconnect/core.c           | 3 +++
>  include/linux/interconnect-provider.h | 3 +++
>  2 files changed, 6 insertions(+)
>
> diff --git a/drivers/interconnect/core.c b/drivers/interconnect/core.c
> index 251354bb7fdc..7b971228df38 100644
> --- a/drivers/interconnect/core.c
> +++ b/drivers/interconnect/core.c
> @@ -205,6 +205,9 @@ static int aggregate_requests(struct icc_node *node)
>         node->avg_bw = 0;
>         node->peak_bw = 0;
>
> +       if (p->pre_aggregate)
> +               p->pre_aggregate(node);
> +
>         hlist_for_each_entry(r, &node->req_list, req_node)
>                 p->aggregate(node, r->tag, r->avg_bw, r->peak_bw,
>                              &node->avg_bw, &node->peak_bw);
> diff --git a/include/linux/interconnect-provider.h b/include/linux/interconnect-provider.h
> index 4ee19fd41568..fd42bd19302d 100644
> --- a/include/linux/interconnect-provider.h
> +++ b/include/linux/interconnect-provider.h
> @@ -36,6 +36,8 @@ struct icc_node *of_icc_xlate_onecell(struct of_phandle_args *spec,
>   * @nodes: internal list of the interconnect provider nodes
>   * @set: pointer to device specific set operation function
>   * @aggregate: pointer to device specific aggregate operation function
> + * @pre_aggregate: pointer to device specific function that is called
> + *                before the aggregation begins (optional)
>   * @xlate: provider-specific callback for mapping nodes from phandle arguments
>   * @dev: the device this interconnect provider belongs to
>   * @users: count of active users
> @@ -47,6 +49,7 @@ struct icc_provider {
>         int (*set)(struct icc_node *src, struct icc_node *dst);
>         int (*aggregate)(struct icc_node *node, u32 tag, u32 avg_bw,
>                          u32 peak_bw, u32 *agg_avg, u32 *agg_peak);
> +       int (*pre_aggregate)(struct icc_node *node);
>         struct icc_node* (*xlate)(struct of_phandle_args *spec, void *data);
>         struct device           *dev;
>         int                     users;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
