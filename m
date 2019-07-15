Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3498269F89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 01:34:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kNcfYKOEhVpPXpXceXQnE5g7Rca8OLIycPT6wyTzedY=; b=rENC2oFOJoBUNA38DtpAVGT/S
	Y/urh9nBJwW0wnv1jAtOzHQcaPj2d/k07yi9kiofZ89zRW7LdeATIrmAH+rrHvIwWjE34idFQ/xUP
	zgrifzy/EiUPMDduY2NiYtIuGCiM4CTaaSA/lqAHkP6Ilhh6slj9uXidNNSI+5mRLXjXVNpMXXYS7
	BeMGzxpH71QaOvwJYguKG5/ukyO3ECIDr9kiHIGq0L/dznD+12+BlrBi0s/yTN77afAtRzu0Wmz4d
	t1gwsbzb3d+6TXhQ3Lp+9D8rj/tVOw9670+0YwrvqdY2WZgB1kbpto/hlQ7fKbsToaPMJc2SiKo+P
	rsRLtxRgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnAUS-0002Iq-JG; Mon, 15 Jul 2019 23:34:40 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnAUA-0002IQ-AU
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 23:34:24 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id A14D261790; Mon, 15 Jul 2019 23:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563233661;
 bh=mpLIagN7YSlBVfeKVHNqH5UIFpRVUIhSrtt1uOWyIY8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=A/e7t/DzP2RVLlSUgJ4uxx/hgUI5NV0dp0BaJN9HHS8YMMJ0LeVrLjWcxPQpjFoM+
 DVZpSzfrirMVB1Bo+YMEKyfE3dnHg9KNui43f2/DtZNhScQn+7ZOLx6MSmv8NmNcXd
 mODLFkexedx3K0LhORxP1IjqGUm1SGFUxDLYI2KE=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.46.162.237] (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: daidavid1@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5C14C616BA;
 Mon, 15 Jul 2019 23:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563233660;
 bh=mpLIagN7YSlBVfeKVHNqH5UIFpRVUIhSrtt1uOWyIY8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=U0VMQa3yo3vD9jfu3UoVMHHtt6sv/UnxxjaxfQiH0zZYUBwxBNSAaEHCRGqCQuxSi
 vNu/C2eBI44inKQkC+WxC1HCZyhi/NCFNFJx5DSFRSiVyA92amzx1UxtB+TQ6+VJ5F
 xvdiPS0XDbrib2BXGwikzmSzZPNiMoYkxhOkS8PI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5C14C616BA
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=daidavid1@codeaurora.org
Subject: Re: [PATCH v2 2/2] interconnect: qcom: Add tagging and wake/sleep
 support for sdm845
To: Evan Green <evgreen@chromium.org>, Georgi Djakov <georgi.djakov@linaro.org>
References: <20190618091724.28232-1-georgi.djakov@linaro.org>
 <20190618091724.28232-3-georgi.djakov@linaro.org>
 <CAE=gft7=ZbK3ARtWyv8n_hWJ4kuXRs0UA0QsE420pqL8R1quUQ@mail.gmail.com>
From: David Dai <daidavid1@codeaurora.org>
Message-ID: <05d9fea0-c040-d609-38bf-11cddbe6aa4d@codeaurora.org>
Date: Mon, 15 Jul 2019 16:34:19 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAE=gft7=ZbK3ARtWyv8n_hWJ4kuXRs0UA0QsE420pqL8R1quUQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_163422_402053_10DB095A 
X-CRM114-Status: GOOD (  33.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 LKML <linux-kernel@vger.kernel.org>, Doug Anderson <dianders@chromium.org>,
 amit.kucheria@linaro.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Evan,

Thanks for the continued help in reviewing these patches!

On 7/11/2019 10:06 AM, Evan Green wrote:
> Hi Georgi and David,
>
> On Tue, Jun 18, 2019 at 2:17 AM Georgi Djakov <georgi.djakov@linaro.org> wrote:
>> From: David Dai <daidavid1@codeaurora.org>
>>
>> Add support for wake and sleep commands by using a tag to indicate
>> whether or not the aggregate and set requests fall into execution
>> state specific bucket.
>>
>> Signed-off-by: David Dai <daidavid1@codeaurora.org>
>> Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
>> ---
>>   drivers/interconnect/qcom/sdm845.c | 129 ++++++++++++++++++++++-------
>>   1 file changed, 98 insertions(+), 31 deletions(-)
>>
>> diff --git a/drivers/interconnect/qcom/sdm845.c b/drivers/interconnect/qcom/sdm845.c
>> index fb526004c82e..c100aab39415 100644
>> --- a/drivers/interconnect/qcom/sdm845.c
>> +++ b/drivers/interconnect/qcom/sdm845.c
>> @@ -66,6 +66,17 @@ struct bcm_db {
>>   #define SDM845_MAX_BCM_PER_NODE        2
>>   #define SDM845_MAX_VCD         10
>>
>> +#define QCOM_ICC_BUCKET_AMC            0
> What is AMC again? Is it the "right now" bucket? Maybe a comment on
> the meaning of this bucket would be helpful.
That's correct. Will add a comment for this.
>
>> +#define QCOM_ICC_BUCKET_WAKE           1
>> +#define QCOM_ICC_BUCKET_SLEEP          2
>> +#define QCOM_ICC_NUM_BUCKETS           3
>> +#define QCOM_ICC_TAG_AMC               BIT(QCOM_ICC_BUCKET_AMC)
>> +#define QCOM_ICC_TAG_WAKE              BIT(QCOM_ICC_BUCKET_WAKE)
>> +#define QCOM_ICC_TAG_SLEEP             BIT(QCOM_ICC_BUCKET_SLEEP)
>> +#define QCOM_ICC_TAG_ACTIVE_ONLY       (QCOM_ICC_TAG_AMC | QCOM_ICC_TAG_WAKE)
>> +#define QCOM_ICC_TAG_ALWAYS            (QCOM_ICC_TAG_AMC | QCOM_ICC_TAG_WAKE |\
>> +                                        QCOM_ICC_TAG_SLEEP)
>> +
>>   /**
>>    * struct qcom_icc_node - Qualcomm specific interconnect nodes
>>    * @name: the node name used in debugfs
>> @@ -75,7 +86,9 @@ struct bcm_db {
>>    * @channels: num of channels at this node
>>    * @buswidth: width of the interconnect between a node and the bus
>>    * @sum_avg: current sum aggregate value of all avg bw requests
>> + * @sum_avg_cached: previous sum aggregate value of all avg bw requests
>>    * @max_peak: current max aggregate value of all peak bw requests
>> + * @max_peak_cached: previous max aggregate value of all peak bw requests
>>    * @bcms: list of bcms associated with this logical node
>>    * @num_bcms: num of @bcms
>>    */
>> @@ -86,8 +99,10 @@ struct qcom_icc_node {
>>          u16 num_links;
>>          u16 channels;
>>          u16 buswidth;
>> -       u64 sum_avg;
>> -       u64 max_peak;
>> +       u64 sum_avg[QCOM_ICC_NUM_BUCKETS];
>> +       u64 sum_avg_cached[QCOM_ICC_NUM_BUCKETS];
>> +       u64 max_peak[QCOM_ICC_NUM_BUCKETS];
>> +       u64 max_peak_cached[QCOM_ICC_NUM_BUCKETS];
>>          struct qcom_icc_bcm *bcms[SDM845_MAX_BCM_PER_NODE];
>>          size_t num_bcms;
>>   };
>> @@ -112,8 +127,8 @@ struct qcom_icc_bcm {
>>          const char *name;
>>          u32 type;
>>          u32 addr;
>> -       u64 vote_x;
>> -       u64 vote_y;
>> +       u64 vote_x[QCOM_ICC_NUM_BUCKETS];
>> +       u64 vote_y[QCOM_ICC_NUM_BUCKETS];
>>          bool dirty;
>>          bool keepalive;
>>          struct bcm_db aux_data;
>> @@ -555,7 +570,7 @@ inline void tcs_cmd_gen(struct tcs_cmd *cmd, u64 vote_x, u64 vote_y,
>>                  cmd->wait = true;
>>   }
>>
>> -static void tcs_list_gen(struct list_head *bcm_list,
>> +static void tcs_list_gen(struct list_head *bcm_list, int bucket,
>>                           struct tcs_cmd tcs_list[SDM845_MAX_VCD],
>>                           int n[SDM845_MAX_VCD])
>>   {
>> @@ -573,8 +588,8 @@ static void tcs_list_gen(struct list_head *bcm_list,
>>                          commit = true;
>>                          cur_vcd_size = 0;
>>                  }
>> -               tcs_cmd_gen(&tcs_list[idx], bcm->vote_x, bcm->vote_y,
>> -                           bcm->addr, commit);
>> +               tcs_cmd_gen(&tcs_list[idx], bcm->vote_x[bucket],
>> +                           bcm->vote_y[bucket], bcm->addr, commit);
>>                  idx++;
>>                  n[batch]++;
>>                  /*
>> @@ -595,32 +610,39 @@ static void tcs_list_gen(struct list_head *bcm_list,
>>
>>   static void bcm_aggregate(struct qcom_icc_bcm *bcm)
>>   {
>> -       size_t i;
>> -       u64 agg_avg = 0;
>> -       u64 agg_peak = 0;
>> +       size_t i, bucket;
>> +       u64 agg_avg[QCOM_ICC_NUM_BUCKETS] = {0};
>> +       u64 agg_peak[QCOM_ICC_NUM_BUCKETS] = {0};
>>          u64 temp;
>>
>> -       for (i = 0; i < bcm->num_nodes; i++) {
>> -               temp = bcm->nodes[i]->sum_avg * bcm->aux_data.width;
>> -               do_div(temp, bcm->nodes[i]->buswidth * bcm->nodes[i]->channels);
>> -               agg_avg = max(agg_avg, temp);
>> +       for (bucket = 0; bucket < QCOM_ICC_NUM_BUCKETS; bucket++) {
>> +               for (i = 0; i < bcm->num_nodes; i++) {
>> +                       temp = bcm->nodes[i]->sum_avg_cached[bucket] * bcm->aux_data.width;
>> +                       do_div(temp, bcm->nodes[i]->buswidth * bcm->nodes[i]->channels);
>> +                       agg_avg[bucket] = max(agg_avg[bucket], temp);
>>
>> -               temp = bcm->nodes[i]->max_peak * bcm->aux_data.width;
>> -               do_div(temp, bcm->nodes[i]->buswidth);
> Why is it that this one doesn't have the multiply by
> bcm->nodes[i]->channels again? I can't recall if there was a reason.
> If it's correct maybe it deserves a comment.

I think the rationale behind this is generally for consumers to target a 
certain minimum threshold to satisfy some structural latency 
requirements as opposed to strictly throughput, and it may be easier for 
consumers to reuse certain values to support hitting some minimum NoC 
frequencies without having to be concerned with the number of channels 
that may change from platform to platform.

>
>> -               agg_peak = max(agg_peak, temp);
>> -       }
>> +                       temp = bcm->nodes[i]->max_peak_cached[bucket] * bcm->aux_data.width;
>> +                       do_div(temp, bcm->nodes[i]->buswidth);
>> +                       agg_peak[bucket] = max(agg_peak[bucket], temp);
>>
>> -       temp = agg_avg * 1000ULL;
>> -       do_div(temp, bcm->aux_data.unit);
>> -       bcm->vote_x = temp;
>> +                       bcm->nodes[i]->sum_avg[bucket] = 0;
>> +                       bcm->nodes[i]->max_peak[bucket] = 0;
> I don't understand the sum_avg vs sum_avg_cached. Here's what I understand:
> 1. qcom_icc_aggregate() does the math from the incoming values on
> sum_avg, and then clobbers sum_avg_cached with those values.
> 2. bcm_aggregate() uses sum_avg_cached in its calculations, then clears sum_avg.
>
> But I don't get why that's needed. Why not just have sum_avg? Wouldn't
> it work the same? Ok, it wouldn't if you ended up calling
> bcm_aggregate() multiple times on the same bcm. But you have a dirty
> flag that prevents this from happening. So I think it's safe to remove
> the cached arrays, and just clear out the sum_avg when you aggregate.
You are correct in that the dirty flag would prevent another repeat of 
the bcm_aggregate() call in the same icc_set request. But consider a 
following icc_set request on a different node that shares the same BCM, 
the next bcm_aggregate() would result in an incorrect aggregate sum_avg 
for the BCM since the avg_sum from the previous node(from the previous 
icc_set) was cleared out. We need a way to retain the current state of 
all nodes to accurately aggregate the bw values for the BCM.
>> +               }
>>
>> -       temp = agg_peak * 1000ULL;
>> -       do_div(temp, bcm->aux_data.unit);
>> -       bcm->vote_y = temp;
>> +               temp = agg_avg[bucket] * 1000ULL;
>> +               do_div(temp, bcm->aux_data.unit);
>> +               bcm->vote_x[bucket] = temp;
>>
>> -       if (bcm->keepalive && bcm->vote_x == 0 && bcm->vote_y == 0) {
>> -               bcm->vote_x = 1;
>> -               bcm->vote_y = 1;
>> +               temp = agg_peak[bucket] * 1000ULL;
>> +               do_div(temp, bcm->aux_data.unit);
>> +               bcm->vote_y[bucket] = temp;
>> +       }
>> +
>> +       if (bcm->keepalive && bcm->vote_x[0] == 0 && bcm->vote_y[0] == 0) {
>> +               bcm->vote_x[QCOM_ICC_BUCKET_AMC] = 1;
>> +               bcm->vote_x[QCOM_ICC_BUCKET_WAKE] = 1;
>> +               bcm->vote_y[QCOM_ICC_BUCKET_AMC] = 1;
>> +               bcm->vote_y[QCOM_ICC_BUCKET_WAKE] = 1;
>>          }
>>
>>          bcm->dirty = false;
>> @@ -631,15 +653,25 @@ static int qcom_icc_aggregate(struct icc_node *node, u32 tag, u32 avg_bw,
>>   {
>>          size_t i;
>>          struct qcom_icc_node *qn;
>> +       unsigned long tag_word = (unsigned long)tag;
>>
>>          qn = node->data;
>>
>> +       if (!tag)
>> +               tag_word = QCOM_ICC_TAG_ALWAYS;
>> +
>> +       for (i = 0; i < QCOM_ICC_NUM_BUCKETS; i++) {
>> +               if (test_bit(i, &tag_word)) {
> I guess all this extra business with tag_word and casting is so that
> you can use test_bit, which is presumably a tiny bit faster? Does this
> actually make a measurable difference? Maybe in the name of simplicity
> we just do if (tag & BIT(i)), and then optimize if we find that
> conditional to be a hotspot?
Using (tag & BIT(i)) as opposed to test_bit seems reasonable to me.
>> +                       qn->sum_avg[i] += avg_bw;
>> +                       qn->max_peak[i] = max_t(u32, qn->max_peak[i], peak_bw);
>> +                       qn->sum_avg_cached[i] = qn->sum_avg[i];
>> +                       qn->max_peak_cached[i] = qn->max_peak[i];
>> +               }
>> +       }
>> +
>>          *agg_avg += avg_bw;
>>          *agg_peak = max_t(u32, *agg_peak, peak_bw);
>>
>> -       qn->sum_avg = *agg_avg;
>> -       qn->max_peak = *agg_peak;
>> -
>>          for (i = 0; i < qn->num_bcms; i++)
>>                  qn->bcms[i]->dirty = true;
>>
>> @@ -675,7 +707,7 @@ static int qcom_icc_set(struct icc_node *src, struct icc_node *dst)
>>           * Construct the command list based on a pre ordered list of BCMs
>>           * based on VCD.
>>           */
>> -       tcs_list_gen(&commit_list, cmds, commit_idx);
>> +       tcs_list_gen(&commit_list, QCOM_ICC_BUCKET_AMC, cmds, commit_idx);
>>
>>          if (!commit_idx[0])
>>                  return ret;
>> @@ -693,6 +725,41 @@ static int qcom_icc_set(struct icc_node *src, struct icc_node *dst)
>>                  return ret;
>>          }
>>
>> +       INIT_LIST_HEAD(&commit_list);
>> +
>> +       for (i = 0; i < qp->num_bcms; i++) {
>> +               /*
>> +                * Only generate WAKE and SLEEP commands if a resource's
>> +                * requirements change as the execution environment transitions
>> +                * between different power states.
>> +                */
>> +               if (qp->bcms[i]->vote_x[QCOM_ICC_BUCKET_WAKE] !=
>> +                   qp->bcms[i]->vote_x[QCOM_ICC_BUCKET_SLEEP] ||
>> +                   qp->bcms[i]->vote_y[QCOM_ICC_BUCKET_WAKE] !=
>> +                   qp->bcms[i]->vote_y[QCOM_ICC_BUCKET_SLEEP]) {
>> +                       list_add_tail(&qp->bcms[i]->list, &commit_list);
>> +               }
>> +       }
>> +
>> +       if (list_empty(&commit_list))
>> +               return ret;
>> +
>> +       tcs_list_gen(&commit_list, QCOM_ICC_BUCKET_WAKE, cmds, commit_idx);
>> +
>> +       ret = rpmh_write_batch(qp->dev, RPMH_WAKE_ONLY_STATE, cmds, commit_idx);
>> +       if (ret) {
>> +               pr_err("Error sending WAKE RPMH requests (%d)\n", ret);
>> +               return ret;
>> +       }
>> +
>> +       tcs_list_gen(&commit_list, QCOM_ICC_BUCKET_SLEEP, cmds, commit_idx);
>> +
>> +       ret = rpmh_write_batch(qp->dev, RPMH_SLEEP_STATE, cmds, commit_idx);
>> +       if (ret) {
>> +               pr_err("Error sending SLEEP RPMH requests (%d)\n", ret);
>> +               return ret;
>> +       }
>> +
>>          return ret;
>>   }
>>
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
