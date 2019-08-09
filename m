Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B2288484
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 23:18:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ebbuLuCvyljogU3xejoszn4xM0HWdwIaoj+GCGG7xA4=; b=AJQYow6jD0c9Hy
	owh+MmGgSB996zi5/h5lki691gxb0MBqVgoMawWELvhpi+ENBdqTdAQk6FtAERc+NqFROvnZiKClP
	GwDEpRrPBcjTiAEo4pPbgAX/dwqatX/Uw55it+jAEy/326cZ9wX/y3NZk8npLzoQ+yzWD1mMkF3Y6
	LTXUCz85y/3fu8hyL6CMutmavnfV9joE4HteJ4TvZmsGbar2HPOl/UqBhyOdposFTpc1FLMX9OFBY
	uaaweJqvOMz848jB7pc0I7sNgzqNQXp72ERR1ul6aSh94O/ijaXd+NCO42ao6XFAxGr+Tpw0IgHk+
	WSMLII8Es+WoqooXD50g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwCHM-0003Dj-TD; Fri, 09 Aug 2019 21:18:29 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwCHC-0003D0-TT
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 21:18:20 +0000
Received: by mail-lf1-x141.google.com with SMTP id s19so7805372lfb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 14:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7rznYohCzIvHrSGGawNsShs1u2jjUcR06gJVcpCbKyM=;
 b=AbGwaqU26WXKooucDSmlKHCUsdXOFpSQB9Urtt8Qa10t5dZCaFkgl/0BMYvmrfj+qE
 Suc+3mFOohecGHExbjo5rBIAcX2y1vZUIuuZLk+BWJ4nL/7DtC9mtlXfMJWyYSXv6aB5
 0sYuEm6hbcCFLsTq2fCpjruLulQ4UzAGF7sR0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7rznYohCzIvHrSGGawNsShs1u2jjUcR06gJVcpCbKyM=;
 b=YYvyngB/qcZeq8Fc3S0fMYgn9kDEvcDGHW72jF8hXRPzNN1PYbg+YiZ/7UsJgBhDgB
 TQFcGogaPbOXc7Je1Wzdf2IPqqSiwIbHM3XKf/mLqpHC/e/CLSw8mljgNKl2Epto4k6e
 ynPVRxBsIrSD9mxjarpYhk6nRiXBQH5vn76InWAvsCLfAnCZTAQAP6v6x30bn6lsFaFW
 j5uNn7Rvg94aVF/F6Rm5ZHrzpKrm12mVX9uvDi663sBbuZ1BNTHFQO61JJ1JpQ7dh0Lj
 QMoBFvmD3nTjmk9UQIGJuteV6vCMGeVSsFOuAm6mChNk49LHg7Emnm+qiiP+6Xmzf9TT
 wFQA==
X-Gm-Message-State: APjAAAVQn1nnkZ1DX66Dr7QKkh0bN9pKEjUGQ5RrAnG15geXPzeWR9FB
 SBVAZshBeqFBs8jeZ0EY32VlvvjfyYE=
X-Google-Smtp-Source: APXvYqy+LGKbQpU6sW/ynSmdyjje87XfyEL5KQyEVIeR3c51lALEFQg95tpDOUiLbXOG3pL1bsq+NA==
X-Received: by 2002:ac2:4d02:: with SMTP id r2mr13411670lfi.138.1565385497050; 
 Fri, 09 Aug 2019 14:18:17 -0700 (PDT)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com.
 [209.85.167.43])
 by smtp.gmail.com with ESMTPSA id g5sm19817069ljj.69.2019.08.09.14.18.14
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 09 Aug 2019 14:18:15 -0700 (PDT)
Received: by mail-lf1-f43.google.com with SMTP id h28so70414724lfj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 14:18:14 -0700 (PDT)
X-Received: by 2002:ac2:5976:: with SMTP id h22mr13683199lfp.79.1565385494359; 
 Fri, 09 Aug 2019 14:18:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190809121325.8138-1-georgi.djakov@linaro.org>
 <20190809121325.8138-4-georgi.djakov@linaro.org>
