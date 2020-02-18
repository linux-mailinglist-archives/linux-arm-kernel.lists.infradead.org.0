Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2EF162822
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 15:28:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNedNiMPLuoW/ZXGtQ+KjI0BsIIvtMIjukPbSjfhr5Y=; b=jmO5QR+xNfGsvS
	ZxCM0fQBa/VS3GEOkHW3a4a4AHMeE7T+gKcHGpjx2jg2sAM6k5YINtrnuFIAMOTuoDpfxxGRXYots
	Q8qMvt86nXMbKizw5lH9XvIH52ZFAo1XL2D42aUFGI2HduQr9QrMUwgnROMrbVv9HMt4OiW+5TKpW
	WVTtTwFKhXgULaG/5eV0KDNCwVznj53b5mwv/wNOkxYWcSLtAd2UAlH+2QqmEgmk2OoQ0aAnkhRbb
	/KE1AfSQGZX2iQI7AV8rAmcr+UwAL6zGHCsl527bLMneC/t5HzHq5weKnSWtG8cqOdmni+7XdGB45
	MnWFp4LsBDg6BwEWnF4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j43rO-0004fe-8B; Tue, 18 Feb 2020 14:28:26 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j43rG-0004fB-1R
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 14:28:19 +0000
Received: from localhost (unknown [193.163.1.7])
 by first.geanix.com (Postfix) with ESMTPSA id D029AC0029;
 Tue, 18 Feb 2020 14:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1582036045; bh=mHzt9vtnKLHNpF1/+TJ0Mqr2u8xuO4Fqk8u6fW/EDks=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To;
 b=NyLbT3+ZSzHRzg/t+SZBSVHIzj+RTsJ8tdYGFRfqqiEUS/jqPTEink6P8B1VeKQhi
 03YfkqFq9I2sRDrqM0dSjOclLHHJv3YSXe9r0dW85VE4IFynlrAuMO4csbTBBuHRnf
 mVm7wqFLiL/jbvxZDh1AZ0iJTuPQgiOV89lvoD2fmQrNuShJ7VB4SWVpAUPNcPjNQn
 UAk4u1b5PwE9sqkSOVAwe/PgUxu/6Tfe9avRct3mnZ+rsG7n4Jzszl2sNz81cZIIrU
 UEQzUDO1jdtad3twes8tIoMr/IP5PMAGMuHXN3eRb2MmX8kv23mFFOaLn88y4gVA/1
 9eN3uSeayg7ZA==
From: Esben Haabendal <esben@geanix.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH 8/8] net: ll_temac: Add ethtool support for coalesce
 parameters
References: <20200218082741.7710-1-esben@geanix.com>
 <20200218133943.GA10541@lunn.ch>
Date: Tue, 18 Feb 2020 15:28:13 +0100
In-Reply-To: <20200218133943.GA10541@lunn.ch> (Andrew Lunn's message of "Tue, 
 18 Feb 2020 14:39:43 +0100")
Message-ID: <87v9o4gebm.fsf@geanix.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-Spam-Status: No, score=-1.7 required=4.0 tests=BAYES_00,DKIM_INVALID,
 DKIM_SIGNED,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=disabled
 version=3.4.3
X-Spam-Checker-Version: SpamAssassin 3.4.3 (2019-12-06) on eb9da72b0f73
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_062818_232574_4C762B3E 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: netdev@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Andrew Lunn <andrew@lunn.ch> writes:

> Hi Esben
>
>> +	if (ec->tx_coalesce_usecs)
>> +		lp->coalesce_delay_tx =
>> +			min(255U, (ec->tx_coalesce_usecs * 100) / 512);
>> +
>> +	pr_info("%d -> %d  %d -> %d\n",
>> +		ec->rx_coalesce_usecs, lp->coalesce_delay_rx,
>> +		ec->tx_coalesce_usecs, lp->coalesce_delay_tx);
>
> I guess this is left over from debug? You don't actually want it here?

Yes, I will remove that in v2.  Thanks.

/Esben

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
