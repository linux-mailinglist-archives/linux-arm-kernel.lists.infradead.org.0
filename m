Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA45190D1A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 13:13:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kXfLLUD0uea8aIXvRrtnwU7y4gngwu3i3/NkGt7XV+Q=; b=O1Fg2WluvS1viR
	P7TJ8MAnzNvXl1HXWMYvrmkvjTWvE2PBSG1ssNiHGqoCizTDieJQqhtAR+bCFjIe08fF0XfNhISj5
	jtJKE+aK8jMBYv5r5AZWDhvyOXvshPqBLQVZIxCYnSA+oN56/4TH6ZA9OQAm7Tj6wExgUglhyjS9c
	ltsddOtRyCyaJmQW3gToDViN24F4oTuMDgSTlGxvvCsxbnPRqz0GvhwnYGBeyQSCdaQaqlclS/aXd
	XJmZn6QJPRbSPBJLlZ4HlrzLcNEszTKgLcKo2c00+EWfC/S6kdbbb2miRkzBTjlxSKctVjdls/3FO
	/bFLcsPcWnTqAfnYGmJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGiQr-0004rX-Nh; Tue, 24 Mar 2020 12:13:21 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGiQi-0004qc-MX
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 12:13:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585051990;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=58l/H2MApEOu+ie/Vjhf3T42AhKzIjQCCWFefzgW4/M=;
 b=QpuMECOSKvYM5JqwmLQAVcwj4+0CVwvRRtUwh+zDy6Qlmtn2XGJ7eYOjOs3t9vLDkcTdnm
 Gt/QxwcMTDaVEGx5Xgo0RgW3GGGwQN93oB/MGA/L5xlEmmJ9eWf3exHwCKltcgSOoFRCwV
 JeYYrTXxF4/h3wTuItqsj1YaRo8TDZ8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-433-gjGvKRESNcSsA9rl3IRp-g-1; Tue, 24 Mar 2020 08:13:06 -0400
X-MC-Unique: gjGvKRESNcSsA9rl3IRp-g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0C5FB100550D;
 Tue, 24 Mar 2020 12:13:04 +0000 (UTC)
Received: from asgard.redhat.com (unknown [10.36.110.53])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id F0BB03A4;
 Tue, 24 Mar 2020 12:13:00 +0000 (UTC)
Date: Tue, 24 Mar 2020 13:13:06 +0100
From: Eugene Syromiatnikov <esyr@redhat.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] coresight: do not use the BIT() macro in the UAPI header
Message-ID: <20200324121306.GA5735@asgard.redhat.com>
References: <20200324042213.GA10452@asgard.redhat.com>
 <20200324062853.GD1977781@kroah.com>
 <20200324095304.GA2444@asgard.redhat.com>
 <20200324101938.GA2220478@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324101938.GA2220478@kroah.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_051312_818680_0A2EF532 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Michael Williams <michael.williams@arm.com>, linux-kernel@vger.kernel.org,
 Chunyan Zhang <zhang.chunyan@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "Dmitry V. Levin" <ldv@altlinux.org>, Pratik Patel <pratikp@codeaurora.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 11:19:38AM +0100, Greg Kroah-Hartman wrote:
> On Tue, Mar 24, 2020 at 10:53:04AM +0100, Eugene Syromiatnikov wrote:
> > On Tue, Mar 24, 2020 at 07:28:53AM +0100, Greg Kroah-Hartman wrote:
> > > On Tue, Mar 24, 2020 at 05:22:13AM +0100, Eugene Syromiatnikov wrote:
> > > > The BIT() macro definition is not available for the UAPI headers
> > > > (moreover, it can be defined differently in the user space); replace
> > > > its usage with the _BITUL() macro that is defined in <linux/const.h>.
> > > 
> > > Why is somehow _BITUL() ok to use here instead?
> > 
> > It is provided in an UAPI header (include/uapi/linux/const.h)
> > and is appropriately prefixed with an underscore to avoid conflicts.
> 
> Because no one uses _ in their own macros?  :)

Well, it is a reserved prefix (ANSI C99, 4.1.2 "Standard headers": "All
other identifiers that begin with an underscore and either an upper-case
letter or another underscore are reserved"), so valid C files shouldn't
use them.

> Anyway, this is fine, but if it's really the way forward, I think a lot
> of files will end up being changed...

There are 5 cases for using BIT() in UAPI headers so far (rtc.h[1],
serio.h[2], psci.h[3], pkt_sched.h[4], coresight-stm.h), two of them were
conversions from the open-coded variant; the usage of _BITUL in pkt_sched.h
made me think that it is the better approach since people tend to use
BIT-like macro anyway, so, by increasing a number of cases it may raise
awareness of the UAPI specifics.

[1] https://lore.kernel.org/lkml/20200324041209.GA30727@asgard.redhat.com/
[2] https://lore.kernel.org/lkml/20200324041341.GA32335@asgard.redhat.com/
[3] https://lore.kernel.org/lkml/20200324041526.GA1978@asgard.redhat.com/
[4] https://lore.kernel.org/lkml/20200324041920.GA7068@asgard.redhat.com/

> 
> thanks,
> 
> greg k-h
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