In-Reply-To: <20190809121325.8138-4-georgi.djakov@linaro.org>
From: Evan Green <evgreen@chromium.org>
Date: Fri, 9 Aug 2019 14:17:38 -0700
X-Gmail-Original-Message-ID: <CAE=gft7HObn4Q-6P_pd1QbpWJG-yvs4C87qpiQm6BbmHzwZW5w@mail.gmail.com>
Message-ID: <CAE=gft7HObn4Q-6P_pd1QbpWJG-yvs4C87qpiQm6BbmHzwZW5w@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] interconnect: qcom: Add tagging and wake/sleep
 support for sdm845
To: Georgi Djakov <georgi.djakov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_141818_954661_78CB1121 
X-CRM114-Status: GOOD (  23.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Fri, Aug 9, 2019 at 5:13 AM Georgi Djakov <georgi.djakov@linaro.org> wrote:
>
> From: David Dai <daidavid1@codeaurora.org>
>
> Add support for wake and sleep commands by using a tag to indicate
> whether or not the aggregate and set requests fall into execution
> state specific bucket.
>
> Signed-off-by: David Dai <daidavid1@codeaurora.org>
> Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
> ---
>  drivers/interconnect/qcom/sdm845.c | 134 ++++++++++++++++++++++-------
>  1 file changed, 103 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/interconnect/qcom/sdm845.c b/drivers/interconnect/qcom/sdm845.c
> index fb526004c82e..b2047d1c6d84 100644
> --- a/drivers/interconnect/qcom/sdm845.c
> +++ b/drivers/interconnect/qcom/sdm845.c
> @@ -66,6 +66,17 @@ struct bcm_db {
>  #define SDM845_MAX_BCM_PER_NODE        2
>  #define SDM845_MAX_VCD         10
>
> +#define QCOM_ICC_BUCKET_AMC            0
> +#define QCOM_ICC_BUCKET_WAKE           1
> +#define QCOM_ICC_BUCKET_SLEEP          2
> +#define QCOM_ICC_NUM_BUCKETS           3
> +#define QCOM_ICC_TAG_AMC               BIT(QCOM_ICC_BUCKET_AMC)
> +#define QCOM_ICC_TAG_WAKE              BIT(QCOM_ICC_BUCKET_WAKE)
> +#define QCOM_ICC_TAG_SLEEP             BIT(QCOM_ICC_BUCKET_SLEEP)
> +#define QCOM_ICC_TAG_ACTIVE_ONLY       (QCOM_ICC_TAG_AMC | QCOM_ICC_TAG_WAKE)
> +#define QCOM_ICC_TAG_ALWAYS            (QCOM_ICC_TAG_AMC | QCOM_ICC_TAG_WAKE |\
> +                                        QCOM_ICC_TAG_SLEEP)
> +
>  /**
>   * struct qcom_icc_node - Qualcomm specific interconnect nodes
>   * @name: the node name used in debugfs
> @@ -86,8 +97,8 @@ struct qcom_icc_node {
>         u16 num_links;
>         u16 channels;
>         u16 buswidth;
> -       u64 sum_avg;
> -       u64 max_peak;
> +       u64 sum_avg[QCOM_ICC_NUM_BUCKETS];
> +       u64 max_peak[QCOM_ICC_NUM_BUCKETS];
>         struct qcom_icc_bcm *bcms[SDM845_MAX_BCM_PER_NODE];
>         size_t num_bcms;
>  };
> @@ -112,8 +123,8 @@ struct qcom_icc_bcm {
>         const char *name;
>         u32 type;
>         u32 addr;
> -       u64 vote_x;
> -       u64 vote_y;
> +       u64 vote_x[QCOM_ICC_NUM_BUCKETS];
> +       u64 vote_y[QCOM_ICC_NUM_BUCKETS];
>         bool dirty;
>         bool keepalive;
>         struct bcm_db aux_data;
> @@ -555,7 +566,7 @@ inline void tcs_cmd_gen(struct tcs_cmd *cmd, u64 vote_x, u64 vote_y,
>                 cmd->wait = true;
>  }
>
> -static void tcs_list_gen(struct list_head *bcm_list,
> +static void tcs_list_gen(struct list_head *bcm_list, int bucket,
>                          struct tcs_cmd tcs_list[SDM845_MAX_VCD],
>                          int n[SDM845_MAX_VCD])
>  {
> @@ -573,8 +584,8 @@ static void tcs_list_gen(struct list_head *bcm_list,
>                         commit = true;
>                         cur_vcd_size = 0;
>                 }
> -               tcs_cmd_gen(&tcs_list[idx], bcm->vote_x, bcm->vote_y,
> -                           bcm->addr, commit);
> +               tcs_cmd_gen(&tcs_list[idx], bcm->vote_x[bucket],
> +                           bcm->vote_y[bucket], bcm->addr, commit);
>                 idx++;
>                 n[batch]++;
>                 /*
> @@ -595,51 +606,76 @@ static void tcs_list_gen(struct list_head *bcm_list,
>
>  static void bcm_aggregate(struct qcom_icc_bcm *bcm)
>  {
> -       size_t i;
> -       u64 agg_avg = 0;
> -       u64 agg_peak = 0;
> +       size_t i, bucket;
> +       u64 agg_avg[QCOM_ICC_NUM_BUCKETS] = {0};
> +       u64 agg_peak[QCOM_ICC_NUM_BUCKETS] = {0};
>         u64 temp;
>
> -       for (i = 0; i < bcm->num_nodes; i++) {
> -               temp = bcm->nodes[i]->sum_avg * bcm->aux_data.width;
> -               do_div(temp, bcm->nodes[i]->buswidth * bcm->nodes[i]->channels);
> -               agg_avg = max(agg_avg, temp);
> +       for (bucket = 0; bucket < QCOM_ICC_NUM_BUCKETS; bucket++) {
> +               for (i = 0; i < bcm->num_nodes; i++) {
> +                       temp = bcm->nodes[i]->sum_avg[bucket] * bcm->aux_data.width;
> +                       do_div(temp, bcm->nodes[i]->buswidth * bcm->nodes[i]->channels);
> +                       agg_avg[bucket] = max(agg_avg[bucket], temp);
>
> -               temp = bcm->nodes[i]->max_peak * bcm->aux_data.width;
> -               do_div(temp, bcm->nodes[i]->buswidth);
> -               agg_peak = max(agg_peak, temp);
> -       }
> +                       temp = bcm->nodes[i]->max_peak[bucket] * bcm->aux_data.width;
> +                       do_div(temp, bcm->nodes[i]->buswidth);
> +                       agg_peak[bucket] = max(agg_peak[bucket], temp);
> +               }
>
> -       temp = agg_avg * 1000ULL;
> -       do_div(temp, bcm->aux_data.unit);
> -       bcm->vote_x = temp;
> +               temp = agg_avg[bucket] * 1000ULL;
> +               do_div(temp, bcm->aux_data.unit);
> +               bcm->vote_x[bucket] = temp;
>
> -       temp = agg_peak * 1000ULL;
> -       do_div(temp, bcm->aux_data.unit);
> -       bcm->vote_y = temp;
> +               temp = agg_peak[bucket] * 1000ULL;
> +               do_div(temp, bcm->aux_data.unit);
> +               bcm->vote_y[bucket] = temp;
> +       }
>
> -       if (bcm->keepalive && bcm->vote_x == 0 && bcm->vote_y == 0) {
> -               bcm->vote_x = 1;
> -               bcm->vote_y = 1;
> +       if (bcm->keepalive && bcm->vote_x[0] == 0 && bcm->vote_y[0] == 0) {

Consider using QCOM_ICC_BUCKET_AMC instead of 0.

> +               bcm->vote_x[QCOM_ICC_BUCKET_AMC] = 1;
> +               bcm->vote_x[QCOM_ICC_BUCKET_WAKE] = 1;
> +               bcm->vote_y[QCOM_ICC_BUCKET_AMC] = 1;
> +               bcm->vote_y[QCOM_ICC_BUCKET_WAKE] = 1;
>         }
>
>         bcm->dirty = false;
>  }
>
> +static void qcom_icc_pre_aggregate(struct icc_node *node)
> +{
> +       size_t i;
> +       struct qcom_icc_node *qn;
> +
> +       qn = node->data;
> +
> +       for (i = 0; i < QCOM_ICC_NUM_BUCKETS; i++) {
> +               qn->sum_avg[i] = 0;
> +               qn->max_peak[i] = 0;
> +       }
> +}
> +
>  static int qcom_icc_aggregate(struct icc_node *node, u32 tag, u32 avg_bw,
>                               u32 peak_bw, u32 *agg_avg, u32 *agg_peak)
>  {
>         size_t i;
>         struct qcom_icc_node *qn;
> +       unsigned long tag_word = (unsigned long)tag;

Is this local still needed? Can't we just use tag directly?

>
>         qn = node->data;
>
> +       if (!tag)
> +               tag_word = QCOM_ICC_TAG_ALWAYS;
> +
> +       for (i = 0; i < QCOM_ICC_NUM_BUCKETS; i++) {
> +               if (test_bit(i, &tag_word)) {
> +                       qn->sum_avg[i] += avg_bw;
> +                       qn->max_peak[i] = max_t(u32, qn->max_peak[i], peak_bw);
> +               }
> +       }
> +
>         *agg_avg += avg_bw;
>         *agg_peak = max_t(u32, *agg_peak, peak_bw);
>
> -       qn->sum_avg = *agg_avg;
> -       qn->max_peak = *agg_peak;
> -
>         for (i = 0; i < qn->num_bcms; i++)
>                 qn->bcms[i]->dirty = true;
>
> @@ -675,7 +711,7 @@ static int qcom_icc_set(struct icc_node *src, struct icc_node *dst)
>          * Construct the command list based on a pre ordered list of BCMs
>          * based on VCD.
>          */
> -       tcs_list_gen(&commit_list, cmds, commit_idx);
> +       tcs_list_gen(&commit_list, QCOM_ICC_BUCKET_AMC, cmds, commit_idx);
>
>         if (!commit_idx[0])
>                 return ret;
> @@ -693,6 +729,41 @@ static int qcom_icc_set(struct icc_node *src, struct icc_node *dst)
>                 return ret;
>         }
>
> +       INIT_LIST_HEAD(&commit_list);
> +
> +       for (i = 0; i < qp->num_bcms; i++) {
> +               /*
> +                * Only generate WAKE and SLEEP commands if a resource's
> +                * requirements change as the execution environment transitions
> +                * between different power states.
> +                */
> +               if (qp->bcms[i]->vote_x[QCOM_ICC_BUCKET_WAKE] !=
> +                   qp->bcms[i]->vote_x[QCOM_ICC_BUCKET_SLEEP] ||
> +                   qp->bcms[i]->vote_y[QCOM_ICC_BUCKET_WAKE] !=
> +                   qp->bcms[i]->vote_y[QCOM_ICC_BUCKET_SLEEP]) {
> +                       list_add_tail(&qp->bcms[i]->list, &commit_list);
> +               }
> +       }
> +
> +       if (list_empty(&commit_list))
> +               return ret;
> +
> +       tcs_list_gen(&commit_list, QCOM_ICC_BUCKET_WAKE, cmds, commit_idx);
> +
> +       ret = rpmh_write_batch(qp->dev, RPMH_WAKE_ONLY_STATE, cmds, commit_idx);
> +       if (ret) {
> +               pr_err("Error sending WAKE RPMH requests (%d)\n", ret);
> +               return ret;
> +       }
> +
> +       tcs_list_gen(&commit_list, QCOM_ICC_BUCKET_SLEEP, cmds, commit_idx);
> +
> +       ret = rpmh_write_batch(qp->dev, RPMH_SLEEP_STATE, cmds, commit_idx);
> +       if (ret) {
> +               pr_err("Error sending SLEEP RPMH requests (%d)\n", ret);
> +               return ret;
> +       }
> +
>         return ret;
>  }
>
> @@ -738,6 +809,7 @@ static int qnoc_probe(struct platform_device *pdev)
>         provider = &qp->provider;
>         provider->dev = &pdev->dev;
>         provider->set = qcom_icc_set;
> +       provider->pre_aggregate = qcom_icc_pre_aggregate;
>         provider->aggregate = qcom_icc_aggregate;
>         provider->xlate = of_icc_xlate_onecell;
>         INIT_LIST_HEAD(&provider->nodes);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
