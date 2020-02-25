Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CC316BE52
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 11:10:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HfomY5NnWJjsCsOoEujKifpekEyfSJ5A6jMwCcWbEJU=; b=Mjpa45JnRg2Uc1
	tlXR2pe/di4bVhaJfGBpQ1EwyT9cbwxHX5fgp4tbwJo3KJ0Qo5HyaLPO9ijb1v0sSajvX9iiGQvEe
	QyHyyA9OmxW74wCJIF3SErb+ZMowdGoI4DGBENjL1LgOjLyuKC62q43THKBad+ABEsEfPfCY0VM+A
	/pI9Ya14uUybU8tnXs1aenw7ZEVaIl0XB2vop7jEFcGO/2ONQuvjEAfPbA9z6LXjIZGF1cIhpXLBL
	1xUrizRlQ2BXJ3VT0ObjV6le23+2uZ1te59e7hKyterEhFpbtVOSC0HahkN38VezZNZ3ankKlGevL
	x5ucDqwZuo0VjQ/pCvgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6XA8-0005Ou-Au; Tue, 25 Feb 2020 10:10:00 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6X9w-0005O7-8Z
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 10:09:49 +0000
Received: by mail-pf1-x442.google.com with SMTP id y5so6914217pfb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 02:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Wh/aV6f8G9P8NFi86qh7LhwbQJ/WhimCuc3W3RTKcZE=;
 b=KFlPaymx0DYUd8m3GIFgxt2xLl5otTfghyORLQBRAKY/JXiEDUAVl14Fq0LOhXd3OP
 BYs0TTqBSzUJQeeX7D3QoHk0dHWQ31xJXe+Yhrn6loPk/pLsuoBW+58LUUXeOXRh5c4w
 kffKXxC0pxA6WaWERdiPRpxhwX4LvfZiHeRe4FHKqZqX9dnUHAkMt105JgVtuxkqstNQ
 vsXEPlFVreZI4LBgeEL7pSmHeS89OnPs9SVG1whCPo0FQwDWSHtqcR46u2munqOjGTcX
 ihNvpq9o2/M6Upu2oD0eRNWLuFAl9lX6S9T4Zfx/vjya35tC5JBP2LWBRFdbbFNtXaRP
 EOKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Wh/aV6f8G9P8NFi86qh7LhwbQJ/WhimCuc3W3RTKcZE=;
 b=gWO90kGNvAaNtikkkqIjruPODYXe0m+XhCv5/iLL9yWSfQ2aMKOA+zOTYEeEgi/A9T
 hPEPXlEA3K9wgX5/xDPI3i4ejrSlEK4ZNENiXvE+e7GxW4bMWqlWZfUzU4iAYClOlpLB
 xEi56zrWyJ7Fji1RCPdLaqRmRDdfSDP1Te9xMxcbsMTmRnvTGxcBf47g4MExYN312gj4
 Fl/SkrqkYM7qQ+sSY4qwAIzJZTsUo4+vWozAB2eyLBWZhSTI5bPo+73yeoYvx0iiOLli
 smS8M86VUPOtlYgZ8+dpIwVz1dMb5ITwy3mut+IkqO6akbGL3a6zkbqJOzP5yVmwa9jG
 rLgQ==
X-Gm-Message-State: APjAAAUkvmil0MX6zOkgfQ/imryKzLvTE5UFahBH7hW+FpSL2W598lfX
 WPyeWikhZ5hM+hQDPEoSUc4=
X-Google-Smtp-Source: APXvYqx8Yfc4lFhAWYyQXx8bh8cKTSKSygqvlznUOWE2jNOZJYYzwPYWixn6hqZq7vx8iXGletOiug==
X-Received: by 2002:a63:3c4b:: with SMTP id i11mr58936564pgn.123.1582625385752; 
 Tue, 25 Feb 2020 02:09:45 -0800 (PST)
Received: from localhost (g183.222-224-185.ppp.wakwak.ne.jp. [222.224.185.183])
 by smtp.gmail.com with ESMTPSA id b27sm16151184pgl.77.2020.02.25.02.09.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 02:09:44 -0800 (PST)
Date: Tue, 25 Feb 2020 19:09:42 +0900
From: Stafford Horne <shorne@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 5/5] openrisc: use the generic in-place uncached DMA
 allocator
Message-ID: <20200225100942.GB7926@lianli.shorne-pla.net>
References: <20200224194446.690816-1-hch@lst.de>
 <20200224194446.690816-6-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224194446.690816-6-hch@lst.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_020948_329715_8D3649CA 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shorne[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jonas Bonn <jonas@southpole.se>, Mark Rutland <mark.rutland@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 iommu@lists.linux-foundation.org, openrisc@lists.librecores.org,
 linux-arch@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 11:44:45AM -0800, Christoph Hellwig wrote:
> Switch openrisc to use the dma-direct allocator and just provide the
> hooks for setting memory uncached or cached.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Stafford Horne <shorne@gmail.com>

I also test booted this series with linux 5.5 on my OpenRISC target.  There are
no issues.  Note, I had an issue with patch 3/5 not cleanly applying with 'git am'
but it worked fine using just patch, I didn't get any other details.

-Stafford

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
