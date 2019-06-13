Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 792AD44D39
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 22:16:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V2joNATeLFkU6CFIZQW1DW0CnsqGHP6ZYUrgb0h11p0=; b=NqIc9GJ9uiHkij
	e5V1+zt27xaDlwRmpYe+Pk8rdn6sSpXoGXRvLc1pk2NSdyEvNcsw6B+rEURgNjTcKP6r+UGWyAj88
	PKxMHz9CO99kogJjRZNrQGQ/vQSLWHzc+VdM+hyz1ItR3wgYtKgZ49oT1c6u+u8efe1+Z7+NdeS67
	uUyFepntXaczWKcDJ3dQwwg7VhwEQiYoZAtlHUXzhrl3r/UgzdX7Pz9CfygokSGeu34moEvZB765U
	sQzEt/6kjuGNv+N/WBI7rLAff4gofrHsCGMVXOu61CTVSp53cH4lRWzt/n+9zP91IGa6fo6d6Fzik
	SBH8aa2LpTFnTRXwiP/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbW9P-00052d-EB; Thu, 13 Jun 2019 20:16:47 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbW9D-00051w-Lq
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 20:16:36 +0000
Received: by mail-qt1-f195.google.com with SMTP id d23so24124289qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 13:16:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/ndsFdJT5msH1jQIdsq/1aF4DNtPMQ+O2tUbOMazO1E=;
 b=kypbEMtdGY7m5iXuhntXcOKB1iZE4HjiPHGnADj5UCccw7C9i1maNGxIX1pHA/uHn0
 iIBRsTyoO/MMWtGbQystlJYbHA5UMB/Z9MyEARm88r56O/UJlHfeH2NzwwoQ5Ac1YAKg
 St6O+5z5Czr2V6FXvtJkzOKH5iUgkvQUMAnjbGeMtfwGvm6fbLdHtMFgY6KI5r34cNsO
 3dIwwQjK8IwZs8ofFSHuj9m81hmCCSLchZkKlSTyPtyZPPx3f2oORroVxYGkTG4wy41H
 OH1ZnkdkdeQShPE+3QA3AxYUE90EfYFLRM/VlljzlQRejlZaFm50Va8wjw/shuDCzvbQ
 hpNw==
X-Gm-Message-State: APjAAAUwM6Vdm+Wr7WPFdPExd/8OBvjKHoSYdxIKAObLm7LP60m86LMb
 Pmb6hAtEfCSLCtJl13R9sw==
X-Google-Smtp-Source: APXvYqxyv4YC69ZgdCsc1cwzM2ITRQvAA59njwcfY8Nne0u37GVgVsXAmmt0JTZtsscGOKcJFLDrSw==
X-Received: by 2002:ac8:26d9:: with SMTP id 25mr39778211qtp.377.1560456993921; 
 Thu, 13 Jun 2019 13:16:33 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id r17sm358498qtf.26.2019.06.13.13.16.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 13:16:33 -0700 (PDT)
Date: Thu, 13 Jun 2019 14:16:30 -0600
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: rng: Document BCM7211 RNG compatible
 string
Message-ID: <20190613201630.GA29776@bogus>
References: <20190510173112.2196-1-f.fainelli@gmail.com>
 <20190510173112.2196-2-f.fainelli@gmail.com>
 <ce516362-658f-cde3-9be8-0e092f554782@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ce516362-658f-cde3-9be8-0e092f554782@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_131635_715683_DB190AF4 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: stefan.wahren@i2se.com, Mark Rutland <mark.rutland@arm.com>,
 herbert@gondor.apana.org.au, Scott Branden <sbranden@broadcom.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-crypto@vger.kernel.org, mpm@selenic.com,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 07, 2019 at 11:57:49AM -0700, Florian Fainelli wrote:
> On 5/10/19 10:31 AM, Florian Fainelli wrote:
> > BCM7211 features a RNG200 block, document its compatible string.
> > 
> > Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> 
> Rob, does this look okay to you?

Yes, sorry, a bit behind on reviews.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
