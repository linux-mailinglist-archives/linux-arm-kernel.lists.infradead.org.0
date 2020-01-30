Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2E414DC05
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 14:33:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8asNTRV/lk1kvAAeDAz4gtgtkD/QLPSYynoDCsgrLXI=; b=kweESG8owJnQ83
	Qr3C/MAd7Cicy+aYRcyspUB4xTQ53lGVUBW/7/ZWAKwhD+ee0QnhnjuKWfrDo5Pp8OlI9eRwdyVes
	ZJ2S77l3lecixFBZCg17+AHUAIgshRX6fqbOFxUTDYQLEATsyoAco/EAsxnlJMwwoU6fBVDQTwvLi
	BP2iflSRihj3RWeU6AZxRWX5LyLQoTll5Ap/PVNDDIvVlju2iHwF0Lte780p+kMAYwZHu1N2KNW/q
	XmKYiSAOXFkp6URUcSieD/JqrFfcp33wUViu75ldaerFSZCFput3AHQlNPz1gtyX03BWAAlXjBmBH
	t/yuPMW/LXX5G2bfWAzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix9x1-0003ez-0V; Thu, 30 Jan 2020 13:33:43 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix9ti-00083W-PH
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 13:30:26 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00UDNhRE005759; Thu, 30 Jan 2020 14:30:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=DDE7wRVrKC8L3nY1nmBlLG8DjibQ4CfnKv8w7/2QhPU=;
 b=T2ffEgEjN/DMXOY2HgMx42+9Qeuasz4Zl5qAECuKJeXBe0JiI+Z5YfCa6AouqnQm5mcv
 ZlHUuDE/xzlUlF/DiZhmpY1vNaS9E7RbPuNIFaJCYKkjeJtpXt/OvtaDohE362vHhGKJ
 40fribYB498l3vlZFqz/qoTfwcnfgFffuuOdUWnwm0DPOO+NPunxz41cKYRroq3qbiVD
 4x8DLE4Ji32iPI2wG7F6I319uTcRJD7Xqc+4oQWEoUA6hllvmW8T6IYged0JrXW72AAv
 S9izNaMquA24kcdPLuuLXzgw8c9RRaoauvVBwpyKL/Yba1LdVLzi+8EkQGV5YqMA+4Oo Dg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrbpb8sp2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 30 Jan 2020 14:30:10 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 21FCE10002A;
 Thu, 30 Jan 2020 14:30:05 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CA4BF2D5CFA;
 Thu, 30 Jan 2020 14:30:05 +0100 (CET)
Received: from SFHDAG5NODE3.st.com (10.75.127.15) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 30 Jan
 2020 14:30:05 +0100
Received: from SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47]) by
 SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47%20]) with mapi id
 15.00.1473.003; Thu, 30 Jan 2020 14:30:05 +0100
From: Christophe ROULLIER <christophe.roullier@st.com>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH 1/1] net: ethernet: stmmac: simplify phy modes management
 for stm32
Thread-Topic: [PATCH 1/1] net: ethernet: stmmac: simplify phy modes management
 for stm32
Thread-Index: AQHV1pIW1y791lwjMUusjpFyRZvewKgDJNKA
Date: Thu, 30 Jan 2020 13:30:05 +0000
Message-ID: <05adc7cc-19cb-7e6e-f6df-07ec8f5e841f@st.com>
References: <20200128083942.17823-1-christophe.roullier@st.com>
 <20200129.115131.1101786807458791369.davem@davemloft.net>
In-Reply-To: <20200129.115131.1101786807458791369.davem@davemloft.net>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
Content-ID: <C6EE503FF153424FB0ED17B9583F7CA4@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-30_03:2020-01-28,
 2020-01-30 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_053019_200765_8856051F 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Peppe CAVALLARO <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/29/20 11:51 AM, David Miller wrote:
> From: Christophe Roullier <christophe.roullier@st.com>
> Date: Tue, 28 Jan 2020 09:39:42 +0100
>
>> No new feature, just to simplify stm32 part to be easier to use.
>> Add by default all Ethernet clocks in DT, and activate or not in function
>> of phy mode, clock frequency, if property "st,ext-phyclk" is set or not.
>> Keep backward compatibility
>> -----------------------------------------------------------------------
>> |PHY_MODE | Normal | PHY wo crystal|   PHY wo crystal   |  No 125Mhz  |
>> |         |        |      25MHz    |        50MHz       |  from PHY   |
>> -----------------------------------------------------------------------
>> |  MII    |	 -    |     eth-ck    |       n/a          |	    n/a  |
>> |         |        | st,ext-phyclk |                    |             |
>> -----------------------------------------------------------------------
>> |  GMII   |	 -    |     eth-ck    |       n/a          |	    n/a  |
>> |         |        | st,ext-phyclk |                    |             |
>> -----------------------------------------------------------------------
>> | RGMII   |	 -    |     eth-ck    |       n/a          |      eth-ck  |
>> |         |        | st,ext-phyclk |                    |st,eth-clk-sel|
>> |         |        |               |                    |       or     |
>> |         |        |               |                    | st,ext-phyclk|
>> ------------------------------------------------------------------------
>> | RMII    |	 -    |     eth-ck    |      eth-ck        |	     n/a  |
>> |         |        | st,ext-phyclk | st,eth-ref-clk-sel |              |
>> |         |        |               | or st,ext-phyclk   |              |
>> ------------------------------------------------------------------------
>>
>> Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
> If anything, this is more of a cleanup, and therefore only appropriate for
> net-next when it opens back up.
Thanks David, It is not urgent, do you want that I re-push it with 
"PATCH net next" ?
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
