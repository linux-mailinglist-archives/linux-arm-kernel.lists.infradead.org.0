Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A6610FCA6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 12:46:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QRZoU074k8zmOM+g01t9TsGUN/YLqtvKpPEcMxSrBx4=; b=dq6alGJHPLoJ3S
	TLXQHlAdyonWN64S8K0IkR6Blze9C7Z3ytXj/DjOEw7w4X5N4IwjpSyT1AqZHuFu1dC61H+ZT6jN+
	VIpClMhh1WKrNzZUqe1ouC3mw8FmkoCn8B6kykqm9rtJHViSQYnyYGEx5nB40T409DYYcWhPX8mvF
	n3OLlAZDNq1ekSlOaJndEB8Dl6+WuwfLvqia3BI7qmRqakuxE3IrNTl/UPuBiB8ZN4AliS3TyVx6Y
	6yVGw89d+Un/7/cTVqBHi0HWpNVo38Hc7xL0/BOq0MR1Sk1jM0uuMhQHgBHtLGQnmG/3wyYEE0m1y
	JRya9Yr5kd2xw7PyC3pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6dQ-0000U6-Kh; Tue, 03 Dec 2019 11:46:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6dG-0000TB-2G
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 11:46:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 16FCB30E;
 Tue,  3 Dec 2019 03:46:15 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 69F083F68E;
 Tue,  3 Dec 2019 03:46:13 -0800 (PST)
Date: Tue, 3 Dec 2019 11:46:07 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v11 2/2] mailbox: introduce ARM SMC based mailbox
Message-ID: <20191203114607.GA4171@bogus>
References: <1575281525-1549-1-git-send-email-peng.fan@nxp.com>
 <1575281525-1549-3-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575281525-1549-3-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_034618_151134_26B3686E 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

(+Viresh,Arnd)

On Mon, Dec 02, 2019 at 10:14:43AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
>
> This mailbox driver implements a mailbox which signals transmitted data
> via an ARM smc (secure monitor call) instruction. The mailbox receiver
> is implemented in firmware and can synchronously return data when it
> returns execution to the non-secure world again.
> An asynchronous receive path is not implemented.
> This allows the usage of a mailbox to trigger firmware actions on SoCs
> which either don't have a separate management processor or on which such
> a core is not available. A user of this mailbox could be the SCP
> interface.
>

I would like to know all the use-cases for this driver ? Is this only for
SCMI or will this get used with other protocols on the top. I assume the
latter and hence it is preferred to keep this as a mailbox driver.

I am not against this approach but the reason I ask is to avoid duplication.
Viresh has suggested abstraction of transport from SCMI driver to enable
other transports[1]. Couple of transports that I am aware of is this SMC/HVC
and the new(still in-concept) SPCI.

So I am looking for opinions on that approach. Please feel free to comment
here or as part of that patch.

--
Regards,
Sudeep

[1] https://lore.kernel.org/lkml/5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
