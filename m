Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D45981BBC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 15:17:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvCI1KHKC0FM9Z5FCEOf0+BpXyzcih5ILtfegxUeTnM=; b=r+W5qXc5xISpvB
	UxBM4A9ivi2W+YVFLjKpP1iqmNfj/O3sYbAAKW9XbxiRy5f1d9cskM7YRCYLbvjvgEqa5sGCHz+WE
	toEEqo7qrezCPLwA9AW0xcccIjirmfx01HsVx/pCMrACfs5aXDk7xFB8aTwyEq8RkL72F/Q49EQQf
	kSJB0eHVURJShq7L8el7X3HrUmvaVMQtk/D3OuXtcp5e39k424sYjg1aERd7Lf0Zm1Dy5ycZ0r5vB
	ndnU/pikI593FU4lkAA4fnZl5Wd931r2VgqSKIlsZ/g+6JIS1u+jpKB3OckeUZ3vFCeLs6qX5lD+A
	5+IKejM+Nw1NHMlisGVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hucrO-0007uR-AH; Mon, 05 Aug 2019 13:17:10 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucr7-0007qd-TC
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 13:16:55 +0000
Received: by mail-lj1-x244.google.com with SMTP id p17so79283877ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 06:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IkIX5ZdYnCvGX5CLwyhvH07IjTJLE7wT5hDwDOqSmi8=;
 b=c+VetsYOrNiIQJJpliAISLKJ/GWL4edwcb+Q1umBrs5K2CqC7iONe7O0BHQ0sI8reL
 LnGCQiXHBMPaTiI6j2WwOBYphz4V7sL0xjyN2hzEFoej/Flj0aQNzXhFzjC5tctPqTvn
 TFC+MU3AEWVK5lOCmx9rh866Gw8QyWfsvptHWnkkvASk+WMUhM62ywtYy5dHDnGqw6G7
 E4vcwFN0e3NPyGNZwl1SptWApGQ7mx5lY+/1c+MHFNilKm2m+QGtNhBgVfE0oRvEndwq
 xaQt5htxa8rbVIsSKUOSmCyUtgAF2EbCHGkXoE6vlEvMLIjTOaz+1BdNLZd8XLZbELpu
 m75w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IkIX5ZdYnCvGX5CLwyhvH07IjTJLE7wT5hDwDOqSmi8=;
 b=aC2N8x7oK6c2WEmeluynWLsZKxMFpRS/3L/kHpUUj7p+Bysw0tbDJyZr7UBiEsgaYE
 qZ30ficPeCXeyaohbd1NAnUXOK26ZIFVf6cGeg7wYqgwWEqWsSOxnU+umR0VLSDqjxk7
 1woKD1NtgwZb43B6R/yT+T6YU/2Lf16lXfGNcezu0C15anpMJZ/m2REyQn1bT9iEmi0E
 1KQ6jGqab+RUqO94ISR4bTb+pHU1IVUYH36O7z6gG/efAiB3XF3+WP3lp6WNE+rk7otC
 htyk3OpNR7FM/Suxu4DgtBBcO9q5xeiB/I7kdHSv73rObgsTZKiwBX++3SjMV7hRLmCr
 2Q/Q==
X-Gm-Message-State: APjAAAXwNTMyT/zgA8ky/Er4A3BcL8AouvJs+DYBajivZaXCQBZ+K+rK
 gB3s5S6Q9vXDCXoJENgQoznav05MAZrQMJ1Q1jMLyg==
X-Google-Smtp-Source: APXvYqwymn69IcH0rOGNIrvvgwF0wZwLCmIPMON3Ogn2myxNValshmaRxcFgJDU7dUI26rvjavozqHXCbrfbpgc3rdM=
X-Received: by 2002:a2e:80c8:: with SMTP id r8mr7612109ljg.168.1565011012008; 
 Mon, 05 Aug 2019 06:16:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190726135954.11078-1-sudeep.holla@arm.com>
 <20190726135954.11078-3-sudeep.holla@arm.com>
