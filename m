Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3100AE4821
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 12:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hsqJgKZbhrk6LL1lprsfjbxhtgjWDLKlvE6rY9roWeU=; b=Xcji3rNEaHVHA7msDhvuG6L3t
	AIOJ9wVgIfBlilYxf39t7qyhNE0QFyT+OpN3tI1JUiLd7Y32YwxrSnkDiLCQCtT3uyRliCZcjibSU
	Sy2ImMcKH/y9mRuELZ9vKj5HiO4FRe2KK0LfoAHGuobP29lNlbIcUHN/gYMon57e4SLZDsZPs1QJw
	LMLY3gP83bVA5ikvgXMys5sxOgPhWOxhWxLKUABSJnXxxRxFTGlgeU7Zhb14H993OWLjTfQMrZY2S
	uABFgUyMieabEd3orSkChlNtbOyvf43lFzFvvsLhjgl4Ttc6wXpkQ9xdd/6E2sChQrji8V+EnY7iZ
	TO+KfzSPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNwU0-0002GK-5c; Fri, 25 Oct 2019 10:06:12 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNwTj-0002FR-5R
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 10:05:56 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9P9kQvn028292; Fri, 25 Oct 2019 12:05:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=n2MLxqp2NxcGExWiPF20RRSPXekUyzL4iy5WQSoD2ZM=;
 b=aYjOYOL3VyFlDt4YRVhrG0Ose2rOahNd/PoPgFPdENXNzTxlEdUu371CqoRQ9hG5cmsB
 leolSO7dQizetVC1Nda94JXsHhjziZ9oXJj6CpwDX5PreSJF3QBlBc0z2ZM9ZUtbX6vt
 XVnq+eH6posVSvGYdHQs/mgVnKeq33k3Pk6EkLsT9Xa3JEqexe5xhvZ1ECvno6Z/QMNw
 ERVhq+3np8T4SKWrnCDI4h34jbHCnypL0aXr77N0SOZB60TTU1hQKTLbEAgOKAE1Cesy
 xdn1FotV/GUiGEx0cxf6IzV54RixaxZyiAmmRAFCFfq81qEqXhQNompRdW2jJQpOvsv1 rg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vt9s4f2ep-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 25 Oct 2019 12:05:49 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6840B100039;
 Fri, 25 Oct 2019 12:05:49 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 558392C2E8B;
 Fri, 25 Oct 2019 12:05:49 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.45) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 25 Oct
 2019 12:05:48 +0200
Subject: Re: [PATCH] ARM: dts: stm32f469: remove useless dma-ranges property
To: Benjamin Gaignard <benjamin.gaignard@st.com>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>
References: <20191015123058.14669-1-benjamin.gaignard@st.com>
 <20191015123058.14669-2-benjamin.gaignard@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <dd501071-98b1-9635-ac2e-810b60aa892a@st.com>
Date: Fri, 25 Oct 2019 12:05:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191015123058.14669-2-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-25_05:2019-10-23,2019-10-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_030555_515638_98985866 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Benjamin

On 10/15/19 2:30 PM, Benjamin Gaignard wrote:
> Remove dma-ranges from ltdc node since it is already set
> on bus node.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>   arch/arm/boot/dts/stm32f469-disco.dts | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/stm32f469-disco.dts b/arch/arm/boot/dts/stm32f469-disco.dts
> index a3ff04940aec..c928126d5b7e 100644
> --- a/arch/arm/boot/dts/stm32f469-disco.dts
> +++ b/arch/arm/boot/dts/stm32f469-disco.dts
> @@ -166,7 +166,6 @@
>   };
>   
>   &ltdc {
> -	dma-ranges;
>   	status = "okay";
>   
>   	port {
>

Applied on stm32-next. For the next time commit header has to be 
formatted like that:

ARM: dts: stm32: .....

Thanks.
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
