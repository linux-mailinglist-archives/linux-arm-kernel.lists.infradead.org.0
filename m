Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 817DA18BECC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 18:54:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h0ScWhDCyqWjvrPdcOFyGiH7x3c8EBwYvKfWSCha/sM=; b=o1r/I2kX9dmw+B
	t0w30HQQuGkUh1SKdiCOcL4hg0hHcO6Ed7jGrhqS+ji/fhDc6fZ+B99HxPDVMMVV515h6sBVtM3gh
	mxW2Cs6pLgQD2GMNEGg8HO02qW8UzO5sNYhkUGpGA1hdW+lXY5ne8BE/JTw9w2KraRQ1ahbkLBks9
	E/TbIhT3H2qW7AUze7WLIqUQwnVxanO00dI/MBcowVEzGbKt5+CkciR5bJyEJgwFm1lllO2iyDsMn
	/BTAbXwzgUP1OB4TYQ2BHTZ4ZsQ3ojzhTrlt65KvW9l2F9JnwcuUc19ON6Ij7Mbyr3k8VNLwrdWwT
	9IKCGN/WUHZDABNFu42w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEzMY-0004XH-CB; Thu, 19 Mar 2020 17:53:46 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEzMP-0004Wl-HN
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 17:53:39 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02JHm9SF030010; Thu, 19 Mar 2020 18:53:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=xhvicN/AH/49Tg2jHic/L9lkAzHjv3HYlGeap+CFKCw=;
 b=itPC5gsA4ELXAaE5a2xDmNDrb5QWsSt9ffWnFFkd989qno6/JM/OpyoT751KRmhW/tNQ
 71qYW6KimHr6RiyjbBsoHXLoJDqjWKcnirjzDlAMbVwek7QEQhR+Ik69n4vnor64SVHA
 4hCbsJHZMCrK5CPkIrUwH6pb9kkTCOuc5qvL4zMOLcXfH6lhm0OWuEP8vuyvHdiidnt5
 IJfMlkjybMUpN4QYPBsXJ6KsXlqPMPsN9yTboHVu94k1OUH6FGjAsoH+1B/HTR194Xzp
 nZgRYNOWW7u+QfXgNj0UJ9jkZT+EqGp6R266rND85YqQsEPi4/k1HkncEl4vdZmJAqgL 4w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yu8etk926-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 19 Mar 2020 18:53:27 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1CBB6100034;
 Thu, 19 Mar 2020 18:53:23 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id F0DC32BC7BA;
 Thu, 19 Mar 2020 18:53:22 +0100 (CET)
Received: from [10.211.9.6] (10.75.127.45) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 19 Mar
 2020 18:53:21 +0100
Subject: Re: [PATCH] dt-bindings: iio: dac: stm32-dac: convert bindings to
 json-schema
To: Rob Herring <robh@kernel.org>
References: <1584543037-32095-1-git-send-email-fabrice.gasnier@st.com>
 <20200319171231.GA17071@bogus>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <3a1474bd-ae64-96f8-d094-545e0e2eff6c@st.com>
Date: Thu, 19 Mar 2020 18:53:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200319171231.GA17071@bogus>
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-19_06:2020-03-19,
 2020-03-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_105337_870043_2DAE5C65 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 olivier.moysan@st.com, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/19/20 6:12 PM, Rob Herring wrote:
> On Wed, 18 Mar 2020 15:50:37 +0100, Fabrice Gasnier wrote:
>> Convert the STM32 DAC binding to DT schema format using json-schema
>>
>> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
>> ---
>>  .../devicetree/bindings/iio/dac/st,stm32-dac.txt   |  63 ------------
>>  .../devicetree/bindings/iio/dac/st,stm32-dac.yaml  | 110 +++++++++++++++++++++
>>  2 files changed, 110 insertions(+), 63 deletions(-)
>>  delete mode 100644 Documentation/devicetree/bindings/iio/dac/st,stm32-dac.txt
>>  create mode 100644 Documentation/devicetree/bindings/iio/dac/st,stm32-dac.yaml
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> Documentation/devicetree/bindings/iio/dac/st,stm32-dac.yaml: $id: relative path/filename doesn't match actual path or filename
> 	expected: http://devicetree.org/schemas/iio/dac/st,stm32-dac.yaml#
> 
> See https://patchwork.ozlabs.org/patch/1257568
> Please check and re-submit.

Hi Rob,

Just sent a V2.

I fear it's a copy/paste from another patch:
https://patchwork.ozlabs.org/patch/1223488/
dt-bindings: iio: adc: stm32-adc: convert bindings to json-schema

Should I send a fix for this one also ?

Please advise,
Fabrice
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
