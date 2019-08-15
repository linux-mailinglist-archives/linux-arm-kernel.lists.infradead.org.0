Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C6E8F214
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 19:23:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jcI8RFJ8BvlpJtGKGVDLZxjhFsKem/uNQHPwjRvSf64=; b=OihUd+2p8kWFcM
	uzkHRVSW1HthpMALDKLopl1trLJzup5ltb22GIjsb+Vp/frjh/Cnv293DBr2lNDQH2IjpQrIX9Jon
	rw4OmYmefjtjJwFR7BBvjFrpqXk0xbCLgY3o2wiMkQfLIYzYBEzB+lulxSLFtNUnVkZ3cnrvhLyf3
	yEgeDQlvqaXbgQiK43RpA7DmKfguJert3l4S9PVQVKlLS004PY1LNcCNrP9reN3MErSeI5igtkeQ8
	JOS1joEn8UyXykih1sK1l9353ystDPlP9Nox7fyTrRhT44xn+eb2S7ZTyRooqIJ7slggr6RRiTGL2
	5ECM/E6Yi7W3Px2Ybvkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyJSv-0002SG-Av; Thu, 15 Aug 2019 17:23:09 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyJSa-0002Qm-QE
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 17:22:56 +0000
Received: by mail-io1-xd44.google.com with SMTP id t3so655240ioj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 10:22:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YPHDIOljV5hQaERK4FC6PgOmZFfQHVVab+DpiSEe62s=;
 b=lX/+/pbPgVYuikGECsCt+M8bkwOrFQVZRfUmqOQPaMX1z9CL2Yc1cjJHNpNYU4Sbrn
 bz3T9KHyos41p1xP12MdWHQX26nF9Y3GlGKfhpewxe2Rc3ijwD8hHHyukD99wq6Q2x6v
 PgL5MVdMZXWnZDtH/3OHfqd9z9BqsKmkGgd2jnQsyqV4EciddEOt4ubAYIPB/hUmpsTg
 KO3sU3cRyCNUpTzwGC0S7Hi46ohz4Vv3cJJoKy0STcxJwuDqx7wiQVo7bxAxKtLhDDnW
 3APvUEGu/YYpyL2u8P1u9hln1OTcnmmvcAsICdmLl598yRShpj6b5MVHjQoVglmpk2rD
 2b3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YPHDIOljV5hQaERK4FC6PgOmZFfQHVVab+DpiSEe62s=;
 b=HwXcVivMXCgwGz3tzvXmmX8agK4HQdYvVT7M9q71f7uctzxEl1+kxgzSJJj/KNAmMO
 CWWz+Kfqd4QgTaN11iom34+OzkE0Qr6tk/o6zxjfv0C5SRe64ocILg1Bqfd7BEfBxaSQ
 7PcCcMVGem/+j620nRFldwecLggKp4vwrGJtMbZLUYCIcKVulPvovsnRjt0nHdht+42L
 XRvIAOzs67Nu+/QeosCqdoZ/J+ABowXepsCQNcetilRukSdoQw7boCb277xoH++EIMDk
 +ei48FP8Tf9Ox/6ZdeowOt+wrLlBlEGLvl5aQwugFcllAxKYyQ52OKW4Qi1i1TiZN3Wf
 aCoQ==
X-Gm-Message-State: APjAAAXNAvkINSvHbbUTCWU5Sf9RS/YvTTnXWPQrao+dph+5FG8DdmWv
 LzLZU4h/ZbVLnjwPo5efCvJ2OLpg93mC510POt4bQQ==
X-Google-Smtp-Source: APXvYqyM8y6XV3ud8k+ti2yuhyZmBt2wQ3LZoMTRTv3ex/apV+hFyTyTpYDw/Dstjey1CnvaQ1AzxIqk9gDnK49wd9Y=
X-Received: by 2002:a5e:c601:: with SMTP id f1mr6364484iok.57.1565889767438;
 Thu, 15 Aug 2019 10:22:47 -0700 (PDT)
MIME-Version: 1.0
References: <CANLsYkz3_bzRCQEVb00Tbf3Rdww13mePN-woncctOu7OanF00A@mail.gmail.com>
 <20190814235058.184204-1-yabinc@google.com>
In-Reply-To: <20190814235058.184204-1-yabinc@google.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 15 Aug 2019 11:22:36 -0600
Message-ID: <CANLsYkwG-nCzomcr2n8T5NaFp-y_Efft+4mbH0Fb1yNE=Lgepg@mail.gmail.com>
Subject: Re: [PATCH v2] coresight: tmc-etr: Fix perf_data check.
To: Yabin Cui <yabinc@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_102248_874493_F0FA010C 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 14 Aug 2019 at 17:51, Yabin Cui <yabinc@google.com> wrote:
>
> > Did you actually see the check fail or is this a theoretical thing?
> > I'm really perplex here has I have tested this scenario many times
> > without issues.
> >
> I have seen this warning in dmesg output, that's how I find the problem.
>
> > In CPU wide scenarios each perf event (one per CPU) is associated with
> > an event_data during the setup process.  The event_data is the
> > etr_perf holding a reference to the perf ring buffer for that specific
> > event along with the etr_buf, regardless of who created the latter.
>
> Agree.
>
> > From there, when the event is installed on a CPU, the csdev for that
> > CPU is given a reference to the event_data of that event[1].  Before
> > going further notice how there is a per CPU csdev and event handle to
> > keep track of event specifics[2]. As such both (per CPU) csdev and
> > event handle carry the exact same reference to the etr_perf.
> >
> On my test device (Pixel 3), there is an ETM device on each cpu, but only
> one ETR device for the whole device. So there is only one instance of etr
> csdev in the kernel. If multiple cpus are scheduling on etm perf events at
> the same time, all of them are trying to set their event_data to the same
> etr csdev. And different perf events have different event_data. A warning
> situation is as below:
>
>    cpu 0
>    schedule on event A (set etr csdev->perf_data to event_a.etr_perf)
>
>    cpu 1
>    schedule on event B (set etr csdev->perf_data to event_b.etr_perf)
>

You are 100% right and looking at it again this morning it just jumped
at me.  I simply can't understand how it did not manifest itself
during all the hammering I did on it.

Please see details in my other (and upcoming) email.

Thanks,
Mathieu

>    cpu 1
>    schedule off event B (update buffer, does nothing since csdev->refcnt != 1)
>
>    cpu 0
>    schedule off event A (update buffer, but etr csdev->perf_data check fail)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
