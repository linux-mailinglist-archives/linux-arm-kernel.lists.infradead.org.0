Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E308413602B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 19:30:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Em6sIp/2/rtaxZIJDgY2MWnA/hiD/NdgNnW0u3lUQOw=; b=nUgKTEW1Mio49H
	/89WU9q5mI0Z274XfHzxpnBhJ/fGReJgen7W/6X+kNmc89/JlZUz9ckdew+DuL3s12OKG+vveA2sN
	e3ejBb9J6M9RSKgCijmID5cArbxCDuQlWylrgRjaUtZfJt7PFTPXSZxRnFASPMAicgej0BvVl1Mc0
	rUJya5qwdsy9cbnru0uDFfzZu/QYNN9FG1Bw+ZapWi64aupxRuNp4qtuezXk9wxeiWkHezNDqV5XV
	PY2ZK9xGQAuLSqo8pVGkI0/sNlwowMaJ+b9qaHYzFxNe3BQHhQreNIjtAnSkxNryqGu7SuxwIWhGP
	pqu0qGS7mAe7ysubZNJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipcZS-0003hd-28; Thu, 09 Jan 2020 18:30:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipcZD-0003fS-MU
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 18:30:00 +0000
Received: from localhost (mobile-166-170-223-177.mycingular.net
 [166.170.223.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8C6552072A;
 Thu,  9 Jan 2020 18:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578594598;
 bh=uJrGvHiJ0jLq+t8TWq4ljCMDSX4ZBF5RxHoNG5ABlW4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=enobhZX2ZoNb9qAxtib8xHmL6/fRDwaisFCRxj4Rf1j/PP+QUuT4XMXvvEjJutjZd
 e4G20pdiCUCoBAbKSHVFkYdRPe1UlgHbwnyfEU7pQKpRqdYsUB+RmsrG/dTLhRwBb/
 wyy+Wwp8up5gxnEbTfpHUH+L5SbaGIyk5w0VLXNg=
Date: Thu, 9 Jan 2020 12:29:57 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>
Subject: Re: [PATCH] PCI: dwc: Separate CFG0 and CFG1 into different ATU
 regions
Message-ID: <20200109182957.GA252973@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CH2PR12MB4007CC62E0939BAAABA0E64FDA390@CH2PR12MB4007.namprd12.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_102959_756599_4488F60F 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FAKE_REPLY_C           No description available.
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Zaihai Yu <yuzaihai@hisilicon.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Pratyush Anand <pratyush.anand@gmail.com>, Jingoo Han <jingoohan1@gmail.com>,
 Shawn Guo <shawn.guo@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 12:24:17PM +0000, Gustavo Pimentel wrote:
> On Thu, Jan 9, 2020 at 11:14:58, Shawn Guo <shawn.guo@linaro.org> wrote:
> 
> > Hi Gustavo,
> > 
> > Thanks for taking a look.
> > 
> > On Thu, Jan 09, 2020 at 10:37:14AM +0000, Gustavo Pimentel wrote:
> > > Hi Shawn,
> > > 
> > > On Thu, Jan 9, 2020 at 6:6:57, Shawn Guo <shawn.guo@linaro.org> wrote:
> > > 
> > > > Some platform has 4 (or more) viewports.  In that case, CFG0 and CFG1
> > > 
> > > Remove double space before "In that..." 
> > 
> > Hmm, that was intentional.  My writing practice is using two spaces
> > after a period and single space after a comma.  Is it a bad habit?
> 
> I thought it was a typo. I personally don't have anything against it, but 
> I didn't see this style on the comments till now. To keep the coherence 
> between all patches, I know that Bjorn and Lorenzo like to have it the 
> most standardized possible. It is OK by Lorenzo and Bjorn, it's fine for 
> me too.

Eagle eyes!  I was taught in the dark ages of typewriters to use two
spaces after a period, but I don't really care either way.  If I
rework a commit log for other reasons I might use two spaces, and I
frequently use vim 'gq' to reformat paragraphs to use the whole line
width, and I think that inserts two spaces (by default), so I try to
be consistent at least within each commit log.  But either is really
fine with me.

Thanks for taking the time to read and pay attention to commit logs!

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
