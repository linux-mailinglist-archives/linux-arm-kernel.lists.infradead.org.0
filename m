Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE46DA69B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 09:41:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PHGD1sprlfiVUzHXjDX+CH4KIvxAvvauNUvl2eF2JYI=; b=kTxcOj04++Z74T88k+fCMHL3L
	uf2vgv7WJkQEzqSUNdeduaMBenwmN5yEYxK0E/6lCoV/DBsts+IzdwAeMh7POt0xhSRp0dzQ5OZKd
	XNUL8rB6pYHWTJjwByerccyMImT4JEr0ErXwWvX3as+LX29veAwkInJquL73UC8Q3ZjZ2g6S2lgBt
	1quGzrxE2pKkhN0WOYRJUPhRtDZE2xENv7MLLqfxwTScoFspObwWQBa/T5Eu9X0+9oNX6CEqDpUiL
	kLYEuAJWGVpQPYFq3P5GIRUWPIX7+v6zip6n64TqKp/fk8et1GK9TxozXteBjTdRy18J8Sb/S5brc
	Z/o8EwiEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL0PG-0006Gc-EX; Thu, 17 Oct 2019 07:41:10 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL0Ou-0006Ax-LM
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 07:40:50 +0000
Received: from [167.98.27.226] (helo=[10.35.5.173])
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iL0On-0005XG-Le; Thu, 17 Oct 2019 08:40:41 +0100
Subject: Re: [PATCH] net: stmmac: fix argument to stmmac_pcs_ctrl_ane()
To: David Miller <davem@davemloft.net>
References: <20191016082205.26899-1-ben.dooks@codethink.co.uk>
 <20191016.132805.1945227679877403030.davem@davemloft.net>
From: Ben Dooks <ben.dooks@codethink.co.uk>
Organization: Codethink Limited.
Message-ID: <f351aba0-e55b-edf3-e917-945715beaaf7@codethink.co.uk>
Date: Thu, 17 Oct 2019 08:40:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191016.132805.1945227679877403030.davem@davemloft.net>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_004048_843750_431F3A8A 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-kernel@lists.codethink.co.uk, alexandre.torgue@st.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, joabreu@synopsys.com,
 mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/10/2019 21:28, David Miller wrote:
> From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
> Date: Wed, 16 Oct 2019 09:22:05 +0100
> 
>> The stmmac_pcs_ctrl_ane() expects a register address as
>> argument 1, but for some reason the mac_device_info is
>> being passed.
>>
>> Fix the warning (and possible bug) from sparse:
>>
>> drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2613:17: warning: incorrect type in argument 1 (different address spaces)
>> drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2613:17:    expected void [noderef] <asn:2> *ioaddr
>> drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:2613:17:    got struct mac_device_info *hw
>>
>> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
> 
> I'm still reviewing this but FYI you did not have to send this
> twice.

Yes, I accidentally sent the wrong patch out (already apologised
on the re-send as I noticed it about 10 minutes after sending).

-- 
Ben Dooks				http://www.codethink.co.uk/
Senior Engineer				Codethink - Providing Genius

https://www.codethink.co.uk/privacy.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