In-Reply-To: <20190726135954.11078-3-sudeep.holla@arm.com>
From: Etienne Carriere <etienne.carriere@linaro.org>
Date: Mon, 5 Aug 2019 15:16:41 +0200
Message-ID: <CAN5uoS-dgtz55O+AAxEFkgtijpHj_-NSy7SkNRAkhEJN5v4PWA@mail.gmail.com>
Subject: Re: [PATCH 2/5] firmware: arm_scmi: Make use SCMI v2.0 fastchannel
 for performance protocol
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_061653_975427_0D180A13 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
Cc: Peng Fan <peng.fan@nxp.com>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>, wesleys@xilinx.com,
 Ionela Voinescu <Ionela.Voinescu@arm.com>, aidapala@qti.qualcomm.com,
 linux-kernel@vger.kernel.org, Saeed Nowshadi <saeed.nowshadi@xilinx.com>,
 Quentin Perret <Quentin.Perret@arm.com>, Bo Zhang <bozhang.zhang@broadcom.com>,
 Felix Burton <fburton@xilinx.com>, Jim Quinlan <james.quinlan@broadcom.com>,
 Chris Redpath <Chris.Redpath@arm.com>, pajay@qti.qualcomm.com,
 Gaku Inami <gaku.inami.xh@renesas.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 26 Jul 2019 at 16:00, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> SCMI v2.0 adds support for "FastChannel" which do not use a message
