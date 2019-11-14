Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAEEFC04C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 07:43:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jgt7RYm8KP464p++lOsFfWe116zbkY9gCpNzyYdYll4=; b=rvcYkqAxwT9242
	B2k4VWUBO1P1YX+xT6gMxCmIV56Qd7Yl+J+ibwfnfOdID2BTFdxXSm3Wr9LBT1p4buEX49fljXJCD
	oC75SNOQTik/GPtCx8OyYBS+iOYN1dFNiXWTYrHd9Bf6um0L5UBrPTiDapURJ+bMqwu4I5/Mj3/2+
	vNej1o6LLl7m8iztKGM7HTUYqomuOg7863PPDA8Bku38VqxxTCAJA7gz6+bxRFDg+Zd4iGA9zqAJP
	6KE1dfeMRV88j00+PEUFHktgKqtPRJACD01712kziQ0iFyearnZcAsh5jziBgv2T/Bpij+03eVeP5
	S9Hi9rjW7oLtAc4yAhFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV8qN-0007rZ-4K; Thu, 14 Nov 2019 06:43:03 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV8qB-0007qj-Sv
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 06:42:53 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 79F771C349B78791F986;
 Thu, 14 Nov 2019 14:42:41 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Thu, 14 Nov 2019
 14:42:32 +0800
Subject: Re: [PATCH v2 3/8] ACPI/IORT: Support PASID for platform devices
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 <iommu@lists.linux-foundation.org>, <devicetree@vger.kernel.org>,
 <linux-acpi@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20191108152508.4039168-1-jean-philippe@linaro.org>
 <20191108152508.4039168-4-jean-philippe@linaro.org>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <c34e37aa-af9b-5560-9c98-2cb5c55904c3@huawei.com>
Date: Thu, 14 Nov 2019 14:42:08 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20191108152508.4039168-4-jean-philippe@linaro.org>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_224252_102279_6D0EEF27 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, jonathan.cameron@huawei.com, rjw@rjwysocki.net,
 eric.auger@redhat.com, robh+dt@kernel.org, sudeep.holla@arm.com,
 zhangfei.gao@linaro.org, will@kernel.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/11/8 23:25, Jean-Philippe Brucker wrote:
> Named component nodes in the IORT tables describe the number of
> Substream ID bits (aka. PASID) supported by the device. Propagate this

This feature is needed for HiSilicon Ascend AI chip, thanks
for adding this.

> value to the fwspec structure in order to enable PASID for platform
> devices.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/acpi/arm64/iort.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)

Acked-by: Hanjun Guo <guohanjun@huawei.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
