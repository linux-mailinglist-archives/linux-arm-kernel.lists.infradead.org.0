Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3FEDF6A4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 22:21:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=49T4gqML+O+D7TkTa3cuX5Y+1bw+7ykU4VIyIczSJAQ=; b=f8wjNpV9HH/GSLXpaf4jcwSFU
	c6Ndn6FzH6gulqNPvldfr26FxMgjJu5Mz3qx/t6IxTXU35l/5pEO/o3OwbVUZvsJS5BOCeIQj3bHd
	w91LJPU5BcHvs9oV6enlrkgPbc5wF/03rMzSIT1NbBqoa/slMXFPI3P+fl4A79Z+2COprHoZLQPaO
	eNpRYxDDJU7AJvUlhl5U09S2pwtIg1urjq8tGgztM2Cns8onuOAKMzK0etBTe6T9LKTfhCfsa4Gn4
	oTdHZzr2zLzp85EMOM9tbR7xJs1SCZWJdWYYA41cAVo0aCDMc8z8CE0ggmBZaD6T1w/w85vKJXTUj
	168dxDjsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMeBP-0001DI-9W; Mon, 21 Oct 2019 20:21:39 +0000
Received: from smtp-fw-6001.amazon.com ([52.95.48.154])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMeBE-0001Cg-76
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 20:21:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1571689288; x=1603225288;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=//AVD64BG2EXBrwZcTZzGcKkjD8j4/kb8bB+DMg9IjA=;
 b=W5ROnDE6MLH9V+WzXpuGzE+BVbiQRsTg5MyZ7mYLu90EACarKsVc1v7B
 Dff3eZ5Z0CPp5o9j+b4Zq8tox99wVIZVDmQcGYMU/IxJ4lPo+y79CbbA1
 Ow627sAzFMoFG44uL8j6eWS/V2aqSh70Nc5EhS+t7Zlc2JTR7bWs4Eps0 A=;
X-IronPort-AV: E=Sophos;i="5.67,324,1566864000"; d="scan'208";a="425612074"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1d-f273de60.us-east-1.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-6001.iad6.amazon.com with ESMTP;
 21 Oct 2019 20:21:21 +0000
Received: from EX13MTAUWC001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1d-f273de60.us-east-1.amazon.com (Postfix) with ESMTPS
 id D30B5A243E; Mon, 21 Oct 2019 20:21:17 +0000 (UTC)
Received: from EX13D20UWC001.ant.amazon.com (10.43.162.244) by
 EX13MTAUWC001.ant.amazon.com (10.43.162.135) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 21 Oct 2019 20:21:17 +0000
Received: from 38f9d3867b82.ant.amazon.com (10.43.160.8) by
 EX13D20UWC001.ant.amazon.com (10.43.162.244) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 21 Oct 2019 20:21:12 +0000
Subject: Re: [PATCH v3 2/2] KVM: arm/arm64: Allow user injection of external
 data aborts
To: Christoffer Dall <christoffer.dall@arm.com>, <kvmarm@lists.cs.columbia.edu>
References: <20191011110709.2764-1-christoffer.dall@arm.com>
 <20191011110709.2764-3-christoffer.dall@arm.com>
From: Alexander Graf <graf@amazon.com>
Message-ID: <26fb84dc-17c8-355e-b88b-e6e0b332998b@amazon.com>
Date: Mon, 21 Oct 2019 22:21:09 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191011110709.2764-3-christoffer.dall@arm.com>
Content-Language: en-US
X-Originating-IP: [10.43.160.8]
X-ClientProxiedBy: EX13D29UWC002.ant.amazon.com (10.43.162.254) To
 EX13D20UWC001.ant.amazon.com (10.43.162.244)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_132128_391332_C606E15B 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -2.2 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.48.154 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peter Maydell <peter.maydell@linaro.org>,
 =?UTF-8?Q?Daniel_P=2e_Berrang=c3=a9?= <berrange@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 James Morse <james.morse@arm.com>, Julien
 Thierry <julien.thierry.kdev@gmail.com>, Stefan Hajnoczi <stefanha@redhat.com>,
 Heinrich
 Schuchardt <xypron.glpk@gmx.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11.10.19 13:07, Christoffer Dall wrote:
> In some scenarios, such as buggy guest or incorrect configuration of the
> VMM and firmware description data, userspace will detect a memory access
> to a portion of the IPA, which is not mapped to any MMIO region.
> 
> For this purpose, the appropriate action is to inject an external abort
> to the guest.  The kernel already has functionality to inject an
> external abort, but we need to wire up a signal from user space that
> lets user space tell the kernel to do this.
> 
> It turns out, we already have the set event functionality which we can
> perfectly reuse for this.
> 
> Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>

Reviewed-by: Alexander Graf <graf@amazon.com>


Alex



Amazon Development Center Germany GmbH
Krausenstr. 38
10117 Berlin
Geschaeftsfuehrung: Christian Schlaeger, Ralf Herbrich
Eingetragen am Amtsgericht Charlottenburg unter HRB 149173 B
Sitz: Berlin
Ust-ID: DE 289 237 879


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
