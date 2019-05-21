Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0151B24AE7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNcMR1kPgfIqAhWi4LXPbqpgeXG1/sawKNFa45YbMJM=; b=q91owvQyZpBe5q
	uYFJ6icOgA0d4GlrUPjqwflbkbvp8ggOXRzNCXAClu5F6C9F4xnDuxj2sw85vw60XMewSs1r79eRC
	H4OXEvZwUdImh49F/f6HYWPpsgTlMq44FHA4M0IPwb0z52m1Vii16ps4FaJnmdSToWTVUjGZp2xQI
	Rzv65SwpbmNTvyrWfd8ZePIRXy7+GlVOUtvOwIKdIC5KyjqufVhN02/WcmkBk4e2pjDt+GvknyTOR
	5l4LGzf4PAOaAY9lXg18zCpihXsOyI65wEOUcLU+VyIhEcRoai1sWwblFne/yNy+fQ0jmNElAzrZI
	H+6FCohdbxbYX/0Of5Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0YV-0004yl-7H; Tue, 21 May 2019 08:55:31 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0YN-0004yD-WF
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:55:25 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4L8kANY001756; Tue, 21 May 2019 10:55:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=RFrnERmByD/oKvdoub0hTueCAKXrMlvGebh2uFiWJh8=;
 b=JV70KZM/wqX2vf6ZNYY4Y7dm0Vbdv0NcQz2hNyJqN0Z2Pxd0TLdcxkjah5b7xPVb7C4i
 FkAmoOpZg3fusM/Qtd8k6/lRZMHf8FCm/UWbW5/w4a4Kq5YABZdvPaAYgVLN1FDKMA3o
 1cTYs36J58OBw5DFQ5GKhqxqEDOkhJ/r6wTEDADcHC0Dkh26mlbkKg3Z+U1aUoYOUepH
 OOvejgVvR6EnKiScSGY60pUq2IUATBcS3y06Pbi9hl/Hqz/uT0ViE50YUf+F9HB6Mnn4
 ipa1B3zOgQb8ORdAvhViqBS0t80k+GR1i2E/xZ91PEEqG9r63m/1ovYPrNtbHt6ReT1x dA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sj7h0rbhj-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 21 May 2019 10:55:19 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E577C38;
 Tue, 21 May 2019 08:55:15 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D1BAA11C5;
 Tue, 21 May 2019 08:55:14 +0000 (GMT)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE3.st.com
 (10.75.127.18) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 21 May
 2019 10:55:14 +0200
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1347.000; Tue, 21 May 2019 10:55:14 +0200
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Wolfram Sang <wsa@the-dreams.de>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 6/8] MAINTAINERS: add I2C DT bindings to STI architecture
Thread-Topic: [PATCH 6/8] MAINTAINERS: add I2C DT bindings to STI architecture
Thread-Index: AQHVD6487I0RI1LZGUuDWk3S2JTL7KZ1JOsA
Date: Tue, 21 May 2019 08:55:14 +0000
Message-ID: <f1035a9b-c6a8-5e6e-4b08-81b5f6b473db@st.com>
References: <20190521082137.2889-1-wsa@the-dreams.de>
 <20190521082137.2889-7-wsa@the-dreams.de>
In-Reply-To: <20190521082137.2889-7-wsa@the-dreams.de>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.46]
Content-ID: <DA23ABE00F0C4542881DD9049BF3D5C5@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-21_01:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_015524_333731_C693BB13 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Wolfram

On 5/21/19 10:21 AM, Wolfram Sang wrote:
> Signed-off-by: Wolfram Sang <wsa@the-dreams.de>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 09f32866bdef..cce1173be35c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2281,6 +2281,7 @@ M:	Patrice Chotard <patrice.chotard@st.com>
>  L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
>  W:	http://www.stlinux.com
>  S:	Maintained
> +F:	Documentation/devicetree/bindings/i2c/i2c-st.txt
>  F:	arch/arm/mach-sti/
>  F:	arch/arm/boot/dts/sti*
>  F:	drivers/char/hw_random/st-rng.c
> 

Acked-by: Patrice Chotard <patrice.chotard@st.com>

Thanks
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
