Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4C0184754
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 13:57:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5TCELIO2OKifekSsmwrOlpgvTxBKleacvonHvsjgDPA=; b=oiotB9IgRv1zwDxQ8xh0VTmdY
	hMZlfqccpczfbgqerktWxdGCfYM53+RLnqSsNtswtsu9S8QXsYjKb7vqHW3xWXQPy59SZNav8wpij
	oUFxiDhabT3QrsRLDbmUIXZ0BnwHgusrHrH6STTmKfn4EnDV5WPqZMdPYyxtIgNCSCUqR/oD6O3BO
	KnUAbo+f81wwhftAFT8trlugWyn86DvZ3SUK16zCdRcYSX/E/tL70ibh5/2PcRmtiQeLpMQGWeit4
	Oois8v15O4T4niBJcIhpkfm3tdhQwxerTTi3hq3SecNe7SPJrTZvWSSO0i4b/kQ24QPAEXkB5b5lb
	wG2iJufkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCjsM-0002DF-Rt; Fri, 13 Mar 2020 12:57:18 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCjsE-0002Ch-EC
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 12:57:12 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02DClKnA009589; Fri, 13 Mar 2020 13:56:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=dFQRbdwT/7f+gBH9+dyOD4FlWJJaQW4FMkJJu11OLHg=;
 b=c3WxFLMqs7WJqsERfVZuitaYbW6YG/rz6Wlt6hpiSsZZnlLZ+JgifiCNHbIprQhserIm
 tP/m9ZjN3RePvwqo8ERFVvpEUpoiHjMIWJOH4pYrCFvpZ2uNclrBkP+UWDbhZrsWgXE5
 eoxjwWwHOoUHpSa/IYt1IKBIeuMQE2Ci/Fklv6OVLafQ3ve1xCOhWyAskkde/1VEVF0a
 759VvPXETdaRqRwBwyNQsCnekzG690v6a5f9IuLc/fkeWKXpvrz2KA0YAGliAj0bEJDp
 kCxTGjTNP4h5JM84p3AqCBHRd7TYQBK3btDtIoI1plr9zojuJqRhqMYOSmrvywUmqZvY 7w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yqt838py1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 13 Mar 2020 13:56:56 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8696910003D;
 Fri, 13 Mar 2020 13:56:53 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 58CE72A88E3;
 Fri, 13 Mar 2020 13:56:53 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 13 Mar
 2020 13:56:52 +0100
Subject: Re: [PATCH v3 0/4] STM32 early console
To: Erwan Le Ray <erwan.leray@st.com>, Russell King <linux@armlinux.org.uk>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Linus Walleij <linus.walleij@linaro.org>, Olof Johansson <olof@lixom.net>
References: <20200203140425.26579-1-erwan.leray@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <a8776663-3951-c06a-8e22-66451c886818@st.com>
Date: Fri, 13 Mar 2020 13:56:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200203140425.26579-1-erwan.leray@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-13_04:2020-03-12,
 2020-03-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_055710_770049_EB42B212 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Clement Peron <peron.clem@gmail.com>, Gerald Baeza <gerald.baeza@st.com>,
 Nathan Huckleberry <nhuck15@gmail.com>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Erwan

On 2/3/20 3:04 PM, Erwan Le Ray wrote:
> Add UART instance configuration to STM32 F4 and F7 early console.
> Add STM32 H7 and MP1 early console support.
> 
> Changes in v3:
> - fix a missing condition for STM32MP1
>    
> Changes in v2:
> - split "[PATCH] ARM: debug: stm32: add UART early console configuration"
>    into separate patches as suggested by Clement into [1]
> 
> [1] https://lkml.org/lkml/2019/4/10/199
> 
> Erwan Le Ray (4):
>    ARM: debug: stm32: add UART early console configuration for STM32F4
>    ARM: debug: stm32: add UART early console configuration for STM32F7
>    ARM: debug: stm32: add UART early console support for STM32H7
>    ARM: debug: stm32: add UART early console support for STM32MP1
> 
>   arch/arm/Kconfig.debug         | 42 +++++++++++++++++++++++++++++-----
>   arch/arm/include/debug/stm32.S |  9 ++++----
>   2 files changed, 40 insertions(+), 11 deletions(-)
> 

Series applied on stm32-next.

Regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
