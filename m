Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C3411BBE0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 19:40:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tDDH6lJ6gBFgINlUZ8L44kUPDNLXjM4usDib45hOpLA=; b=IRLsdEyH5nvfJ6
	TzyKKX3yn7kfMqUflHuuk92vOAaLMmPM92I/+A/cDuh/X80lpFDv0q0voImn2GylRKLl51r5lXsQE
	0XJ/qy7QpGTqexdblKf+xbRui13WRbB0umn3Rvgl+q/HsmUmNOsEy6eifx14rrHs7md4iR+joKUCw
	j3a63kIdTdxoN5qbW40aBXMSrpEMNO0Qb0CvIMh/fJsbBgoAMw39TVEvQDeJdtD4jpqOIGCCxzEgF
	Y2ADc0vxoJ/gnDk3x1MJBAWvwRz+Tt4MLnzu1vAxTsCPBg5i8XbOKxDfo5DxekrLcvE5Uzhe6o0gI
	i21Y8KQMu21ZYZl9Jz/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6uH-0002Oc-JL; Wed, 11 Dec 2019 18:40:17 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6u3-0001ZE-5i; Wed, 11 Dec 2019 18:40:04 +0000
Received: by mail-wr1-x443.google.com with SMTP id q10so25194207wrm.11;
 Wed, 11 Dec 2019 10:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=zYYDjt3Ovik1awdLbWzeDKyMC0WwdnN6hp/A1DAq03k=;
 b=g3aQZioJn52q6amyG1eAWd2DVGPgKF9D70D7jjX+OqSGZqNRTGz5bnkDncAP+hwIBB
 2bikjTu7lEpSRzQjVVva0N0b9KiDhE9vdka8EGbeg46b7p2rROehSmdi55UusMRXGUDe
 htgMRA2LOMd0xHb/2H7RiZ47yRucdHqLZTEwuv/ip5yVK9Och1e9lK/eC1dCVuQjbZgV
 KLgRvOLFCjOSm/FDlzEw0omVWjHsKSS8g57K0khVroUlEt+BWxxArqr6QT+Mv1iayNuL
 1F1Qfbtg3le5COBTBx040zRHRrztcCM75STuZv+gotBqmqWOrr0ukk2f6NROQozi5iIl
 TMjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=zYYDjt3Ovik1awdLbWzeDKyMC0WwdnN6hp/A1DAq03k=;
 b=X/4Eb7QUhtmspWGM4bsyePyMBz5fV8G7nw7DTBS4xXLdzAG89L0UZuMLtA8chGv6qD
 rddwr/D2N+p6KbraaUOhWWNs7S3hLwCQ5zicOlmUL9O7xtolJaoR4+xwaSSablTfnM1z
 hp7kSAVeNrzulVOMibXvBilCC6Yape6+aglFGiTJHGhnPtWPYbHc0IKn4/XVe0wax8jB
 qKI/Zy4LBlaz9ZKe4ZX4CjB0sjHeG01b1AT5/SXGi9hdzUhmSnzJBK/QtkgWFKU+IUZE
 8xQKu+AjwN6W7zmQGb/qxS+g52tk3InC6FQVM5H9z586tlmtbPc4qT5RP/bPpoRj8btQ
 9L1Q==
X-Gm-Message-State: APjAAAUUTO4LKS5HDsGdu+7rLwiVSuB6ILjtaVYA2BHLQ8Wuuv7f4l71
 dKbLEIaga4HUV22Jx++SXWo=
X-Google-Smtp-Source: APXvYqwX1VOSRVynEgRsKGiEiMm6NXmZaBRygt3BI3vuWXyaaEWhL42JHz8hKSdN0WllXT8c7dvbjw==
X-Received: by 2002:a5d:4a8c:: with SMTP id o12mr1321320wrq.43.1576089597783; 
 Wed, 11 Dec 2019 10:39:57 -0800 (PST)
Received: from ziggy.stardust ([37.223.145.31])
 by smtp.gmail.com with ESMTPSA id g18sm3052350wmh.48.2019.12.11.10.39.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Dec 2019 10:39:56 -0800 (PST)
Subject: Re: [PATCH v17 3/6] soc: mediatek: cmdq: define the instruction struct
To: CK Hu <ck.hu@mediatek.com>, Bibby Hsieh <bibby.hsieh@mediatek.com>
References: <20191121015410.18852-1-bibby.hsieh@mediatek.com>
 <20191121015410.18852-4-bibby.hsieh@mediatek.com>
 <1574411430.19450.5.camel@mtksdaap41>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <d5c0e144-3906-0041-8d0d-ab0daca7c55a@gmail.com>
