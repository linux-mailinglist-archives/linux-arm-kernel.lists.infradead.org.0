Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CE9CDCBB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 09:59:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XgrafasD2AmoxDyVB/4kMSzuBPwX5pLtb1OTEtclJW8=; b=s3uKTzAHi7Of2Q
	UVUzJY3NAlJlLa938xcRpzDm4ZiKAolcEW4LTo0wVqQo3ptc9o0P96iVWAAG7pOpPmoJyGhuZrkQ4
	2omMzLnyJvamK78hbRs66XdK972mnZtrMNotUUkzL2O0T2LH42EfnmQt6DURi2AtKU74aj6IVBDhI
	9m5ir/ZUityz0Bre4zY9+koJNAH9rmKsV76x7fyx24vlr7hnQg8lQRzN8pqesLm4hh0H4LZAy6C++
	HygtK5EgSiDsC0Fv7Mn2Sa19+NademIGZWBmiNcuAUJ+1OYSKJeA1s0cuDjl0wtDZsfuuI2WtTqEu
	VYgy+4wYuLMqP4ZmonBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHNvd-0003tp-4z; Mon, 07 Oct 2019 07:59:37 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHNvU-0003tD-RJ
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 07:59:31 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x977puUU029109; Mon, 7 Oct 2019 09:59:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=yKMmEygswSh+HSAhE4eO0vUK5Gb2tp6m+QiySpRhlDA=;
 b=Ds/ExFhLGTrIH1J+aJJ56QWtmGp0x6Yc2G8Vdx+0AJxoOhxNVt5Kbu1G7JgH+7yVtO7z
 fAC4+S8WSx6amgXdJOlV9e7eYYXgDzg7E+SHhoih6TNDHTkxSeexYpIasndpsnE5LUd9
 WTpPDntqbG8RmEa15EzGDGtUYmz0AVQVJrTPMCq41dGt7m71Is5rfdZ/GlXDwv/gBJQX
 C1uIsv1gFjaQwc+p7ZJrbDCDzbAhMyHBuUYjWkqVBpC1z71lZDsCf3qQ+bSkNQlmL6/X
 Umr56fNHUFBPGFw11cXs8ANDPv1bDPuwHPzKioB5Syd0Ac/kOMEH/sHi6TywHuodFcDx 0A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vej2p0ycj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 09:59:24 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2AB0610002A;
 Mon,  7 Oct 2019 09:59:24 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node2.st.com [10.75.127.14])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1E1DE2AF4DE;
 Mon,  7 Oct 2019 09:59:24 +0200 (CEST)
Received: from [10.48.1.171] (10.75.127.45) by SFHDAG5NODE2.st.com
 (10.75.127.14) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 7 Oct
 2019 09:59:23 +0200
Subject: Re: [PATCH] i2c: i2c-stm32f7: remove warning when compiling with W=1
To: Alain Volmat <alain.volmat@st.com>, <wsa@the-dreams.de>
References: <1570200954-17919-1-git-send-email-alain.volmat@st.com>
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
Message-ID: <a5093a73-ba62-ae37-10dc-3434c9da40f7@st.com>
Date: Mon, 7 Oct 2019 09:59:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1570200954-17919-1-git-send-email-alain.volmat@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG3NODE3.st.com (10.75.127.9) To SFHDAG5NODE2.st.com
 (10.75.127.14)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-07_01:2019-10-03,2019-10-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_005929_237220_2F3DEE5A 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alain

Fixes tag is missing in your patch.
[ i.e ==> Fixes: aeb068c57214 ("i2c: i2c-stm32f7: add driver") ]

Nonetheless patch only consists in removing a comment character ?

Thanks

On 10/4/19 4:55 PM, Alain Volmat wrote:
> Remove the following warning:
> 
> drivers/i2c/busses/i2c-stm32f7.c:315:
> warning: cannot understand function prototype:
> 'struct stm32f7_i2c_spec i2c_specs[] =
> 
> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> ---
>  drivers/i2c/busses/i2c-stm32f7.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
> index d36cf08..7aa4a47 100644
> --- a/drivers/i2c/busses/i2c-stm32f7.c
> +++ b/drivers/i2c/busses/i2c-stm32f7.c
> @@ -305,7 +305,7 @@ struct stm32f7_i2c_dev {
>  	struct regmap *regmap;
>  };
>  
> -/**
> +/*
>   * All these values are coming from I2C Specification, Version 6.0, 4th of
>   * April 2014.
>   *
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
