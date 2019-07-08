Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B406275B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 19:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5nJ9cEuMEOA979/fyiSLv8/dKKkpUl08qABFipENbzI=; b=TnJud1Czw4pghC
	L87/HOn5U5XuL4KQFR3ImIzG3NPSs37rLPnAN2f5UP/nNgMvJAoTsPXOIpM6sfsn+4gEAakvd4rgf
	rnlAzJ04y3dOTYabaBg5I0kT0bXcEeb+Rlos5bBZ5fO2hk4uVvnH23r7+xa9EXJY5EObVJApwOzlG
	9cbmZQklPkGFvaT1jAesCdI/Z2moVCNsnRTE39UabNkEgqEHakJ+6xZyayor9tczfg8m5g+q/8kdT
	36pWEp4r8MGP26eFwQ8/Um24uf7aacmtpkarXAINc1yvTGW9222WfawMrSzdy/SiLleTuBY2+KzZ+
	wEqFWW6TNON+TI/U1A7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkXbc-00078Q-1V; Mon, 08 Jul 2019 17:39:12 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkXbQ-00077y-6a
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 17:39:01 +0000
Received: by mail-io1-xd41.google.com with SMTP id k8so37224550iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 10:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Zbi2cNv/TpuGlJ+YwPJTmlkeVMXSjEZ67mVfSwn9d+Y=;
 b=g4m7gvOwoL8Ba1jns6Vi7Q0m7sKlLgR0n7bYq20Z6JRByef52LeaAH9UNBZVxMyR2Y
 kSFxaR2KvLg7WW02N7GBW5BEgQMpFC/6tr94/kgULAkrwJDGfW5XMzq0pNpGNdX3mbHY
 jn3m7Vp1rWq9E/OmIRAm0gw9aNdNXR0H3WzctXiWac6JFF/2/D2UcDoaJ0BH+tSjoeBZ
 NlzonlxwJGzqmTc/QtIbrfDZpOzzfRItibON733/czW7HyXutsq79w32S2LzRDCr2boI
 Q8uyho1YPz5O5JkMA7+EMMlH7Ivkm+Poch85s58zIS41MTAaCL0zX4K8PmnKds9Wnjgz
 8Q2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zbi2cNv/TpuGlJ+YwPJTmlkeVMXSjEZ67mVfSwn9d+Y=;
 b=cKArAE2DkEvu8vFB+mqzonM9pimUPrvt0k7TJ/6MnFifd/TfxrXnHpHOBVZ5ylIjmr
 LbcecgyWowgvqHyeXVuaCrtthpIeYms3BluBo0R6qN1RyIOzROQX4Bkjezbftb4h46Yr
 UOPfBtLC8fMDh/REHpnbGyutNRtTdIyxiMiTxD37fYCsAKk1XT+85IjuPpPgzA7gewLY
 GHRSsGcNYPVvKSwMhf7IghpTwMFlnGcMGpvOiL+n1+T6c60Yk2029NZKvg0aMmM6y6JB
 bTPQqttcVJs2OSzx/r4NOLVR9082pPTSrITVfH+O5WlRcTE8KndGaRhymQ59V4d0EA33
 IGNw==
X-Gm-Message-State: APjAAAVuPxq3RVv9k+nUyv6nQI6NpQPa1U96vzL7HhISCOWaITkD7W2l
 YzzprLRlBaz94vJpM0VU0Am9hWHl6KHuDN6PVvzE3w==
X-Google-Smtp-Source: APXvYqxPB5rd83qO7WjtBsChtu5/pgbFbGNDXikxw3NiTLQIaHzZaXtQcaTt7ebej7HCBTiHTBW7E6PNgxgW9KMJQZg=
X-Received: by 2002:a5d:9dc7:: with SMTP id 7mr20717541ioo.237.1562607539359; 
 Mon, 08 Jul 2019 10:38:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190708143937.7722-1-leo.yan@linaro.org>
 <20190708143937.7722-5-leo.yan@linaro.org>
In-Reply-To: <20190708143937.7722-5-leo.yan@linaro.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 8 Jul 2019 11:38:48 -0600
Message-ID: <CANLsYkwHMfVf-FUQ+wBkDfq9GnCihimFAhd+ybCsxMAt8d3HcA@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] perf cs-etm: Smatch: Fix potential NULL pointer
 dereference
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_103900_256787_2E57A241 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Andi Kleen <ak@linux.intel.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 8 Jul 2019 at 08:40, Leo Yan <leo.yan@linaro.org> wrote:
>
> Based on the following report from Smatch, fix the potential
> NULL pointer dereference check.
>
>   tools/perf/util/cs-etm.c:2545
>   cs_etm__process_auxtrace_info() error: we previously assumed
>   'session->itrace_synth_opts' could be null (see line 2541)
>
> tools/perf/util/cs-etm.c
> 2541         if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
> 2542                 etm->synth_opts = *session->itrace_synth_opts;
> 2543         } else {
> 2544                 itrace_synth_opts__set_default(&etm->synth_opts,
> 2545                                 session->itrace_synth_opts->default_no_sample);
>                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^
> 2546                 etm->synth_opts.callchain = false;
> 2547         }
>
> 'session->itrace_synth_opts' is impossible to be a NULL pointer in
> cs_etm__process_auxtrace_info(), thus this patch removes the NULL
> test for 'session->itrace_synth_opts'.
>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/cs-etm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index ad43a6e31827..ab578a06a790 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -2537,7 +2537,7 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
>                 return 0;
>         }
>
> -       if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
> +       if (session->itrace_synth_opts->set) {
>                 etm->synth_opts = *session->itrace_synth_opts;
>         } else {
>                 itrace_synth_opts__set_default(&etm->synth_opts,

This is in accordance with what was previously discussed.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
