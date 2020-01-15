Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 908D613C708
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 16:11:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d0kAYlDOKbnFufPaxArqjBvSN4Quk0eiKCZWjN0TGog=; b=U8RUORgEJqfA+V
	jZNJ4j2pOJrGxQMOxgGoiKhfdoJFccM+2B9beP0LaaX1P4GDm1hbo0vn34l3Z/8mFBDj4f1K28dsY
	jt91EhJYbbiBtPEZidZKWwm2f20m1jQjoNQzsfUkaRCmJ6kL6nKeVI6XJK1/mbZWBo4IguEDdHtGI
	T+091GtkNg/RNIq0ce5XWdHNBle5g6pgxIq+IsXnYLtFsMdgcjtcdZ3LExsMXlCuuYIQvkzL3O4qP
	zQQnlqjh2PEIKF2h4LGYLKxxjKWI3qiaQWzjNILCZuIK+8kN86NYGqWqqdEKjsxNfTVutOurvtW58
	60lpBNs2cqqC1+Svg36g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irkKZ-0002aO-Dk; Wed, 15 Jan 2020 15:11:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irkKI-0002ZV-2F
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 15:11:26 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD259222C3;
 Wed, 15 Jan 2020 15:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579101081;
 bh=3gTNlszr+LAWpyQAE9KCG1f9A2EIwYniEezh0GNli7U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LSztWCtE7OCoSmM5XihhW6xXTTQSxnf9FmQw8flyMeiHK+7qSvtL8C42FQ8Z2sc4T
 rVPD+6bdqi4RgQxeV3urPxq0U+0+XdIyUMGeJ27mCSIQyyPyWQUfjacDJpbPCIdNja
 gEbc9AOg+rgwKSX7+wfvUmz1E5Pn58TmLlH1nlDA=
Date: Wed, 15 Jan 2020 16:11:18 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Subject: Re: [stable] [PATCH 1/2] coresight: etb10: Do not call
 smp_processor_id from preemptible
Message-ID: <20200115151118.GC3740793@kroah.com>
References: <20200108110541.318672-1-suzuki.poulose@arm.com>
 <20200109143537.GE1706@sasha-vm>
 <a183da32-b933-6ed0-f8b8-703e27d3f15e@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a183da32-b933-6ed0-f8b8-703e27d3f15e@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_071122_125539_EA9F5AE2 
X-CRM114-Status: GOOD (  16.22  )
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

On Thu, Jan 09, 2020 at 02:36:17PM +0000, Suzuki Kuruppassery Poulose wrote:
> On 09/01/2020 14:35, Sasha Levin wrote:
> > On Wed, Jan 08, 2020 at 11:05:40AM +0000, Suzuki K Poulose wrote:
> > > [ Upstream commit 730766bae3280a25d40ea76a53dc6342e84e6513 ]
> > > 
> > > During a perf session we try to allocate buffers on the "node" associated
> > > with the CPU the event is bound to. If it is not bound to a CPU, we
> > > use the current CPU node, using smp_processor_id(). However this is
> > > unsafe
> > > in a pre-emptible context and could generate the splats as below :
> > > 
> > > BUG: using smp_processor_id() in preemptible [00000000] code: perf/2544
> > > 
> > > Use NUMA_NO_NODE hint instead of using the current node for events
> > > not bound to CPUs.
> > > 
> > > Fixes: 2997aa4063d97fdb39 ("coresight: etb10: implementing AUX API")
> > > Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> > > Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > > Cc: stable <stable@vger.kernel.org> # v4.9 to v4.19
> > > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > > Link: https://lore.kernel.org/r/20190620221237.3536-5-mathieu.poirier@linaro.org
> > > 
> > 
> > I've queued this for 4.9-4.19. There was a simple conflict on 4.9 which
> > also had to be resolved.
> > 
> 
> 
> Thanks Sasha !

Note, these had to all be dropped as they broke the build :(

So can you please send us patches that at least build?  :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
