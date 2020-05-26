Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8BD1CD3E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 10:28:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q8JrZd2/d3pLCWzw/S4W5k9BidLX13NggL3i+DWe/F8=; b=uR2J+My8Hyq6FZ
	UA6ssci7Ls+XNvKh1Z32SahcMlTyUGGFannT5ZxfqLiyHMHppnH9LpGIBZ+euEumHfYTUY+LT/Av4
	u8gZxhIqjnxUj1xanY9os2UgIiwtQhXhXsHtWZhltdQG/BbjnXzjMx1qXWI/JisD02FAXVos7mgVR
	TxI5CKlhRcQXBwbqLgenSCVrmveERJowbHr1eTmEBJl5Y+bty3RJkepc93aC5OMJu5kQmeMb5iCVy
	CmGEtYt/8518jKH663O2Nuz72Ue/FHtHoHc2LAfzFcZ59LStK69WnHKBXcuGHkOKktl7ml7SQcbtg
	gDdWKvLG3aVRIfKuLBcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY3nb-0004wR-Jj; Mon, 11 May 2020 08:28:31 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY3nM-0004vd-RQ
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 08:28:19 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04B8S0Bg010988; Mon, 11 May 2020 10:28:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=ARKtW82Ju4foRRG5jzp6GKL8UxrRXVO/KxZ4yej17EA=;
 b=YFyWS89NgLXHX4OBgXe4bdHZ0ZrWu3Se8fTc63Y7Y7DZ1QCCq3Hd6g+I9JYmYYTEmEcY
 oMDyhNRAzcGcsj4jrNNcl5qEQy/W4P0iBT84tCCw894FoqHhLIHhDIRgoeCOLz/jMwOa
 xdIXW8pRnV/jgNccj3k6tzeSOlvLjCCn3FDmVpcu6DYota4vSFCdOHMfZVviRLnYONC9
 uXwtKcj+BW8RSD/0e733l81RcgUU1B4R8EuolGkDqpLbsJZ8yjTXzHcWfGaaoQ0LW2hC
 mn/9z3mAQ86o5V+xQgSZmyAFm/nNwJXG6aJ7ygfyA3RrRhk7tZNSYmxOcAwFJAC9DWsU jQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30wj01sa7x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 11 May 2020 10:28:11 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6D58A10002A;
 Mon, 11 May 2020 10:28:06 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node2.st.com [10.75.127.14])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5B1482B27B5;
 Mon, 11 May 2020 10:28:06 +0200 (CEST)
Received: from [10.131.226.156] (10.75.127.47) by SFHDAG5NODE2.st.com
 (10.75.127.14) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 11 May
 2020 10:28:04 +0200
Subject: Re: [PATCH 2/4] i2c: addition of client reg/unreg callbacks
To: Alain Volmat <alain.volmat@st.com>, <wsa@kernel.org>, <robh+dt@kernel.org>
References: <1588657871-14747-1-git-send-email-alain.volmat@st.com>
 <1588657871-14747-3-git-send-email-alain.volmat@st.com>
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
Message-ID: <a68f47ca-47e1-a293-f4ad-a5104c9ee620@st.com>
Date: Mon, 11 May 2020 10:28:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1588657871-14747-3-git-send-email-alain.volmat@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG5NODE2.st.com
 (10.75.127.14)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-11_03:2020-05-11,
 2020-05-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_012818_422584_8DAE978E 
X-CRM114-Status: GOOD (  21.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>

Thanks

On 5/5/20 7:51 AM, Alain Volmat wrote:
> Addition of two callbacks reg_client and unreg_client that can be
> implemented by adapter drivers in order to take action whenever a
> client is being registered to it.
> 
> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> ---
>  drivers/i2c/i2c-core-base.c | 11 +++++++++++
>  include/linux/i2c.h         |  6 ++++++
>  2 files changed, 17 insertions(+)
> 
> diff --git a/drivers/i2c/i2c-core-base.c b/drivers/i2c/i2c-core-base.c
> index 2e4560671183..4c84c6264314 100644
> --- a/drivers/i2c/i2c-core-base.c
> +++ b/drivers/i2c/i2c-core-base.c
> @@ -319,6 +319,12 @@ static int i2c_device_probe(struct device *dev)
>  	if (!client)
>  		return 0;
>  
> +	if (client->adapter->algo->reg_client) {
> +		status = client->adapter->algo->reg_client(client);
> +		if (status)
> +			return status;
> +	}
> +
>  	driver = to_i2c_driver(dev->driver);
>  
>  	client->irq = client->init_irq;
> @@ -417,6 +423,8 @@ static int i2c_device_probe(struct device *dev)
>  put_sync_adapter:
>  	if (client->flags & I2C_CLIENT_HOST_NOTIFY)
>  		pm_runtime_put_sync(&client->adapter->dev);
> +	if (client->adapter->algo->reg_client)
> +		client->adapter->algo->unreg_client(client);
>  
>  	return status;
>  }
> @@ -445,6 +453,9 @@ static int i2c_device_remove(struct device *dev)
>  	if (client->flags & I2C_CLIENT_HOST_NOTIFY)
>  		pm_runtime_put(&client->adapter->dev);
>  
> +	if (client->adapter->algo->unreg_client)
> +		client->adapter->algo->unreg_client(client);
> +
>  	return status;
>  }
>  
> diff --git a/include/linux/i2c.h b/include/linux/i2c.h
> index 45d36ba4826b..61b838caf454 100644
> --- a/include/linux/i2c.h
> +++ b/include/linux/i2c.h
> @@ -509,6 +509,8 @@ i2c_register_board_info(int busnum, struct i2c_board_info const *info,
>   *   so e.g. PMICs can be accessed very late before shutdown. Optional.
>   * @functionality: Return the flags that this algorithm/adapter pair supports
>   *   from the ``I2C_FUNC_*`` flags.
> + * @reg_client: Callback informing that a new client is being registered
> + * @unreg_client: Callback informing that a client is being removed
>   * @reg_slave: Register given client to I2C slave mode of this adapter
>   * @unreg_slave: Unregister given client from I2C slave mode of this adapter
>   *
> @@ -545,6 +547,10 @@ struct i2c_algorithm {
>  	/* To determine what the adapter supports */
>  	u32 (*functionality)(struct i2c_adapter *adap);
>  
> +	/* To inform the adapter of the probe/remove of a client */
> +	int (*reg_client)(struct i2c_client *client);
> +	void (*unreg_client)(struct i2c_client *client);
> +
>  #if IS_ENABLED(CONFIG_I2C_SLAVE)
>  	int (*reg_slave)(struct i2c_client *client);
>  	int (*unreg_slave)(struct i2c_client *client);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
