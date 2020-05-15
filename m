Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 373AC1D4C16
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:05:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7IvwlsGMbzNrlqmqP0/lCg0COuBxdVjqKuA8r4xX0e8=; b=g6H26v8WvwkYbS
	cOKegtRzoEKIXtGqmmsKClR2tDFudb3/S3fbofEzhjgcan+f33KROV6jmS5tdwQDNFtA+vHQVk9l9
	xXROdIV0slPtPuXkPIfFoqGmPWKZ2BJATftZIAZolzYg33ox7C6bbB1kXLUmIPZiUmVC3dyjO7x/y
	QsWLv5/lHm/2mg/Bbh2qNFcTm3LIgdJudUo64mWhysbevEem/hSYcy/5fm5PdD0rqxdYYb7UE8bli
	MONOxDYxjtfDwnY6QXVVhHRXlJkTPDyE9+OA44VxtkvcUSAySqZpvZ7pIzspEkH2MEtOkzBBiDrYZ
	rWPV9tFVJfYwcxON26bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZY9h-0001ef-Nk; Fri, 15 May 2020 11:05:29 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZY7G-0008Sa-7w
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:03:03 +0000
Received: by mail-wr1-x442.google.com with SMTP id e1so3042615wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 04:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=QSEyQaq4LQecf0jyORsCF74hs8fmG+5qsCygtQRV5Dg=;
 b=Iuwv0st6tBfu2N1oXCtOhkcayvgqQMZupIvuQ2VGVv1/w1cebSJ+5Tf9lEm8kv4Of5
 VKUNqoghQw0xMwQ+iW365XX0XBTte7eaFcbQo5WX6k5T6R72gIUdlcCpSO6Cykl622ym
 upplDZVGF5MEy0WOV6XukDee6uz/yvuFu++aEfenRKuQQUB47C+uzX5AfNtVc4z8kz6e
 U2JJBHvOQpPCV5kDVPnZH1Saop0L8AeGY2XSLhBfrUTHh8rHYkwBbK/AnlpgnLVIz9xe
 HqGGHea8OOioDCvS7+IpU9SrBjQHhfuKNpwa6CKeyX4zSKbG/L5Q7eUMYp53DinKjgqK
 dB4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QSEyQaq4LQecf0jyORsCF74hs8fmG+5qsCygtQRV5Dg=;
 b=YBmWLltpTDqhejsz4H+Tjz7dj9aM8idj3Fe2wDywqEbhIjpqorIel0f5VFeg6IJX3G
 U1YOSd4S6KC7oKi4F0Tg3Qikh7Cet3n2VYagjOlhoRmnrXBbcOOagSxsrMTjxNNhNKGA
 WsinaZyX+rgiUwRaccN25EkdI4KpE9Pdp3mC0awXIQQiv6RNodQ7v/P1TlJc1JYfkXvR
 NT3PaazoFGkcmJZ+JK9ARE6YV5f9l3YU14Ceo3DIQZ+1AG8U86mhB0dopm/0hFej2I5W
 btgQoCaqxgqxmG7t3MYCWI25D3akwh4EwDsgdDE+zMtpom5pBsVGAveyHAla5udNvbBT
 e1/A==
X-Gm-Message-State: AOAM533BbA3vfTV7F8CsxgbeLq0YnbJu8b7lAuR1Qyp9clkPk6GLFvdO
 Wglbj9j5cZRs/jjTzbzbS6yBHw==
X-Google-Smtp-Source: ABdhPJxdZw/B+gueDnbAmXpzPy0/wjSgamnTKKreYvMlu/5kVJi8yd7clMYiq36nVcXiMdvgBkF7tA==
X-Received: by 2002:a5d:4950:: with SMTP id r16mr3785390wrs.350.1589540576609; 
 Fri, 15 May 2020 04:02:56 -0700 (PDT)
Received: from dbrazdil-macbookpro.roam.corp.google.com
 ([2a01:4b00:8523:2d03:d11b:f847:8002:7411])
 by smtp.gmail.com with ESMTPSA id z3sm3368475wrm.81.2020.05.15.04.02.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 04:02:55 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
X-Google-Original-From: David Brazdil
 <dbrazdil@dbrazdil-macbookpro.roam.corp.google.com>
Date: Fri, 15 May 2020 12:02:54 +0100
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] KVM: arm64: Use cpus_have_final_cap for has_vhe()
Message-ID: <20200515110254.cxmng6u2qnnvwpya@dbrazdil-macbookpro.roam.corp.google.com>
References: <20200513103828.74580-1-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513103828.74580-1-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_040258_442067_5FC3520C 
X-CRM114-Status: UNSURE (   7.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, dbrazdil@google.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
Acked-by: David Brazdil <dbrazdil@google.com>

Thanks, this is really helpful for the 'Split off nVHE code' series. Tested
them together and things seem to work just fine.

David

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
