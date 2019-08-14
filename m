Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87ABB8E15E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 01:51:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zF5mXTOyq1hvCacnap0Qu1kCm2yJm7AAhwy0K0o/+y0=; b=Uay3WxpN5Xb62S
	742Ucb2icFr6Es8tyHtt2ZyuqRGhXTw8XU2YwCkI1AikF9cbeITvDhpYtCia8S0fHqJ8ZmhAj1/SK
	bTT7s8+XJ8g2qKH9mCTFVQXCb7P3mqVAfUvomzDNYLZ6l/Fg9U+S2Uq7A76lPoYP96DEbgr5gyMIP
	qfqNdoze858V00VUtdXRAOoBp7YYCj9QpN5vV9yhZ2ikxTu/8As/dFfPTn+cBgMvY3c2XxYX+4xCY
	QCEuAD06Xu5Kywy+carCsdmC3HJ71RgO0oRVy6m3vUuIBXAY5/vrEZPdl1Ur9Tzadu9bYHupKSMMQ
	yqH2f3kuFm2et6d6nXFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy32y-0004lP-5B; Wed, 14 Aug 2019 23:51:16 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy32n-0004l4-K0
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 23:51:07 +0000
Received: by mail-pg1-x54a.google.com with SMTP id l11so268403pgc.14
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 16:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=mCCHjAlFO5vAUYuV0pCQwN/48vRzFq+YkLLf8FK8aNk=;
 b=G9Al7jqBBI41vvj+P2TFIYHmTeK4JuIVUzUNnvWpI/c+YcsaiX3h+JT3tdTS6X5Opc
 kAYlb9p4SKnw8DgbDCx+LpcimPK8C68h5/K+lVbuq0M7F5eIV6rfRL1xuz+j7G+ip6Vh
 RZMtWaJzLPg4FKl6BNENo618JCDxuHq2mGhmrlacvzf+eWFxRzzNdig1eCrg/blI1LJu
 2x6x7SnN9RiUXFPycEY9XiEM1qkzYe59zFwUZRKYMIgedOLfg53VHus55qOkD4k9gyVD
 8uXyBC8NzgfGeGFcrZmj15kI+1F7/cbAZweQBLvyQ+wDcsQG3KHaa7FCr1DGTNymyM3H
 C1tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=mCCHjAlFO5vAUYuV0pCQwN/48vRzFq+YkLLf8FK8aNk=;
 b=b76PWpmzh4QQ2aYssUOk2s4GerhGZwY0oC5SggbtTKDW36jpUHwt5XV0wCuLyTAqN0
 cwRdEkk6VSzCJS/I+rduZTy0eI9aQ0gcNUZXzsszLmE9lTSBkFv8kWQ8qP9tMnYPZh6O
 uudMXnOv3PZXJw9ENOiEXg165mTP9qbaxsM2TYCx/2XS5N1nV51mVJ3YnQR5wR4oKyon
 oJKlPWlpPKGECO/soRAfxIz3mc+j/cGB0E/1lrvv/FpL9Sxi7RsulCPXrurbz8VEdUIg
 geLposAEo63sedjRASd50pevgOCQXAeO8w35w6++k0Zl+uLj+vJcb+nQLVu2QFFIpUsN
 fJJA==
X-Gm-Message-State: APjAAAXOtMw+BE2WmoAKUVsDhr5Yt1UjZNX8lZC1nzuaY8eK7K63Ut+I
 FdbRg3b2J1VNICZhdmZcb5n5GmIlEg==
X-Google-Smtp-Source: APXvYqwQ7ZXfkseheaq9a7yygbzrcKzjgwsKviofG2LNhIBKUnkwv4PaV9kndL49aji1M5iN0KAYlk6+lgk=
X-Received: by 2002:a63:7709:: with SMTP id s9mr1334272pgc.296.1565826661481; 
 Wed, 14 Aug 2019 16:51:01 -0700 (PDT)
Date: Wed, 14 Aug 2019 16:50:58 -0700
In-Reply-To: <CANLsYkz3_bzRCQEVb00Tbf3Rdww13mePN-woncctOu7OanF00A@mail.gmail.com>
Message-Id: <20190814235058.184204-1-yabinc@google.com>
Mime-Version: 1.0
References: <CANLsYkz3_bzRCQEVb00Tbf3Rdww13mePN-woncctOu7OanF00A@mail.gmail.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: Re: [PATCH v2] coresight: tmc-etr: Fix perf_data check.
From: Yabin Cui <yabinc@google.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_165105_685637_A8687F4D 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Yabin Cui <yabinc@google.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Did you actually see the check fail or is this a theoretical thing?
> I'm really perplex here has I have tested this scenario many times
> without issues.
>
I have seen this warning in dmesg output, that's how I find the problem.

> In CPU wide scenarios each perf event (one per CPU) is associated with
> an event_data during the setup process.  The event_data is the
> etr_perf holding a reference to the perf ring buffer for that specific
> event along with the etr_buf, regardless of who created the latter.

Agree.

> From there, when the event is installed on a CPU, the csdev for that
> CPU is given a reference to the event_data of that event[1].  Before
> going further notice how there is a per CPU csdev and event handle to
> keep track of event specifics[2]. As such both (per CPU) csdev and
> event handle carry the exact same reference to the etr_perf.
>
On my test device (Pixel 3), there is an ETM device on each cpu, but only
one ETR device for the whole device. So there is only one instance of etr
csdev in the kernel. If multiple cpus are scheduling on etm perf events at
the same time, all of them are trying to set their event_data to the same
etr csdev. And different perf events have different event_data. A warning
situation is as below:

   cpu 0
   schedule on event A (set etr csdev->perf_data to event_a.etr_perf)

   cpu 1
   schedule on event B (set etr csdev->perf_data to event_b.etr_perf)

   cpu 1
   schedule off event B (update buffer, does nothing since csdev->refcnt != 1)

   cpu 0
   schedule off event A (update buffer, but etr csdev->perf_data check fail)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
