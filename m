Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 063531CC975
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 10:35:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NHmKGUVNJSfDqgogi/JeKSBeDAx1IpUuS8Ft9azhWSc=; b=KiDuWzvTld41PQ
	2oA2JmA8558ftct8b/KGMM1+8+3vbrNd10l6v2/AebV6SV8boRw0jcwNxa1Q5l5AjjDXfyThH2voN
	TtMZhpjyf6A47p04mHfeudYnZRwGjHAIOZuoebvXAruuKDzWfTfhIDykvkaCVSbbSiR+n9OTSUaYI
	bnWUnsz/WymVtMgcwNymw3g/As7oZZo5z0K08ormYXOQK+qWZvdUKB1zC9xUZcNS2I7aI4cTDK/1F
	0aUfi6zsFfKZryh7yhx87OcDHFGhcP7kHFFzx/PicoC+LKEosRx6sTUlYPFAH/QHqmdx7kgp3bmpV
	GH0vxqkjUCvn+OTYumiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXhR4-0000QN-Sq; Sun, 10 May 2020 08:35:46 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXhQv-0000NR-TN
 for linux-arm-kernel@lists.infradead.org; Sun, 10 May 2020 08:35:39 +0000
Received: by mail-wr1-f67.google.com with SMTP id k1so6943764wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 10 May 2020 01:35:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hFhG+vZs/X4tuUT4PqnSohgKP+CFxzcIDKpFvhiq2Dg=;
 b=bbPgculG0Js0jTVCkKxOaFyUzKK/lVSfCPY6MFQNAsdBRZX1QmtYWSwOR1XwSFpR31
 j+N6lirGuFpK/i7lGP3AYrgeZOTDqZ9uREeVs/DghbXFRRfIQGxrmAD0WHYyckQ6u39B
 njmkUg3usOdUTYwt6JeUmVGoMlLaa6lMRTbeXtIDvMxWQT38+SigLxtnpwj4jG4U5fLc
 nDm/ZQ0T8C63YHsDtInavZJ4IPlRFCH3YSuKEjPzyeWfF0phZJAPJ/1RsHS7E/eXHlUh
 RDyxoXFUIfoDwPJb8LO6LvSPTURIoMRMkMeXwLJjmNKmOpjBhZ8DVdm/jqB1Uevg4xNl
 xAZQ==
X-Gm-Message-State: AGi0PuZfJvR9VnDoqYEwyXTT97sofHSqPung8t5PK4/OeRU3EMevSdwN
 4fob9XcsY7P50fkZAuSA8kItV3dOPzq5h5DV9v67
X-Google-Smtp-Source: APiQypL1p9BdfOAzzmp+n/a/4JAtl4MGpsbsogjDDiDXwhFnWp8k7Ijt9lWhxol8IIu94KfrvisAcXf3IBpj799R/N8=
X-Received: by 2002:adf:ec85:: with SMTP id z5mr1666465wrn.153.1589099727564; 
 Sun, 10 May 2020 01:35:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200510060645.10159-1-john.oldman@polehill.co.uk>
 <20200510065519.GB3434442@kroah.com>
In-Reply-To: <20200510065519.GB3434442@kroah.com>
From: John Oldman <john.oldman@polehill.co.uk>
Date: Sun, 10 May 2020 09:35:14 +0100
Message-ID: <CA+JojbpnUxiONfG7tXdd8nt=uKLtnv65EtFeEAa0UKMkcQi6XA@mail.gmail.com>
Subject: Re: [PATCH V2] staging: vc04_services: vchiq_connected.c: Block
 comment alignment
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_013537_950932_CB99B7D3 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, nsaenzjulienne@suse.de,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks for the feedback Greg.
Will resubmit the patch as you suggest.
Thanks
john

On Sun, 10 May 2020 at 07:55, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Sun, May 10, 2020 at 07:06:45AM +0100, John Oldman wrote:
> > Coding style issue
> >
> > Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
> > ---
> > v1: Initial attempt.
> > V2: Resubmitted with shorter comment line, as suggested by Greg KH.
> >
> > This patch clears the checkpatch.pl "Block comments should align the * on each line" warning.
>
> Why is this text not in the changelog area?  Don't you think that it is
> better than the 3 words you currently put there?
>
> Please fix up and resend.
>
> thanks,
>
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