Date: Wed, 11 Dec 2019 19:39:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1574411430.19450.5.camel@mtksdaap41>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_104003_254485_77737103 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 22/11/2019 09:30, CK Hu wrote:
> Hi, Bibby:
> 
> On Thu, 2019-11-21 at 09:54 +0800, Bibby Hsieh wrote:
>> Define an instruction structure for gce driver to append command.
>> This structure can make the client's code more readability.
> 
> Even though I do not like pass struct parameter by value, but struct
> cmdq_instruction is just a 64 bits integer and would not be modified in
> cmdq_pkt_append_command(), so
> 
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> 

Applied to v5.5-next/soc

Thanks!

>>
>> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
>> ---
>>  drivers/soc/mediatek/mtk-cmdq-helper.c   | 73 ++++++++++++++++--------
>>  include/linux/mailbox/mtk-cmdq-mailbox.h | 10 ++++
>>  2 files changed, 59 insertions(+), 24 deletions(-)
>>
>> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
>> index c8fb69787649..11bfcc150ebd 100644
>> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
>> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
>> @@ -9,12 +9,24 @@
>>  #include <linux/mailbox_controller.h>
>>  #include <linux/soc/mediatek/mtk-cmdq.h>
>>  
>> -#define CMDQ_ARG_A_WRITE_MASK	0xffff
>>  #define CMDQ_WRITE_ENABLE_MASK	BIT(0)
>>  #define CMDQ_EOC_IRQ_EN		BIT(0)
>>  #define CMDQ_EOC_CMD		((u64)((CMDQ_CODE_EOC << CMDQ_OP_CODE_SHIFT)) \
>>  				<< 32 | CMDQ_EOC_IRQ_EN)
>>  
>> +struct cmdq_instruction {
>> +	union {
>> +		u32 value;
>> +		u32 mask;
>> +	};
>> +	union {
>> +		u16 offset;
>> +		u16 event;
>> +	};
>> +	u8 subsys;
>> +	u8 op;
>> +};
>> +
>>  static void cmdq_client_timeout(struct timer_list *t)
>>  {
>>  	struct cmdq_client *client = from_timer(client, t, timer);
>> @@ -110,10 +122,10 @@ void cmdq_pkt_destroy(struct cmdq_pkt *pkt)
>>  }
>>  EXPORT_SYMBOL(cmdq_pkt_destroy);
>>  
>> -static int cmdq_pkt_append_command(struct cmdq_pkt *pkt, enum cmdq_code code,
>> -				   u32 arg_a, u32 arg_b)
>> +static int cmdq_pkt_append_command(struct cmdq_pkt *pkt,
>> +				   struct cmdq_instruction inst)
>>  {
>> -	u64 *cmd_ptr;
>> +	struct cmdq_instruction *cmd_ptr;
>>  
>>  	if (unlikely(pkt->cmd_buf_size + CMDQ_INST_SIZE > pkt->buf_size)) {
>>  		/*
>> @@ -129,8 +141,9 @@ static int cmdq_pkt_append_command(struct cmdq_pkt *pkt, enum cmdq_code code,
>>  			__func__, (u32)pkt->buf_size);
>>  		return -ENOMEM;
>>  	}
>> +
>>  	cmd_ptr = pkt->va_base + pkt->cmd_buf_size;
>> -	(*cmd_ptr) = (u64)((code << CMDQ_OP_CODE_SHIFT) | arg_a) << 32 | arg_b;
>> +	*cmd_ptr = inst;
>>  	pkt->cmd_buf_size += CMDQ_INST_SIZE;
>>  
>>  	return 0;
>> @@ -138,21 +151,28 @@ static int cmdq_pkt_append_command(struct cmdq_pkt *pkt, enum cmdq_code code,
>>  
>>  int cmdq_pkt_write(struct cmdq_pkt *pkt, u8 subsys, u16 offset, u32 value)
>>  {
>> -	u32 arg_a = (offset & CMDQ_ARG_A_WRITE_MASK) |
>> -		    (subsys << CMDQ_SUBSYS_SHIFT);
>> +	struct cmdq_instruction inst;
>>  
>> -	return cmdq_pkt_append_command(pkt, CMDQ_CODE_WRITE, arg_a, value);
>> +	inst.op = CMDQ_CODE_WRITE;
>> +	inst.value = value;
>> +	inst.offset = offset;
>> +	inst.subsys = subsys;
>> +
>> +	return cmdq_pkt_append_command(pkt, inst);
>>  }
>>  EXPORT_SYMBOL(cmdq_pkt_write);
>>  
>>  int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u8 subsys,
>>  			u16 offset, u32 value, u32 mask)
>>  {
>> -	u32 offset_mask = offset;
>> +	struct cmdq_instruction inst = { {0} };
>> +	u16 offset_mask = offset;
>>  	int err;
>>  
>>  	if (mask != 0xffffffff) {
>> -		err = cmdq_pkt_append_command(pkt, CMDQ_CODE_MASK, 0, ~mask);
>> +		inst.op = CMDQ_CODE_MASK;
>> +		inst.mask = ~mask;
>> +		err = cmdq_pkt_append_command(pkt, inst);
>>  		if (err < 0)
>>  			return err;
>>  
>> @@ -166,45 +186,50 @@ EXPORT_SYMBOL(cmdq_pkt_write_mask);
>>  
>>  int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event)
>>  {
>> -	u32 arg_b;
>> +	struct cmdq_instruction inst = { {0} };
>>  
>>  	if (event >= CMDQ_MAX_EVENT)
>>  		return -EINVAL;
>>  
>> -	/*
>> -	 * WFE arg_b
>> -	 * bit 0-11: wait value
>> -	 * bit 15: 1 - wait, 0 - no wait
>> -	 * bit 16-27: update value
>> -	 * bit 31: 1 - update, 0 - no update
>> -	 */
>> -	arg_b = CMDQ_WFE_UPDATE | CMDQ_WFE_WAIT | CMDQ_WFE_WAIT_VALUE;
>> +	inst.op = CMDQ_CODE_WFE;
>> +	inst.value = CMDQ_WFE_OPTION;
>> +	inst.event = event;
>>  
>> -	return cmdq_pkt_append_command(pkt, CMDQ_CODE_WFE, event, arg_b);
>> +	return cmdq_pkt_append_command(pkt, inst);
>>  }
>>  EXPORT_SYMBOL(cmdq_pkt_wfe);
>>  
>>  int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event)
>>  {
>> +	struct cmdq_instruction inst = { {0} };
>> +
>>  	if (event >= CMDQ_MAX_EVENT)
>>  		return -EINVAL;
>>  
>> -	return cmdq_pkt_append_command(pkt, CMDQ_CODE_WFE, event,
>> -				       CMDQ_WFE_UPDATE);
>> +	inst.op = CMDQ_CODE_WFE;
>> +	inst.value = CMDQ_WFE_UPDATE;
>> +	inst.event = event;
>> +
>> +	return cmdq_pkt_append_command(pkt, inst);
>>  }
>>  EXPORT_SYMBOL(cmdq_pkt_clear_event);
>>  
>>  static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
>>  {
>> +	struct cmdq_instruction inst = { {0} };
>>  	int err;
>>  
>>  	/* insert EOC and generate IRQ for each command iteration */
>> -	err = cmdq_pkt_append_command(pkt, CMDQ_CODE_EOC, 0, CMDQ_EOC_IRQ_EN);
>> +	inst.op = CMDQ_CODE_EOC;
>> +	inst.value = CMDQ_EOC_IRQ_EN;
>> +	err = cmdq_pkt_append_command(pkt, inst);
>>  	if (err < 0)
>>  		return err;
>>  
>>  	/* JUMP to end */
>> -	err = cmdq_pkt_append_command(pkt, CMDQ_CODE_JUMP, 0, CMDQ_JUMP_PASS);
>> +	inst.op = CMDQ_CODE_JUMP;
>> +	inst.value = CMDQ_JUMP_PASS;
>> +	err = cmdq_pkt_append_command(pkt, inst);
>>  
>>  	return err;
>>  }
>> diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
>> index e6f54ef6698b..678760548791 100644
>> --- a/include/linux/mailbox/mtk-cmdq-mailbox.h
>> +++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
>> @@ -20,6 +20,16 @@
>>  #define CMDQ_WFE_WAIT			BIT(15)
>>  #define CMDQ_WFE_WAIT_VALUE		0x1
>>  
>> +/*
>> + * WFE arg_b
>> + * bit 0-11: wait value
>> + * bit 15: 1 - wait, 0 - no wait
>> + * bit 16-27: update value
>> + * bit 31: 1 - update, 0 - no update
>> + */
>> +#define CMDQ_WFE_OPTION			(CMDQ_WFE_UPDATE | CMDQ_WFE_WAIT | \
>> +					CMDQ_WFE_WAIT_VALUE)
>> +
>>  /** cmdq event maximum */
>>  #define CMDQ_MAX_EVENT			0x3ff
>>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
