Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AB0131D1D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 02:21:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AouHULHDih636Jl/fTHJOKH0wTr3UeQ0CFfspKHaGwQ=; b=numzuKy8urZkUXNxLU+u8+/xW
	Pf77Fc6JXyEpel5HLIFCdmBbuPUeXZUs7e4Uf3Ywo9eUaRbNVvmpaeSJNKIBdNV9bUqisxmf/l0OL
	oX3ffoIQC6c4erUchckwlWgRRy9RTWJmRgbJUcUU32VpcutcUdCGpTfTaKJotiF3zeyG4WITGGrxp
	EAst5Zyr07IZiDMK+jH19OYl3NbcTnc631v7R266gwLjkT4jkeDVmIUrHV1qoVdNxZqLzrdDqFaSZ
	2Hkx3TJeDb30oIqojlDopvzD+wGAxH82dsIktZbYj8c/cL09tJS2bve7wNLUNbpm7elxuZxu1zXJl
	rg5fdaECA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iodYG-0004U0-8M; Tue, 07 Jan 2020 01:20:56 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iodY6-0004TU-HY
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 01:20:48 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id C86536436AE1489FE599;
 Tue,  7 Jan 2020 09:20:34 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Tue, 7 Jan 2020
 09:20:30 +0800
Subject: Re: [PATCH] arm64: dts: hi3798cv200-poplar: add linux, rc-map-name for
 IR
To: Shawn Guo <shawn.guo@linaro.org>
References: <20191226083844.2729-1-shawn.guo@linaro.org>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <5E13DCDE.1090305@hisilicon.com>
Date: Tue, 7 Jan 2020 09:20:30 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <20191226083844.2729-1-shawn.guo@linaro.org>
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_172046_742782_FE44772F 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

On 2019/12/26 16:38, Shawn Guo wrote:
> It adds remote control map name for IR device, so that key event can be
> reported.
>
> Signed-off-by: Shawn Guo <shawn.guo@linaro.org>

Thanks!
Applied to the hisilicon arm64 dt tree.

Best Regards,
Wei

> ---
>   arch/arm64/boot/dts/hisilicon/hi3798cv200-poplar.dts | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/hisilicon/hi3798cv200-poplar.dts b/arch/arm64/boot/dts/hisilicon/hi3798cv200-poplar.dts
> index c563d3eb2d98..7d370dac4c85 100644
> --- a/arch/arm64/boot/dts/hisilicon/hi3798cv200-poplar.dts
> +++ b/arch/arm64/boot/dts/hisilicon/hi3798cv200-poplar.dts
> @@ -170,6 +170,7 @@
>   };
>   
>   &ir {
> +	linux,rc-map-name = "rc-hisi-poplar";
>   	status = "okay";
>   };
>   



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
