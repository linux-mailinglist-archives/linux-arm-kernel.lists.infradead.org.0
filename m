Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB906190607
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 08:05:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QC+jAf2xSJTmtCtmVdR/SnHZQLvVpOhC9etC7Sjrkec=; b=ih8JpfIxv8ZNG3
	HQ3H/dfOeuAMHFnjORFNmur0U57onNVf+UFC2yeG1owtfINhYHMBs0ezYny0JBA2M8TrF0H0SmQjd
	+mM/sQxCZbz1QSyR6+jNIKyF9DwK1nGqRXmaJGaI5TXDAzPs5ehcCJPoNZ79bTFPuYS6XAK/5SlaP
	h4c4yzMiJ6fkLJXRiY2jfaOJ4ech5d1tWsomUm2ls5mVKDpTXnr3jojccKLeQayOFPWZc7cxiZ+2S
	Ji4I3xjYFtjy0KcoXJALIfNhuRN2aH9FB4bfVU651pNJllwPZ0FmBsBMSz+ksCA0lEoVVPnJc5hTB
	Q2G5ye8GnrvCmtHp2pIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGdco-0002YV-70; Tue, 24 Mar 2020 07:05:22 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGdch-0002Xo-Dr
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 07:05:17 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02O6w7UW031495; Tue, 24 Mar 2020 08:04:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=7wFcBKQjS8GhVVGG87TFgIBhk0ZNc73e9zHBQoR6jPY=;
 b=H+KIEHyRnN+J5BtxQqblKuhxxdXZRxg8buLFoEaG1of1OIxaFRRjzifDhHv4j0dllHti
 J4EP0mjdblnV1wdlHVKmcLKYIorYddmi4mRYNaQfbYgYXTDEl5WZh7XSdAts4eK2TIGo
 McPZzs5N073ymvfOtiH1iRCxlxNQBJqcZEyxj238yO8QAe24rhIgX9iO2iv44IPWLgnQ
 7O5VAgMFvfs3boxtLTORHZA1rvl9BPaZMxozdM6gTgRXufBnd+sxFjADdLZZ5NzWLow4
 Zfe4kFzEOaeFAcv/dnWUPOt96kfZiqHMxKzGjuFXwqi1sVF3JwmeewCcyEg7ak2NFA/g DQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yw8xdx06x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 24 Mar 2020 08:04:53 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2CEB4100050;
 Tue, 24 Mar 2020 08:04:50 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id F10752123A8;
 Tue, 24 Mar 2020 08:04:49 +0100 (CET)
Received: from SFHDAG5NODE3.st.com (10.75.127.15) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 24 Mar
 2020 08:04:49 +0100
Received: from SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47]) by
 SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47%20]) with mapi id
 15.00.1473.003; Tue, 24 Mar 2020 08:04:49 +0100
From: Christophe ROULLIER <christophe.roullier@st.com>
To: "davem@davemloft.net" <davem@davemloft.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "martin.blumenstingl@googlemail.com" <martin.blumenstingl@googlemail.com>,
 "alexandru.ardelean@analog.com" <alexandru.ardelean@analog.com>,
 "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>, Alexandre TORGUE
 <alexandre.torgue@st.com>
Subject: Re: [PATCHv2 0/2] Convert stm32 dwmac to DT schema
Thread-Topic: [PATCHv2 0/2] Convert stm32 dwmac to DT schema
Thread-Index: AQHV/G8jyopfPfKg2U20W1fFmsf4ZahXS1cA
Date: Tue, 24 Mar 2020 07:04:49 +0000
Message-ID: <ceaf3163-7387-aa2a-6905-9d4faf92fc93@st.com>
References: <20200317151706.25810-1-christophe.roullier@st.com>
In-Reply-To: <20200317151706.25810-1-christophe.roullier@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
Content-ID: <9BE064A5AA0DF74DB1E0A60AD74FCA3B@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-24_01:2020-03-23,
 2020-03-24 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_000515_916335_6655F2E9 
X-CRM114-Status: GOOD (  14.12  )
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Gentle reminder

Thanks in advance.
Christophe.

On 17/03/2020 16:17, Christophe Roullier wrote:
> Convert stm32 dwmac to DT schema
>
> Christophe Roullier (2):
>    dt-bindings: net: dwmac: increase 'maxItems' for 'clocks',
>      'clock-names' properties
>    dt-bindings: net: dwmac: Convert stm32 dwmac to DT schema
>
> v1->v2:
> update from Rob (solve checkpatch errors with trailing WS,
> rename "Example", Wrap lines)
>
>   .../devicetree/bindings/net/snps,dwmac.yaml   |   8 +-
>   .../devicetree/bindings/net/stm32-dwmac.txt   |  44 -----
>   .../devicetree/bindings/net/stm32-dwmac.yaml  | 160 ++++++++++++++++++
>   3 files changed, 167 insertions(+), 45 deletions(-)
>   delete mode 100644 Documentation/devicetree/bindings/net/stm32-dwmac.txt
>   create mode 100644 Documentation/devicetree/bindings/net/stm32-dwmac.yaml
>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
