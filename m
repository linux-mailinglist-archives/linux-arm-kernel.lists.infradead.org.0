Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1571C8B79
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 14:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FAX0P6w+9tcDR3FFXjuMwQPl8fYMDJtcN1NsANW98l0=; b=qfqfqryExoYvQwqM42LyXG90r
	7kJj3q4GcvxcKFmd+uqsUgQAeGqfLQjJe11xlKsAsHe9HyevZQQxpTk1nKxRWjfXuKrZqloFQlRH6
	SfopWQyLb/sa6zaCE8yIU9reGAcZtS6dn7pacRcr/ZlRBd+h3pdtvjcSdyZLkXR//c3Cp5M6C2bla
	cTTghnJVGrTOg4nz7EUSYMksAtyG2ul25uR4E7ObZTWxBnHPl8az564Qxdlj3wBd97f0IcOimav64
	kpxoGOzXS0uWWw4dFr24AUusPyPnPK8WyYnh+fme/ZAQBU5sEsryFQJblZ971dIJKXXIrvBN+f2jt
	hDVSectbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWg2r-0000vh-Qy; Thu, 07 May 2020 12:54:33 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWg2W-0000kk-5d
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 12:54:15 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 047CpiGi012143; Thu, 7 May 2020 14:54:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=bJWtpoY8KwDw69Tfzen/eLBrkXgcbVCsAtUEVqbXxLA=;
 b=JRN71tNyTEyBe2r4J8smuJxg1mCSCOpd9STvTBtsySpxMaS5/YZDaytnl2cC8eIYGjmS
 h/VX+o5s9UzT5IBp+1bpTyUH/oC8zHs2uPj9aXXGU1fsdQxHLPjRcbplZJujV9nuGgBk
 22jCBDn9gzNYbske24HD/1X/vAYVUFcWO3HGTLleYAxChaP1IlyDZbCEyy7IDn3l84Ba
 aX0vS4TGMRJM8iGiYLIfPaN2A3FmqJTQfH8X0OdB2OCO1wJid0Kc733pNydniTfia8+R
 KMT3BT2QO2Wt2DPDZIxlNCKC45y9vI2uyb7v7CUb+OY/tZg37j8Bmw0xT1CN56KHQxPg 9g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30rxmvuras-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2020 14:54:06 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9BD3C100034;
 Thu,  7 May 2020 14:54:05 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 859A52B66F8;
 Thu,  7 May 2020 14:54:05 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 7 May
 2020 14:54:02 +0200
Subject: Re: [PATCH 10/12] ARM: dts: stm32: Add bindings for SPI2 on AV96
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
References: <20200429163743.67854-1-marex@denx.de>
 <20200429163743.67854-10-marex@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <2c4b1332-7bde-8c7e-91d2-fee62b7299e6@st.com>
Date: Thu, 7 May 2020 14:53:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200429163743.67854-10-marex@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG6NODE1.st.com (10.75.127.16) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-07_08:2020-05-07,
 2020-05-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_055412_710140_FA1124D0 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Patrick Delaunay <patrick.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek

On 4/29/20 6:37 PM, Marek Vasut wrote:
> Add SPI2 bindings to AV96 DT, the SPI2 IOs are present on
> low-speed expansion connector X6. This is disabled by default
> and can be enabled if something is connected there.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
>   arch/arm/boot/dts/stm32mp157a-avenger96.dts | 9 +++++++++
>   1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index 72ca282898eb..a9f3ba9da170 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -551,6 +551,15 @@ brcmf: bcrmf@1 {
>   	};
>   };
>   
> +&spi2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&spi2_pins_a>;
> +	cs-gpios = <&gpioi 0 0>;
> +	status = "disabled";
> +	/delete-property/dmas;
> +	/delete-property/dma-names;
> +};
> +
>   &uart4 {
>   	/* On Low speed expansion header */
>   	label = "LS-UART1";
> 

Sorry I (again) lost the cover-letter (I need to better configure my 
mailer) so I repond on this patch only.

As discussed, patch 1 to 10 have been applied on stm32-next.
Patches 11/12 have been dropped waiting for on update.

regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
