Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E10E1C5555
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 14:20:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yKNVe0H0oraEBEESfFlj8fXpc4HuDPuejkdaWM9ssPU=; b=PzMQWuRDzNv2xaHOIprb2Rt4U
	s9IGtayLbAQ+pD4wE2YKxdhC+0YLc2G4FEdOdiAJhZ4lP1WmUPLxdoO9BaaTAhcddiq2bVG41bz5U
	1EfkyRTwbnBJHHc84/h1wXyA4/0WT5k+7wX899hQXOhpRz2evC3ocUp4PiPzjQxeJoa4lxwGsblW3
	CTz7Bcx2EKWAdRxq6c0Nl97djZ5WprHVGGZDNVBfS/h8BqGU/jH34Ees8MwTG1gMMNYPOHW4tzEG7
	cI5bYOK5rgeNkPZTPR3cnV7SFHSiE3EiV4hqGdoesbL07xixJMkfS2H+EPaihd/k4oNgMwtU7vv98
	QFRiLxaRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVwYl-000387-AF; Tue, 05 May 2020 12:20:27 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVwYd-00037H-Gm
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 12:20:21 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 045CKC1d091262;
 Tue, 5 May 2020 07:20:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588681212;
 bh=33urkOujjL8eDQqLN/MMIk9++M7FiWab7tR7NHM+1C0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=WU/xSzDRKiMWoIZl6UWuffzuHpkfOvdCh6Y3DXwDOWiXZlIXtr/D5CaznKuHQgHnm
 jlmaeanMLpur4FCZnp8CnrJkwTd71CUhBx9R+0iNNTeNqMQiyYaBWQS3EqLGlGGRwy
 16PvEiMps7CVR1mDG3PqsWF1vDCGfViAzDjaEfF8=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 045CKCwJ040109;
 Tue, 5 May 2020 07:20:12 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 5 May
 2020 07:20:11 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 5 May 2020 07:20:11 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 045CK7qD102805;
 Tue, 5 May 2020 07:20:08 -0500
Subject: Re: [PATCH net-next 3/7] net: ethernet: ti: am65-cpsw-nuss: enable
 packet timestamping support
To: Anders Roxell <anders.roxell@linaro.org>
References: <20200501205011.14899-1-grygorii.strashko@ti.com>
 <20200501205011.14899-4-grygorii.strashko@ti.com>
 <CADYN=9L+RtruRYKah0Bomh7UaPGQ==N9trd0ZoVQ3GTc-VY8Dg@mail.gmail.com>
 <1bf51157-9fee-1948-f9ff-116799d12731@ti.com>
 <CADYN=9LfqLLmKNHPfXEiQbaX8ELF78BL-vWUcX-VP3aQ86csNg@mail.gmail.com>
 <CADYN=9LDCE2sQca12D4ow3BkaxXi1_bnc4Apu7pP4vnA=5AOKA@mail.gmail.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <5f338763-b35b-e2b4-7f15-df3a5bcbb799@ti.com>
Date: Tue, 5 May 2020 15:20:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CADYN=9LDCE2sQca12D4ow3BkaxXi1_bnc4Apu7pP4vnA=5AOKA@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_052019_702344_9BFCA543 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 Networking <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>, Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Clay McClure <clay@daemons.net>,
 Tero Kristo <t-kristo@ti.com>, Murali Karicheri <m-karicheri2@ti.com>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anders,

On 05/05/2020 14:59, Anders Roxell wrote:
> On Tue, 5 May 2020 at 13:16, Anders Roxell <anders.roxell@linaro.org> wrote:
>> On Tue, 5 May 2020 at 13:05, Grygorii Strashko <grygorii.strashko@ti.com> wrote:
>>> On 05/05/2020 13:17, Anders Roxell wrote:
>>>> On Fri, 1 May 2020 at 22:50, Grygorii Strashko <grygorii.strashko@ti.com> wrote:
>>>>>
>>>>> The MCU CPSW Common Platform Time Sync (CPTS) provides possibility to
>>>>> timestamp TX PTP packets and all RX packets.
>>>>>
>>>>> This enables corresponding support in TI AM65x/J721E MCU CPSW driver.
>>>>>
>>>>> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
>>>>> ---
>>>>>    drivers/net/ethernet/ti/Kconfig             |   1 +
>>>>>    drivers/net/ethernet/ti/am65-cpsw-ethtool.c |  24 ++-
>>>>>    drivers/net/ethernet/ti/am65-cpsw-nuss.c    | 172 ++++++++++++++++++++
>>>>>    drivers/net/ethernet/ti/am65-cpsw-nuss.h    |   6 +-
>>>>>    4 files changed, 201 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/drivers/net/ethernet/ti/Kconfig b/drivers/net/ethernet/ti/Kconfig
>>>>> index 1f4e5b6dc686..2c7bd1ccaaec 100644
>>>>> --- a/drivers/net/ethernet/ti/Kconfig
>>>>> +++ b/drivers/net/ethernet/ti/Kconfig
>>>>> @@ -100,6 +100,7 @@ config TI_K3_AM65_CPSW_NUSS
>>>>>           depends on ARCH_K3 && OF && TI_K3_UDMA_GLUE_LAYER
>>>>>           select TI_DAVINCI_MDIO
>>>>>           imply PHY_TI_GMII_SEL
>>>>> +       imply TI_AM65_CPTS
>>>>
>>>> Should this be TI_K3_AM65_CPTS ?
> 
> instead of 'imply TI_K3_AM65_CPTS' don't you want to do this:
> 'depends on TI_K3_AM65_CPTS || !TI_K3_AM65_CPTS'
> 
> 

Right, I'll try. It seems your defconfig is produced by randconfig as
I can't get broken cfg TI_AM65_CPTS=m and TI_K3_AM65_CPSW_NUSS=y
with neither one below:

  make ARCH=arm64 O=k3-arm64 defconfig
  make ARCH=arm64 O=k3-arm64 allnoconfig
  make ARCH=arm64 O=k3-arm64 allyesconfig
  make ARCH=arm64 O=k3-arm64 allmodconfig
  make ARCH=arm64 O=k3-arm64 alldefconfig
  make ARCH=arm64 O=k3-arm64 yes2modconfig
  make ARCH=arm64 O=k3-arm64 mod2yesconfig

Related legacy TI CPTS threads:
  https://lkml.org/lkml/2020/5/2/344
  https://lkml.org/lkml/2020/5/1/1348

I'd try summarize goal
  TI_K3_AM65_CPSW_NUSS	TI_AM65_CPTS
  Y			Y/N
  M			Y/M/N
  N			Y/M/N


-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
