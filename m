Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88730688CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:16:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CM+feabS3fR0FwL+cXBUDSBWvwk0QZs9yPCVIhzj4j0=; b=KSUHLidUo6hg2ZZcK8d9Kk6kO
	mnfE4a+y/dDcY/Dnu39BjcX6japz6fXMXRHv2SlYP1lFz4tG2jYEShTPPXYeFPqrmV5l1r9uP34ew
	nNkVOK8JhuhhqVCEeIj//OSptHgrHkXebJplIX43/Z8U0N8Iv5l0OUk849eemd8DpDzhLAr7lu9Tk
	raYpFlIvgpj2BbAhtdo3U/8yt1qPCi3xCebrdf1Q6/wR42/e5xEXJp5BhvocLDxozPwYeJmg7vCQ6
	3snGtQWOqBRZIU9gYJTuOQiolpKCl6dSLJWfvsKeln/gkbEB04n5Q9zvaHt/UKkYaRyruLZn15ICS
	GdHPakqpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmzuR-0001YL-F8; Mon, 15 Jul 2019 12:16:47 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmzu3-0001XT-F5
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:16:25 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6FCBQ5h009666; Mon, 15 Jul 2019 14:16:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=0l0KWOudOwGD2GtNuFmuRfvglfpfZeZ5RNdf9uOHeo0=;
 b=HP6LhfEFwOGytesGTPLouOmjkvT73WCWzofcDDaFPsBk4E4YOdWvUKOce6D0w6HeycZm
 /TybVWNAgSX4N7fOuqV1k0XMUSBnjRYOg2OIyksaIr+8EA3JvvnrTZ/Ak2wbUr/VbehO
 u6yHIkPHG0cJExOajvnbGyF9EBLkjEl9Wd3IUoM9k6Xv0USFw5U3IZmY+w0gRKF6LiPd
 5v8emB2hPy38flTQdjbGqHPY3Kffb6n//vJ1DGBqc2vJ902MqQLxzc0jpvfc0A0aKLij
 pomAXm24Nje8yyoUEL0Nsvary7/I+ERwb1ZbVsDPoMUhlKtn3cbI5lDJ47j6iLJJ+P/T /Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tq52u5sfh-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 15 Jul 2019 14:16:17 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BF70134;
 Mon, 15 Jul 2019 12:16:15 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 978E42A8D;
 Mon, 15 Jul 2019 12:16:15 +0000 (GMT)
Received: from [10.48.0.131] (10.75.127.50) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 15 Jul
 2019 14:16:14 +0200
Subject: Re: [RFC 2/2] rpmsg: imx: add the initial imx rpmsg support
To: Richard Zhu <hongxing.zhu@nxp.com>, Oleksij Rempel
 <o.rempel@pengutronix.de>, "ohad@wizery.com" <ohad@wizery.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>
