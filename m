Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DE71340A4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 12:37:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FKKv3do5yDm0R9xm7PUqDucovnXT1H1L9ORq90ilihw=; b=GiTDi4a5n7lNl+SFAvW5ac4Xi
	dYQcSWd1QXJmsZL0QBukwSGeVwB6yYl9jfIxGzJDIdNmx9C5x+vqP3Pk8iIbpAHy1vYXdRu3wOM7N
	EGPtc/DRteUcyNBF9iwIVE8iFTygwSU/wpuPDFOyt3RjXjZd05vQtFE+KEq8iBupRNHjhPt7Ko7cM
	OscAU9OCELh4bhRY8bqa2HHVwyJG2Ils2+QCj0ESFCpvHyYaFGOoJTnLl7zsKMr+hZmjELFd1DBMV
	jB7u3/cm6ivKTGdK6sJ39SH174zUefvsCTqV4my71NSGi+htnj7WBr9d0OWXgMDvNlb/GaMXM73e6
	O9DaKgfEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip9ei-0003Pk-4y; Wed, 08 Jan 2020 11:37:44 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip9eU-0003FE-IG
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 11:37:32 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 8599411B6155C6BB9C78;
 Wed,  8 Jan 2020 19:37:21 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Wed, 8 Jan 2020
 19:37:18 +0800
Subject: Re: [PATCH] arm64: dts: hi3798cv200: correct PCIe 'bus-range' setting
To: Shawn Guo <shawn.guo@linaro.org>
References: <20200107122908.18025-1-shawn.guo@linaro.org>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <5E15BEEE.2040100@hisilicon.com>
Date: Wed, 8 Jan 2020 19:37:18 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <20200107122908.18025-1-shawn.guo@linaro.org>
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_033730_791333_A1DBC2B6 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

On 2020/1/7 20:29, Shawn Guo wrote:
> The PCIe 'bus-range' setting is incorrect and causing the following
> message during boot.
>
> pci_bus 0000:01: busn_res: can not insert [bus 01-ff] under [bus 00-0f] (conflicts with (null) [bus 00-0f])
>
> Correct it to get rid of the message.
>
> Signed-off-by: Shawn Guo <shawn.guo@linaro.org>

Thanks!
Applied to the hisilicon arm64 dt tree.

Best Regards,
Wei

> ---
>   arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi b/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi
> index 0a30aaae6bf2..4d1a3d1fc31c 100644
> --- a/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi
> +++ b/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi
> @@ -569,7 +569,7 @@
>   			#address-cells = <3>;
>   			#size-cells = <2>;
>   			device_type = "pci";
> -			bus-range = <0 15>;
> +			bus-range = <0x00 0xff>;
>   			num-lanes = <1>;
>   			ranges = <0x81000000 0x0 0x00000000 0x4f00000 0x0 0x100000
>   				  0x82000000 0x0 0x3000000 0x3000000 0x0 0x01f00000>;



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
