Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 504D17C2C3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 15:06:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uK6WoNUNPEa3n+FRK9dS94XiiwbJ8HbUOuA50uVbynY=; b=VSarvkZoFOyFWNQocouqwpetz
	5NqO8OIb4L17+awQrLB/32rYEI2xHcHIlrIJSyXLWQDihBxjblP4ba6WLk4lMw0U4L4ejiNsv1gIC
	3bgbPFTfbxOeDulHiN6eVlrHNAfEXcPkEyErMw9aJIVxfWoyxLRlagaTgZEE41+UZpSdXkYQFuLjk
	CTQ98m8i3kZ8bhq9KGNjUUZ/LqD6dpRJACfsngWUzmtDlPC4PCj5NbBCnJ6ItAyM1CiOGeUJbqIM5
	W+FbJFxJxbHkEnQVvW2mpavzESrjR6lZyaHU0v63P9/FwGNA+8wLsX1C9+eRb/JbKaoJTGnY5ieT0
	56yrQNumA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsoJV-0004Ah-3t; Wed, 31 Jul 2019 13:06:41 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsoJN-00049v-Nd
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 13:06:35 +0000
Received: by mail-pl1-x644.google.com with SMTP id a93so30420450pla.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 06:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=sHzl5921BHWgqtoPY6MJP39IB1JpWgzFb78ZaMImV9c=;
 b=eIHTYDdXX3KVuT8JA2IPHAnoMU+cnJBLShjNMC/nmhnG1CqVefQKtVPLO9W7U/HdJ8
 Of2Xb1et/5mL2x7hVkD5G0EsAdytxOjb8gfiwTXzjqm1R+gg9cfrKgbuEc/eRM9JPNf9
 jtYGhNhrHd6ZH8f9zAUfzvtGOE14Wg+HE8MbbBurTnFieNUUcd4ra8cyeyBYV1BSF3tw
 cH9j9PhgqJT+Buzs07dHk/ctfwXh5ivj7PWuyvL6NJWkdqs3ZNqzjYlNIhwv2OEEl+HX
 QlgcMUhjBJOZ0SRyDPmmwHeoA9xfeQx+EkVvOL5yz4AzRGU4Ue3YEsvI0Vir9RggQx6r
 MIKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sHzl5921BHWgqtoPY6MJP39IB1JpWgzFb78ZaMImV9c=;
 b=hnvBT3pfAx7OZRP60Eg2pyQYmar81ApKcO1t60KRlfOaJZAPvuz9d+FoDa1mrRqZOr
 KWIzUYa+wH9CMZh19xbb1/qSyKM21z18Ts6dDcwrWw8Zok2VIi5HnMgtqCVWPN9dNEHV
 PKrWrQ2W33WOmSkueYqkFHCVdIxEVe5GG9ro7c0+1G/23FerkzqOO3LVF5xcLtZX2M8d
 TTy+6avY/wDSYEwNu5rJfFCpAxH8rUUHbSK8j2FJfc8DXNq9ao4+jeQRQXlik80NcBT7
 pdv/VjUzAqc1EFiEdAiSYYAfYCFHRMOORZpAdmxLuBoDttCUrCjdDmjfwEzuTp8lfsIl
 +WPA==
X-Gm-Message-State: APjAAAWy3XTpy5POQGNMrU3RxXBFl8CTl4f2YpgHmB7WoJHOxuQQnS7p
 0K/GgqWcm/troeusEp3mRQd9apxi
X-Google-Smtp-Source: APXvYqxKRNunAcobOCBM99+h3P7ofHJm9idjLpl1HCgi6/PRQgXTspPdXUvXOee0ReubfC+m1Lr/6A==
X-Received: by 2002:a17:902:324:: with SMTP id
 33mr117037501pld.340.1564578392879; 
 Wed, 31 Jul 2019 06:06:32 -0700 (PDT)
Received: from [10.0.2.15] ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id p20sm109750505pgj.47.2019.07.31.06.06.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 06:06:31 -0700 (PDT)
Subject: Re: [PATCH] mailbox: zynqmp-ipi-mailbox: Add of_node_put() before goto
To: Michal Simek <michal.simek@xilinx.com>, jassisinghbrar@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190709172841.13769-1-nishkadg.linux@gmail.com>
 <eaf1fcbe-615e-0fec-d330-ae94e8f3c102@xilinx.com>
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
Message-ID: <6a5306bd-946d-383f-0b42-f17675c24218@gmail.com>
Date: Wed, 31 Jul 2019 18:36:28 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <eaf1fcbe-615e-0fec-d330-ae94e8f3c102@xilinx.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_060633_771226_4982ED5D 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [122.163.105.8 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31/07/19 2:01 PM, Michal Simek wrote:
> On 09. 07. 19 19:28, Nishka Dasgupta wrote:
>> Each iteration of for_each_available_child_of_node puts the previous
>> node, but in the case of a goto from the middle of the loop, there is
>> no put, thus causing a memory leak. Hence add an of_node_put before the
>> goto.
>> Issue found with Coccinelle.
>>
>> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
>> ---
>>   drivers/mailbox/zynqmp-ipi-mailbox.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/mailbox/zynqmp-ipi-mailbox.c b/drivers/mailbox/zynqmp-ipi-mailbox.c
>> index 86887c9a349a..bd80d4c10ec2 100644
>> --- a/drivers/mailbox/zynqmp-ipi-mailbox.c
>> +++ b/drivers/mailbox/zynqmp-ipi-mailbox.c
>> @@ -661,6 +661,7 @@ static int zynqmp_ipi_probe(struct platform_device *pdev)
>>   		if (ret) {
>>   			dev_err(dev, "failed to probe subdev.\n");
>>   			ret = -EINVAL;
>> +			of_node_put(nc);
>>   			goto free_mbox_dev;
>>   		}
>>   		mbox++;
>>
> 
> Patch is good but when you are saying that this was found by Coccinelle
> then it should be added as script to kernel to detect it.

This particular patch was suggested by a script I did not write myself; 
someone else wrote it and sent it to me. How should I proceed in this case?

Thanking you,
Nishka

> Thanks,
> Michal
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