References: <AM0PR0402MB3570E209B4940C3772D56AC98CCF0@AM0PR0402MB3570.eurprd04.prod.outlook.com>
From: Arnaud Pouliquen <arnaud.pouliquen@st.com>
Message-ID: <03420f31-0982-4bd9-303a-60b787638775@st.com>
Date: Mon, 15 Jul 2019 14:16:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <AM0PR0402MB3570E209B4940C3772D56AC98CCF0@AM0PR0402MB3570.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG6NODE1.st.com (10.75.127.16) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-15_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_051623_882500_3CF4AE75 
X-CRM114-Status: GOOD (  28.75  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Fabien DESSENNE <fabien.dessenne@st.com>,
 "loic.pallardy@st.com" <loic.pallardy@st.com>,
 "elder@linaro.org" <elder@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 7/15/19 10:22 AM, Richard Zhu wrote:

<snip>

>>>> sg693v6UjM%2BFEk7TYHxgg6RDX611%2FKfjqA%3D&amp;reserved=0
>>>>>
>>>>> M core/RTOS insists to run and manage its resources assigned by XRDC
>>>> standalone.
>>>>> All the interactions between A core and M core are transferred on
>>>>> RPMSG
>>>> channels.
>>>>> For example, the audio codec configuration and so on.
>>>>> So, what I do here is just setup the communication RPMSG channels
>>>>> between A core/Linux and M core/RTOS.
>>>>>
>>>>> One more concern, I'm afraid that I may mess up the current solid
>>>>> reproc flow and framework if  I force this implementation into the
>>>>> current
>>>> reproc drivers.
>>>>> So, I summit this patch-set in the end. Pre-reserved vring buffer,
>>>>> register virtio_device, establish the RPMSG channels lets A
>>>>> core/Linux and
>>>> M Core/RTOS can communicate with each other.
>>>>> That's all.
>>>> Your concern is valid, and as we have the same requirement, it would
>>>> be nice to find a common solution. That's why i propose this
>>>> alternative, which would have the advantage of reusing existing rpmsg
>> implementation.
>>>>
>>>    [Richard Zhu] I looked through the codes briefly. Correct me if my
>> understand
>>>    is wrong.
>>> It seems that the A core side does a lot of manipulations to the remote M4
>> core
>>>    on ST32M.
>>> During the start/stop/recovery operations, M4 acted as slave and waiting
>> for the
>>>    control constructions sent from the master A core/Linux side although
>> the
>>>    early_boot is set.
>>>
>>> There are some differences in the relationship between A core and M core.
>>> On ST32M: M4/RTOS would started/stopped/recovered by A core/Linux
>> side.
>>>
>>> In my purposed implementation, both A core/Linux and M core/RTOS
>> working in the real
>>>    independent mode.
>>> - M4/RTOS complete the start/stop/recovery and son on operations by itself,
>> it wouldn't
>>>    accept any start/stop/reset interactions from A core/Linux side. Same to
>> A core/Linux side.
>>> - SCFW monitors the running status of each side, would notify the other side,
>> if there is a
>>>    system stall at one side.
>>>    when the lived side receives the notification and know the other side is
>> reset,
>>>    It would only recover its own rpmsg stack, wait the rpmsg "ready" signal
>> of the opposite side,
>>>    then re-establish the rpmsg channels again.
>>>    A core/Linux or M core/RTOS wouldn't do the start/stop/recovery
>> operations on the opposite side.
>> On STM32MP1 we have not exactly the same strategy but it only a ST design
>> choice, implemented in our stm32 remoteproc driver. You should be able to
>> implement your expected behavior in your the imx remoteproc driver.
>>
>> On STM32MP1 we manage the M4 preloaded firmware in this way:
>> -  On Linux stm32 remoteproc probe:
>>          We detect that the firmware is preloaded (early-booted filed in DT)
>> and set the earl_boot variable.
>>          we provide the resource table address to the remoteproc core that
>> parses it an call the stm32_rproc_start. here we do nothing as M4 already
>> started we just set the hold boot to freeze the M4 in case of crash
>>
>> - On M4 crash we have not the same strategy as your one. We consider that
>> the M4 firmware can be corrupted and either we try to reload a firmware
>> which as been provided by application, or we don't let it restarting (hold boot
>> set on start).
>>
>> -We allow userland to stop the preloaded firmware to load and to run a new
>> one.
>>
>>>
>>> Anyway, let me do some more homework, and figure out that whether I
>>> can fit these into the existing remoteproc framework or not.
>> Sorry to give you homework... but seems (IMHO) possible to integrate your
>> constraint in rpmsg/remoteproc current design.
>>
> [Richard Zhu] Hi Arnaud, I still can't find a way to combine this patch-set with the master/slave mode.
> Regarding to my understand, almost all the defined items of the struct rproc is used by the master(A core/Linux) to control/manipulate the slave remote slave processor.
> It's fine when the master(A core)/Slave(remote processor) mode is used.
> 
> But it's too hard to apply the slave/master mode into this scenario.
> - M core/RTOS insists to run and manage its resources assigned by XRDC standalone.
Please could you explain the dependency between XRDC management and the 
RPMsg protocol, i don't figure out the blocking point here. So maybe i 
missed something important.
> - M core/RTOS wouldn't accept the start/stop/recover/reset operations issued from A core/Linux side.
in addition with the patch https://lkml.org/lkml/2018/11/30/159 you can 
control this in your platform driver using the rproc->preloaded variable
> 
> So the parallel mode is used in my proposal, both A core/Linux and M core/RTOS works in real independent mode. There is no slave/master in this implementation.
They are independent in terms of live cycle but not in terms of 
communication. So you still need synchronization.
For instance your implementation uses a mailbox to synchronize both 
(mailbox rdb). In existing rpmsg/virtio driver similar synchronization 
is done through a status register in the resource table plus an optional 
mailbox kick from Linux to remote processor.

In case the Cortex-M4 starts first:
- The M4 firmware starts first (managing CAN)
- The Linux OS starts: it just parses the resource table, 
creates/allocates virtio rings and buffers, update the vdev status flag 
in the resource table and kick the M4 via mailbox.
- The M4 receive the mailbox kick, checks the vdev status and start the 
rpmsg communication.
This is what we have implemented on STM32MP1. And we are able to re-use 
the same M4 firmware booted first (independent mode) or loaded by Linux.

> All the items defined in the struct rproc can't be used in this scenario.
I would say can be ignored, but the idea is that same rproc manages both 
scenarios.
> IMHO, this patch-set is just to setup one communication channel between A core and M core.
> There are no salve remote processor instances at A core/Linux side, that can be controlled and manipulated by A core/Linux.
Yes i agree with you, no need to manage the remote processor in your case.
But the goal of remoteproc is not only the management of the remote 
processor but also the management of the shared resources (rpmsg, 
carveout, remote processor traces...). My proposal is to bypass the 
management of the remote processor live cycle using Loic's patches, but 
to keep the remoteproc part handling the associated resources to be able 
to probe RPMsg bus driver.

> 
> Is it possible to add another folder(e.x parallel_proc) under drivers/remoteproc/ to extend the current remoteproc work mode?
> Then, the parallel work mode can be setup in it. And the original master/slave mode wouldn't messed up by the parallel mode extension.
> Please to feel free to give the comments.
> Any comments and suggestions are appreciated.
IMHO, That's seems to be useless, if existing solution could be adapted. 
But I'm not the maintainer... just a contributor.


Best Regards
Arnaud

> 
> Thanks in advanced.
> 
> Best Regards
> Richard Zhu
>   

<Snip>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
