Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BBC6B744
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 09:11:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bsFkggbTDgkftHcX+iZntIVKyhObQ2qycaNPm1TqF88=; b=b6LHaYaiyRo4v5
	io6jvXqWucnB9P/bRQC+qJhcKoMKqpGbtqQ6F9He7iBCuQGgTwyvB0Y1wpBE71KaJ5WT6E+It2b/4
	3ptzaPmrVHrfeolqGA2DzwjF2deOfd0vUF3Rqex0YaGewZ9tUCealH5MCU1XQQRkAqdAzGS6ow7BF
	KOg203bwcUYmwIxhjCDe0/ALobowIhGrnlPPbBbQE2Wda05ZWo+NSF16JuEsFcXTxdNmru+guVX+5
	T09LL0X2MhTlY9wxiK1gu4g/pBxCr67p0AnjIe4JxAPQHY/gOqEr/UPHjjZF9w9S1uRkOQNjPEmpA
	Z2TxuSbY/HBOvGNNfc+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hne6E-0000GJ-Po; Wed, 17 Jul 2019 07:11:39 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hne5A-0000Eq-Pb
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 07:10:42 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EC8BB81F1B;
 Wed, 17 Jul 2019 07:10:30 +0000 (UTC)
Received: from krava (unknown [10.43.17.77])
 by smtp.corp.redhat.com (Postfix) with SMTP id 32C711001B0E;
 Wed, 17 Jul 2019 07:10:28 +0000 (UTC)
Date: Wed, 17 Jul 2019 09:10:27 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: "Lubashev, Igor" <ilubashe@akamai.com>
Subject: Re: [PATCH 2/3] perf: Use CAP_SYS_ADMIN with perf_event_paranoid
 checks
Message-ID: <20190717071027.GG28722@krava>
References: <1562112605-6235-1-git-send-email-ilubashe@akamai.com>
 <1562112605-6235-3-git-send-email-ilubashe@akamai.com>
 <20190716084744.GB22317@krava>
 <cd2b162a59804cdaa7f4de18c3337aa8@ustx2ex-dag1mb5.msg.corp.akamai.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cd2b162a59804cdaa7f4de18c3337aa8@ustx2ex-dag1mb5.msg.corp.akamai.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Wed, 17 Jul 2019 07:10:31 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_001034_091716_D5815F17 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Peter Zijlstra <peterz@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 05:01:26PM +0000, Lubashev, Igor wrote:
> I could add another patch to the series for that.  Any suggestion for what capability to check for here?

it's:

	if (geteuid() != 0) {
		pr_err("ftrace only works for root!\n");
		return -1
	}

so I think check for CAP_SYS_ADMIN should be fine in here

jirka

> 
> (There is always an alternative to not check for anything and let the kernel refuse to perform actions that the user does not have permissions to perform.)
> 
> - Igor
> 
> -----Original Message-----
> From: Jiri Olsa <jolsa@redhat.com> 
> Sent: Tuesday, July 16, 2019 4:48 AM
> Subject: Re: [PATCH 2/3] perf: Use CAP_SYS_ADMIN with perf_event_paranoid checks
> 
> On Tue, Jul 02, 2019 at 08:10:04PM -0400, Igor Lubashev wrote:
> > The kernel is using CAP_SYS_ADMIN instead of euid==0 to override
> > perf_event_paranoid check. Make perf do the same.
> 
> I see another geteuid check in __cmd_ftrace,
> perhaps we should cover this one as well
> 
> jirka

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
