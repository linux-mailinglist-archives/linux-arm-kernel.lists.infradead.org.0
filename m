Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F39813550F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:01:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WM6+qnQsVbSrK2yP7g79vyEhuYrh5d0a4wiPNLR5YbI=; b=DhmZvDRVDJf/ZshTzyySIu2kx
	J3q4Db/+A6Kig0hWyhKEuDvEskhUgQdxiCqZmW/CZkpxEkSLBNc7tv15Q2fPW7CxhLxrgX0GQl0cO
	kwbz+yOqlyTvslau861XCAI7jobATGga6VbnjdX64g9djsaakBtxxvcPoKuiUj8oyuzwzbiUWA+dB
	4pGW+Tz20WgT4mrSaP9YSSzNgfAjOD5VT9VrRG5Z7ma2RiRaqd9oo104HUWsg0JloQSFRvo4tc2o0
	WV29q2Nelb6tFzoVlqdkJqSeFM7JazUcP/Lb59GVRT+ozNgyXwDxRcYseldRftySK+jKWImunZP7A
	u0IFmuaUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTgt-0001df-J4; Thu, 09 Jan 2020 09:01:19 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTgl-0001cy-TP
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:01:14 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0098vluo027339; Thu, 9 Jan 2020 10:01:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=VrpNqw1ml8Zy129ySb4TfJry+4/8mCEXYVXi+jrwUo4=;
 b=Ex9Eg7dwD08Sqq4AnJ4VKMz3942ON5mW6GSfi09pXE0WW191YtZAisAaWCGBdxfOM/c0
 +L36s7Y8wXA2XNDhbMWlBE3xDgKh0vt4Lp3ZqT1EUHJHNQK0MBS4qJf55ikNF+tpwJdu
 17xK4xrsqfKIbIEIpEkJo/rW/325R8lIcAlTHUqcbK6oYl/eCU1bUp3bXa1CCp6y5AkQ
 XmaNsD3S+ebYb1xpG3BUge2ypZ7lY5wAY2+YlqIpFUimdLhzF+lsBl0Ts2qJivyvioMg
 IrtcXNwgrJZvnCQr5o3b9hiGz8gMT+FqzJXdT7SNR4O4LJSPQxDx3BJri8lVEXNzPM7C VA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakur0ggh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 09 Jan 2020 10:01:04 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8495A10002A;
 Thu,  9 Jan 2020 10:01:04 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6AFAB2A4D7B;
 Thu,  9 Jan 2020 10:01:04 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.45) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 9 Jan
 2020 10:01:03 +0100
Subject: Re: [PATCH 0/3] Convert STM32 ROMEM to json-schema
To: Benjamin Gaignard <benjamin.gaignard@st.com>,
 <srinivas.kandagatla@linaro.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <fabrice.gasnier@st.com>
References: <20191219144117.21527-1-benjamin.gaignard@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <c3326bf5-f3f8-489b-5245-3b9fd47324bb@st.com>
Date: Thu, 9 Jan 2020 10:01:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191219144117.21527-1-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-09_02:2020-01-08,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_010112_316562_79B9E93A 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Benjamin,

On 12/19/19 3:41 PM, Benjamin Gaignard wrote:
> Convert STM32 ROMEM to json-schema and fix the issues detected on stm32 dtsi
> files.
> Note that stm32mp1 patch should be applied on top of the stm32-next tree.
> 
> Benjamin Gaignard (3):
>    dt-bindings: nvmem: Convert STM32 ROMEM to json-schema
>    ARM: dts: stm32: change nvmem node name on stm32f429
>    ARM: dts: stm32: change nvmem node name on stm32mp1
> 
>   .../devicetree/bindings/nvmem/st,stm32-romem.txt   | 31 ---------------
>   .../devicetree/bindings/nvmem/st,stm32-romem.yaml  | 46 ++++++++++++++++++++++
>   arch/arm/boot/dts/stm32f429.dtsi                   |  2 +-
>   arch/arm/boot/dts/stm32mp151.dtsi                  |  2 +-
>   4 files changed, 48 insertions(+), 33 deletions(-)
>   delete mode 100644 Documentation/devicetree/bindings/nvmem/st,stm32-romem.txt
>   create mode 100644 Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
> 

DT patches applied on stm32-next.

Thanks
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
