Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 089CB144314
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 18:22:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8kUbVp0euwf7rNM7wd8tfG9sWXFPVqaVnakDH+Y+uE8=; b=peY8oLnrhPFl6Av5Mt9MM0Pyh
	a9ZVdYW5g3u5r9/1EmIsYsOMOsSTZxcRunZ7pmEbLcHB4zHaN5kcD2E0KvcF/IkbXHdvEkpUGIV0w
	5uVbjIqxItN0WrsujczhdYw0dTDjJIUMmz4RAb75G4L+KoTsfOKDNlgnCfhRH6VKis4dc5psU+Xzz
	lYOvjIOJfnU9M7J5HrqT6FLWVD6iqnuUZjYm00d9drvzKuq5Gsx/bl9MJKRazXof9wOX/w6huV+tW
	NyzdGyQTK+Dzjsh90PoIvkUns9C76QTzdzypNnjeV5p6nxId27hrdPqQc/fvyHolZmFDFKDoZNwDh
	1OdLoS2xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itxDq-0003PX-K3; Tue, 21 Jan 2020 17:21:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itxDg-0003PB-Gn
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 17:21:41 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 08D5F206A2;
 Tue, 21 Jan 2020 17:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579627300;
 bh=k1Ai2RRq3mJNU7KMm3C7i8tB7yI9m1tjX5kGHl57oqo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=C5irau9WCRtngmtjdh4Xx6RwtafqYK8OiKe83QfJT/eZLpD8ZHLBBxe0T9xc797Q1
 KCCVklFYVaLbTNDsNMfYh3WewuTY+mUBR/9lb6KMJGaAXZ7227yJ99uPNjy7jiNCdr
 VlhTXqTI9F5g/HJl1eCfjynBSooICP/dg8+HFmwc=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1itxDe-000YDb-64; Tue, 21 Jan 2020 17:21:38 +0000
MIME-Version: 1.0
Date: Tue, 21 Jan 2020 17:21:38 +0000
From: Marc Zyngier <maz@kernel.org>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: STM32MP1 level triggered interrupts
In-Reply-To: <d6e02817-2464-51b9-246a-7720b607b8d6@st.com>
References: <20bb72d0-8258-abc0-e729-4d3d5a75c41c@denx.de>
 <d6e02817-2464-51b9-246a-7720b607b8d6@st.com>
Message-ID: <82d4619107e9ac76d317268637f050cf@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: alexandre.torgue@st.com, marex@denx.de,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 mcoquelin.stm32@gmail.com, patrick.delaunay@st.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_092140_576735_E406A9BF 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Marek Vasut <marex@denx.de>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-21 17:12, Alexandre Torgue wrote:
> Hi Marek,
> 
> On 1/20/20 7:32 PM, Marek Vasut wrote:
>> Hi,
>> 
>> I have a device connected to STM32MP157C which requires active-low
>> level-triggered interrupt sink. The device interrupt line is connected
>> to the SoC gpio-C bank, which has it's interrupt line routed into 
>> EXTI,
>> which can only handle edge triggered interrupts to my understanding.
> 
> correct.
> 
>> 
>> However, ARM GIC should be able to do both and EXTI has this irqmux /
>> EXTImux functionality, which -- if my understanding is correct -- is
>> capable of routing a select GPIO line directly into the GIC as an 
>> EXTIn
>> interrupt signal. Thus, this might permit handling active low
>> level-triggered interrupts. Is there some DT binding to configure this 
>> yet ?
>> 
>> Or is there some other, better, way ?
>> 
> 
> For SPIs, GIC controller handles rising edge triggered interrupt and
> active high level-sensitive. GIC integration in STM32MP157c makes that
> only active high level-sensitive configuration for SPI interrupts is
> supported.

This statement is a slight exaggeration. *any* GIC will happily service
rising-edge triggered SPIs, as it is mandated by the spec. What I 
suspect
is that there is no SPI that is routed out of the SoC for anyone to 
directly
plug anything into it.

          M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
