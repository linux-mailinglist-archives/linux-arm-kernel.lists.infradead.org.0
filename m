Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF8DA8078
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 12:42:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pWiIkM9uHvndb8+SSwV6cp/B8BB4iL6eMzhNyVQVoO4=; b=faElf15NIrcKti
	pjiU5LecGX4y0BrnjU0sipYvvxtN8S765H/ef8aPJRxZraDm5Kkqsd3gjm9D3W4qm3g8gTnecrhKE
	5FDIHV1GM5CqMoRo7Lre5vyqwVePI2AC0v04jpjdNw7GEmp1RnThtLQa3PUfyvGAO/JSscmO8z97c
	duapEoF1lddA4gm0UyG0iiKpbF59fvDmiaEZP35o+s5sbj6gBYTpRhVQfaaxT6LS2aOK5HXpvoXAn
	tDJ+/eaE0UIJJOL0dYRHVQrriSlUBD/IIQXWRHh8V6G5h7PMBPMYXpI61QlNWM5JQc+PB5xCkaSiS
	DyAtjD4RpmozdfWmDGig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5SkT-00020Y-3g; Wed, 04 Sep 2019 10:42:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5SkM-00020C-ON
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 10:42:43 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3696022CF5;
 Wed,  4 Sep 2019 10:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567593762;
 bh=0PeKwRY8vyc0k6+7HchgKqxSSLG0aFFPDw/FCdLbr98=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y33R3/ofmkBPvjXputbnmnidOWGwb4Ub+owGZRozEBiBGmWuV/XgRJNBFlliAtHl1
 VSehXWYe4A3XNUNeW9WKSuuojtlJg4/2sVNIWcTi2qD0axBJLeuqLemqWXtrq9CnjO
 KnW+PvsLDoXEK+TKvqyGb07QcueqjjTwvz15SSFc=
Date: Wed, 4 Sep 2019 11:42:38 +0100
From: Will Deacon <will@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH V9 1/3] perf: imx8_ddr_perf: add AXI ID filter support
Message-ID: <20190904104238.oboadbml7f2ticat@willie-the-truck>
References: <20190828120524.9038-1-qiangqing.zhang@nxp.com>
 <20190828134427.z4zmqucm7fcuuies@willie-the-truck>
 <DB7PR04MB4618D5EFB089C3052A25A7C2E6A20@DB7PR04MB4618.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR04MB4618D5EFB089C3052A25A7C2E6A20@DB7PR04MB4618.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_034242_820720_CEE76B94 
X-CRM114-Status: GOOD (  10.14  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 07:26:25AM +0000, Joakim Zhang wrote:
> I have another question want to ask you, could you give me some
> suggestions?
> 
> # perf stat -a -e imx8_ddr0/axid-read,axi_mask=0xf,axi_id=0x10/ cmd
> 
> It will count all read transactions from AXI IDs 0x10 - 0x1f. If we
> suppose these 16 IDs are for GPU Subsystem, with above configuration we
> may want to monitor all read transactions from GPU subsystem. However, it
> is tedious for user to configure, they may not know the AXI IDs map, had
> better we can configure like below, the GPU string is more
> straightforward.
> 
> # perf stat -a -e imx8_ddr0/axid-read,"GPU"/ cmd
> 
> which "GPU" string is same with "axi_mask=0xf,axi_id=0x10".

Perhaps, but I think this sort of stuff belongs in userspace, since the
kernel has no idea about the AXI IDs and they're not probably anyway.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
