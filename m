Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBB41354AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 09:46:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VmOqo3OBdi5mVNtGMvO89oxCXN15Q+iOIRX+Y+drSGk=; b=cFuZxK0Jc9+61BmQQLUYFYZ4+
	nPiOV/jaxtpTaowjRk/wojkvH2uoHlhD2PDJzHcoguEicyE9U4KY3XZXshwC56u0u86hHcl36hzsm
	1RN4+DlkBQ7FpEq44i3XWsxuvJJc8oHX7vHvyvTT/G9Rx7JP9IbxfGSNkWhtv1ETm31D/k9ZKUmu3
	U+nb1oYoPrMnvw36KhhN7IyYdxLRaI3dgPbVA0wxVlkA7m1GXD+3FwCmuomontjF7X2jna1UgcnpW
	nRIGLnPSy7kwzHuigzff1VnzzKgGWh22sKq4lcqoM2B4n3/ACRdBcw2iuPc8ysYKymdnkJMRtKe07
	Fm+jiUisQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTSd-0001ZJ-MY; Thu, 09 Jan 2020 08:46:35 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTSV-0001YI-RO
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 08:46:30 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0098j471008889; Thu, 9 Jan 2020 09:46:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=uLATKF9ODz3kL4U3DLHRNE8pm/VoFFXN89GnTjH1WkU=;
 b=abGVxG8c7OxepqjZZQzy4p8LDf0vbN++fRIq9wAPLeOABBnWmLpMfqslmtrsgvINEdj7
 HCo9leQUvagMKl5kHeGMRuQ7y+6mHKhpUz93qBDUYWCcMQ7WAepVtcPsVCRV32/EYhxN
 Ajh5nxOnxPZq7vrDOOahTppdiurgyOfy4s/pBaN0WS8OEH2TFn7U9bvf0FPGKb4nzaUM
 geYLwaFwOBleCeogpzEs8ciocGvugqBT3yGy8af28wJTOny85HpMBkPhkxI7AUIvMk9M
 QEepVW/3XyK/VF1H5YFQLHlf+sVF9Euq/eJessKycjpnBR4TpRxOVDclhpVU8j3g8R4B NA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2xdw8b14d1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 09 Jan 2020 09:46:20 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 23CD510003E;
 Thu,  9 Jan 2020 09:46:14 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EA514221FD0;
 Thu,  9 Jan 2020 09:46:13 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.46) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 9 Jan
 2020 09:46:13 +0100
Subject: Re: [PATCH v2] ARM: dts: stm32: update mlahb node according to the
 bindings
To: Arnaud Pouliquen <arnaud.pouliquen@st.com>, Rob Herring <robh@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>
References: <20191219121815.22987-1-arnaud.pouliquen@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <1df021db-98c4-706d-391a-393c40a3aff3@st.com>
Date: Thu, 9 Jan 2020 09:46:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191219121815.22987-1-arnaud.pouliquen@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-09_02:2020-01-08,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_004628_175684_9B914C3A 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fabien Dessenne <fabien.dessenne@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnaud

On 12/19/19 1:18 PM, Arnaud Pouliquen wrote:
> Update of the mlahb node according to to DT bindings using json-schema
> 
> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
> ---
>   arch/arm/boot/dts/stm32mp151.dtsi | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
> index 3dd570b10181..047051c56ef7 100644
> --- a/arch/arm/boot/dts/stm32mp151.dtsi
> +++ b/arch/arm/boot/dts/stm32mp151.dtsi
> @@ -1669,10 +1669,11 @@
>   		};
>   	};
>   
> -	mlahb {
> -		compatible = "simple-bus";
> +	mlahb: ahb {
> +		compatible = "st,mlahb", "simple-bus";
>   		#address-cells = <1>;
>   		#size-cells = <1>;
> +		ranges;
>   		dma-ranges = <0x00000000 0x38000000 0x10000>,
>   			     <0x10000000 0x10000000 0x60000>,
>   			     <0x30000000 0x30000000 0x60000>;
> 

Applied on stm32-next.

Thanks
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
