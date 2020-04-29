Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A58A91BE076
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 16:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e8uyFTeRAENHo6Z0lsN83WBl+rPDrrSwnzKgYux4EuU=; b=KGqYUBvdbdp2iI
	RUCwUnkkqvNJIeaWuP55QV8xlPVmxgVWtgfAFbwFqrjGRri+6xVzqyYE9eV+KJl7+Q1+I0b0c72ID
	z61rXBzChQuRCr/hFRIDNMfOuPrPIEb99OHL4ZSjyY3QIt5rKkgf9a7Ucef/nf9PhjTmx4j41+y0Q
	i0CYaPWNz3MLxwkbVNa9SIJ+kASDD1pQ6FwpRSSomsw+2VInqYHf0MeJJgVjyNgwzum+QwwmX6+qu
	7n4z5+hHcDtoUUxNHco1BPsMSTkuO/8WLXhLxV7L4dCFsh00nTWsLUEf6ycRlhufPqvFfobEXutPl
	aK70zgqymPxNBEtgXsaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTnUs-0000kU-Pz; Wed, 29 Apr 2020 14:15:34 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTnUh-0000ie-1f
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 14:15:24 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03TECkSd012368; Wed, 29 Apr 2020 16:15:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=date : from : to : cc :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=STMicroelectronics;
 bh=KqESSlTcD9ep4XnUlD+lwpTAnY9V9M5Pb1fKaGdwF+E=;
 b=q2fqv5Tvp2oHUASZ/Ov0TGv3/QmZn2wqRg4Nr+OyQeOvnaLUYzQw+FTZK44HRr/DZpg5
 99oc1sn5jnjkI/k+9t+k5A8HthlcWvDqhRxn3LtNLslE2OJOQIo+y9Odaa9+vyhoaGFX
 B9GtlssCs3Zrj50GOv158zmXPi9oXIzZpSzPWn11lV9dQBMyRKnpzG2WoZwRDh8b9n26
 TpT2JdBjZZQquwAN/L3IXEP/GqJ77PnRU9v0sEGg4C7I5qxL8ei/Cv9W6nX9JxQ3cXCr
 NDBQzNOw7Hfr7iKEa2kFep09P3b19u6diZXjtQyIacMsrLSrIZxSNR7kc7H+ycWlKS93 Jg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30n4j62ys2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Apr 2020 16:15:15 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D954D10002A;
 Wed, 29 Apr 2020 16:15:14 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C4C522A4D69;
 Wed, 29 Apr 2020 16:15:14 +0200 (CEST)
Received: from gnbcxd0016.gnb.st.com (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 29 Apr
 2020 16:15:14 +0200
Date: Wed, 29 Apr 2020 16:15:13 +0200
From: Alain Volmat <alain.volmat@st.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] i2c: stm32f7: prevent array underflow in
 stm32f7_get_lower_rate()
Message-ID: <20200429141513.GB31498@gnbcxd0016.gnb.st.com>
Mail-Followup-To: Dan Carpenter <dan.carpenter@oracle.com>,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 linux-i2c@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 kernel-janitors@vger.kernel.org, wsa@the-dreams.de,
 linux-arm-kernel@lists.infradead.org
References: <20200429132323.GB815283@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429132323.GB815283@mwanda>
X-Disclaimer: ce message est personnel / this message is private
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG8NODE1.st.com (10.75.127.22) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-29_07:2020-04-29,
 2020-04-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_071523_553785_86358570 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, wsa@the-dreams.de,
 kernel-janitors@vger.kernel.org,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>, linux-i2c@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dan,

indeed, thanks a lot.

Reviewed-by: Alain Volmat <alain.volmat@st.com>

Alain

On Wed, Apr 29, 2020 at 04:23:23PM +0300, Dan Carpenter wrote:
> We want to break with "i" set to zero whether we find the rate we want
> or not.  In the current code, if we don't find the rate we want then it
> exits the loop with "i" set to -1 and results in an array underflow.
> 
> Fixes: 09cc9a3bce91 ("i2c: stm32f7: allows for any bus frequency")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/i2c/busses/i2c-stm32f7.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
> index 9c9e10ea91991..bff3479fe122a 100644
> --- a/drivers/i2c/busses/i2c-stm32f7.c
> +++ b/drivers/i2c/busses/i2c-stm32f7.c
> @@ -607,7 +607,7 @@ static u32 stm32f7_get_lower_rate(u32 rate)
>  {
>  	int i = ARRAY_SIZE(stm32f7_i2c_specs);
>  
> -	while (i--)
> +	while (--i)
>  		if (stm32f7_i2c_specs[i].rate < rate)
>  			break;
>  
> -- 
> 2.26.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
