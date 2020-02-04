Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3197B1518B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 11:21:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K1lpo5aMrgcm0E3bgrIADTHGhzoI+1inOLoRnmScW+U=; b=Yumm6JA67itfAz
	oUxTQeIgNwEQhxl56039mvBiQtiDqNw5JqdF4+FZ6giRkmyOfFwWcKV07GfMUc0M+aBvBOrUX9ed7
	vOFKX9aITpy5bxbZsukzoPgxHJF0CT7iublYyQOC5ksVr58UXdehRtJFvB3yEkWrvQ9YgJPwL4Fob
	xya0jqgqWekCyobifk05lYGFAXg7K95ncZE/B6zoGnhQkWk5J/nFKFKuPaD0/tSFmTmVZ/eq0rfdQ
	P4SORu0r57l4q6sDzaKECRATRGpl0z3u904O8ydCj9ipHLsdBDyTlOLaatSBmyEYqTdGFO86lGLEe
	CEORXdjhbmZmlI4re1TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyvKO-0004i1-29; Tue, 04 Feb 2020 10:21:08 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyvKI-0004hS-0M
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 10:21:03 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 014AHStW010010; Tue, 4 Feb 2020 11:20:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=ASDNEVwwDTvwYFZK6EDluzNZiX+m1GXIQNqyDbJAOR0=;
 b=piIIQ3mnDc5dRQSmClGEoshBFHuDjKoxKrSr0VVGsJsl9HDrzNI3X/4m7jAQ7rcGWcwG
 Gm/wZnvzYPli6HES5tcoDHK+MNYPuUSuY3qAvVX+u4CeWUJbhvTE85NbDGFznoDpN+uv
 re/sqvB3AzSKfND33agqTU3mzr88KrEdYb2eOiYt8+tPh0TGTSAhxUGBlrPiaVhqaO0w
 rOm31nAJtmU9SrEhL3xJLo6EFb7LIyMx6Ul5kyuD0i4GFZLGu6jMn8uPiyXk9KgwxeKv
 hWxIIKbuXaRjyxPwQNqCC6Mp3NrJgHK++hVCjOk+8xAm1q4eTR182ImH5sGTxGf7PcMM BA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xw13nr95y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 04 Feb 2020 11:20:56 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3A35F100038;
 Tue,  4 Feb 2020 11:20:51 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 258A12B0502;
 Tue,  4 Feb 2020 11:20:51 +0100 (CET)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 4 Feb
 2020 11:20:50 +0100
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Tue, 4 Feb 2020 11:20:50 +0100
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Olof Johansson
 <olof@lixom.net>, Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH][resend] ARM: stihxxx-b2120.dtsi: fixup sound
 frame-inversion
Thread-Topic: [PATCH][resend] ARM: stihxxx-b2120.dtsi: fixup sound
 frame-inversion
Thread-Index: AQHVzA13QbnFzd5BbUe+uxppwLJ+rKgK4KoA
Date: Tue, 4 Feb 2020 10:20:50 +0000
Message-ID: <ddab976b-7f7a-f807-53f6-16e27851a37c@st.com>
References: <87muao18sk.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87muao18sk.wl-kuninori.morimoto.gx@renesas.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <C9F4B739D5E096449EE176D07A9155CD@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-04_02:2020-02-04,
 2020-02-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_022102_336163_FE8114AB 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kuninori

On 1/16/20 2:36 AM, Kuninori Morimoto wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
>
> frame-inversion is flag not uint32.
> This patch fixup it.
>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> Reviewed-by: Patrice Chotard <patrice.chotard@st.com>
> ---
> 1 month passed, but nothing happen...
> I repost this patch, again
>
>  arch/arm/boot/dts/stihxxx-b2120.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/stihxxx-b2120.dtsi b/arch/arm/boot/dts/stihxxx-b2120.dtsi
> index 60e1104..d051f08 100644
> --- a/arch/arm/boot/dts/stihxxx-b2120.dtsi
> +++ b/arch/arm/boot/dts/stihxxx-b2120.dtsi
> @@ -46,7 +46,7 @@
>  			/* DAC */
>  			format = "i2s";
>  			mclk-fs = <256>;
> -			frame-inversion = <1>;
> +			frame-inversion;
>  			cpu {
>  				sound-dai = <&sti_uni_player2>;
>  			};


Applied on sti-dt-for-5.6-round1

Thanks
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
