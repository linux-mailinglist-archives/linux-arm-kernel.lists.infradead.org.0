Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E7CFDB8E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 11:39:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Oc1EfsdmaxcvdpH2fDol5m81iiVmggyw/gA7W2PEqOI=; b=nOyY+++ZYkS6cskD+NIpKrB/h
	2daTGAtRd/6I1NmUyYA7JIM+xtN/L7AO4Xa7CHu5m3BdUvpjHQw9xTV336pyOIVJLUjibIly+n+WI
	n2jnoqZZU3VjmNRSTzQMUl5qvrB7Xt4x2Ik/BMvDLF+Y4Khm4jI+vwTn2JIEjx/fvMOaljzpKJ4Lr
	BLixMcP6wXxqkHsgafqp+anS7aLIkD8aSx2CJCPhcLVR7N/2BIn0lDrC7rahvCFKUojVcMOLvQlzb
	fhSfzLKeiu/03CwsIkIJ6CztSxAo92hJma+0EzQJFlZ8FMu/TUPJPL2EvQd7mI5STLvpb7DhgqEV2
	X9ejiLUxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVZ08-00081N-MT; Fri, 15 Nov 2019 10:38:52 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVYzn-0007wW-Lq
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 10:38:33 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAFAVxM7004303; Fri, 15 Nov 2019 11:38:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=uNLK9FoUA5Uss+jpUkWda+7Twp6fHYrxsRWlK1dQc7k=;
 b=b3/P3/YJdE5ABYvTu4M/8G5LWbSOHe7NVUIOh0G6nfztZC2PUedEHt9lGZYO/z64cCcA
 jrm3/jIuGq4rDQe+ktiqgc9KTUcQnvvkQ1/3gwVy8hka0bhUsn+LOUBN83tClhNhnljR
 F8x2F+LRJhDcAD8usv0nP8Wef3IylQHfO9sNQ6tWRQVJ7yIOp2qe3LzUOn2N14raSrdv
 UcKQ5jyfn1d5xRbd+9ufED+1xMcpV1fhTm+akC8aFkpxOk3pr8i1JWFFRWoLJwZjEK0B
 btlEIBCmV6qufGQFex6GFCRmiREZQWS/twMyWO5Pvff6FQyFn9aKRp+1dZxo7+wJz74g 5A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w7psbkg4j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 15 Nov 2019 11:38:26 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CB3C110002A;
 Fri, 15 Nov 2019 11:38:25 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BC5902B3F87;
 Fri, 15 Nov 2019 11:38:25 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 15 Nov
 2019 11:38:25 +0100
Subject: Re: [PATCH] ARM: dts: stm32: add timers counter support on stm32mp157c
To: Fabrice Gasnier <fabrice.gasnier@st.com>
References: <1573031484-18701-1-git-send-email-fabrice.gasnier@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <64bc558b-d0d2-5477-7b6e-3399fbcd5bed@st.com>
Date: Fri, 15 Nov 2019 11:38:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1573031484-18701-1-git-send-email-fabrice.gasnier@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG6NODE1.st.com (10.75.127.16) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-15_02:2019-11-15,2019-11-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_023832_046256_13A2536E 
X-CRM114-Status: GOOD (  15.72  )
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

On 11/6/19 10:11 AM, Fabrice Gasnier wrote:
> Add counter support on stm32mp157c that provides quadrature encoder on
> timers 1, 2, 3, 4, 5 and 8.
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
>   arch/arm/boot/dts/stm32mp157c.dtsi | 30 ++++++++++++++++++++++++++++++
>   1 file changed, 30 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi b/arch/arm/boot/dts/stm32mp157c.dtsi
> index e0f3d4c6..a4ca23c 100644
> --- a/arch/arm/boot/dts/stm32mp157c.dtsi
> +++ b/arch/arm/boot/dts/stm32mp157c.dtsi
> @@ -148,6 +148,11 @@

Applied on stm32-next.

Thanks.
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
