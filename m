Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 162566A42C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 10:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vinAreuGDw6yakOHT6d676W/iAdjQI9H9MMID2KMlTk=; b=hxGFXlI+XCXSGB
	36AGse3IR3e7XpSs2C5XUnPcI/OwQenxR+gJdWxgmCSlM2iHhex+NPkwFpMUonM/LWJdPi1QA7G+W
	m3gbvBUQ33cE5DAjQ6ECFJqaI4mK7j9ACUuRcHro+5FaofFpZgO7B/G2GxAgntlVzdLob3tg7AVrC
	I7E7aEQWRLRKMLxMhdHpiDodGS2lSCq4yb9PggxkvgypwV+EdQVnh0/V/Mji1xQAjZKd76nJAX1kl
	3hvTtdSpQG00pIO1syt2TuVjV709l1e7BCGe4xxVwy8+8o26Koi6k/CpU9WaGzWn2vL+ROXdQ2iqK
	sE/QByFjNsGhJU2OLqsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnJ8H-0000kp-Sz; Tue, 16 Jul 2019 08:48:21 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnJ6n-0000DT-M4
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 08:46:51 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3DA1A308FBAF;
 Tue, 16 Jul 2019 08:46:47 +0000 (UTC)
Received: from krava (unknown [10.43.17.77])
 by smtp.corp.redhat.com (Postfix) with SMTP id A007A611DC;
 Tue, 16 Jul 2019 08:46:44 +0000 (UTC)
Date: Tue, 16 Jul 2019 10:46:43 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: Igor Lubashev <ilubashe@akamai.com>
Subject: Re: [PATCH 1/3] perf: Add capability-related utilities
Message-ID: <20190716084643.GA22317@krava>
References: <1562112605-6235-1-git-send-email-ilubashe@akamai.com>
 <1562112605-6235-2-git-send-email-ilubashe@akamai.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562112605-6235-2-git-send-email-ilubashe@akamai.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Tue, 16 Jul 2019 08:46:47 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_014649_944614_953EB9C4 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 02, 2019 at 08:10:03PM -0400, Igor Lubashev wrote:
> Add utilities to help checking capabilities of the running process.
> Make perf link with libcap.
> 
> Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
> ---
>  tools/perf/Makefile.config         |  2 +-
>  tools/perf/util/Build              |  1 +
>  tools/perf/util/cap.c              | 24 ++++++++++++++++++++++++
>  tools/perf/util/cap.h              | 10 ++++++++++
>  tools/perf/util/event.h            |  1 +
>  tools/perf/util/python-ext-sources |  1 +
>  tools/perf/util/util.c             |  9 +++++++++
>  7 files changed, 47 insertions(+), 1 deletion(-)
>  create mode 100644 tools/perf/util/cap.c
>  create mode 100644 tools/perf/util/cap.h
> 
> diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
> index 85fbcd265351..21470a50ed39 100644
> --- a/tools/perf/Makefile.config
> +++ b/tools/perf/Makefile.config
> @@ -259,7 +259,7 @@ CXXFLAGS += -Wno-strict-aliasing
>  # adding assembler files missing the .GNU-stack linker note.
>  LDFLAGS += -Wl,-z,noexecstack
>  
> -EXTLIBS = -lpthread -lrt -lm -ldl
> +EXTLIBS = -lpthread -lrt -lm -ldl -lcap

I wonder we should detect libcap or it's everywhere.. Arnaldo's compile test suite might tell

jirka

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
