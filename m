Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D33CE1CD3D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 10:26:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gcgbht1PiL8S+n5pvMo7nz1MK0BzEPl+OTVu0j7lmes=; b=EGTiyUfzewrESt
	j5Y8NTzkgkbbcNYLwo1opZlnjoqNUKuaWx8SGj1Z4qE4M/Lk5ddiUL/LcaStqAuSZISds0kkfe0dL
	/xoQGjO0BUpJ8WcydXqC2nLTA4jTozB3KfXCo5JWU66EhYu0klmBw8lof0nUYxAH8Z5bJ8YHe1Z9n
	qXWJ2uJWVzyAGkj/iXgDPVErSkcAbWLUenWvXmhYdV+8aGoPM2LOPHQx9q7QahH5+449I8pRGiO9y
	ZREw34wJv5xfw5rrrD3HDFnL6HnvZ7tVkQqncDEx/C4LEmIW49rM0DBFoSlED1R4v9LD01WjXdHty
	CeR6x1Kb3t2bed+nNtdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY3lq-0004Pz-Dh; Mon, 11 May 2020 08:26:42 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY3lg-0004Og-2J
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 08:26:34 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04B8IcDZ000838; Mon, 11 May 2020 10:26:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=Ru+Sn0FTJTVqbWOdslDA8U6LFzVoFwyVpPARpJGF2gA=;
 b=FGeCx4LV77IswcaXp29EjbpT4kc5n3OE65604Q8NzAiZPXfAmmq4GGxc9FAmwjtGPrRv
 fj2fI99u2SxUBkeVvPcItTSSsRoaTBG3JeodKJGvNzbenjkCQgjAaPkOXPWb2aAv2BlZ
 cQzDZAazTU92bMS1906+iMgipZNIpXh0t9R8wKrlpOsPGuoH4a8zmlN2Do6X9//E2reb
 0GpHCg0Dlsa99yszPvYx6orte5fgz+IrjKETPaEFtBGImV275y/ASaYMLO7Oafxnbzls
 yNiva4uSqU+nR8unYu/f9nf+VQ2HsnFOHRUlbUg3lQtlTTDwHWwTz8+A3i2yzTH+/lIk wA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30wkdgrtx9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 11 May 2020 10:26:22 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5A7CA100034;
 Mon, 11 May 2020 10:26:22 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node2.st.com [10.75.127.14])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2650A2B27B0;
 Mon, 11 May 2020 10:26:22 +0200 (CEST)
Received: from [10.131.226.156] (10.75.127.46) by SFHDAG5NODE2.st.com
 (10.75.127.14) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 11 May
 2020 10:26:20 +0200
Subject: Re: [PATCH 1/4] i2c: smbus: add core function handling SMBus
 host-notify
To: Alain Volmat <alain.volmat@st.com>, <wsa@kernel.org>, <robh+dt@kernel.org>
References: <1588657871-14747-1-git-send-email-alain.volmat@st.com>
 <1588657871-14747-2-git-send-email-alain.volmat@st.com>
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
Message-ID: <c80936d4-2905-096c-9848-3f16444eaedc@st.com>
Date: Mon, 11 May 2020 10:26:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1588657871-14747-2-git-send-email-alain.volmat@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG5NODE2.st.com
 (10.75.127.14)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-11_03:2020-05-11,
 2020-05-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_012632_575118_81850C5D 
