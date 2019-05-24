Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE5029670
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:54:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dpxXOfqyv3rMP15Rq3GCXpZri4yZ/Y42h+vj1BA6d0A=; b=NnymVkS+0Nx2m+
	iq6L85FDEeD8uy+Dj86/AKypT3h7JRAgBJoORJY1DLuKz/ufXU+/WGzTJhr/HTO+QrCpDTWxNcjQC
	KHU05Nq/zN3u9sD5Jf4ApDkIkgQxabhGhP+r7m65QO9j60qDo6ZGP2rw8SRkqh4i7p/fUtvL0T0uS
	KqRnREbCgAN3SFf4ETCoETQsEgfHKLsgKuiV80EWko4IR2VH6tzkjo29SeiC6TCm+JC4wBpgtqGak
	7yHw3e/eCU852ILwpI7EgAYeC3AFeDcWJCSOZy9U6HWvnCBOR56uTMvYnX6a4hHE3ZEG5TlDHzAsz
	76S6AWyOmnU3ijE2sV6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU7qV-0006st-8G; Fri, 24 May 2019 10:54:43 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU7qN-0006ro-UB
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:54:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EEA61374;
 Fri, 24 May 2019 03:54:33 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9814F3F703;
 Fri, 24 May 2019 03:54:32 -0700 (PDT)
Date: Fri, 24 May 2019 11:54:30 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Volodymyr Babchuk <Volodymyr_Babchuk@epam.com>
Subject: Re: [PATCH] dt-bindings: arm: fix the document ID for SCMI protocol
 documentation
Message-ID: <20190524105430.GB13121@e107155-lin>
References: <20190523112312.24529-1-volodymyr_babchuk@epam.com>
 <20190523170938.GC4224@e107155-lin> <877eah84nr.fsf@epam.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <877eah84nr.fsf@epam.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_035435_972948_09F08118 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "trivial@kernel.org" <trivial@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 05:24:56PM +0000, Volodymyr Babchuk wrote:
> 
> Hi,
> 
> Sudeep Holla writes:
> 
> > On Thu, May 23, 2019 at 11:23:35AM +0000, Volodymyr Babchuk wrote:
> >> From: Volodymyr Babchuk <volodymyr_babchuk@epam.com
> 
> I accidentally deleted ending ">" symbol in the line above, so "git
> send-email" decided to move that line from headers to the message body.
> 
> >> arm,scmi.txt used the wrong document identifier. "ARM DUI 0922B" is
> >> the "ARM Compute Subsystem SCP, Message Interface Protocols". What we
> >> need is the ARM DEN 0056A - "ARM System Control and Management
> >> Interface Platform Design Document".
> >>
> >
> > Indeed, it's most stupid copy-paste mistake. Thanks for fixing this.
> > Applied now.
> It happens all the time. I also did stupid mistake in my patch file. It
> is described above. Could you please ensure that this line will be not
> in the resulting commit message? Thank you.

Ah OK, I didn't notice that, but the applied patch seems fine.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
