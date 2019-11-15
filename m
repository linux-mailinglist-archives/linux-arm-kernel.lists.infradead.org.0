Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B88D5FDE98
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 14:10:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BAndgcxtNjHcQqJcA2wdgSdJ52vVpxSh55YrsHSD12U=; b=O6ycR7pbPuEPUI8hqXKpuY7Uf
	F6IDVLMyRGsAKKc3IIE5ATBMBr0O2UmURjl877ZIVyOxI+Fze2xzMjR1/K7STHtDnuxp2+PPEnkON
	pWxYjML0elxJNCYkD8MM7Fke9nb5ktBV6681fJEmXkSebOR/iVtJTZuue9OXgR0pPylSfZNB+eMjG
	eV7rrJSv+ixxqg1k1z/2M0uCEwcSLsgfUZRAWwyAevTeT0NgFwMtLptIwBGn3zzJwFUteVfct1E9K
	RC6JJCu/zVXEPQXWs8jAtufTfL/GOIf8dNLDtJiUZjvQgDkSocM2YCNI6CH6d2V/xw69mw3MJw4J4
	vcZA/UVnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVbMz-0005tt-Sf; Fri, 15 Nov 2019 13:10:37 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVbMp-0005tW-Fx
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 13:10:29 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAFD2Pcu022731; Fri, 15 Nov 2019 14:10:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=9rmwto7fOBN39SiXRHKuxkPMdmv3HZGhG7BMLDLWBXs=;
 b=it38MDpuYDLhG6jamaFeoXmLhqluiQEOXdJsj4ujecEVyW1onH6GHGQ0bekhkvwenlC4
 07uZCgXKkx0GLS3DG1SG02fFxmzQtNHs9MuK4Pz5TXoWmcKAbNlOHN2BCJldDEnqfjYb
 uXeHsmFKaavG/nAr+2Y49GmfOCN/KXhigkGF+vFFfxlKV30IEGZpMmkEORjZgaCbBnBK
 7T+hNMNL/xLdxrYWhIiwegLkhRGLrADw5ZA0YRiMyk6vGHQCXaMwJpJbndNQoM4uRsik
 CGA/8J750EcqctHJBrNmWyQdDKL1skR0tht2fjjbDjpTADlGZIlPuTmLczGgdHAu7GfY 3g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w7psbm8hg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 15 Nov 2019 14:10:20 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id ED50910002A;
 Fri, 15 Nov 2019 14:10:19 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D6A6F2BC106;
 Fri, 15 Nov 2019 14:10:19 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 15 Nov
 2019 14:10:19 +0100
Subject: Re: [PATCH 0/2] Add support for ADC on stm32mp157c-ed1
To: Fabrice Gasnier <fabrice.gasnier@st.com>
References: <1573231059-395-1-git-send-email-fabrice.gasnier@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <54a1b172-df71-0fec-cd40-e974dc70af34@st.com>
Date: Fri, 15 Nov 2019 14:10:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1573231059-395-1-git-send-email-fabrice.gasnier@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-15_03:2019-11-15,2019-11-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_051027_995531_A4730C88 
X-CRM114-Status: GOOD (  15.65  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabrice

On 11/8/19 5:37 PM, Fabrice Gasnier wrote:
> This series adds support for digital-to-analog converter on
> stm32mp157c-ed1 board:
> - define pins that can be used for ADC
> - configure ADC channels to use these
> 
> Fabrice Gasnier (2):
>    ARM: dts: stm32: add ADC pins used for stm32mp157c-ed1
>    ARM: dts: stm32: add ADC support to stm32mp157c-ed1
> 
>   arch/arm/boot/dts/stm32mp157-pinctrl.dtsi |  6 ++++++
>   arch/arm/boot/dts/stm32mp157c-ed1.dts     | 16 ++++++++++++++++
>   2 files changed, 22 insertions(+)
> 
Series applied on stm32-next.

Regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
