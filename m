Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9264C146514
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 10:53:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2pXvV64CWE7XNFmXQiqPENOws+L7zc1+zX5SPlEQxZo=; b=ni6EYLAXUn18S0
	ND9kM9SnlZp0hjbwe5+gAfG3m4fNGKjUkMr2o/0YK5E/d+cUCfg7cobGb55z3ArsupYJTvi4ndSRo
	P7fWNquAMxNafJMpQ723JJ5F1cx4/1mBxTfQl9Xc4hfR5gdhF3yHH/AWE5sOKuKegLZr4iGsgv5PI
	rzYDGo6krCWkHTjfNmKzmBDlx6X2lweL1Qm1PlrqginNjBq83u7wcLFN2LYR0UDRl3dLVGCOVO2TY
	eDYFg/BQ1lk9nHi2g3B/VlR/R9ZtyGslw3ssvv5Xij8k2YWof62IPZ7h4RHFvFDCkBr8sCT2+PqR9
	1aJF+qmaaPq7KKt0rz9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuZBD-0002PZ-8z; Thu, 23 Jan 2020 09:53:39 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuZB1-0002P9-QH
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 09:53:29 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00N9qXBO031074; Thu, 23 Jan 2020 10:53:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=jebCpCZZPKIum5p14EQM9vpinaAYlo2VjAoXb/u5ZBY=;
 b=MpyUX39+rEZepgTqjQAc6e5DadLTkm8Pu+rILybvdd5rHQF2t0mA9Ic48DJG4LiNj3Ln
 IffXiAW7mxZr3TH2XK6sq8GGyAr73LiYNJJWzzi/orPd9oXkyCKI7U4pwBLybOmyOiAe
 nw3p8KRMqaNmy0eFKOR+zREEUFNU5p8nmmRXIOal4NxELI4EQIz4g3dTBQwMETKJ5fGm
 XzcFb4loYanznOg8ZXJAEhaF7hClWIbGyhjogbGL/Ahdx+yrlHRk0q2vjem0/iJqomLl
 +AdxaavzF0TtrRWVLDbCEIUzvJfk+giqXHDsUmgT16QvlWPFm5VdGWa0mQkbABcZbsIZ Zg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xkrp2her6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 23 Jan 2020 10:53:23 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2EF31100038;
 Thu, 23 Jan 2020 10:53:20 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 18C3A220308;
 Thu, 23 Jan 2020 10:53:20 +0100 (CET)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 23 Jan
 2020 10:53:19 +0100
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Thu, 23 Jan 2020 10:53:19 +0100
From: Philippe CORNU <philippe.cornu@st.com>
To: Yannick FERTRE <yannick.fertre@st.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "Alexandre TORGUE" <alexandre.torgue@st.com>, Etienne CARRIERE
 <etienne.carriere@st.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] media: platform: stm32: don't print an error on probe
 deferral
Thread-Topic: [PATCH] media: platform: stm32: don't print an error on probe
 deferral
Thread-Index: AQHV0ES87tnRYSqWgkGOHCLoEwzT46f39JSA
Date: Thu, 23 Jan 2020 09:53:19 +0000
Message-ID: <a1b2d0b4-749e-71db-9e1a-9f784da9d729@st.com>
References: <1579602169-7484-1-git-send-email-yannick.fertre@st.com>
In-Reply-To: <1579602169-7484-1-git-send-email-yannick.fertre@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
Content-ID: <692E62893EDD6D4F9096E3ACEFF068B2@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-23_01:2020-01-23,
 2020-01-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_015328_150171_269A2669 
X-CRM114-Status: GOOD (  20.28  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dears Yannick & Etienne,
Thank you for your patch,

Reviewed-by: Philippe Cornu <philippe.cornu@st.com>

Philippe :-)

On 1/21/20 11:22 AM, Yannick Fertre wrote:
> From: Etienne Carriere <etienne.carriere@st.com>
> 
> Change stm32-cec driver to not print an error message when the
> device probe operation is deferred.
> 
> Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
> ---
>   drivers/media/platform/stm32/stm32-cec.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/stm32/stm32-cec.c b/drivers/media/platform/stm32/stm32-cec.c
> index 8a86b2c..9c137f1 100644
> --- a/drivers/media/platform/stm32/stm32-cec.c
> +++ b/drivers/media/platform/stm32/stm32-cec.c
> @@ -291,7 +291,9 @@ static int stm32_cec_probe(struct platform_device *pdev)
>   
>   	cec->clk_cec = devm_clk_get(&pdev->dev, "cec");
>   	if (IS_ERR(cec->clk_cec)) {
> -		dev_err(&pdev->dev, "Cannot get cec clock\n");
> +		if (PTR_ERR(cec->clk_cec) != -EPROBE_DEFER)
> +			dev_err(&pdev->dev, "Cannot get cec clock\n");
> +
>   		return PTR_ERR(cec->clk_cec);
>   	}
>   
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
