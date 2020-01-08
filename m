Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7CD133F26
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 11:22:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76ZWoJEetOXbHHfPsDXyN9C+qF05bPyvMAK2OcOxNrA=; b=MSSfldgzZEyqo5
	T8A6sLAM2mP+gskQKJZ22HsIHJmujbx8bkmRHWVV2brRV6qBaJuHaWeI/rSYRYR9o9yvqvvGIJVC1
	GLn6H/JB5sl7vKAlXloy7t0t4+Rt6V8q4ZlZX51GDABTtlBMIyYAXgVkU94Fb3OxIgOi9uCAubyZI
	//s4LhjgmXEKlPnivpgLo3qsORDXJ7fcU0eKY/tby2FnNwcGV0i5Q422o0ocl7L8zI2OoDzo3Jtf5
	J4zZIDqVtaFK/w8b3xXFh3aL0pD6MhDeDOtNjRENvpm+QPIc2Oej4ZN8PDA4FPC5Q+uDCkCGoycKu
	kUop2YiPkY7zZ57h33GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip8TW-0002Fj-RZ; Wed, 08 Jan 2020 10:22:06 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip8TN-0002F3-Iq
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 10:22:01 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 008ADnJ7030854; Wed, 8 Jan 2020 11:21:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=TYfln+0XXf027Uy3uDGknh/wr9TsRfllIQ1i3R7P5zo=;
 b=jIrcwa1dSelJaj4xkAqslSzeRCcLNKu/0Z5fUDjkk67spLfeusQnw+ggVtFaS+pqbavs
 PMD0cW0haTYwmVxzWLYdfnwn4rSfWoYsFsw+CVjA796y9mr9n2p4P8893orUwdLvvQhn
 liEcJvods6TfY86DEkVa9WKTFjLKJpZoGL/cH8ViMaEMLxYa/aT5mJ7dTHnOKed2coxc
 lnLcM9n8oqanfg+bsd6JeBDgtJ+Fndpz7RY53EEqKpsQ1ClPM7Wt1ii6c3zjG7tSJJDi
 GSZkAV31T5QkmKWBcs3PRnUiFTzyYc/WutrZFqpveMZMwnP9kfwGKT9b9Cg9hk+Nymp7 Vw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2xakkauetj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Jan 2020 11:21:51 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 033B2100038;
 Wed,  8 Jan 2020 11:21:46 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C92022A8A6E;
 Wed,  8 Jan 2020 11:21:46 +0100 (CET)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE3.st.com
 (10.75.127.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 8 Jan
 2020 11:21:46 +0100
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Wed, 8 Jan 2020 11:21:46 +0100
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] ARM: stihxxx-b2120.dtsi: fixup sound frame-inversion
Thread-Topic: [PATCH] ARM: stihxxx-b2120.dtsi: fixup sound frame-inversion
Thread-Index: AQHVs7XByhrpIEFc6kCeIo0ELQ1dwafgoquA
Date: Wed, 8 Jan 2020 10:21:46 +0000
Message-ID: <e7ae8519-9b19-a23b-8743-9a2ab6da5919@st.com>
References: <87lfrd3tu8.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87lfrd3tu8.wl-kuninori.morimoto.gx@renesas.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <87E319AF7ED09A46AC66406E93AFC4BD@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-08_01:2020-01-08,
 2020-01-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_022157_909656_16C283C1 
X-CRM114-Status: GOOD (  18.60  )
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Linux-DT <devicetree@vger.kernel.org>,
 Linux-ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kuninori

On 12/16/19 3:08 AM, Kuninori Morimoto wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
>
> frame-inversion is "flag" not "uint32".
> This patch fixup it.
>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
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

Reviewed-by: Patrice Chotard <patrice.chotard@st.com>

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
