Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1756C26B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 23:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IEddRzJQvO7duOvmGY3W3A4HoaLeRnkf1g+EWq3nFE=; b=j4CxSlsK6hVv3G
	ErfBFJPwRpQIsNdx0dZoW9qoTccCJqT1zvUFXHeqkvY1kA7GWjxLhU2UGSHrvbb26+1AMizZEpISb
	/BGJgJtWII3h5WEzm/igZlXFqVPGYaaL7bJRfN513HNr/sN1i9cLm5VvVGZGJTkQi0OluvPlD5LvI
	OaygX41hHJhfM7EUbwi2R0Y2jJ5kwrZRbD55h/t5ldSiyveX4Yfy8v0hLt179n5lD2vizZcje81Ch
	yCpQSKXINMgCWxkkXcT76cd8gLe+5+6Sw2n7s85nMSUrWpUuTa1eQZPiqJ3RpoqAMOJMb5kFFVe9C
	UNVfMlpPXtDpFMX4vyfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnr83-00062i-Ju; Wed, 17 Jul 2019 21:06:23 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnr7n-00061q-51
 for linux-arm-kernel@bombadil.infradead.org; Wed, 17 Jul 2019 21:06:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TdNCjtIZoEvzk7CFQvtZTCtYl6pPEGqJ5p+G7wRu/MI=; b=DlbEkG8UBhmSbvAfURGDbp6Tc
 0Z36jiQhMHqRPtwxk99xVdLYPbrE4JsYXsqdskQb7H+hL9w5dXZMgVeMWoas2bPVGb2kpPSqBA8UJ
 ieNBpcpvGqcUk2R9gVR2A0lR4gR9sn8hwRLnmzmM/ZHu5SPVm2rYQxv247i1ETOkq4FzL0MN63ji9
 KoEEf6PSO9i5O7zM8c1EdEZf9aG58tW855XUoK5VqvLdPIf1/cgsE0Xz83VHn2sMdGYih0R47I3Cx
 AM6/nOQ4zG70kXNi4pNePpJdXKNTzrF8d8g82YN4/2bhpbRZKs/KNACHu69E77oRuw4Uk9UXKpqCs
 9w+p3lHyA==;
Received: from [179.182.6.211] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hnr7l-0005ze-8v; Wed, 17 Jul 2019 21:06:05 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 10C2240340; Wed, 17 Jul 2019 18:05:51 -0300 (-03)
Date: Wed, 17 Jul 2019 18:05:51 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Jiri Olsa <jolsa@redhat.com>
Subject: Re: [PATCH 1/3] perf: Add capability-related utilities
Message-ID: <20190717210551.GI3624@kernel.org>
References: <1562112605-6235-1-git-send-email-ilubashe@akamai.com>
 <1562112605-6235-2-git-send-email-ilubashe@akamai.com>
 <20190716084643.GA22317@krava>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716084643.GA22317@krava>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.0 (2019-05-25)
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
 Peter Zijlstra <peterz@infradead.org>, Igor Lubashev <ilubashe@akamai.com>,
 linux-kernel@vger.kernel.org, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Tue, Jul 16, 2019 at 10:46:43AM +0200, Jiri Olsa escreveu:
> On Tue, Jul 02, 2019 at 08:10:03PM -0400, Igor Lubashev wrote:
> > Add utilities to help checking capabilities of the running process.
> > Make perf link with libcap.
> > 
> > Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
> > ---
> >  tools/perf/Makefile.config         |  2 +-
> >  tools/perf/util/Build              |  1 +
> >  tools/perf/util/cap.c              | 24 ++++++++++++++++++++++++
> >  tools/perf/util/cap.h              | 10 ++++++++++
> >  tools/perf/util/event.h            |  1 +
> >  tools/perf/util/python-ext-sources |  1 +
> >  tools/perf/util/util.c             |  9 +++++++++
> >  7 files changed, 47 insertions(+), 1 deletion(-)
> >  create mode 100644 tools/perf/util/cap.c
> >  create mode 100644 tools/perf/util/cap.h
> > 
> > diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
> > index 85fbcd265351..21470a50ed39 100644
> > --- a/tools/perf/Makefile.config
> > +++ b/tools/perf/Makefile.config
> > @@ -259,7 +259,7 @@ CXXFLAGS += -Wno-strict-aliasing
> >  # adding assembler files missing the .GNU-stack linker note.
> >  LDFLAGS += -Wl,-z,noexecstack
> >  
> > -EXTLIBS = -lpthread -lrt -lm -ldl
> > +EXTLIBS = -lpthread -lrt -lm -ldl -lcap
> 
> I wonder we should detect libcap or it's everywhere.. Arnaldo's compile test suite might tell

I'll add this tentatively and try to build it in my test suite.

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
