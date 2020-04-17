Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1761ADBC1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zh+uJmBWmdLWsAC5rU9TGFBBPX+ZjQeMw83eJsO2C/Q=; b=to0lpaSNl65ERZ
	YinE9WvorKeS9UfDSsag8M82EeSOjBaBAYTT1TF3eGPsp3THIw8q/Z/IUReDmaEC8Hhp/Z4+2gZKj
	a+beeXkhYPQpudg/pcOHtJrVXkED25d+u6iFYYnNzVskceIk1NOzAYIXHPwFabGiQ7ZPFY89ssCLe
	6+vgSGadEhqVUtKMsGaYOQrqnm3veQ1rFxA+NRDXJngoLnU51MIMXnEMKAwrqSrwtNOJe5mSAUkU+
	ME6PBPdeagcVIgb+kzWRhdXBW2z9Ac57aDclynbiPYTbzyn6YcbO33ZRHLNIA7TclWQ5rdq9VAcJV
	EMLTZkpgTTWkL/PRqPig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOid-0005Sx-Bk; Fri, 17 Apr 2020 10:59:35 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOiU-0005SD-OR
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 10:59:28 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03HAvcTt020241; Fri, 17 Apr 2020 12:59:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=1UoqmxcN2xm7+o3/rLjZ3PjuAvs4O6us+ArwhYCH4fo=;
 b=Ev4Oxbrk9KN78BIc4eXAhl/XXjLBk63APBtijsi6k01vO90Q4GblggozNpXJHwcyoL5N
 8HexTdpeE0AEQdulRfoaWbCEkcv5JQ1tapVNYIp9OdhYwnc7s+L014B5XvVJ2TpxYKUe
 FC/lwbQdqjoKjzbowUFRTrR8aY5kEstLiUGIpEQqNPWXVuM8T2GTaozPGnPSQMeea3L4
 tAZeSvSfJX6JRm1wGo4SdPEUGZ2sEjRtqou4N1m1m3WKY0diiXgS3jeIiW98F/Ga3xVP
 p9nUjh5+X5UDq+CtTSaaX32rnydz/6YWwtFPaaCYUWJF4vEbZK/S3qk8p7L67gS4l81Q pA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30dn8s8yw2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 17 Apr 2020 12:59:20 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2CC0D10002A;
 Fri, 17 Apr 2020 12:59:20 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1D05C2AC2CA;
 Fri, 17 Apr 2020 12:59:20 +0200 (CEST)
Received: from SFHDAG6NODE2.st.com (10.75.127.17) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 17 Apr
 2020 12:59:19 +0200
Received: from SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6]) by
 SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6%20]) with mapi id
 15.00.1347.000; Fri, 17 Apr 2020 12:59:19 +0200
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Arnd Bergmann <arnd@arndb.de>, "khilman@baylibre.com"
 <khilman@baylibre.com>, Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] STi DT update for v5.8 round 1
Thread-Topic: [GIT PULL] STi DT update for v5.8 round 1
Thread-Index: AQHWFKXGRE1MaIpH7Eq9IiX+E6fFPah9A6mA
Date: Fri, 17 Apr 2020 10:59:19 +0000
Message-ID: <546fb50c-3b71-f77d-f499-5c26e0b40d9c@st.com>
References: <6fd7974d-a5f2-f7cd-fa7a-d761fac75b3c@st.com>
In-Reply-To: <6fd7974d-a5f2-f7cd-fa7a-d761fac75b3c@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <7651BD43D6D92D4095BBBFC96510A12C@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-17_03:2020-04-17,
 2020-04-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_035927_079385_5941F5EC 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
Cc: Alain VOLMAT <alain.volmat@st.com>, "arm@kernel.org" <arm@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sorry

I have forgotten to add soc@kernel.org, i will resend this pull request

Patrice

On 4/17/20 12:48 PM, Patrice CHOTARD wrote:
> Hi Arnd, Olof, Kevin
>
> Please find STi dt update for v5.8 round 1:
>
>
> The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:
>
>   Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/pchotard/sti.git sti-dt-for-v5.8-round1
>
> for you to fetch changes up to 7f21a85085b7211ec1d1583d10912ad272ab76bc:
>
>   dts: arm: stih407-family: remove duplicated rng nodes (2020-04-17 10:17:54 +0200)
>
> ----------------------------------------------------------------
> STi DT fixes:
> - Remove duplicated rng node in stih407-family.dtsi
> - Fix complain about IRQ_TYPE_NONE usage in stih418.dtsi
>
> ----------------------------------------------------------------
> Alain Volmat (2):
>       dts: arm: stih418: Fix complain about IRQ_TYPE_NONE usage
>       dts: arm: stih407-family: remove duplicated rng nodes
>
>  arch/arm/boot/dts/stih407-family.dtsi | 14 --------------
>  arch/arm/boot/dts/stih418.dtsi        |  8 ++++----
>  2 files changed, 4 insertions(+), 18 deletions(-)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
