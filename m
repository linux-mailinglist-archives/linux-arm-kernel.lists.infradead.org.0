Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DA7146504
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 10:53:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84B7oJHEPjFVSfdgimRXci8wlEKUfZAxgsg0W5VJ0Uk=; b=EGNZovOaVuNTSe
	/RUXXyztlnlZBoHfDqwe18JfW/kzYoDRSz2SJ6wQQzy4n0UoCYIKjeiZAHdm03jiXLVTBu7ubD1ox
	3aJLbyC4Ic5/CYku73zrWffYBN6448xYfES0mECoJZCgn2xG6VwWrSGkiDuhkcfEU9pKzZxgZH4DU
	kPFWHe0aYKOAlGEp/0X0mPaZWl1HxsnHb0fZIahxaJ6dQKzgLgxszN8zsFZNTFwfCgDB3UlLNi8Lw
	DYZ1xe+50ZQwxvV0VfSh5TLdn0rY5l3TNT246sIMvUTfUnn4ZR9V+cKw+XE0x5AppP9Fg6eSmIDva
	qURUTdr9ejRzteup1YNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuZAk-00028R-2l; Thu, 23 Jan 2020 09:53:10 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuZAb-00027C-FW
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 09:53:02 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00N9qYtJ031103; Thu, 23 Jan 2020 10:52:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=VkExEA1zSYkkIawwysFPM2UtiIcmbIryXd4T7Fqwhqw=;
 b=MKEoa9U0xc75iuaGbBbbosWCuyYadzLqTILEEEWqRcR75ATLSLHrcIPj9jX3T8S+7Caw
 JmAGtOoXoO4X2wuLUhigGLBBJ5Zf+stX01D6TTxpNSJV8s2zvRkewk40do/n7n/JyFB5
 qHsa85WpdQlKxGfbNjNiwBGOlzhqXj6Db3pU5sVeToX7K5FVmupCmp8TMGncU97steV3
 3DixSsYcnRpM66nh6SWwaSojdJ+iYU364qANn0FVN3ZGPa5RGj1Rp6md+3Xp2gHKM34Q
 ktOkVFEL0iLiZKL6pg4okiLsZ2Vjb437LIkpw2FX7cnIsx46QlfLFUJWYlt48SQQgq3e 8g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xkrp2hep3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 23 Jan 2020 10:52:56 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 93FF310002A;
 Thu, 23 Jan 2020 10:52:51 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 83128220301;
 Thu, 23 Jan 2020 10:52:51 +0100 (CET)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 23 Jan
 2020 10:52:50 +0100
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Thu, 23 Jan 2020 10:52:50 +0100
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
Subject: Re: [PATCH] media: platform: stm32: defer probe for auxiliary clock
Thread-Topic: [PATCH] media: platform: stm32: defer probe for auxiliary clock
Thread-Index: AQHV0ESzDelCfuJRrECy+dIwI+lKx6f39HIA
Date: Thu, 23 Jan 2020 09:52:50 +0000
Message-ID: <e7573c97-7c88-bb3d-1bfb-dea92f146da9@st.com>
References: <1579602152-7432-1-git-send-email-yannick.fertre@st.com>
In-Reply-To: <1579602152-7432-1-git-send-email-yannick.fertre@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
Content-ID: <034509C68120DF4483F7B9EB6FAA225C@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-23_01:2020-01-23,
 2020-01-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_015301_820216_3393C524 
X-CRM114-Status: GOOD (  20.19  )
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
> Change stm32-cec driver to defer probe when auxiliary clock
> "hdmi-cec" is registered in the system not has not been probed yet.
> 
> Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
> ---
>   drivers/media/platform/stm32/stm32-cec.c | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/stm32/stm32-cec.c b/drivers/media/platform/stm32/stm32-cec.c
> index 8a86b2c..543c9ec 100644
> --- a/drivers/media/platform/stm32/stm32-cec.c
> +++ b/drivers/media/platform/stm32/stm32-cec.c
> @@ -302,10 +302,14 @@ static int stm32_cec_probe(struct platform_device *pdev)
>   	}
>   
>   	cec->clk_hdmi_cec = devm_clk_get(&pdev->dev, "hdmi-cec");
> +	if (IS_ERR(cec->clk_hdmi_cec) &&
> +	    PTR_ERR(cec->clk_hdmi_cec) == -EPROBE_DEFER)
> +			return -EPROBE_DEFER;
> +
>   	if (!IS_ERR(cec->clk_hdmi_cec)) {
>   		ret = clk_prepare(cec->clk_hdmi_cec);
>   		if (ret) {
> -			dev_err(&pdev->dev, "Unable to prepare hdmi-cec clock\n");
> +			dev_err(&pdev->dev, "Can't prepare hdmi-cec clock\n");
>   			return ret;
>   		}
>   	}
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
