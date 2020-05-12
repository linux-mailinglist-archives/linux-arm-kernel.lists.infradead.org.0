Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 892301CF266
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 12:30:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OsjL7W22YO1pS7RdFpu9Pez/n+vc7fDMqou1+DaSjts=; b=Pi4UMlYCSwrPyF
	F4rtjzr6Q+z+2KJFE6iGjkn0rCXN8BMdCqZMkvZb5p+pvpfXdDmtyO8RTuw0kEW8/+JVI1LmZcNKQ
	xgzbQzM+uE5za7BWNDebyHU+yQrcWcLy7wzhsY7G/i03pjkgsxewqA2v650lvT9ZozOWQYFzNy0NA
	IlBH6UD3BKGGCTsZKVTWAMe4BJ1vG17FSG4sdaHvxo2l+OVAZk7+h0b6RBa1cED5VRA6JL6yqBonr
	Z+8LzFUraa+dcvOflbg4g+vEhBccQ3QeGsaVmXueuLmN4LvDsC09Ejr2p8owU6lxm13qFge40JbBW
	e8b8Ime2S9C7ogo5luJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYSBH-0007FW-1k; Tue, 12 May 2020 10:30:35 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYSAs-0006yd-OD
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 10:30:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589279405;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qeMpxyuCBk1PKFh88yBlzyQNQ4vtmt44jKTGWUe0hIg=;
 b=a+4l6PsgUToI7v+aTHVDHFi0uKzpnhU0OwEgPsDXgLOcQqkHHYJjXG+XbJJM9ftJC24fBJ
 ugDH74KOfVJpwyNpYU4ujb76Jsi9QfMmheL5n+Z+1WnIfe84kj+qWJUoIluiCzuC4XQMNn
 lBv+/jt5ekaS+2PiiTT0kcBOgJxD2Gc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-97-BmrRBb8pO0yQS-nRqrmBhg-1; Tue, 12 May 2020 06:30:00 -0400
X-MC-Unique: BmrRBb8pO0yQS-nRqrmBhg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A6596835B40;
 Tue, 12 May 2020 10:29:58 +0000 (UTC)
Received: from krava (unknown [10.40.194.31])
 by smtp.corp.redhat.com (Postfix) with SMTP id 7EF1C5D9DD;
 Tue, 12 May 2020 10:29:52 +0000 (UTC)
Date: Tue, 12 May 2020 12:29:51 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: Ian Rogers <irogers@google.com>
Subject: Re: [PATCH RFC v3 02/12] perf jevents: Add support for system events
 tables
Message-ID: <20200512102951.GA3141346@krava>
References: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
 <1588852671-61996-3-git-send-email-john.garry@huawei.com>
 <20200511110137.GC2986380@krava>
 <9f4ea413-325f-98b4-eb4c-e47aead4f455@huawei.com>
 <CAP-5=fWHipkL6Uq1vMaz-51ETPWajofDXd6RTBMr00pcyooo_g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP-5=fWHipkL6Uq1vMaz-51ETPWajofDXd6RTBMr00pcyooo_g@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_033010_910599_41F04355 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andi Kleen <ak@linux.intel.com>,
 qiangqing.zhang@nxp.com, Peter Zijlstra <peterz@infradead.org>,
 robin.murphy@arm.com, John Garry <john.garry@huawei.com>, linuxarm@huawei.com,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, zhangshaokun@hisilicon.com,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 will@kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 09:21:00AM -0700, Ian Rogers wrote:

SNIP

> >  >> +           fprintf(outfp, "\n\t{\n\t\t.table = %s,\n\t},",
> >  >> +                   sys_event_table->name);
> >  >> +   }
> >  >> +   fprintf(outfp, "\n\t{\n\t\t.table = 0\n\t},");
> >  >
> >  > this will add extra tabs:
> >  >
> >  >          {
> >  >                  .table = 0
> >  >          },
> >  >
> >  > while the rest of the file starts items without any indent
> >  >
> >
> > I'll ensure the indent is the same.
> >
> > BTW, is there anything to be said for removing the empty map feature
> > (and always breaking the perf build instead)? I guess that it was just
> > an early feature for dealing with unstable JSONs.
> 
> +1
> I'd very much like it if JSON parse errors and the like didn't result
> in an empty map but failed the build. I think ideally we could also

yep, that seems like good approach to me

> validate metric expressions using expr.y. If we include expr.y into
> jevents then is there any need to parse the metric expression at
> runtime? Could we just generate C code from jevents with a list of
> events (aka ids) for programming and a dedicated print function for
> each metric. The events would still be symbolic and checked at
> runtime, but the expressions being C code could yield compile time
> errors.

nice idea.. not sure we are able to do that with just expr.y code,
like to generate specific C code for metric, but I'd like to see
patches for that ;-)

but we would still need expr.y int perf code for custom user metrics,
so it still needs to stay anyway

jirka


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
