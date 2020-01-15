Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E48B13CACF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 18:21:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a4PX9Wv0MVG3spHHQ4vngyLBGjiwsJ8hn6QwSYDzToo=; b=KHl0nY5i4K6pKe
	NqZvv19UyalLEulf5yHx5jV/uzV4YEixMHEIlNn3v6IENsg9fK98sWINHizH/qNdWNnFmoqR2dP78
	VLYfmYW+gh1ENj1Rl78FqqIOkh3gW10EX1t6+Q+a+BMPkM1WbxiODFGhwHVCfucp3I4YIcDIUSgbl
	1HKDVYGFFfcfkKI69HFSeL1idzQtO8SawWabk4cJw5K8ZDEi8LAuH1S6N06+7BxwpNWee9KCgFDfE
	29q3X4nNo9imR2MDMX6S6vi2vaxS6dLnHanZYiHJN7bxlX28prnDtRh0rpzugoVx14/yYiWBKN4/i
	xCaCrXTOf6li0bVADphw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irmMS-0003LB-O3; Wed, 15 Jan 2020 17:21:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irmME-0003KB-Ea
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 17:21:34 +0000
Received: from localhost (unknown [217.68.49.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3749E24671;
 Wed, 15 Jan 2020 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579108888;
 bh=lj6dG1jiiZtm+t3uE76M72ECvRumXwWAIZv2H54jjK8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R6J4aYn55KVaZr35ao7n9TIQJ5A1K5+ihjd00AuNkdY4zS1MoNMNZebFB9XuJRg7I
 9lixIXV5Li8Eb/7KCQIFOIiShLSFTYSN/WWfAvMztOxEGB4/3OPj0Gy/PzKnpuQ10d
 8pe7kkrhK4U8fCObDw2gFZrnioGxXw7+Yl6jVZyk=
Date: Wed, 15 Jan 2020 18:21:26 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Subject: Re: [stable] [PATCH 1/2] coresight: etb10: Do not call
 smp_processor_id from preemptible
Message-ID: <20200115172126.GB4127163@kroah.com>
References: <20200108110541.318672-1-suzuki.poulose@arm.com>
 <20200109143537.GE1706@sasha-vm>
 <a183da32-b933-6ed0-f8b8-703e27d3f15e@arm.com>
 <20200115151118.GC3740793@kroah.com>
 <d3cd59e0-8fa2-9e69-534f-15f13cb14897@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d3cd59e0-8fa2-9e69-534f-15f13cb14897@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_092130_510233_13BD76CD 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, mathieu.poirier@linaro.org,
 linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 04:44:29PM +0000, Suzuki Kuruppassery Poulose wrote:
> 
> Hi Greg,
> 
> On 15/01/2020 15:11, Greg KH wrote:
> > On Thu, Jan 09, 2020 at 02:36:17PM +0000, Suzuki Kuruppassery Poulose wrote:
> > > On 09/01/2020 14:35, Sasha Levin wrote:
> > > > On Wed, Jan 08, 2020 at 11:05:40AM +0000, Suzuki K Poulose wrote:
> > > > > [ Upstream commit 730766bae3280a25d40ea76a53dc6342e84e6513 ]
> > > > > 
> > > > > During a perf session we try to allocate buffers on the "node" associated
> > > > > with the CPU the event is bound to. If it is not bound to a CPU, we
> > > > > use the current CPU node, using smp_processor_id(). However this is
> > > > > unsafe
> > > > > in a pre-emptible context and could generate the splats as below :
> > > > > 
> > > > > BUG: using smp_processor_id() in preemptible [00000000] code: perf/2544
> > > > > 
> > > > > Use NUMA_NO_NODE hint instead of using the current node for events
> > > > > not bound to CPUs.
> > > > > 
> > > > > Fixes: 2997aa4063d97fdb39 ("coresight: etb10: implementing AUX API")
> > > > > Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> > > > > Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > > > > Cc: stable <stable@vger.kernel.org> # v4.9 to v4.19
> > > > > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > > > > Link: https://lore.kernel.org/r/20190620221237.3536-5-mathieu.poirier@linaro.org
> > > > > 
> > > > 
> > > > I've queued this for 4.9-4.19. There was a simple conflict on 4.9 which
> > > > also had to be resolved.
> > > > 
> > > 
> > > 
> > > Thanks Sasha !
> > 
> > Note, these had to all be dropped as they broke the build :(
> > 
> > So can you please send us patches that at least build?  :)
> > 
> 
> Do you have a build failure log ? I did build test it before sending it
> over. I tried it again on 4.9, 4.14 and 4.19. I don't hit any build
> failures here.
> 
> Please could you share the log if you have it handy ?

It was in the stable -rc review emails, I don't have it handy, sorry.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
