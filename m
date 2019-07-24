Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB4072AD1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:57:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vL8s/vIydEhAV+1S0liye0owUxzs5YnynfyH1cAezmQ=; b=gGNMr8EnHDStEt
	Nb6cI8q1I2C5jY4dNNfld5PHw1ufWApQU4VqcIoQmY78xzMGoF51xTbZToz2kIDstRGbsDRcn0vqQ
	fSRCAltdUA3Kn9RTGkHhdCKBKLzJ5oLZ/nOhroWY4zz/K38/ix9HQt/8QpPzh/dvKwDvQPE1VmLMn
	5NN2Bs+mJ7IM/w1ebY/aRFq+AnGxR9Qz7YvhnqLzlXKiq38sqp9ziIGykyX7Gd/1b937au8oEwJm/
	z8U23P1VXkT+KvQe0FbZitRPaeCJ7M2UZiGmcK9jJPwnpyM3irM0GRt/V9FQT0pgtF8Eb/4GZqSny
	QE0H2pQmpt57b2RgLzsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqD5k-0006PA-Cs; Wed, 24 Jul 2019 08:57:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqD2f-00037g-94
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 08:54:34 +0000
Received: by mail-wm1-x343.google.com with SMTP id s3so41016852wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 01:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=AxqsUQ9ydrbktURKrd3ST6ajH38XaMBsfLuUUxN1ep8=;
 b=Ijet24iFgEAcUFy4oNncn1QCmXqFqnMwKUvJmypA9g9ZUOTrpsLOw5etR1uVg7ATTp
 YAn2QdqOdk2Kva+Ac9H9mVP2TawOeadELXg1L+AtWlZQolQbvvLD7AgT4OdZ3YNUSDsI
 jFGOygNEhoA2cFVA+GlXwksPVGI8AuuJ7HjKsxBAlYRVJLSpUgIuNw2yUeIoqglwjsmA
 ZwFk9wWF7qaq2kRvZ8PmI5EsggSOEdTrvlqB9FtAOC1WGr25mgL0HSEk+8yKIdZOG41q
 G/BmZD06mgeO3Ar8E9X99SyEaURO2d1z2bUGuVsopZIGN1Vor0+HIUC2KKGPIIvdmsV1
 Fk2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AxqsUQ9ydrbktURKrd3ST6ajH38XaMBsfLuUUxN1ep8=;
 b=VJkW45M6JJI7OiRTDrYqmO08NEnxrTh4PzUgKpW1b481TbgNULHr10+hzRrW3ITPZs
 GTMPJaFWt5CsqBrjRB1iGcJOhuxppfJ+kwBwMUAAyDTO2xWElL52bMKDZ3v8CC7aY6ez
 4ioXGk8gyK/db9v0djJQ8L0sYCxsOcx9tQrV8kl54YEjNRofDZ8HHanthlz7r6jbFUvC
 659W0KyvWtRi4edx274wij0HV2qkWsYkSX8flAfxqljiB25ld4mLxJQRLlmLf9F/wbtl
 Zg7BKXicmFdQ7wLJbdukwtJeE/mE3z8E/trGmpyWronNdvtbhULTw/V5h+mDXpVzHGzk
 PwNw==
X-Gm-Message-State: APjAAAVwBg8T6fvQ7DfO4Bw+vNC9WG09iHOVvtC5ewGKVskBr9LBqT9I
 ud6wjWZOXDieJI+6LSOsJAZ2+Q==
X-Google-Smtp-Source: APXvYqwKIfUp/OjDiKIW3yUhz1A3lTcNVQMvMoMH8vowJ8g0DRAQsyJ5Lf4T9NdyDaRbrUzSg97b6Q==
X-Received: by 2002:a1c:6454:: with SMTP id y81mr48189531wmb.105.1563958471195; 
 Wed, 24 Jul 2019 01:54:31 -0700 (PDT)
Received: from apalos (athedsl-373703.home.otenet.gr. [79.131.11.197])
 by smtp.gmail.com with ESMTPSA id x16sm33903820wmj.4.2019.07.24.01.54.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 01:54:30 -0700 (PDT)
Date: Wed, 24 Jul 2019 11:54:27 +0300
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Message-ID: <20190724085427.GA10736@apalos>
References: <BYAPR12MB32692AF2BA127C5DA5B74804D3C70@BYAPR12MB3269.namprd12.prod.outlook.com>
 <6c769226-bdd9-6fe0-b96b-5a0d800fed24@arm.com>
 <8756d681-e167-fe4a-c6f0-47ae2dcbb100@nvidia.com>
 <20190723.115112.1824255524103179323.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723.115112.1824255524103179323.davem@davemloft.net>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_015433_352147_76E4694C 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jose.Abreu@synopsys.com, Joao.Pinto@synopsys.com, alexandre.torgue@st.com,
 maxime.ripard@bootlin.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, jonathanh@nvidia.com, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 linux-tegra@vger.kernel.org, peppe.cavallaro@st.com, robin.murphy@arm.com,
 linux-stm32@st-md-mailman.stormreply.com, lists@bofh.nu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi David, 

> From: Jon Hunter <jonathanh@nvidia.com>
> Date: Tue, 23 Jul 2019 13:09:00 +0100
> 
> > Setting "iommu.passthrough=1" works for me. However, I am not sure where
> > to go from here, so any ideas you have would be great.
> 
> Then definitely we are accessing outside of a valid IOMMU mapping due
> to the page pool support changes.

Yes. On the netsec driver i did test with and without SMMU to make sure i am not
breaking anything.
Since we map the whole page on the API i think some offset on the driver causes
that. In any case i'll have another look on page_pool to make sure we are not
missing anything. 

> 
> Such a problem should be spotted with swiommu enabled with debugging.

Thanks
/Ilias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
