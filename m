Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC9CBAEA5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 09:47:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+quqhVwxJt0YO382g0PgYs3ZWZXSUGi9E9uY+mNsp5g=; b=d8QgTmOSsRt+Ja
	Q4+v8Lki0f/NaISwqUbXbrzVyOEribpNp6U62h0hUPMukNLSuiQb2XPNGypR4sMkVN+TW7IGdsZvD
	ItoHM4HUDnzBjz2pnQmPK9Or01/9ipZKSvMOcICyQHThiwiyjx3lZCVZSE69+qs4F42Bw8is2KCrF
	GLVIfp/z0Bs5ov0nf2+4AcyVEWzRdZ35Lg+ZxperBwJtS/fIY8fDP/WyMxQ0kvmRuztEIPn1uO0iq
	KaFS+9RZt4brqTuNSkdHbvOhwBsBQIcgxUkfS3GBgg+IaF511DA8JpjCO891JA2p2wmjeo+7T0UzK
	HYXfSf7ph3N4eksw122Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJ41-0004lx-79; Mon, 23 Sep 2019 07:47:17 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJ3L-0004lX-Tg
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 07:46:37 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8N7kLX5008073; Mon, 23 Sep 2019 09:46:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=muFugSp+nMiGuUFM8Ydv4P5jCcLUS1PXGumUiJ9fYxA=;
 b=a7JLNE1wVXNEV8KjtjTTVEVhIL8ZShLmdtT1eMfNxYlNXrMxcSbtgSE0JMrH7s+neC3M
 NAYFOOu7lltRqo5+8/4sL6mchTY6SoKoGWUSNZLBVsMMbd5AGqkEzr4+tWFYr1lcbqpX
 qOcKLyLuTuSNwj58JYOXZB6E5OtZp74MVnemb6rdLY/FnwGH/oqRR0Q+H1mvG2w1wrIi
 eOWjwk0W5s9NhBbinCbQG5Pa7bYP0d8clpwxYJCgPzw7g62OqeVjmd26xcOA2dzdYDUu
 87z5E8WsyhQlhHVEQLHrUAZlXMdZXCvA7+eMqEjKlT06x4tKkbwJJg8lIxRPPVMtu6Mo BQ== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2v59mwsytj-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 23 Sep 2019 09:46:22 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 65A2C4C;
 Mon, 23 Sep 2019 07:46:12 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag4node2.st.com [10.75.127.11])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BC97E2B13B3;
 Mon, 23 Sep 2019 09:46:11 +0200 (CEST)
Received: from SFHDAG5NODE3.st.com (10.75.127.15) by SFHDAG4NODE2.st.com
 (10.75.127.11) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 23 Sep
 2019 09:46:10 +0200
Received: from SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47]) by
 SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47%20]) with mapi id
 15.00.1473.003; Mon, 23 Sep 2019 09:46:11 +0200
From: Christophe ROULLIER <christophe.roullier@st.com>
To: Jakub Kicinski <jakub.kicinski@netronome.com>
Subject: Re: [PATCH 0/5] net: ethernet: stmmac: some fixes and optimization
Thread-Topic: [PATCH 0/5] net: ethernet: stmmac: some fixes and optimization
Thread-Index: AQHVceL3e0a57DJk3UajMeBpRhFzvw==
Date: Mon, 23 Sep 2019 07:46:11 +0000
Message-ID: <1d5dfc73-73e1-fe47-d1f6-9c24f9e5e532@st.com>
References: <20190920053817.13754-1-christophe.roullier@st.com>
 <20190922151257.51173d89@cakuba.netronome.com>
In-Reply-To: <20190922151257.51173d89@cakuba.netronome.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.49]
Content-ID: <83AB20E31971524C9CCD0202AF363D9C@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-23_02:2019-09-23,2019-09-23 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_004636_426025_365E70FC 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robh@kernel.org" <robh@kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "andrew@lunn.ch" <andrew@lunn.ch>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Peppe CAVALLARO <peppe.cavallaro@st.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jakub, all,

It is not urgent, no problem to wait next merge window (release 5.5)

For patch 1 and 3, it is improvement/cleanup because now syscfg clock is 
not mandatory (I put code backward compatible).

Regards,

Christophe

On 9/23/19 12:12 AM, Jakub Kicinski wrote:
> On Fri, 20 Sep 2019 07:38:12 +0200, Christophe Roullier wrote:
>> Some improvements (manage syscfg as optional clock, update slew rate of
>> ETH_MDIO pin, Enable gating of the MAC TX clock during TX low-power mode)
>> Fix warning build message when W=1
> There seems to be some new features/cleanups (or improvements as
> you say) here. Could you explain the negative impact not applying
> these changes will have? Patches 1 and 3 in particular.
>
> net-next is now closed [1], and will reopen some time after the merge
> window is over. For now we are only expecting fixes for the net tree.
>
> Could you (a) provide stronger motivation these changes are fixes; or
> (b) separate the fixes from improvements?
>
> Thank you!
>
> [1] https://www.kernel.org/doc/html/latest/networking/netdev-FAQ.html
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
