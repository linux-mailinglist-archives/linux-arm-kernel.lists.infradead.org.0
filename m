Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2D237B5A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 19:46:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=marBKZD122klx724iBA4Pk+r4t5PLf1eWFAJZtnDIJo=; b=ZYtqe8HQBFGkMW
	SHLr+V2ukG92FfAqcTF/jVaaNMhMzuGhyzKq1y+w7cg/P6IZa2Gv/ppYnpvbntjxQeb1VqcJ+UJkD
	GfBdz90jj7pbBeRchAoSh2qgsfArITXDISs9FGeFgGFVu2N9LvKCA77EPnXoBmH6xNGLF6uuvmTXq
	8OIlzNWs3HQnzThfRyO41K2yislkgwiIHp2QJmWove9/M/PqR2CyjLDiLyBxK2qC3gYbAvFqL3wkg
	fMgEh0VIibkfCBD/v0O18zLedF5vVSiR6r6fZesHlUi6NixhXo9aRo8Pi2kSdsRwePyG7PaZcrc8H
	+9DuXusjaOHGlgP4UIpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYwTI-0001kG-Mo; Thu, 06 Jun 2019 17:46:40 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYwTB-0001je-Be
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 17:46:34 +0000
Received: by mail-it1-x142.google.com with SMTP id m187so1329656ite.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 10:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qz2I4X9GaAXvmz/sLko1GhCrkN2RVZDS/uq3/GgGWKw=;
 b=WeBqzF3rTxNvMQjuMxaTFtVaTF2Qcmcji5WVNJBH2XDIAgDoPoFPqKHhsbA80a1T/g
 iX3lu78hr/MGJu633GktouF23C54stn+e1gS0wjCRw7Jymr5IvW9VjFOxPiJZ4JDCH4J
 6eZxXm3zb5XSf0dooMEkh0yyBvdv101x0lg1RDiBDRr+Fs0BSVSfBlIUtKFGlp6hzz8s
 TipbuicIHi59EXBykjs2qIOehK1o/Oi+cmw/bp9SvKgh+3/fFKydI8kJLx4gnR1RJepJ
 UWeHS6cNz8hOolVqO8Pvg00aZT58u4EjtFq9k/QfsA0uk+8OauQE0buYenO0PhQJGoxG
 t4wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qz2I4X9GaAXvmz/sLko1GhCrkN2RVZDS/uq3/GgGWKw=;
 b=CVanas+0DlPnbFMI79JcbY7kuN71KQbbhEV1gyVdKaJEoFQ/cw2U6u1VS2bCRkJQTG
 zf5yogz6rVcgo/yGragDSaFsquz4h6u02GF4aDpvI80cKFwMzMAwrZkBbpyCwdx/sD00
 kaACJbs4vjmfkZBbzSbtvS6W57tB8FFWfVpF6MiAS54BiiJkrlI6MDEWApYrm73JYIla
 jEwOmWhSOpPzqqQIX/3NI5Pc4AXvpHzVhT//fMINiWtplB65+tY/VtR4vByzfIAJfoIT
 9Zg8uCsyB34mIIL5rtX9ICw3kn6QyA6u5t30W1aNB4Mo9O34nN6ztANfhvEzoezhcdy6
 HJww==
X-Gm-Message-State: APjAAAVA2hcYwg3+SNc1TQYAM2hemjIupW6Di9xZl8UHQhki22ac1EI9
 Qze4Yyw9z+GSUsQZeZoVoFzdT5Eb8LrSFKn1NInxF1S2
X-Google-Smtp-Source: APXvYqzMDF8+xZ8hHFPgNsp5xk4fvprBhv1fYIYIVIlmDbWgg9IZ2+9n8iZQIseVkbVKv2d6DbxaQcPn14weuLrVSFg=
X-Received: by 2002:a24:f34a:: with SMTP id t10mr962173iti.129.1559843192356; 
 Thu, 06 Jun 2019 10:46:32 -0700 (PDT)
MIME-Version: 1.0
References: <1559837807-15447-1-git-send-email-suzuki.poulose@arm.com>
In-Reply-To: <1559837807-15447-1-git-send-email-suzuki.poulose@arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 6 Jun 2019 11:46:21 -0600
Message-ID: <CANLsYkyv-BTFMosM05eicugzGmuYfkGWDEFo+vApX1q-qfUsOA@mail.gmail.com>
Subject: Re: [PATCH v4 0/4] coresight: Do not call smp_processor_id from
 pre-emptible contexts
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_104633_394848_36444261 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 6 Jun 2019 at 10:17, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> We have a few places where we call smp_processor_id() from preemptible
> contexts during the perf buffer handling. We do this to figure out the
> numa node for the allocation in case the event is not CPU bound. Instead
> use NUMA_NO_NODE to avoid a splat.
>
>
> Changes since v3:
>  - No function changes. Fix the commit description
> Changes since V2:
>  - Use NUMA_NO_NODE instead of numa_node_id() for event->cpu == -1. (Robin Murphy)
>
>
> Suzuki K Poulose (4):
>   coresight: tmc-etr: Do not call smp_processor_id() from preemptible
>   coresight: tmc-etr: alloc_perf_buf: Do not call smp_processor_id from
>     preemptible
>   coresight: tmc-etf: Do not call smp_processor_id from preemptible
>   coresight: etb10: Do not call smp_processor_id from preemptible
>
>  drivers/hwtracing/coresight/coresight-etb10.c   |  6 ++----
>  drivers/hwtracing/coresight/coresight-tmc-etf.c |  6 ++----
>  drivers/hwtracing/coresight/coresight-tmc-etr.c | 13 ++++---------
>  3 files changed, 8 insertions(+), 17 deletions(-)

And this set.

Thanks,
Mathieu

>
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
