Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A1619A847
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 11:07:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sVJiLeKb1cJMXlxpZnl633n16VNRoJMqAnqaiIyIlvw=; b=glKlIs8bD0FFOfeM+JgfymSC3
	SNtgK6FzHoLUPxixL6kcutZCbfjwrjr0k92OpRzgH2Br3W4o/5sIAayFzl/jMNXvGY1s0XwewokOz
	r0F1HMJEBJtZux47WePZQbkruuZBpiIreZvp3fafmeRjAvYODnWDoOKE+pgmZ5SYNkf5atoIDZ4Nq
	lbJaDxBFw1DaGfcAENQiW4A8fAmuK8OaSCkiMZhqjfrha6iPwYl3ArDKvIab6xQDchDJIukx+Ky5/
	FJwjBhmk5WavhU2DgcxbwR+vfspCa/GoEmZJZhmKLwYbyL/wEWDJ0YI90YwNTrwbcLJ7+hdoX+eYz
	lIBNmjXRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJZL1-0001qF-O5; Wed, 01 Apr 2020 09:07:07 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZKu-0001pW-GW
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 09:07:02 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03192xIJ005415; Wed, 1 Apr 2020 11:06:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=pUAdDfLled6exIm4UEQprNwjkf9bN4q2badOB4c9Qto=;
 b=L8xIjD8MknhHPdT0rYy8MHIoHmlmI1rzGA91bzR/kSpQLIGCIB++70TZcLOkQUAL/5f0
 wqt3IXVbg6WG2RPqtp3KtS1Weiv5FeWtwBXDcAUFCHKxaU9l9sjyUyL6W7l+ZllirYON
 liszlxjdtfxgpQ7kykCuFWC68Nxmh4YOlO6EL/Bijt0jcEGi9nvT1YfRw99xQlGZBceR
 hmpxZnTGkwAiQ/joABX5oyyc/z57neg/RZClbtgP2xzrA/pmufv0AsHXxBGWu/UOGA4a
 yPqmudtlIVqLZ87RjHjqjpYfNcxtAzTclnzgSNos+qbSaV6yeuSx2Tz/RcNxWZm34uz+ RQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 301xbmm2xc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 01 Apr 2020 11:06:50 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7597310002A;
 Wed,  1 Apr 2020 11:06:44 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5871221D6FA;
 Wed,  1 Apr 2020 11:06:44 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.46) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 1 Apr
 2020 11:06:39 +0200
Subject: Re: [PATCH v2 8/8] dt-bindings: arm: stm32: document
 lxa,stm32mp157c-mc1 compatible
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>
References: <20200326220213.28632-1-a.fatoum@pengutronix.de>
 <20200326220213.28632-8-a.fatoum@pengutronix.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <c0be1d2f-8e89-6786-86be-0f851e8b3441@st.com>
Date: Wed, 1 Apr 2020 11:06:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200326220213.28632-8-a.fatoum@pengutronix.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-03-31_07:2020-03-31,
 2020-03-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_020700_913046_A6BF6375 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, kernel@pengutronix.de,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ahmad

On 3/26/20 11:02 PM, Ahmad Fatoum wrote:
> Document the STM32MP157 based Linux Automation MC-1 device tree
> compatible.
> 
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

Sorry my mailer has lost the cover-letter mail, so consider I respond to 
to the whole series.

Thanks for adding a new stm32 board and more importantly to have 
standardize pins name, I appreciate it.

Series applied on stm32-next.

Regards
Alex


>   v1 -> v2:
>   - Added Rob's Ack
> ---
>   Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> index 1fcf306bd2d1..71ea3f04ab9c 100644
> --- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> +++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> @@ -38,6 +38,7 @@ properties:
>         - items:
>             - enum:
>                 - arrow,stm32mp157a-avenger96 # Avenger96
> +              - lxa,stm32mp157c-mc1
>                 - st,stm32mp157c-ed1
>                 - st,stm32mp157a-dk1
>                 - st,stm32mp157c-dk2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
