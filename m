Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C51811AA26
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 12:45:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NKI4/g0DNQVDpQqbH03R5erlesyWFmmFZ+J+ir3+9Qg=; b=DYtH2QtbYDywxJIt0zltHwJ5S
	7LZuLrYPZRBCWKwCzrKOTqjiPh3nFW4AeBsdYajeyaKmPo0HjJxp7wjdrIU4O1Utwvj0y+PRz1Kvu
	Tiavyr7yCk93vnMdTvPE+VOnIfTom+AIAM5kyriSCEjjrl7oxOb86CYzBHrRh7ejsr9KBmKCv6a/X
	KfbL9NbKKvPWuKyxMKwQgjsuOlV7egAVLF+4VkZVYQ+Qa7qut5M1TwjyZ5WJ22BgyfpAOCgjCTM8X
	BxkBZG48J5hDFQClj3HfhVFS1UOhtbZyvIEMqdmj4+PSKdphsZUcPEEZrtEVIFkm3a2jvbjBdPR7p
	USxushB6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if0R2-0000C5-Qq; Wed, 11 Dec 2019 11:45:40 +0000
Received: from a27-186.smtp-out.us-west-2.amazonses.com ([54.240.27.186])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if0Qr-0000B4-19
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 11:45:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1576064726;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Date:From:To:Cc:Subject:In-Reply-To:References:Message-ID;
 bh=JiPXq/eUqhlCbHe6rPsNhUYA8v5Xs7QVIRqJ0vKWarc=;
 b=fXN4FApCyzpYH+jGkoZMd3AoDBHhb0fiqNEH5v0E3bxc5fc5ghXOCOoP6ocNFW3t
 AgLGs/FHGSeys1tqf/00RjOUVlFWwEBZPmkiZPPoLQCQj44wo/kgMLf0PRtIreuac9Q
 4fNioTbMxB1Durk29gnVnb9n85FzTSAFysaZnR/Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1576064726;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Date:From:To:Cc:Subject:In-Reply-To:References:Message-ID:Feedback-ID;
 bh=JiPXq/eUqhlCbHe6rPsNhUYA8v5Xs7QVIRqJ0vKWarc=;
 b=fTGBGD8t1LOmetyW8j8CRHRWrg6kWPuB/pziQkrANjLmWcKgFLOQZqARKlGnITSz
 vPM9TLYSlzj9Uomclm9FYBvAAJnWa/p+h6wmnmgHQyLpw4l1ce/GnOgouP4uu1KKhjl
 BLrxrAFBZY253DM0pNYxv7X7qW3zlF+EkrH3odRI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
MIME-Version: 1.0
Date: Wed, 11 Dec 2019 11:45:26 +0000
From: cang@codeaurora.org
To: Avri Altman <Avri.Altman@wdc.com>
Subject: Re: [PATCH v2 3/3] arm64: defconfig: Compile ufs-bsg as a module
In-Reply-To: <MN2PR04MB6991B27D797044D8FFDFAE8FFC5A0@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <0101016ef43c56d3-c7064a44-6025-4349-afd4-a2c91a9d9ffe-000000@us-west-2.amazonses.com>
 <MN2PR04MB6991B27D797044D8FFDFAE8FFC5A0@MN2PR04MB6991.namprd04.prod.outlook.com>
Message-ID: <0101016ef4c73698-50725cfc-fa64-4570-a6ad-de7af22df302-000000@us-west-2.amazonses.com>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-SES-Outgoing: 2019.12.11-54.240.27.186
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_034529_096648_1208E508 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.186 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, rnayak@codeaurora.org,
 linux-scsi@vger.kernel.org, saravanak@google.com,
 Anson Huang <Anson.Huang@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>,
 nguyenb@codeaurora.org, Maxime Ripard <mripard@kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Will Deacon <will@kernel.org>,
 =?UTF-8?Q?Cl=C3=A9ment_P=C3=A9ron?= <peron.clem@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>,
 "moderated list:ARM64 PORT \(AARCH64 ARCHITECTURE\)"
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 kernel-team@android.com, salyzyn@google.com, asutoshd@codeaurora.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-11 19:11, Avri Altman wrote:
>> 
>> Compiling ufs-bsg as a module to improve flexibility of its usage.
>> 
>> Signed-off-by: Can Guo <cang@codeaurora.org>
> Not sure we want to make it loadable by default.
> The platform vendor should decide if this module is available or not,
> Don't you think?
> 
> 

Agree, I will remove this change from patchset in next versioin of it.

Thanks,

Can Guo.

>> ---
>>  arch/arm64/configs/defconfig | 1 +
>>  1 file changed, 1 insertion(+)
>> 
>> diff --git a/arch/arm64/configs/defconfig 
>> b/arch/arm64/configs/defconfig index
>> 8e05c39..169a6e6 100644
>> --- a/arch/arm64/configs/defconfig
>> +++ b/arch/arm64/configs/defconfig
>> @@ -227,6 +227,7 @@ CONFIG_SCSI_UFSHCD=y
>> CONFIG_SCSI_UFSHCD_PLATFORM=y  CONFIG_SCSI_UFS_QCOM=m
>> CONFIG_SCSI_UFS_HISI=y
>> +CONFIG_SCSI_UFS_BSG=m
>>  CONFIG_ATA=y
>>  CONFIG_SATA_AHCI=y
>>  CONFIG_SATA_AHCI_PLATFORM=y
>> --
>> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora 
>> Forum,
>> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
