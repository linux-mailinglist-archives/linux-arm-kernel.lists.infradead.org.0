Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24127CA043
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 16:25:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Oj7Fw9jg3SAsOXymj/q8OTHDKLqcoUXGpQ1iU4+wek=; b=CHRK4J+vCMadQ4
	WNz4oI7tGgBHiPYNOl1UlXyoLN+FcPFzng4y4A/k6H80GyjrqC+K4NNt3CXnDyUngOSd7aQewYR9L
	vSEA8gL0EzYtLvMUUF5OKLGrQJ++P/bvgDQn7qRblZlHbl7kztEamPWyccOYM6V12I3EK4INHkybg
	iGUDpednStBYn0DKVLSx0besP1sm5jZudC51rxWzWfiF1N+f/tvMNhZQDZHGZFAmarFNa14zbwZWV
	PwkU5tr0I8LrQHXCcoP1X+hZk6uaLybymwth4PW0/BRYtn5IwW7Kk+1AuEWEmHajvHeSyWLpW+bsZ
	EHX/MSbQiyUJWdC8oYtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG235-0007oq-LZ; Thu, 03 Oct 2019 14:25:43 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG22z-0007oH-K8
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 14:25:38 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id D5EA4634C87;
 Thu,  3 Oct 2019 17:22:53 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1iG20K-0002Jr-5h; Thu, 03 Oct 2019 17:22:52 +0300
Date: Thu, 3 Oct 2019 17:22:52 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v3 2/3] media: i2c: Add IMX290 CMOS image sensor driver
Message-ID: <20191003142252.GI896@valkosipuli.retiisi.org.uk>
References: <20190830091943.22646-1-manivannan.sadhasivam@linaro.org>
 <20190830091943.22646-3-manivannan.sadhasivam@linaro.org>
 <20190923092209.GL5525@valkosipuli.retiisi.org.uk>
 <20191001184200.GA7739@Mani-XPS-13-9360>
 <20191002103715.GR896@valkosipuli.retiisi.org.uk>
 <20191003053338.GA7868@Mani-XPS-13-9360>
 <20191003071646.GZ896@valkosipuli.retiisi.org.uk>
 <3FAB5E91-9FD2-4052-881B-E4B18D44D33B@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3FAB5E91-9FD2-4052-881B-E4B18D44D33B@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_072537_836156_B9457A42 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, robh+dt@kernel.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Manivannan,

On Thu, Oct 03, 2019 at 12:56:48PM +0530, Manivannan Sadhasivam wrote:
> >> mentioned in the datasheet. I agree that we are missing the userspace
> >> granularity here but sticking to the device limitation shouldn't be a
> >problem.
> >> As I said, I'll add a comment here to clarify.
> >
> >The comment isn't visible in the uAPI.
> >
> 
> Yes. It would be good to have the units passed onto the userspace somehow
> like it is done in IIO. Then we don't need to fiddle in the driver for
> mismatch. Something consider in future...

Yes, I agree. But that is not trivial to do in any sort of even remotely
generic way.

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
