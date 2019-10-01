Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F60C2DCC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 09:10:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cdiSztA/P2b91NnnuZrcO6tJjLDeyDDtEbY1Ra3USwo=; b=gqfBQkNisfTbui
	rkZkTaZRYfDxNmLlAODeXt7UeKKGnhHSCRI8yXQ+tv7dnmOs+q+sDPtSTfCnEcK6GF6+4VT9QQSkB
	zyg7qvFW0IntB5y5xtmfSNGcspRU+07Vei2HUZkmbk7H/TPBo4zJfifB6sYmTlBVgAjmHlxwn2Emw
	r99SZqTDCmh52N0QJrEimRfUY/KRgnlgRmdEIad6Y5NZ6W3Zn2a4YC70dIZzEb7SQwOCBOV3SilEN
	kUOzTVwOKOVAwEt772U0UI6PWIFmwb7whiNulo/oGZvhogDTlXmZ2n3GueAaO5M0UdhAkwuFy7WEP
	hn08q8Xh0jMoMoybYKVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFCJ4-00079l-76; Tue, 01 Oct 2019 07:10:46 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFCIx-00079M-7t
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 07:10:41 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x917AX0Y016964; Tue, 1 Oct 2019 09:10:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=pOPCPe7TD98TjMLQMWtDzzXnRWgJwMhoU21tYTK3+oE=;
 b=nCPPdoIAWmY+E3PbFphqiQxVifYVDuBTXtC5iPxIU5allVbyAEFfITnniTgis2ajDjkc
 LcD3ftoHW4m2CBJlLzotb3awNS3nZ/WHGSzkwFw868CNfwA9SoJ+dZQ4b/RZ7iGkC/zs
 AsS2SPxHV2W5PqwRXi/xY0g9y4UHKP4AKNn5i2ScXSB9LKX3yDPrnwJCrMjQdB6WZ3nq
 UYf6wy9yoSsMnZ1Jbro6OL0vgMZeLMkBmiEpf6GwtisJm1RJsl5GNa20w/nqI57K4rdV
 4jFReLcBKpWmfWE3JqZxoMsxQmHgq1ChJESJyrcMyMva1cEZAAdmBQfqIZhKfApNhG2P dg== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v9xdgq2kw-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 01 Oct 2019 09:10:34 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 4334F4C;
 Tue,  1 Oct 2019 07:10:15 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node2.st.com [10.75.127.14])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 596492AB7C3;
 Tue,  1 Oct 2019 09:10:15 +0200 (CEST)
Received: from [10.48.1.171] (10.75.127.44) by SFHDAG5NODE2.st.com
 (10.75.127.14) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 1 Oct
 2019 09:10:14 +0200
Subject: Re: [PATCH] i2c: i2c-stm32f7: fix first byte to send in slave mode
To: Fabrice Gasnier <fabrice.gasnier@st.com>, <wsa@the-dreams.de>
References: <1569857281-19419-1-git-send-email-fabrice.gasnier@st.com>
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
Message-ID: <144ffb23-a56e-c60f-8c50-802921755835@st.com>
Date: Tue, 1 Oct 2019 09:10:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1569857281-19419-1-git-send-email-fabrice.gasnier@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG5NODE2.st.com
 (10.75.127.14)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-01_03:2019-09-30,2019-10-01 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_001039_647234_312BB0BA 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org, alain.volmat@st.com,
 linux-i2c@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>

Thx

On 9/30/19 5:28 PM, Fabrice Gasnier wrote:
> The slave-interface documentation [1] states "the bus driver should
> transmit the first byte" upon I2C_SLAVE_READ_REQUESTED slave event:
> - 'val': backend returns first byte to be sent
> The driver currently ignores the 1st byte to send on this event.
> 
> Fixes: 60d609f30de2 ("i2c: i2c-stm32f7: Add slave support")
> 
> [1] https://www.kernel.org/doc/Documentation/i2c/slave-interface
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
>  drivers/i2c/busses/i2c-stm32f7.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
> index 266d1c2..0af9219 100644
> --- a/drivers/i2c/busses/i2c-stm32f7.c
> +++ b/drivers/i2c/busses/i2c-stm32f7.c
> @@ -1192,6 +1192,8 @@ static void stm32f7_i2c_slave_start(struct stm32f7_i2c_dev *i2c_dev)
>  			STM32F7_I2C_CR1_TXIE;
>  		stm32f7_i2c_set_bits(base + STM32F7_I2C_CR1, mask);
>  
> +		/* Write 1st data byte */
> +		writel_relaxed(value, base + STM32F7_I2C_TXDR);
>  	} else {
>  		/* Notify i2c slave that new write transfer is starting */
>  		i2c_slave_event(slave, I2C_SLAVE_WRITE_REQUESTED, &value);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
