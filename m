Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE671C5FD7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 20:14:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJnez7pqeHS1RTz7nIMwZowERSI8JLgFln9Y3EXbCKA=; b=W4c37JLMzK4xG6
	GOtd35eDY38ogvQcoYlVCxBfVaDhpLW3pIBuQWz1R9pa87yugfd6AYqw3GA6vsW5k2YFn3/eC3TQ2
	RXCzGS8S8zejIirdJhQbw+KEpOD3VmU4ukiVCYHIBC1BUJVkxoz3JYaSUsoJ8TaWFsCqEG6xLcxRF
	njegNKkJt8wIjqsGED/kfWANLxkQ+QwznndKkv4fzAY/SKPBXv9OedNJ49lt54J6JJpamRW0/fw6l
	Q8uTOBPlcp95RqsE7vR49HQ6X8N7vTyzFUc/jnnFwdeqlOqV/1bkMiM5VZ6ZteXvHmdZJ3vFdfX/B
	/PipVUHuwQJnCNwLouaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW25Z-00014C-AZ; Tue, 05 May 2020 18:14:41 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW25R-000137-8f
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 18:14:34 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 7F93F80A5;
 Tue,  5 May 2020 18:15:19 +0000 (UTC)
Date: Tue, 5 May 2020 11:14:28 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCH 00/17] ARM: dts: dra7/am57xx: remoteproc support
Message-ID: <20200505181428.GO37466@atomide.com>
References: <20200424151244.3225-1-t-kristo@ti.com>
 <20200424155128.GK37466@atomide.com>
 <5f8d4dbb-f4fc-ee97-8542-610e98d3f895@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5f8d4dbb-f4fc-ee97-8542-610e98d3f895@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_111433_349277_3073FC6A 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: s-anna@ti.com, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tero Kristo <t-kristo@ti.com> [200424 15:55]:
> On 24/04/2020 18:51, Tony Lindgren wrote:
> > * Tero Kristo <t-kristo@ti.com> [200424 08:13]:
> > > Hi Tony,
> > > 
> > > This series adds the DT nodes necessary for remoteproc support, now that
> > > the driver side changes are (mostly) in. Couple of things to note
> > > though.
> > > 
> > > 1) There is a new IOMMU issue, for which I posted a fix today [1]
> > > 2) The remoteproc core still has an issue for which there is ongoing
> > >     discussion [2]
> > > 
> > > With these two issue taken care of, the omap remoteproc support is
> > > functional. The question though is, whether we should just wait until
> > > the above two issues are resolved and merge the DT patches post that, or
> > > merge the DT patches with status = "disabled".
> > 
> > If there are no dependencies between the pending driver fixes and
> > the dts changes I see no reason to not merge the dts changes.
> 
> Yeah, no hard dependencies as such, just that things won't work properly
> before they are in.

Applying these all into omap-for-v5.8/dt thanks.

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
