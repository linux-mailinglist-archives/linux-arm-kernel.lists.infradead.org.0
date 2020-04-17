Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 724481ADB9D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:52:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGzYULwi8DvLfBvv42SnT+ywphrA+yc/dxR57U8ksUU=; b=NYU4lFcr8WApeQ
	NbQKfnNpWPzBOYLxbVP2sUkyYflk4I4JYLB/IdY8sNTFLzEhDKS01+NVlb9JFJ9ZDs2A+Xq/VYG+U
	K613XWB3FrPuj2tE0Hk2tQvXVZdSSlo0toznXC7cgwvLYmUxEzyFNkNE9pnT6OTWR3w6pAp3Fpvfk
	/wutY9UdemaigsXpSiQPx7KKFbmGxmIeAY7RxqLNy7acGudttVIrIX1uRhOmIuyADzjAG1omErYNC
	Qx3jP1wDLBE58rFAdx/SG0Ll2nWTrNiCrzpvtRaaJ9OM2mwy2EKpLqVbGYvasA2W5EFsj+K7kiKxy
	cMHofo4bzyXHTT4k/5Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOZV-0005tv-3j; Fri, 17 Apr 2020 10:50:09 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOXg-0003CN-TE
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 10:48:18 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03HAlHR7012849; Fri, 17 Apr 2020 12:48:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=U0KuCPkod9VCkNMm1+gsvxdMKO+LfeTwPrz1C/kNOFc=;
 b=yQmwd6sJjj16ZGoExmKg/oSc8qcfK/u1FNR7zv8HrwIk5xvBganoJwS1yPVn2AZNl9fk
 ohcMf1latO8UPTIz6for3kJZPwW4VHrBz3q5W2VainDHFA1gIFRbj2g4078N29XnCrtE
 ki17XRsrdO4Z9qwMh8oAEhZfPD7KUaCN05a9G9H0YBDI5aTMaUJs7+j0Gl2PxiS9cuIb
 vPf+z0iJBEmyiMeeSyjEw+hcVn9X7RV0GZ1Vjeodc7nNdCav0ddp/+qojhD+mhKbv6lz
 nntJ/L8PZxoZ1y7RJUjFVUrtNG7mPDhXObxDbqYxdMpg9WHHx1qbNpqipdWLg8KrbWKQ yA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30dn6t8ykj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 17 Apr 2020 12:48:10 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D682B10002A;
 Fri, 17 Apr 2020 12:48:09 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C79422AA21F;
 Fri, 17 Apr 2020 12:48:09 +0200 (CEST)
Received: from SFHDAG6NODE2.st.com (10.75.127.17) by SFHDAG6NODE3.st.com
 (10.75.127.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 17 Apr
 2020 12:48:09 +0200
Received: from SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6]) by
 SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6%20]) with mapi id
 15.00.1347.000; Fri, 17 Apr 2020 12:48:09 +0200
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Alain Volmat <avolmat@me.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, 
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dts: arm: stih407-family: remove duplicated rng nodes
Thread-Topic: [PATCH] dts: arm: stih407-family: remove duplicated rng nodes
Thread-Index: AQHWAGU6HT4ybsc2/E+ksa70VtGSzKh9KQyA
Date: Fri, 17 Apr 2020 10:48:09 +0000
Message-ID: <d9073372-e51a-518c-09ea-37aebb225406@st.com>
References: <20200322161616.19111-1-avolmat@me.com>
In-Reply-To: <20200322161616.19111-1-avolmat@me.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
Content-ID: <8B947ACF6CAAE14987E5EDB57737EB04@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-17_03:2020-04-17,
 2020-04-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_034817_240167_E505B8C9 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alain

On 3/22/20 5:16 PM, Alain Volmat wrote:
> the 2 rng nodes are duplicated within the stih407-family.dtsi
>
> Signed-off-by: Alain Volmat <avolmat@me.com>
> ---
>  arch/arm/boot/dts/stih407-family.dtsi | 14 --------------
>  1 file changed, 14 deletions(-)
>
> diff --git a/arch/arm/boot/dts/stih407-family.dtsi b/arch/arm/boot/dts/stih407-family.dtsi
> index 7c36c37260a4..23a1746f3baa 100644
> --- a/arch/arm/boot/dts/stih407-family.dtsi
> +++ b/arch/arm/boot/dts/stih407-family.dtsi
> @@ -767,20 +767,6 @@
>  				 <&clk_s_c0_flexgen CLK_ETH_PHY>;
>  		};
>  
> -		rng10: rng@8a89000 {
> -			compatible      = "st,rng";
> -			reg		= <0x08a89000 0x1000>;
> -			clocks          = <&clk_sysin>;
> -			status		= "okay";
> -		};
> -
> -		rng11: rng@8a8a000 {
> -			compatible      = "st,rng";
> -			reg		= <0x08a8a000 0x1000>;
> -			clocks          = <&clk_sysin>;
> -			status		= "okay";
> -		};
> -
>  		mailbox0: mailbox@8f00000  {
>  			compatible	= "st,stih407-mailbox";
>  			reg		= <0x8f00000 0x1000>;

Applied on sti-dt-for-v5.8-round1

Thanks

Patrice
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
