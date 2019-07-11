Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9D165E2A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 19:06:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+risikFdCjrbXXiSnbKhmEJb/gWR7UhrFw2PqI8qSo=; b=jZJBkpVDYeX0rE
	kwavcoALbseKFjKnnVsaQmQXS3wY1NpV1+VFpWBYKr1wGDaf9pRjRRDFHbFSxU6pScaRrJAidU4F6
	v4EAGuccH4GjpqQ84qDH0fIAnwkqollDKpwG4nieXdkrAZh9vyTj0g2C5XEJmK/SOCd2PPwkYjk/k
	QBeNR6fDlRgerxOO+CxBQgeQybZVNzq3Xu8Mha4K8ipGHM600Xox1sIIK+Dre6/fRniewFtLFksaO
	DYzF9RCIOYVIRhJH7iI0sc6naoNmG4jYpLyGbGru+NrJVPpVBojkV3uy59fKdghp3ECHaw99WGHcc
	G5Wy+c8I6ao1zTuZw95w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlcX3-0006qZ-G5; Thu, 11 Jul 2019 17:06:57 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlcWr-0006px-KA
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 17:06:47 +0000
Received: by mail-lj1-x244.google.com with SMTP id i21so6538358ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 10:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5j7z1tlACT61nuFnKG/Eec995GLAXwXEnm5NfF1n5nI=;
 b=U9sxa8fSXSruS90asSicj9t1oMJy9v72igCT9Qbcik/hA2dpzv/9CUHo6btpjcTrSD
 gIE4ApjaO9/tQ754+nqPWc101+0P0JsvUDPMdMxiR0PybRR3o1Q2vBtMpkFcY9U8ArJJ
 sO5KOKBFMbHuR+7UAixtCB9tDnCSusoxMLLTY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5j7z1tlACT61nuFnKG/Eec995GLAXwXEnm5NfF1n5nI=;
 b=jo++3rFhQbPEpwLRso0doUEDX/Fqcos5Xxt3W5T9uu0RVtF/3Z2jj26TUgKhizCg3P
 Cu7EuAKgjpJ37l+x8rUDGKR6YwKoTTifpU4o+0JUypq9oCMuEhKIiRz/vJdyezcOU56Z
 a3HOE8YNAQjeV3Lb+aYrGH+++8iuQUe/K7mkYfeS0aERKTdrWip1q6BmhKIQcueEmcVN
 gu2T1Z4rZzpKWmpr6aDcTH8cTmGVMjdk51usmV34Nehg8qG1S4hEMVVXUn9OLgaDy3jw
 pe3ayf+84Sz7kosMo/HY/cZoV8VRvyWS9M/QDhZKoHRCmbAall+nUycq84fxQvVld9J8
 OSIQ==
X-Gm-Message-State: APjAAAW+eE3kuOAmcYh4m6nS90mPJW3QARDIGDnQTdvkemQVjMAvmVf2
 tWdxT9LqHGlKU+pmBfchpth7oYfYO6s=
X-Google-Smtp-Source: APXvYqyWiBSIvkOQJ8CZMnPQmga27ceeS9mvNo7bGYBAlHJq5zx4x0LqJwkAzAwQ0cJ80MAifEvRtw==
X-Received: by 2002:a2e:8756:: with SMTP id q22mr3247160ljj.108.1562864803278; 
 Thu, 11 Jul 2019 10:06:43 -0700 (PDT)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com.
 [209.85.167.44])
 by smtp.gmail.com with ESMTPSA id d3sm804060lfb.92.2019.07.11.10.06.41
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 10:06:41 -0700 (PDT)
Received: by mail-lf1-f44.google.com with SMTP id s19so4550347lfb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 10:06:41 -0700 (PDT)
X-Received: by 2002:ac2:4839:: with SMTP id 25mr2410156lft.79.1562864800872;
 Thu, 11 Jul 2019 10:06:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190618091724.28232-1-georgi.djakov@linaro.org>
 <20190618091724.28232-2-georgi.djakov@linaro.org>