> header as they are specialized for a single message.
>
> Only PERFORMANCE_LIMITS_{SET,GET} and PERFORMANCE_LEVEL_{SET,GET}
> commands are supported over fastchannels. As they are optional, they
> need to be discovered by PERFORMANCE_DESCRIBE_FASTCHANNEL command.
> Further {LIMIT,LEVEL}_SET commands can have optional doorbell support.
>
> Add support for making use of these fastchannels.
>
> Cc: Ionela Voinescu <Ionela.Voinescu@arm.com>
> Cc: Chris Redpath <Chris.Redpath@arm.com>
> Cc: Quentin Perret <Quentin.Perret@arm.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/perf.c | 104 +++++++++++++++++++++++++++++--
>  1 file changed, 100 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
> index 6cce3e82e81e..b9144efbd6fb 100644
> --- a/drivers/firmware/arm_scmi/perf.c
> +++ b/drivers/firmware/arm_scmi/perf.c
> @@ -8,6 +8,7 @@
>  #include <linux/bits.h>
>  #include <linux/of.h>
>  #include <linux/io.h>
> +#include <linux/io-64-nonatomic-hi-lo.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_opp.h>
>  #include <linux/sort.h>
> @@ -293,7 +294,42 @@ scmi_perf_describe_levels_get(const struct scmi_handle *handle, u32 domain,
>         return ret;
>  }
>
> -static int scmi_perf_limits_set(const struct scmi_handle *handle, u32 domain,
> +#define SCMI_PERF_FC_RING_DB(doorbell, w)              \

Suggest to reformat into a macro style:
    #define SCMI_PERF_FC_RING_DB(doorbell, w)              \
        do { \
                (...) \
        } while (0)

> +{                                                      \
> +       u##w val = 0;                                   \
> +       struct scmi_fc_db_info *db = doorbell;          \
> +                                                       \
> +       if ((db)->mask)                                 \

remove parentheses. I would say, could simply remove `if (db->mask)` here.

> +               val = ioread##w(db->addr) & db->mask;   \
> +       iowrite##w((u##w)db->set | val, db->addr);      \
> +}
> +
> +static void scmi_perf_fc_ring_db(struct scmi_fc_db_info *db)
> +{
> +       if (!db || !db->addr)
> +               return;
> +
> +       if (db->width == 1)
> +               SCMI_PERF_FC_RING_DB(db, 8)
> +       else if (db->width == 2)
> +               SCMI_PERF_FC_RING_DB(db, 16)
> +       else if (db->width == 4)
> +               SCMI_PERF_FC_RING_DB(db, 32)
> +       else /* db->width == 8 */
> +#ifdef CONFIG_64BIT
> +               SCMI_PERF_FC_RING_DB(db, 64)
> +#else
> +       {
> +               u64 val = 0;
> +
> +               if (db->mask)
> +                       val = ioread64_hi_lo(db->addr) & db->mask;
> +               iowrite64_hi_lo(db->set, db->addr);

Is `value` missing here?
Why not using SCMI_PERF_FC_RING_DB(db, 64) here?



> +       }
> +#endif
> +}
> +
> +static int scmi_perf_mb_limits_set(const struct scmi_handle *handle, u32 domain,
>                                    u32 max_perf, u32 min_perf)
>  {
>         int ret;
> @@ -316,7 +352,23 @@ static int scmi_perf_limits_set(const struct scmi_handle *handle, u32 domain,
>         return ret;
>  }
>
> -static int scmi_perf_limits_get(const struct scmi_handle *handle, u32 domain,
> +static int scmi_perf_limits_set(const struct scmi_handle *handle, u32 domain,
> +                               u32 max_perf, u32 min_perf)
> +{
> +       struct scmi_perf_info *pi = handle->perf_priv;
> +       struct perf_dom_info *dom = pi->dom_info + domain;
> +
> +       if (dom->fc_info && dom->fc_info->limit_set_addr) {
> +               iowrite32(max_perf, dom->fc_info->limit_set_addr);
> +               iowrite32(min_perf, dom->fc_info->limit_set_addr + 4);
> +               scmi_perf_fc_ring_db(dom->fc_info->limit_set_db);
> +               return 0;
> +       }
> +
> +       return scmi_perf_mb_limits_set(handle, domain, max_perf, min_perf);
> +}
> +
> +static int scmi_perf_mb_limits_get(const struct scmi_handle *handle, u32 domain,
>                                    u32 *max_perf, u32 *min_perf)
>  {
>         int ret;
> @@ -342,7 +394,22 @@ static int scmi_perf_limits_get(const struct scmi_handle *handle, u32 domain,
>         return ret;
>  }
>
> -static int scmi_perf_level_set(const struct scmi_handle *handle, u32 domain,
> +static int scmi_perf_limits_get(const struct scmi_handle *handle, u32 domain,
> +                               u32 *max_perf, u32 *min_perf)
> +{
> +       struct scmi_perf_info *pi = handle->perf_priv;
> +       struct perf_dom_info *dom = pi->dom_info + domain;
> +
> +       if (dom->fc_info && dom->fc_info->limit_get_addr) {
> +               *max_perf = ioread32(dom->fc_info->limit_get_addr);
> +               *min_perf = ioread32(dom->fc_info->limit_get_addr + 4);
> +               return 0;
> +       }
> +
> +       return scmi_perf_mb_limits_get(handle, domain, max_perf, min_perf);
> +}
> +
> +static int scmi_perf_mb_level_set(const struct scmi_handle *handle, u32 domain,
>                                   u32 level, bool poll)
>  {
>         int ret;
> @@ -365,7 +432,22 @@ static int scmi_perf_level_set(const struct scmi_handle *handle, u32 domain,
>         return ret;
>  }
>
> -static int scmi_perf_level_get(const struct scmi_handle *handle, u32 domain,
> +static int scmi_perf_level_set(const struct scmi_handle *handle, u32 domain,
> +                              u32 level, bool poll)
> +{
> +       struct scmi_perf_info *pi = handle->perf_priv;
> +       struct perf_dom_info *dom = pi->dom_info + domain;
> +
> +       if (dom->fc_info && dom->fc_info->level_set_addr) {
> +               iowrite32(level, dom->fc_info->level_set_addr);
> +               scmi_perf_fc_ring_db(dom->fc_info->level_set_db);
> +               return 0;
> +       }
> +
> +       return scmi_perf_mb_level_set(handle, domain, level, poll);
> +}
> +
> +static int scmi_perf_mb_level_get(const struct scmi_handle *handle, u32 domain,
>                                   u32 *level, bool poll)
>  {
>         int ret;
> @@ -387,6 +469,20 @@ static int scmi_perf_level_get(const struct scmi_handle *handle, u32 domain,
>         return ret;
>  }
>
> +static int scmi_perf_level_get(const struct scmi_handle *handle, u32 domain,
> +                              u32 *level, bool poll)
> +{
> +       struct scmi_perf_info *pi = handle->perf_priv;
> +       struct perf_dom_info *dom = pi->dom_info + domain;
> +
> +       if (dom->fc_info && dom->fc_info->level_get_addr) {
> +               *level = ioread32(dom->fc_info->level_get_addr);
> +               return 0;
> +       }
> +
> +       return scmi_perf_mb_level_get(handle, domain, level, poll);
> +}
> +
>  static bool scmi_perf_fc_size_is_valid(u32 msg, u32 size)
>  {
>         if ((msg == PERF_LEVEL_GET || msg == PERF_LEVEL_SET) && size == 4)
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
