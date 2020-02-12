Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47FE815A912
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 13:25:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X8Q+Zk52zb74FSiioj9Qix5oVSbrpQVWRJ16l+hPAVo=; b=Q/CYRzPPlH+YaP
	WR+R49ti7aiK7sshekEVLcxWLlhQltfvAtYqJw7nqPSyn+EQMMDg8KHxoopENI/ZK51kX+uixcLPR
	VmINHLt91o4LpPb0OTPlQ2njYRGmI3VGlke4FswBTMnpyW+NxoV77aUKT7dg6s6nyscpC5NmFso+W
	aLXo8h06zBzFLV6hv0ilm12GUKyG8XDjivWyUY6TKvCqbuAtNkKgv0EP0wJgriSnrP9NXwlPbEVsF
	q4gkv+GpM1UkPLux0gploocFAPAiigk+QyMRKTORdDVLxQmaZMY+XAeXEycoDTOqiDsmz5IlsRmnO
	4D/oOz7XKpsZhVhtj2qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1r4e-0002o0-Lz; Wed, 12 Feb 2020 12:25:00 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1r4G-0002Zz-U6
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 12:24:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581510274;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=02thXXwKdJdsWCJDCArtijKBLWpAxcSktpwDL3W1img=;
 b=avKHWID4R/l+Dfh+QeDIwoOkZqHkr3dx6HSBE4/zS5+n95bEzWfF4k0+0reiVMtBhN7lqa
 +OC/zgB5o3VdsQMmzRSPX9sy5htefsiiJgib9v9bKc70PNr+HREVCaSo0fOggprJIof41c
 DZJmPU7jBU5hvl97F+4sUmZpGt+souU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-63-77atQPJLNDai5_pK6bL6CQ-1; Wed, 12 Feb 2020 07:24:30 -0500
X-MC-Unique: 77atQPJLNDai5_pK6bL6CQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 74AA71005512;
 Wed, 12 Feb 2020 12:24:29 +0000 (UTC)
Received: from krava (ovpn-204-247.brq.redhat.com [10.40.204.247])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 40A505D9E2;
 Wed, 12 Feb 2020 12:24:28 +0000 (UTC)
Date: Wed, 12 Feb 2020 13:24:25 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: James Clark <james.clark@arm.com>
Subject: Re: [PATCH v4 0/4] perf tools: Add support for some spe events and
 precise ip
Message-ID: <20200212122425.GA194466@krava>
References: <20200210122509.GA2005279@krava>
 <20200211140445.21986-1-james.clark@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211140445.21986-1-james.clark@arm.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_042437_078172_3022EF47 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: nd@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Adrian Hunter <adrian.hunter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 02:04:41PM +0000, James Clark wrote:
> Hi Jirka,
> 
> Oops. I've removed all the changes to evlist.c and evsel.h

hi,
it looks ok from my POV, but I don't follow auxtrace that much

Adrian,
it's changing some generic bits of the auxtrace framework,
could you please check?

thanks,
jirka

> 
> 
> James
> 
> Tan Xiaojun (4):
>   perf tools: Move arm-spe-pkt-decoder.h/c to the new dir
>   perf tools: Add support for "report" for some spe events
>   perf report: Add SPE options to --itrace argument
>   perf tools: Support "branch-misses:pp" on arm64
> 
>  tools/perf/Documentation/itrace.txt           |   5 +-
>  tools/perf/arch/arm/util/auxtrace.c           |  38 +
>  tools/perf/builtin-record.c                   |   5 +
>  tools/perf/util/Build                         |   2 +-
>  tools/perf/util/arm-spe-decoder/Build         |   1 +
>  .../util/arm-spe-decoder/arm-spe-decoder.c    | 225 ++++++
>  .../util/arm-spe-decoder/arm-spe-decoder.h    |  66 ++
>  .../arm-spe-pkt-decoder.c                     |   0
>  .../arm-spe-pkt-decoder.h                     |   2 +
>  tools/perf/util/arm-spe.c                     | 756 +++++++++++++++++-
>  tools/perf/util/arm-spe.h                     |   3 +
>  tools/perf/util/auxtrace.c                    |  13 +
>  tools/perf/util/auxtrace.h                    |  14 +-
>  13 files changed, 1089 insertions(+), 41 deletions(-)
>  create mode 100644 tools/perf/util/arm-spe-decoder/Build
>  create mode 100644 tools/perf/util/arm-spe-decoder/arm-spe-decoder.c
>  create mode 100644 tools/perf/util/arm-spe-decoder/arm-spe-decoder.h
>  rename tools/perf/util/{ => arm-spe-decoder}/arm-spe-pkt-decoder.c (100%)
>  rename tools/perf/util/{ => arm-spe-decoder}/arm-spe-pkt-decoder.h (96%)
> 
> -- 
> 2.17.1
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
