Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF2BAB505
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 11:38:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5sIACCO5eqEWKhClCy163cDquJL9ztX60Cm4ZEPbBcY=; b=dArQ3/eEM2iEkLOUTakhvPd9+
	eqMrdWUVf4e6N7GGvMrM5jGMOMqPVRQ5JeUEa0aINcJyefQqUANYfOKRHGTkC89yI0O7B76MaCv5V
	gMPpU0jRQ4cMu3MkaiFtAAXzVeLfrAK72U80Zo8LQ63cabvRJumQBhBjW3SE0ZxxS87tFAcRy2xvD
	e2Xj96Z2dtaTulKiJ9hJhjoSqRuojKkzZAw8UQE9unQrNKrwXdS5GNG19OdQ+UkwXgatRDToUv8sD
	hIHdvtUkSabdyTnyPETSdpI5wQcZ85IypczscjcC+p/vJ3GwzqHIsbAKV9FrzFvGBrQUpUskbHeDe
	LotmIJZQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Ags-0000Ql-Co; Fri, 06 Sep 2019 09:38:02 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Age-0000QJ-Om
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 09:37:50 +0000
Received: by mail-wr1-x444.google.com with SMTP id u16so5870828wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 02:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gHQvGo2oHSAi0l4hj3JH6Y+XbDhT95DFxyzr46YUgC0=;
 b=NAc2a7jRTkb41+7GcrFFCTtk//51mt4fZSMi2okYkU/RL7BN7Kehl9G8057rRtItPo
 M0d9ShHgo0VHZn3JStaBU1eXpu4pxvy1NbXPVpJqpYp0+s0jaJf3GezIDmCKboV4oSzw
 cqyEoJoyazb6wtmNhxC3D+aA+5YpMH8ijW6xQKuWgzSrnOD6sJFFaGYLCwVDKXs2NAPQ
 +itDTYVhRm1NpBen9LUxpTPFoEVez0CXXQmAABmaHLrqwc3UFxa+XGjO3zDIj1o5on27
 40+JhXnMzVKhjHENBCRefZjBmWNH7xBfUQIpb3i4Em9x3+DLcBt7ho2yqhtzmKUDT/0u
 Rqmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gHQvGo2oHSAi0l4hj3JH6Y+XbDhT95DFxyzr46YUgC0=;
 b=MnD00LMtupkr7VI1XrD/SlXgbag4bqy3nfQtuh4MGQcc/kwwcWdh0draU412quHmH6
 Qrnf56SX+birQFzugshbtZeGxKU7sujTjIjmS6WQ1I2TADe+G/eeRT2ojRbGZGMPAQUH
 4vaO/H3ELX4+2uP9iSXcyBfVgGQ56TAsoFoMAus9rOjOfw58wA8n8t8QI+Hzm65sNbRF
 0L3stZzvxmugo3z74j6XEtezT4MoOtmv4+5TsvfzpNusKJ4fioxNbKjWPATB8rVa9WJK
 FYtY2gbsHl2Tuof1joxEKHXsxFrzpJGBnagSZAkH/s1oxlxsERAKPPPzLryJCNVmJcRM
 eYcg==
X-Gm-Message-State: APjAAAX49dj38I/70y5GSHmHPLjnn6gEi1O/Lk7dU62hcfPRCwZbIjI0
 PeIyy6HXuQgeKAY2xPQUPjD2TA==
X-Google-Smtp-Source: APXvYqw1zQx7D1rB9iMcWVLhI+wsFFMTYX3kk0oDtXEiRAW+K08F0IAMcTRcUFhriIoveu69KGo66w==
X-Received: by 2002:adf:f709:: with SMTP id r9mr6734946wrp.228.1567762666819; 
 Fri, 06 Sep 2019 02:37:46 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id h125sm7238999wmf.31.2019.09.06.02.37.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 02:37:45 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvmem: imx: scu: support write
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
References: <1566356496-30493-1-git-send-email-peng.fan@nxp.com>
 <1566356496-30493-2-git-send-email-peng.fan@nxp.com>
 <AM0PR04MB448144701DB63A3C9F05B3E488BA0@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <dd82e84d-ab22-9dd9-f895-776570f46fee@linaro.org>
