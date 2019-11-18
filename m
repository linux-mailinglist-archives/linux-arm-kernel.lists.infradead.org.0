Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C09E8100270
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 11:32:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vabuIyp+bBTpi+LNpxGmDxFd0MPHMiTGaer5iunAkfk=; b=e0FA6+rftktiC1
	Lq2mU7jZKEQnqcsRPi/3GG/lLtcA0m9x6G+yvgoLxlOBUVm7SS949xo+HpiRcW7+On3HxIMjJlMQ4
	V+RP9l7wKVgf8WMOnjq+puPmHjbao1XcLssyXr5i+IIHronbKq781EIWi8oeYJp8z6HYEcXRx33Cu
	LshQRisrZ+TNQT05QmZ2HQPpO0rnIwhY3jGaauIgsJIN7EwOI/CMgkPj5nfxppMUTI2powYR4+YPA
	V5NS/u0b2nxkLyFcM9VmTGlQ0PeTuuHa2HWAvR49qWfAl6UTZJYJfG4cvxGjcs1IeH0s7aQ0ZtuER
	+fRD33j/9EXPt52mjHXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWeKO-0002NG-Il; Mon, 18 Nov 2019 10:32:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWeKG-0002MX-MZ
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 10:32:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 48FDC30E;
 Mon, 18 Nov 2019 02:32:05 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3FCE43F703;
 Mon, 18 Nov 2019 02:32:04 -0800 (PST)
Date: Mon, 18 Nov 2019 10:31:58 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL v2] firmware: arm_scmi: fix for v5.5
Message-ID: <20191118103158.GA31493@bogus>
References: <20191113180406.GA12601@bogus> <20191114164555.GA19398@bogus>
 <20191116233452.cypff3abhvifw7hl@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191116233452.cypff3abhvifw7hl@localhost>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_023208_780836_F38D30D1 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 SoC Team <soc@kernel.org>, ARM SoC Team <arm@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 ALKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 16, 2019 at 03:34:52PM -0800, Olof Johansson wrote:
> On Thu, Nov 14, 2019 at 04:45:55PM +0000, Sudeep Holla wrote:
> > Hi ARM SoC Team,
> >
> > Stephen Rothwell reported issue[1] with fixes tag in the commit. I have
> > fixed the same and re-tagged it. Please drop the earlier PR and use
> > this one based on your preference(I am not sure if want to ignore or
> > fix it). Sorry for the silly mistake.
>
> Usually we don't re-merge once we pick something up, but in this case it's at
> the top of the branch so I did rebase with this version.
>

I understand, thanks. Sorry for the trouble.

> We should be running linters on the pull requests in patchwork so this is
> caught before we merge, it's on the todo list but not done yet.
>

I think even checkpatch reports such issues, I must have ignored it by
accident. I will be more careful in the future.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
