Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE651534DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 17:00:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AhC9FLGMVgmFZWT27fMqB1IFuXgJcLiZ0kqRnOLc9bE=; b=oPpSJlAhtnMu2+
	Ggrqrqa0Gd36nsMS3j9dOtCrZNraSN4A2JzftqWVmtnalXilI24zX9lT9p2xiDG0ypL/aqXLufqTQ
	FOo8UaQL1gCZa8X0HdRj1NbIWF42FPSAWRp5nMVd7LlZsUXlpToJkOvWEvTSEJ09M9zwq4AX5BOpH
	vj7nts7Msx2AGrfJjQXyGQPkO1FBuq1Dl13UOcHSys4NkI0BWkrm3yELQhPvL9F9cbRxb4NFYApX/
	4nFPWBVVoiqmp2SAI3GGjz/Fa9ifqDqMvd8Q64zDEO2uz9yMdMvK+oY2k4w5SkCfYXDcbD2EtG1Hk
	Ab2h7Z5pqE6hmUQc0/mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izN5x-0008Hc-0M; Wed, 05 Feb 2020 16:00:05 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izN5l-0008Gd-Uo
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 15:59:55 +0000
Received: by mail-qt1-x844.google.com with SMTP id e25so1889094qtr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 07:59:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EgFtvKPDP0sDYi/MhyTOH2A1MExKnqnxSMqDrNLHf/M=;
 b=tAtDtV/KzO2rjT2J443TGWBe1bFoqvGnSPis/NovagA4PRvijZZN2eGIc7Ou8mXmQi
 uBvmFpsdWzjyK9q6EY8wbh9tvI4FX0DszTV2dnmPaNPDCJAKU4rC5ZDCAvAAbJxGZ4go
 xADzV7TP/DwMI6Bd24aBjFL3J093rFxJhPzpS/NX2bcNYngDn6r4qMEm63sqittFMD1p
 YusrPVafqr8u1VOmdUiaGDQPVSMDG9qtmsoKawkDB0FMSDHqzb2VZhwVfZPE4iSkLyF4
 +19pdq/P3JAQwmCg8Kmdwj+kYbeV9jMJ3EKssYZjfyJx+DOQAizitHqi//HXgKIYUpHM
 Pskg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EgFtvKPDP0sDYi/MhyTOH2A1MExKnqnxSMqDrNLHf/M=;
 b=dUZeWSkjRKEpjMnxDuEI91JcjBWF50TkCfHmPAHkA5UvWppFX77ofSytpI7FDcgZ0/
 A1cO7wMxfJeqCJ0w3Fg83QRlrTBW75VBx498tJxe6VF3reMCs1uD1aPsyEImuQvu0KO4
 hrXOuvnyCAl9ljNPDztLfQZWJ/wR9Rw6moHoYgRFwUYToLClnDtEqC7HpxnWMsjBJhPi
 9N3TteySWU0DeLPfSSFji8GNt5P0YRTAJ5p4gQzl0d4RwSynJfD7VNBj/cKEj+4Xf1uD
 +3B5pwnd0lLetN9tjZkPMZy1q5gzx1XKzDfgnIAZcNSaZE0nq96K2YWb4swJOQGu5V7a
 EJSQ==
X-Gm-Message-State: APjAAAVYpqTzi5GYEdt0T+0kT+EeMv8OMus/PCbAcAKIm3k64oAiimnn
 kKDUEM3YJP8skaNKzizTkOyEU+pduJZPG4F0Hf8fyA==
X-Google-Smtp-Source: APXvYqzz6JLrUAUDTjlc/jFlOSc/cjLwcyWkNWf76pAct7u7jUk0TCmgecnPO34q6QtYvDnrKNNbURQOt0SEHPw2QR0=
X-Received: by 2002:ac8:7b9b:: with SMTP id p27mr34530525qtu.2.1580918391571; 
 Wed, 05 Feb 2020 07:59:51 -0800 (PST)
MIME-Version: 1.0
References: <20200203015203.27882-1-leo.yan@linaro.org>
 <20200203015203.27882-2-leo.yan@linaro.org>
In-Reply-To: <20200203015203.27882-2-leo.yan@linaro.org>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 5 Feb 2020 15:59:40 +0000
Message-ID: <CAJ9a7VgFL24gWGGJ-Wn2YycsW1DzKgu29_HaHtE=OJ0Fz3oNcA@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] perf cs-etm: Swap packets for instruction samples
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_075953_998231_04E773ED 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Coresight ML <coresight@lists.linaro.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <robert.walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leo

On Mon, 3 Feb 2020 at 01:52, Leo Yan <leo.yan@linaro.org> wrote:
>
> If use option '--itrace=iNNN' with Arm CoreSight trace data, perf tool
> fails inject instruction samples; the root cause is the packets are
> only switched for branch samples and last branches but not for
> instruction samples, so the new coming packets cannot be properly
> handled for only synthesizing instruction samples.
>
> To fix this issue, this patch switches packets for instruction samples.
>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/cs-etm.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index 5471045ebf5c..3dd5ba34a2c2 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -1404,7 +1404,8 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
>                 }
>         }
>
> -       if (etm->sample_branches || etm->synth_opts.last_branch) {
> +       if (etm->sample_branches || etm->synth_opts.last_branch ||
> +           etm->sample_instructions) {
>                 /*
>                  * Swap PACKET with PREV_PACKET: PACKET becomes PREV_PACKET for
>                  * the next incoming packet.
> @@ -1476,7 +1477,8 @@ static int cs_etm__flush(struct cs_etm_queue *etmq,
>         }
>
>  swap_packet:
> -       if (etm->sample_branches || etm->synth_opts.last_branch) {
> +       if (etm->sample_branches || etm->synth_opts.last_branch ||
> +           etm->sample_instructions) {
>                 /*
>                  * Swap PACKET with PREV_PACKET: PACKET becomes PREV_PACKET for
>                  * the next incoming packet.
> --
> 2.17.1
>
if is worth putting the 'if <options> { swap packet }' into a separate
function as it appears twice in identical form? Might help if more
options for swap packet are needed later.

Either way

Reviewed by: Mike Leach <mike.leach@linaro.org>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
