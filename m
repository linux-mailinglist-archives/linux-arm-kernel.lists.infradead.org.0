Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 391383019A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 20:13:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yxf3e92kZfW27P8czAe0mqBeHbCYNyAmxWEGMaQTzgI=; b=nFb0XLO+1kWp/g
	kedibaqhCY+LeL7qM2kQzGAFvMTPQ9KGwArO6jit+/IQyDwGFn/hYFveec87JiDbh82Q6e6Ndwens
	DQpJZsTMvCdnfdNQ2r1FIbj1t6DyxbX7l8tq6g9YAa8ZuGiJNXiqEYvca48I8ArcEE0Dys2qFxne/
	/LnM2Abh5H96FTDEofiR+Mw4vIpsDGVuvlmoZuQ8Ne3vuEh/NozvDBrmnAcIuhTfskd3YyYzMPMqT
	lbyvje5ydFSffLYP2pK1PGLFo/FwlbBQMMuDbs+Ekm63XiH8kUMH1XK0WzMt6lJzK5WzSv1aD7ZBG
	Brp2aAHDAxn2ndymn92A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWPYa-0000Dv-Nn; Thu, 30 May 2019 18:13:40 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWPYT-0000D5-BF
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 18:13:34 +0000
Received: by mail-qt1-f195.google.com with SMTP id 14so8189616qtf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 11:13:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=swUKp54FsABaRx/HQxckmg32aK739BKT6ewItuokNDk=;
 b=VtIgsB1R8gGsYiRwgnJIqPotZOweZqtpd/FN3fxohltejwvKNZLweaVICWxN7+4ZHf
 nd9WiNPRE2MrPCeQn6qdRzIghY0RHx/pMoMiXE+JzioZykVvJZtDZG29CRpWyxGPUI6r
 SRa1QIP3O37TfKjdsJk874KP83pjU/AuC5bHFto/mmKER6gWdLVKlK3060uHFqfHyCVt
 plT4i8fKqnT6GLYyGrrMyG4QD70WaYLOfKK6Lf7SCNJXtEh7Bd6gfGumBPMsCU+v5CRs
 W3hcGxyMihOK1T56TltRxBhWseCJfQzE8vPiThfuNjGa9d/bDWCnmsXj/abwuSu5Xo44
 Ot1A==
X-Gm-Message-State: APjAAAUGwjTNJvgJp3xqrVR+1UXaS6B7MFeMhceS9ODB2mcmVubnBWk0
 C50/P3QVSu8/4NtUd5mIa+2eJg==
X-Google-Smtp-Source: APXvYqyndgU/JBNxGTz081BydLXYPXGN+1/yzyTBopwAP5jF6DEPVUhyIlMc188XrJEeCGJfnA2k0g==
X-Received: by 2002:aed:2494:: with SMTP id t20mr4813376qtc.135.1559240011968; 
 Thu, 30 May 2019 11:13:31 -0700 (PDT)
Received: from redhat.com (pool-100-0-197-103.bstnma.fios.verizon.net.
 [100.0.197.103])
 by smtp.gmail.com with ESMTPSA id k9sm1894099qki.20.2019.05.30.11.13.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 30 May 2019 11:13:31 -0700 (PDT)
Date: Thu, 30 May 2019 14:13:28 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH net-next 0/6] vhost: accelerate metadata access
Message-ID: <20190530141243-mutt-send-email-mst@kernel.org>
References: <20190524081218.2502-1-jasowang@redhat.com>
 <20190530.110730.2064393163616673523.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530.110730.2064393163616673523.davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_111333_388973_506DB4D0 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
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
Cc: hch@infradead.org, linux-parisc@vger.kernel.org, kvm@vger.kernel.org,
 netdev@vger.kernel.org, jasowang@redhat.com, linux-kernel@vger.kernel.org,
 peterx@redhat.com, virtualization@lists.linux-foundation.org,
 James.Bottomley@hansenpartnership.com, linux-mm@kvack.org, jglisse@redhat.com,
 jrdr.linux@gmail.com, linux-arm-kernel@lists.infradead.org,
 christophe.de.dinechin@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 11:07:30AM -0700, David Miller wrote:
> From: Jason Wang <jasowang@redhat.com>
> Date: Fri, 24 May 2019 04:12:12 -0400
> 
> > This series tries to access virtqueue metadata through kernel virtual
> > address instead of copy_user() friends since they had too much
> > overheads like checks, spec barriers or even hardware feature
> > toggling like SMAP. This is done through setup kernel address through
> > direct mapping and co-opreate VM management with MMU notifiers.
> > 
> > Test shows about 23% improvement on TX PPS. TCP_STREAM doesn't see
> > obvious improvement.
> 
> I'm still waiting for some review from mst.
> 
> If I don't see any review soon I will just wipe these changes from
> patchwork as it serves no purpose to just let them rot there.
> 
> Thank you.

I thought we agreed I'm merging this through my tree, not net-next.
So you can safely wipe it.

Thanks!

-- 
MST

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
