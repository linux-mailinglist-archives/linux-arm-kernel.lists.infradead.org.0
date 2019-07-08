Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 661E562AC6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 23:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vsXhLz8MyrgdRBXE/N5/hAQEIbVR1cEQ+ZtA0odcWOk=; b=f4D1dia1WEmEl/
	ynJT+kksg74IZpS2R2GHbzVmUMR/0MvhPdUWPaC8Oaj0PK+47O2WcZ9Z93fPQ7cYiB22y4JcNktMd
	e1lADqtnL0Csn6mC0s9X79vtsUBslu7sR5QCEwmbdAdqlWvT5XsKoQoS3aCHdCZww8vCzzKsfxwcF
	V3mM5hJ7V3a6fcAvS+eyqDCKYRosqqRfKIPiy+ZTkMvt5Ml062Vx6oUBrgREEIlPJ6tkwJKBXzzxw
	pNQkeDIDKkVPXfD+VcIUj6E4sCe6OKPv2xl8VafJTYUbUqHJNObwtiRths4zaWx+OvDNyH373dwgS
	NZC+eAvsWKA+2D+O2CfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkaz9-0001JT-C1; Mon, 08 Jul 2019 21:15:43 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkayr-0001Iw-AY
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 21:15:26 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A7B14136DDD39;
 Mon,  8 Jul 2019 14:15:19 -0700 (PDT)
Date: Mon, 08 Jul 2019 14:15:15 -0700 (PDT)
Message-Id: <20190708.141515.1767939731073284700.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net-next v3 3/3] net: stmmac: Introducing support for
 Page Pool
From: David Miller <davem@davemloft.net>
In-Reply-To: <BN8PR12MB32667BCA58B617432CACE677D3F60@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <BN8PR12MB32666359FABD7D7E55FE4761D3F50@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20190705152453.GA24683@apalos>
 <BN8PR12MB32667BCA58B617432CACE677D3F60@BN8PR12MB3266.namprd12.prod.outlook.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 08 Jul 2019 14:15:20 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_141525_368219_A8760C78 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Joao.Pinto@synopsys.com, alexandre.torgue@st.com, arnd@arndb.de,
 netdev@vger.kernel.org, ilias.apalodimas@linaro.org,
 linux-kernel@vger.kernel.org, brouer@redhat.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Mon, 8 Jul 2019 16:08:07 +0000

> From: Ilias Apalodimas <ilias.apalodimas@linaro.org> | Date: Fri, Jul 
> 05, 2019 at 16:24:53
> 
>> Well ideally we'd like to get the change in before the merge window ourselves,
>> since we dont want to remove->re-add the same function in stable kernels. If
>> that doesn't go in i am fine fixing it in the next merge window i guess, since
>> it offers substantial speedups
> 
> I think the series is marked as "Changes Requested" in patchwork. What's 
> the status of this ?

That means I expect a respin based upon feedback or similar.  If Ilias and
you agreed to put this series in as-is, my apologies and just resend the
series with appropriate ACK and Review tags added.

Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
