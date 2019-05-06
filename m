Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E42AA1531E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 19:54:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kKCLAfYE4gICv0+He5TkmY+p8asVWMTe5MWVzaYupt4=; b=IUUf9IQsrANq/O
	tE/ecAyKJvHRu1x4C4Pq9468WvIwrg2fpUgHOkG+AzdkaxblPVhMABbV7Pqsh0QvoH9PBj897ZKsg
	zzmZaOPDeQ6tEU0SJnBESBFWqB3ZZYUdqOZzjMtwhycWOxWR48v0QMONvSiSS9saPsXP/AOs4gDeI
	M+NOP3veeMnkTL76xfdYlW9rMA6vJO//Sj0e74uNGaiokgQyOhP6jTa2ycqovReoUevjiwfBHga1t
	N5cTlIupVDA9CrNwoIMx7Wyd4LvfUJ0B9b6wkStvi0DXNn2hBzFjnpZeiIvIZ51QoYiEUwXVyAdY2
	Aax+sU/wUOpmzNUxuQfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNhoo-00007I-Ao; Mon, 06 May 2019 17:54:26 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNhog-00006q-14
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 17:54:19 +0000
Received: by mail-qt1-x841.google.com with SMTP id c13so15778258qtn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 10:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=QhugHBuoBeAcIwpcanoLwTWHJfxQHnSCegSWAvWi8kU=;
 b=puewRPLH4Nh/tosb7+eyKJyRGegVRvwvSe51SQhwLutt2q6m0+ltEOplW8mkMCUoiz
 c9A02CPaqRZaZExZZ8hjy1+Wi12kEipDiFDwJcKNFhoYqxwGNA1xnN+PTUvHSBW+mTrl
 v1C3cZHCAz+/YObFqsrKCorzir4viKXiogisTmNG/II+6qOgGMez0Dw7PhiX/pfAw5B1
 G7jbTG1mSlgyh4DlZaMPtF8WXUwxSHowOeYCVHwF/XVuecLJTzzwrfjLPxAp6kildygK
 GIZFmG5d6/N8z6/CATq1ii4dfcJvhKRsjRhdbbyGk8DFEDIsTchK0gjtvUxpC+iDOC1q
 vnEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=QhugHBuoBeAcIwpcanoLwTWHJfxQHnSCegSWAvWi8kU=;
 b=LPfBPLLSj4K3sPhSd2g1N5wIGjR7eu+/8BwgkodsNNMWSAJ7+wZv6Sa9tkrdsRYnEM
 fW3ubSp005sdx6iKmDnc5/or0tOSgJATGWiRgzP36hLWSZfyLlwVefamq5kFJzSetk2u
 ulDgmsRR+DVfrUqp8JfYkSD3PoJBr6lycKOc+j3ln9CvgsQJeYrCbV4GP7I2t1nDwGD2
 z97CdJDQRpxgpYvVyQHkrsDOZpD7rWmaQHagrK7eQpRUmRuN3lkMFY7k1F4QTi+5eyER
 VTHdprJhxjEXBO9rWFW0sHXBkFKIxNusyqjPhJd+LnFwl4zwHTNfchJJJ4djgFI87v6+
 3pTg==
X-Gm-Message-State: APjAAAUDVykoJZPQ6dg5jA5b1ORUuLRhz0cKltgbctRBqyUrOJy2ks17
 WHf54deegkNex5QQi+TICgPx0A==
X-Google-Smtp-Source: APXvYqy5PtVe8FLAX6kDTgdUP43dSzUlx/5JyN5cnA6nyK/VlRdXqugen7LkGUTYbhAIs7gMXx0zyg==
X-Received: by 2002:ac8:3157:: with SMTP id h23mr84589qtb.248.1557165255314;
 Mon, 06 May 2019 10:54:15 -0700 (PDT)
Received: from cakuba.hsd1.ca.comcast.net ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id f6sm6382006qti.4.2019.05.06.10.54.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 06 May 2019 10:54:15 -0700 (PDT)
Date: Mon, 6 May 2019 10:54:07 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: Re: [PATCH net-next 0/4] net: mvpp2: cls: Add classification
Message-ID: <20190506105407.69ff9a08@cakuba.hsd1.ca.comcast.net>
In-Reply-To: <20190506100026.7d0094fc@bootlin.com>
References: <20190430131429.19361-1-maxime.chevallier@bootlin.com>
 <20190504025353.74acbb6d@cakuba.netronome.com>
 <20190506100026.7d0094fc@bootlin.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_105418_205560_DAB526C9 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, nadavh@marvell.com,
 Saeed Mahameed <saeedm@mellanox.com>, thomas.petazzoni@bootlin.com,
 miquel.raynal@bootlin.com, stefanc@marvell.com, mw@semihalf.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 6 May 2019 10:00:26 +0200, Maxime Chevallier wrote:
> Hello Jakub,
> 
> On Sat, 4 May 2019 02:53:53 -0400
> Jakub Kicinski <jakub.kicinski@netronome.com> wrote:
> 
> >On Tue, 30 Apr 2019 15:14:25 +0200, Maxime Chevallier wrote:  
> >> Compared to the first submissions, the NETIF_F_NTUPLE flag was also
> >> removed, following Saeed's comment.    
> >
> >You should probably add it back, even though the stack only uses
> >NETIF_F_NTUPLE for aRFS the ethtool APIs historically depend on the
> >drivers doing a lot of the validation.  
> 
> OK my bad, reading your previous comments again, I should indeed have
> left it.
> 
> I'll re-add the flag, do you think this should go through -net or wait
> until net-next reopens ?

I think the patch should be relatively simple and clean?  So I'd try for
net, with a Fixes tag, it's a slight ABI correction and we are still
in the merge window period.  So I'd go for net :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