X-CRM114-Status: GOOD (  26.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
> SMBus Host-Notify protocol, from the adapter point of view
> consist of receiving a message from a client, including the
> client address and some other data.
> 
> It can be simply handled by creating a new slave device
> and registering a callback performing the parsing of the
> message received from the client.
> 
> This commit introduces two new core functions
>   * i2c_new_smbus_host_notify_device
>   * i2c_free_smbus_host_notify_device
> that take care of registration of the new slave device and
> callback and will call i2c_handle_smbus_host_notify once a
> Host-Notify event is received.
> 
> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> ---
>  drivers/i2c/i2c-core-smbus.c | 105 +++++++++++++++++++++++++++++++++++
>  include/linux/i2c-smbus.h    |   2 +
>  2 files changed, 107 insertions(+)
> 
> diff --git a/drivers/i2c/i2c-core-smbus.c b/drivers/i2c/i2c-core-smbus.c
> index b34d2ff06931..0c7e135c73e1 100644
> --- a/drivers/i2c/i2c-core-smbus.c
> +++ b/drivers/i2c/i2c-core-smbus.c
> @@ -708,3 +708,108 @@ int of_i2c_setup_smbus_alert(struct i2c_adapter *adapter)
>  }
>  EXPORT_SYMBOL_GPL(of_i2c_setup_smbus_alert);
>  #endif
> +
> +struct i2c_smbus_host_notify_status {
> +	bool notify_start;
> +	u8 addr;
> +};
> +
> +static int i2c_smbus_host_notify_cb(struct i2c_client *client,
> +				    enum i2c_slave_event event, u8 *val)
> +{
> +	struct i2c_smbus_host_notify_status *status = client->dev.platform_data;
> +	int ret;
> +
> +	switch (event) {
> +	case I2C_SLAVE_WRITE_REQUESTED:
> +		status->notify_start = true;
> +		break;
> +	case I2C_SLAVE_WRITE_RECEIVED:
> +		/* We only retrieve the first byte received (addr)
> +		 * since there is currently no way to retrieve the data
> +		 * parameter from the client.
> +		 */
> +		if (!status->notify_start)
> +			break;
> +		status->addr = *val;
> +		status->notify_start = false;
> +		break;
> +	case I2C_SLAVE_STOP:
> +		ret = i2c_handle_smbus_host_notify(client->adapter,
> +						   status->addr);
> +		if (ret < 0) {
> +			dev_warn(&client->adapter->dev, "failed to handle host_notify (%d)\n",
> +				ret);
> +			return ret;
> +		}
> +		break;
> +	default:
> +		/* Only handle necessary events */
> +		break;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * i2c_new_smbus_host_notify_device - get a client for SMBus host-notify support
> + * @adapter: the target adapter
> + * Context: can sleep
> + *
> + * Setup handling of the SMBus host-notify protocol on a given I2C bus segment.
> + *
> + * Handling is done by creating a device and its callback and handling data
> + * received via the SMBus host-notify address (0x8)
> + *
> + * This returns the client, which should be ultimately freed using
> + * i2c_free_smbus_host_notify_device(); or an ERRPTR to indicate an error.
> + */
> +struct i2c_client *i2c_new_smbus_host_notify_device(struct i2c_adapter *adapter)
> +{
> +	struct i2c_board_info host_notify_board_info = {
> +		I2C_BOARD_INFO("smbus_host_notify", 0x08),
> +		.flags  = I2C_CLIENT_SLAVE,
> +	};
> +	struct i2c_smbus_host_notify_status *status;
> +	struct i2c_client *client;
> +	int ret;
> +
> +	status = kzalloc(sizeof(struct i2c_smbus_host_notify_status),
> +			 GFP_KERNEL);
> +	if (!status)
> +		return ERR_PTR(-ENOMEM);
> +
> +	host_notify_board_info.platform_data = status;
> +
> +	client = i2c_new_client_device(adapter, &host_notify_board_info);
> +	if (IS_ERR(client)) {
> +		kfree(status);
> +		return client;
> +	}
> +
> +	ret = i2c_slave_register(client, i2c_smbus_host_notify_cb);
> +	if (ret) {
> +		i2c_unregister_device(client);
> +		kfree(status);
> +		return ERR_PTR(ret);
> +	}
> +
> +	return client;
> +}
> +EXPORT_SYMBOL_GPL(i2c_new_smbus_host_notify_device);
> +
> +/**
> + * i2c_free_smbus_host_notify_device - free the client for SMBus host-notify
> + * support
> + * @client: the client to free
> + * Context: can sleep
> + *
> + * Free the i2c_client allocated via i2c_new_smbus_host_notify_device
> + */
> +void i2c_free_smbus_host_notify_device(struct i2c_client *client)
> +{
> +	i2c_slave_unregister(client);
> +	kfree(client->dev.platform_data);
> +	i2c_unregister_device(client);
> +}
> +EXPORT_SYMBOL_GPL(i2c_free_smbus_host_notify_device);
> diff --git a/include/linux/i2c-smbus.h b/include/linux/i2c-smbus.h
> index 8c5459034f92..926f6d8ae30d 100644
> --- a/include/linux/i2c-smbus.h
> +++ b/include/linux/i2c-smbus.h
> @@ -38,5 +38,7 @@ static inline int of_i2c_setup_smbus_alert(struct i2c_adapter *adap)
>  	return 0;
>  }
>  #endif
> +struct i2c_client *i2c_new_smbus_host_notify_device(struct i2c_adapter *adapter);
> +void i2c_free_smbus_host_notify_device(struct i2c_client *client);
>  
>  #endif /* _LINUX_I2C_SMBUS_H */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
