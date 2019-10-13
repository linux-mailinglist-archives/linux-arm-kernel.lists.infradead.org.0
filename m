Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0DFD5786
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 21:02:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5UQw6KpQFguQv/LkTsP1sHx5OT04VCM5kjhW00pbTg8=; b=VjcHLKdRM3CLmd
	OJR4how4Nv8LiRVH+VhHnvzWriy8+BwQaE+lCotovbzfulvo501XB6J7QperwAyYRmElIKFWKaKsd
	yP02v9ywkARjnIUuS08eX1WKxfWAlakllh6fM1kTjOPagb1REcR99xt2nBGqy5LY1JwSU5JGTteCE
	A05tre2DIZkUz46rzVv3T5MzVnyMF3eBAZC6e1er6SnpNeCTzaScSym1QjuoPHpg6LoTMM3jTx9AF
	FeCfeLZXK93EnVw2mgB7SrZehKb63sVYGNDbZMW2ehtfQOiUSigjPyeKOEHJuKmDgP+WVuB2uEAzs
	SBMUTRaaw+RYMyUfmEdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJj8Q-00014T-KN; Sun, 13 Oct 2019 19:02:30 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJj8G-00013g-Jz; Sun, 13 Oct 2019 19:02:21 +0000
Received: by mail-wr1-x441.google.com with SMTP id j18so17139001wrq.10;
 Sun, 13 Oct 2019 12:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=PxCXXBhA2C4YLbbTIZsjjSPm4uyCjLfswHazHo9DGq8=;
 b=PmiduzxgZfYZ4Y4miFLkBY+Tvs4U8DF0tCoOdP6wlSkN/AU0MkesEU1lPjXphgh6lI
 noVBN680XLK9ZWCPkAFIR0BYJ/DUjzyOmf5H+9Fyv0hdDDCUNBdrK15k/APgabD1a0bZ
 Fj2wih9jCXW9zok/Oja5/1BCrCkjxiIQBYyq35bzaMjis57OIJn1T8b4UKuII8elh92p
 rzn3YMGVArTbuIu86t/iu4/fAgGxUI0DIBi/8lZ5KgiqI6th8FDG1D6ncWkwW3nb4KKR
 MBI9biz7oh1SxCMyZnqC4lGoGphiyZlMis+EUj+hnWq1TjcfP6KBjzN8ZHRlaR5Hc5ho
 RlrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=PxCXXBhA2C4YLbbTIZsjjSPm4uyCjLfswHazHo9DGq8=;
 b=ts4cQDmiPDljyTz8aatW0GCZ82G226KXmxt8xzsbKv3L59F81k5BQLWpPpRBcQXLaF
 ml6rUbdlu1ddIn+U4iSYr0npl6FlobYEZ8aRFcZlgREDS9t6Zgi4xkNmK+UiHB9IEJPT
 jOdyfFUvmUjZcDMkdiJ8gmhLVfCEn7B0w1oSVQIUm8Ex6wo60LzYR1TpEsAP1KjIsQyx
 Fq0y1DtsxCg+wARiHrsNSMKGaE9ys2Yk9lqSGtUUHhs0KXTtKd4OdOTDu0MJRCW3JoDA
 z26XH/tzwOZ9xMpY9x8y3jYNJdQEgEYDf7OcWjDNTabI6UsY1/clRmjoW8B7QOloRUgf
 PUrg==
X-Gm-Message-State: APjAAAVUdBU3noV4ECOwAvagD9rEpoXiYsxtXXjS2VLsvidmmnQI0cQc
 A8da+Wb9kfJa0wO8rirr2w==
X-Google-Smtp-Source: APXvYqwRDKLOg2xklbQug/Q9fbWTVahN4YcnnUI3vsVlqSyRaAe/iK25TsO7xBQ0WNFWVQ1TSZIO9g==
X-Received: by 2002:adf:f983:: with SMTP id f3mr22369431wrr.169.1570993338769; 
 Sun, 13 Oct 2019 12:02:18 -0700 (PDT)
Received: from ninjabhubz.org (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.gmail.com with ESMTPSA id
 s1sm23055438wrg.80.2019.10.13.12.02.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 12:02:18 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Sun, 13 Oct 2019 20:02:04 +0100 (BST)
To: Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: vc04_services: fix lines
 ending with open parenthesis
In-Reply-To: <alpine.DEB.2.21.1910132040140.2565@hadrien>
Message-ID: <alpine.LFD.2.21.1910131951160.13450@ninjahub.org>
References: <20191013183420.13785-1-jbi.octave@gmail.com>
 <alpine.DEB.2.21.1910132040140.2565@hadrien>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_120220_676874_88DC424A 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbi.octave[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 f.fainelli@gmail.com, sbranden@broadcom.com, mchehab+samsung@kernel.org,
 outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, eric@anholt.net, daniela.mormocea@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 dave.stevenson@raspberrypi.org, rjui@broadcom.com, hverkuil-cisco@xs4all.nl,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Sun, 13 Oct 2019, Julia Lawall wrote:

> 
> 
> On Sun, 13 Oct 2019, Jules Irenge wrote:
> 
> > Fix lines ending with open parenthesis. Issue detected by checkpatch tool.
> > In the process, change driver functions name in the multiple files from:
> > vchiq_mmal_port_parameter_set to vmp_prmtr_set
> > vchiq_mmal_component_disable to vm_cmpnt_disable
> > vchiq_mmal_port_connect_tunnel to vmp_cnnct_tunnel
> > vchiq_mmal_component_enable to vm_cmpnt_enable
> 
> You should say why you change the names.
> 
> As far as I can see, there is no change to the actual function
> definitions, so the code can't compile.  Perhaps that comes later in the
> series, but the elements of the series have to be ordered such that
> compilation is possible after each patch.
> 
> julia
> 

Thanks for the feedback, I am updating it and will be compiling  
each point.
Jules





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
