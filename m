Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4793FDE4E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 10:50:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IJdD9ToGsSwPK0IEYI4bMmW2rIYh+1gaetiHYyfAxpw=; b=imFVCnggkYul+h
	I6vp8wvE1ftDmBnSSo1/KukLnGdKhsAOGfnu2qP538OqhWS4F5BWFdkBMb76u5vAoTz/NHDmSVshJ
	zCBXpTCjvGCWAKigI5C0tSGZSC/VcLVundznce9lwJ0WUiuKRuXOEB0Zi2cv0mwJ8y4ApD+J5SnWF
	ny3D0NVg3fhJ4+db67LSLljW8+O0BEUavLW70lzu/H17iabqThO4iud3yDtLHgFBwBliuIWUCXet1
	w0XDAAz6q/OeAYBrsxg5S/nskdrcWrQSGZubCMedOvWoHf9q7zBTi9OLNWvJydsGiPjgzwt0aUDyR
	vg313SpETVQU8kBVwang==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL1zR-00067n-OS; Mon, 29 Apr 2019 08:50:21 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL1zJ-0004tv-Db
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 08:50:15 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x3T8fTMS007712; Mon, 29 Apr 2019 10:49:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=i2CLqYU4GwrLxCYnOOSir1J49uaIFg3QwOiHNqW/DMI=;
 b=mLocYcDosabWj+1ZZh/jun41Uyto0EFSNoSUHIPb23+2+As++SIBKc1XCDhALb+zqDa2
 cSP9Zxa4+v5fc8mUkzRKGjdnDvPHpVnxPU/s7Hj14MIRVO9bYppDfLj3SLKjZMYQOzSl
 YyaN9e2ThRYO7mVt/9QXKLbKvUY/006FNSdAIXnDZUWjUeyGACIgFUfyJ/GcxjKAWirl
 M1TV7To33skxQtCTC5PF1Ftj0RTyQ6jISnjkjRm26PtDW51mHngz79hKp4I2V2mIenE4
 RVQ/pazP9N7xWy8eAuw6v9m6ut6bbWAa5S8kU8lZKFxs096AINP87EeQ4+rznfyu08s6 Fg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2s4cutu1mb-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 29 Apr 2019 10:49:51 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 69BB946;
 Mon, 29 Apr 2019 08:49:40 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag7node2.st.com [10.75.127.20])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 30A82139B;
 Mon, 29 Apr 2019 08:49:40 +0000 (GMT)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG7NODE2.st.com
 (10.75.127.20) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 29 Apr
 2019 10:49:39 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Mon, 29 Apr 2019 10:49:39 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: "broonie@kernel.org" <broonie@kernel.org>, "robh@kernel.org"
 <robh@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>
Subject: Re: [RESEND PATCH 1/7] devicetree: bindings: Document domains
 controller bindings
Thread-Topic: [RESEND PATCH 1/7] devicetree: bindings: Document domains
 controller bindings
Thread-Index: AQHU3XI+crMGE3C/8EqSA6+xEWAscaZS9IgA
Date: Mon, 29 Apr 2019 08:49:39 +0000
Message-ID: <dbb7440f-f055-6ff3-d367-3435c3c34d89@st.com>
References: <20190318100605.29120-1-benjamin.gaignard@st.com>
 <20190318100605.29120-2-benjamin.gaignard@st.com>
In-Reply-To: <20190318100605.29120-2-benjamin.gaignard@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <06E79A3F4E1BA74194AF26EC2207345D@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-04-29_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_015014_014504_49B98879 
X-CRM114-Status: GOOD (  24.79  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.8 KHOP_DYNAMIC           Relay looks like a dynamic address
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
Cc: "benjamin.gaignard@linaro.org" <benjamin.gaignard@linaro.org>, Loic
 PALLARDY <loic.pallardy@st.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 3/18/19 11:05 AM, Benjamin Gaignard wrote:
> Document commons domains controller bindings for controller
> and client devices.
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>

Hi Rob,

In the first version of this series you have asked me to rework the 
framework description.
Does this v2 feel better for you ?

Benjamin

> ---
>   .../bindings/bus/domains/domainsctrl.txt           | 55 ++++++++++++++++++++++
>   1 file changed, 55 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/bus/domains/domainsctrl.txt
>
> diff --git a/Documentation/devicetree/bindings/bus/domains/domainsctrl.txt b/Documentation/devicetree/bindings/bus/domains/domainsctrl.txt
> new file mode 100644
> index 000000000000..f82e5e11ea64
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/bus/domains/domainsctrl.txt
> @@ -0,0 +1,55 @@
> +Common Domains Controller bindings properties
> +
> +Bus domains controllers allow to divided system on chip into multiple domains
> +that can be used to select by who hardware blocks could be accessed.
> +A domain could be a cluster of CPUs (or coprocessors), a range of addresses or
> +a group of hardware blocks.
> +
> +This device tree bindings can be used to bind bus domain consumer devices with
> +their bus domains provided by bus domains controllers. A bus domain provider
> +can be represented by any node in the device tree and can provide one or more
> +bus domains. A consumer node can refer to the provider by a phandle and a set
> +of phandle arguments of length specified by the #domainctrl-cells property in
> +the bus domain provider node.
> +
> +==Bus domain provider==
> +
> +Required properties:
> +- #domainctrl-cells	: Number of cells in a bus domain specifier;
> +			  Can be any value as specified by device tree binding
> +			  documentation of a particular provider.
> +
> +==Bus domain consumer==
> +
> +Required properties:
> +- domainsctrl-X		: A list of bus domain specifiers, as defined by
> +			  bindings of the bus domain controller that is the
> +			  bus domain provider.
> +
> +Optional properties:
> +- domainsctrl-names	: A list of bus domain name string sorted in the same
> +			  order as the domainsctrl-X proprerties. Consumer
> +			  drivers will use domainsctrl-names to match bus
> +			  domains with bus domains specifiers.
> +			  Note that "default" and "unbind" are reserved names
> +			  used by the framework.
> +
> +Example of usage with:
> +- a domains controller with a 2 parameters cell
> +- a domains controller with a 3 parameters cell
> +- a client device node using the both controllers and 2 configurations
> +  named "default" and "unbind"
> +
> +ctrl0: ctrl@0 {
> +	#domainctrl-cells = <2>;
> +};
> +
> +ctrl1: ctrl@1 {
> +	#domainctrl-cells = <3>;
> +};
> +
> +foo@0 {
> +	domains-names = "default", "unbind";
> +	domainctrl-0 = <&ctrl0 1 2>, <&ctrl1 3 4 5>;
> +	domainctrl-1 = <&ctrl0 6 7>, <&ctrl1 8 9 0>;
> +};
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