Date: Fri, 6 Sep 2019 10:37:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <AM0PR04MB448144701DB63A3C9F05B3E488BA0@AM0PR04MB4481.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_023748_814071_C0F39FEA 
X-CRM114-Status: GOOD (  21.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/09/2019 07:57, Peng Fan wrote:
>> Subject: [PATCH 2/2] nvmem: imx: scu: support write
> 
> Ping..
> 
Thanks for your patience!
I normally do not take patches after rc5 for nvmem.
These will be applied after rc1 is released!

Thanks,
srini
> Thanks,
> Peng.
> 
>>
>> From: Peng Fan <peng.fan@nxp.com>
>>
>> The fuse programming from non-secure world is blocked, so we could only use
>> Arm Trusted Firmware SIP call to let ATF program fuse.
>>
>> Because there is ECC region that could only be programmed once, so add a
>> heler in_ecc to check the ecc region.
>>
>> Signed-off-by: Peng Fan <peng.fan@nxp.com>
>> ---
>>
>> The ATF patch will soon be posted to ATF community.
>>
>>   drivers/nvmem/imx-ocotp-scu.c | 73
>> ++++++++++++++++++++++++++++++++++++++++++-
>>   1 file changed, 72 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/nvmem/imx-ocotp-scu.c b/drivers/nvmem/imx-ocotp-scu.c
>> index 2f339d7432e6..0f064f2e74a8 100644
>> --- a/drivers/nvmem/imx-ocotp-scu.c
>> +++ b/drivers/nvmem/imx-ocotp-scu.c
>> @@ -7,6 +7,7 @@
>>    * Peng Fan <peng.fan@nxp.com>
>>    */
>>
>> +#include <linux/arm-smccc.h>
>>   #include <linux/firmware/imx/sci.h>
>>   #include <linux/module.h>
>>   #include <linux/nvmem-provider.h>
>> @@ -14,6 +15,9 @@
>>   #include <linux/platform_device.h>
>>   #include <linux/slab.h>
>>
>> +#define IMX_SIP_OTP			0xC200000A
>> +#define IMX_SIP_OTP_WRITE		0x2
>> +
>>   enum ocotp_devtype {
>>   	IMX8QXP,
>>   };
>> @@ -45,6 +49,8 @@ struct imx_sc_msg_misc_fuse_read {
>>   	u32 word;
>>   } __packed;
>>
>> +static DEFINE_MUTEX(scu_ocotp_mutex);
>> +
>>   static struct ocotp_devtype_data imx8qxp_data = {
>>   	.devtype = IMX8QXP,
>>   	.nregs = 800,
>> @@ -73,6 +79,23 @@ static bool in_hole(void *context, u32 index)
>>   	return false;
>>   }
>>
>> +static bool in_ecc(void *context, u32 index) {
>> +	struct ocotp_priv *priv = context;
>> +	const struct ocotp_devtype_data *data = priv->data;
>> +	int i;
>> +
>> +	for (i = 0; i < data->num_region; i++) {
>> +		if (data->region[i].flag & ECC_REGION) {
>> +			if ((index >= data->region[i].start) &&
>> +			    (index <= data->region[i].end))
>> +				return true;
>> +		}
>> +	}
>> +
>> +	return false;
>> +}
>> +
>>   static int imx_sc_misc_otp_fuse_read(struct imx_sc_ipc *ipc, u32 word,
>>   				     u32 *val)
>>   {
>> @@ -116,6 +139,8 @@ static int imx_scu_ocotp_read(void *context,
>> unsigned int offset,
>>   	if (!p)
>>   		return -ENOMEM;
>>
>> +	mutex_lock(&scu_ocotp_mutex);
>> +
>>   	buf = p;
>>
>>   	for (i = index; i < (index + count); i++) { @@ -126,6 +151,7 @@ static int
>> imx_scu_ocotp_read(void *context, unsigned int offset,
>>
>>   		ret = imx_sc_misc_otp_fuse_read(priv->nvmem_ipc, i, buf);
>>   		if (ret) {
>> +			mutex_unlock(&scu_ocotp_mutex);
>>   			kfree(p);
>>   			return ret;
>>   		}
>> @@ -134,18 +160,63 @@ static int imx_scu_ocotp_read(void *context,
>> unsigned int offset,
>>
>>   	memcpy(val, (u8 *)p + offset % 4, bytes);
>>
>> +	mutex_unlock(&scu_ocotp_mutex);
>> +
>>   	kfree(p);
>>
>>   	return 0;
>>   }
>>
>> +static int imx_scu_ocotp_write(void *context, unsigned int offset,
>> +			       void *val, size_t bytes)
>> +{
>> +	struct ocotp_priv *priv = context;
>> +	struct arm_smccc_res res;
>> +	u32 *buf = val;
>> +	u32 tmp;
>> +	u32 index;
>> +	int ret;
>> +
>> +	/* allow only writing one complete OTP word at a time */
>> +	if ((bytes != 4) || (offset % 4))
>> +		return -EINVAL;
>> +
>> +	index = offset >> 2;
>> +
>> +	if (in_hole(context, index))
>> +		return -EINVAL;
>> +
>> +	if (in_ecc(context, index)) {
>> +		pr_warn("ECC region, only program once\n");
>> +		mutex_lock(&scu_ocotp_mutex);
>> +		ret = imx_sc_misc_otp_fuse_read(priv->nvmem_ipc, index, &tmp);
>> +		mutex_unlock(&scu_ocotp_mutex);
>> +		if (ret)
>> +			return ret;
>> +		if (tmp) {
>> +			pr_warn("ECC region, already has value: %x\n", tmp);
>> +			return -EIO;
>> +		}
>> +	}
>> +
>> +	mutex_lock(&scu_ocotp_mutex);
>> +
>> +	arm_smccc_smc(IMX_SIP_OTP, IMX_SIP_OTP_WRITE, index, *buf,
>> +		      0, 0, 0, 0, &res);
>> +
>> +	mutex_unlock(&scu_ocotp_mutex);
>> +
>> +	return res.a0;
>> +}
>> +
>>   static struct nvmem_config imx_scu_ocotp_nvmem_config = {
>>   	.name = "imx-scu-ocotp",
>> -	.read_only = true,
>> +	.read_only = false,
>>   	.word_size = 4,
>>   	.stride = 1,
>>   	.owner = THIS_MODULE,
>>   	.reg_read = imx_scu_ocotp_read,
>> +	.reg_write = imx_scu_ocotp_write,
>>   };
>>
>>   static const struct of_device_id imx_scu_ocotp_dt_ids[] = {
>> --
>> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
