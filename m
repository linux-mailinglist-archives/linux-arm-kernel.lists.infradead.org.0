Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F352E1C54AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 13:44:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVP+Y+RetLo61NsOGnZlgthrpCjJfBsti+kPHHJPuhQ=; b=IwGwdPj6OwXSpI
	BAA/Jd9BPTp4DcOTgchZEiI7kDyWvmMpH8L3daAAh9xmgfRq++cNRHhua59EhLAYWEfk9+cMLrlHh
	zs8jLq/WylMjRrqvaS2LTPmIrqOqqTSO9N/9a4pFz/EIt7ABNEvUztKCerob+t8zBHlomgGIufxa3
	QkmNwZW7rbcJNBZa20HLQ09ki8tjvrllnXlkEX+OjBUdY1+w8FJRVBEQMqKyW81IKm3FqD8Lt8xy/
	o1OwYlLAx5/K25zCgLQameDvgQAEOyxA0vZRW1Y3Esbp3Cz8ODQNSd5EaB7aNJhMaDQep8ujHoTUo
	fSvXs148YvFloHiE41eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVw08-0001uz-1t; Tue, 05 May 2020 11:44:40 +0000
Received: from [179.97.37.151] (helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVw01-0001uP-Ol; Tue, 05 May 2020 11:44:33 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 3539F409A3; Tue,  5 May 2020 08:44:30 -0300 (-03)
Date: Tue, 5 May 2020 08:44:30 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v2] perf: cs-etm: Update to build with latest opencsd
 version.
Message-ID: <20200505114430.GR30487@kernel.org>
References: <20200501143615.1180-1-mike.leach@linaro.org>
 <20200504170618.GA517@xps15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504170618.GA517@xps15>
X-Url: http://acmel.wordpress.com
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
Cc: suzuki.poulose@arm.com, peterz@infradead.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Mon, May 04, 2020 at 11:06:18AM -0600, Mathieu Poirier escreveu:
> On Fri, May 01, 2020 at 03:36:15PM +0100, Mike Leach wrote:
> > OpenCSD version v0.14.0 adds in a new output element. This is represented
> > by a new value in the generic element type enum, which must be added to
> > the handling code in perf cs-etm-decoder to prevent build errors due to
> > build options on the perf project.
> > 
> > This element is not currently used by the perf decoder.
> > 
> > Perf build feature test updated to require a minimum of 0.14.0
> > 
> > Tested on Linux 5.7-rc3.
> > 
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
 
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

Thanks, applied with both your and Leo's R-by tags.

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
