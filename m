Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 220ADF5491
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 20:21:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ejxxYnQv6VBAgK+2PuuuvWwSM+qln5ulq1UZbZNi/L4=; b=GCF2dkx4cXoUVE
	htDxlaXSLzFARqn45xiD5rBVutdSY54mzAD2+czX1tfu+FVb8O/TJdmfsjJ9MLsTvuE8glCt/5BDl
	V5xfTaJ0mWKpUol6yJC/rc5B6La+41Jii9KX56/LhKZAdX4+o1YdHVl194iMtsVvtLuLSyxXDSUia
	OIGgilE6Qf9NwS2wLw4YgaH0VUf4gBSGDIi2nAg/SSVhQ8lAjWNuUVl8mV+NFbg3zynRV3185C0Cp
	9z7Bpu7w3a6dDxVaK8bsjuQFFwgQ2KCYrv/JyNT6UtyvMRRZ9rBYZEoYkVHZRoIOHQRLjqNhjYMBy
	tzl5afOevMm0w2CTZrLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT9pU-000182-JG; Fri, 08 Nov 2019 19:21:56 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT9pD-0000zM-4D
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 19:21:40 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 89E451539AF1E;
 Fri,  8 Nov 2019 11:21:38 -0800 (PST)
Date: Fri, 08 Nov 2019 11:21:38 -0800 (PST)
Message-Id: <20191108.112138.629818881403847512.davem@davemloft.net>
To: alexandre.torgue@st.com
Subject: Re: [PATCH V4 net-next 0/4] net: ethernet: stmmac: cleanup clock
 and optimization
From: David Miller <davem@davemloft.net>
In-Reply-To: <8c4efcce-b46f-ac94-a367-50ff5d78c8a2@st.com>
References: <20191107084757.17910-1-christophe.roullier@st.com>
 <20191107.152640.1457462659040029467.davem@davemloft.net>
 <8c4efcce-b46f-ac94-a367-50ff5d78c8a2@st.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 08 Nov 2019 11:21:39 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_112139_168697_88F25CAF 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, robh@kernel.org, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, joabreu@synopsys.com, andrew@lunn.ch,
 mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com, christophe.roullier@st.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandre Torgue <alexandre.torgue@st.com>
Date: Fri, 8 Nov 2019 11:35:23 +0100

> Hi David
> 
> On 11/8/19 12:26 AM, David Miller wrote:
>> From: Christophe Roullier <christophe.roullier@st.com>
>> Date: Thu, 7 Nov 2019 09:47:53 +0100
>> 
>>> Some improvements:
>>>   - manage syscfg as optional clock,
>>>   - update slew rate of ETH_MDIO pin,
>>>   - Enable gating of the MAC TX clock during TX low-power mode
>>>
>>> V4: Update with Andrew Lunn remark
>> This is mostly ARM DT updates, which tree should this go through?
>> I don't want to step on toes this time :-)
>> 
> 
> I'll take DT patches in my STM32 tree.

Ok, I took patch #1 into net-next.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
