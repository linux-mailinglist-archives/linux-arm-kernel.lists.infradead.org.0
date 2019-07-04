Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B55E5F8DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 15:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e17PlGK9D3JVlwx6D8BRrFp2d14y5QslpeObrCEq8Og=; b=VdEv3Bt5nOJgO1
	pCnVtXqA9B1JCGtJbmA9F58AXzhgP4xgtlpoMScIJF/TM7qy+J/pfnkq7yB4GHu3gX/iSXDzZoeth
	qQV/5r41xK4Kv9oGze0Nhz66RgcRD2VS2wKUYMG6cCVpNTjOd6/4xVocMTr/cg63x3zikodMRZo8T
	JHibtSF6u7IPMJn33a+hTZnHxlkUcA7OEZUiWa+QqQbNTmwebkfbZDTT8BlLCRE0V9Qex/NSWXZJA
	VZmqra86bxQzf40Ws3eIjzIV01QCDtjQ6OI+8C7fFO97WV6SiFOti9lEXwLcnjdbQZrLxvKp8o7Oi
	SU6x5N+NjuvtAKWazwmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj1Rv-0003s7-0p; Thu, 04 Jul 2019 13:06:55 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj1Rg-0003rV-Mi
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 13:06:42 +0000
Received: by mail-wm1-x342.google.com with SMTP id c6so6116307wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 06:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=C0G7rBJyorAv/Go9XW+5KlxgxsrwAo4Lw8h4E0AK/9g=;
 b=MhGHCbNxmBGEX9gNxaF9U5CCJT+qFuz/qiepbdulPX4tk3cpmHk4Nr1cvq+wO4v/6O
 +ybPFIWjxCRzO1VplawtIKym3JIWT6EL6KCC/kXweTg1xEDf6xWNuutL6xnTVP49ECPa
 2IkTuBaIC5U5cDvAdCksqgV+emWw2anAu4XaajfBHQH+ALVYgz1c6h+ms+nDnaWgQOva
 rqS7dM0i2zAeunc7L6TMtRFiWjbF3j2AT0T4kRNj/OsD5XYRsUZqdy268I4EZYTBHRYU
 uIRnNbFdGgRz8D3Ch5iqC9sB+WrvfT8Jn9Q1LiX+atRzygQnXvRv4EHdOsgMgxoxXFdA
 tX1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=C0G7rBJyorAv/Go9XW+5KlxgxsrwAo4Lw8h4E0AK/9g=;
 b=oKk3o4ehBBBOUEwbR0WIMRusdYGPnocBRNLAjzQt4CQE/PUS0bgGQg/sQzs/F06rjO
 fCAIZ+lS7LXvAXyI5MkFVF6Rjx2pyGUP3WfGrjZhWPbaWaWANbkssMgjR4+eQI8HLLnY
 xV0u7HLi88hc4IPPEhtqiKzftGpCXUB+xMx06fejfCGrImTW5YixJBY1opnP0HwrcuWh
 XwStzqf2hxepHujYuphmuIh2knIdtikQHMpGHKAhvtOv+ELiSrm7mnJyDjUo2jsDLzMx
 9qp9Y9xnLj7ewRVDz+hCNq1ykEJ+QoquM9G7B+7D6TYtnCa/THL003JBMZq2m+++Xhf3
 AZzQ==
X-Gm-Message-State: APjAAAVCkltoXImyTxtunWhnR4nwixA9QJrIIWN1ZSBlRg1xZuhZtLI5
 yveILHRfV2DlZhfQfHekmQLPqQ==
X-Google-Smtp-Source: APXvYqwpVkbCltdiX25gOjc+VVQOWtlzTko4TXdJA9hHxN3MnWxEKL9t/rTxGIvJpQMJWxILKQIjYA==
X-Received: by 2002:a1c:7c11:: with SMTP id x17mr11648016wmc.22.1562245599046; 
 Thu, 04 Jul 2019 06:06:39 -0700 (PDT)
Received: from apalos (athedsl-428434.home.otenet.gr. [79.131.225.144])
 by smtp.gmail.com with ESMTPSA id p4sm4889734wrs.35.2019.07.04.06.06.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Jul 2019 06:06:38 -0700 (PDT)
Date: Thu, 4 Jul 2019 16:06:35 +0300
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Message-ID: <20190704130635.GA10412@apalos>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <20190704120018.4523a119@carbon>
 <BN8PR12MB3266BC5322AADFAC49D9BAFAD3FA0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20190704135414.0dd5df76@carbon> <20190704120441.GA6866@apalos>
 <BYAPR12MB3269D4FAAC5307A224D60A08D3FA0@BYAPR12MB3269.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR12MB3269D4FAAC5307A224D60A08D3FA0@BYAPR12MB3269.namprd12.prod.outlook.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_060640_748793_A78CD618 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jose, 

> Thank you all for your review comments !
> 
> From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
> 
> > That's why i was concerned on what will happen on > 1000b frames and what the
> > memory pressure is going to be. 
> > The trade off here is copying vs mapping/unmapping.
> 
> Well, the performance numbers I mentioned are for TSO with default MTU 
> (1500) and using iperf3 with zero-copy. Here follows netperf:
> 

Ok i guess this should be fine. Here's why.
You'll allocate an extra memory from page pool API which equals
the number of descriptors * 1 page.
You also allocate SKB's to copy the data and recycle the page pool buffers.
So page_pool won't add any significant memory pressure since we expect *all*
it's buffers to be recycled. 
The SKBs are allocated anyway in the current driver so bottom line you trade off
some memory (the page_pool buffers) + a memcpy per packet and skip the dma
map/unmap which is the bottleneck in your hardware. 
I think it's fine

Cheers
/Ilias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