In-Reply-To: <20190618091724.28232-2-georgi.djakov@linaro.org>
From: Evan Green <evgreen@chromium.org>
Date: Thu, 11 Jul 2019 10:06:04 -0700
X-Gmail-Original-Message-ID: <CAE=gft6=5txOBNEyrzqPEgaZc8ehd4sm5CmDBYOaV+o3-vCNWw@mail.gmail.com>
Message-ID: <CAE=gft6=5txOBNEyrzqPEgaZc8ehd4sm5CmDBYOaV+o3-vCNWw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] interconnect: Add support for path tags
To: Georgi Djakov <georgi.djakov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_100645_694475_D66D25A7 
X-CRM114-Status: GOOD (  25.73  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

Hi Georgi and David,

On Tue, Jun 18, 2019 at 2:17 AM Georgi Djakov <georgi.djakov@linaro.org> wrote:
>
> Consumers may have use cases with different bandwidth requirements based
> on the system or driver state. The consumer driver can append a specific
> tag to the path and pass this information to the interconnect platform
> driver to do the aggregation based on this state.
>
> Introduce icc_set_tag() function that will allow the consumers to append
> an optional tag to each path. The aggregation of these tagged paths is
> platform specific.
>
> Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
> ---
>  drivers/interconnect/core.c           | 24 +++++++++++++++++++++++-
>  drivers/interconnect/qcom/sdm845.c    |  2 +-
>  include/linux/interconnect-provider.h |  4 ++--
>  include/linux/interconnect.h          |  5 +++++
>  4 files changed, 31 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/interconnect/core.c b/drivers/interconnect/core.c
> index 871eb4bc4efc..251354bb7fdc 100644
> --- a/drivers/interconnect/core.c
> +++ b/drivers/interconnect/core.c
> @@ -29,6 +29,7 @@ static struct dentry *icc_debugfs_dir;
>   * @req_node: entry in list of requests for the particular @node
>   * @node: the interconnect node to which this constraint applies
>   * @dev: reference to the device that sets the constraints
> + * @tag: path tag (optional)
>   * @avg_bw: an integer describing the average bandwidth in kBps
>   * @peak_bw: an integer describing the peak bandwidth in kBps
>   */
> @@ -36,6 +37,7 @@ struct icc_req {
>         struct hlist_node req_node;
>         struct icc_node *node;
>         struct device *dev;
> +       u32 tag;
>         u32 avg_bw;
>         u32 peak_bw;
>  };
> @@ -204,7 +206,7 @@ static int aggregate_requests(struct icc_node *node)
>         node->peak_bw = 0;
>
>         hlist_for_each_entry(r, &node->req_list, req_node)
> -               p->aggregate(node, r->avg_bw, r->peak_bw,
> +               p->aggregate(node, r->tag, r->avg_bw, r->peak_bw,
>                              &node->avg_bw, &node->peak_bw);
>
>         return 0;
> @@ -385,6 +387,26 @@ struct icc_path *of_icc_get(struct device *dev, const char *name)
>  }
>  EXPORT_SYMBOL_GPL(of_icc_get);
>
> +/**
> + * icc_set_tag() - set an optional tag on a path
> + * @path: the path we want to tag
> + * @tag: the tag value
> + *
> + * This function allows consumers to append a tag to the requests associated
> + * with a path, so that a different aggregation could be done based on this tag.
> + */
> +void icc_set_tag(struct icc_path *path, u32 tag)
> +{
> +       int i;
> +
> +       if (!path)
> +               return;
> +
> +       for (i = 0; i < path->num_nodes; i++)
> +               path->reqs[i].tag = tag;

It's a little unfortunate to have this tag sprayed across all the
request nodes in the path, even though it's really a single value. If
we thought there were likely to be more attributes common to a path
that a provider might want access to, we could add a pointer to the
path in icc_req, then stick the tag in the path. But if the tag ends
up being the only thing worth looking at, then I guess what you have
now is slightly better.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
