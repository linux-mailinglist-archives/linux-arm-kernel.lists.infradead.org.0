Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B93FDF449B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 11:35:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CEeUUy95V1rDFK29kwAclaGIFhVOphXgv/oQCyi/Gf8=; b=CuXd1foBZldGl2+pP7cG8lGZe
	PyLfztFMoQ/C5M+KTZ6QVeOavD7WKuzLy7vn51Xe+PywtI9Em7jxJRVwdoHzgKVR7soLep0CvS7P0
	c2AXICveac1o0Z5aS9qa56yYPkmBCc/CPBFLQUKkXIVJZLRzdASqE3g5XUInhFXhx6/RUFKkUG034
	SAzbftsMLMeVliUAN4647H71BuuOgMNak+j5Lru8D2LW9NC8se7WUymCX9qpiOEBF0F00aCswV+OL
	qVUalB9KSHuNS1L20ptN4H5D3XWlw6ZiId1TBj7S3mFPG1RLY5S/9MQa1V2JJojQEiJSMDmqF9Tva
	8VkO56wIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT1cK-0003Kt-Qu; Fri, 08 Nov 2019 10:35:48 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT1cD-0003KC-5L
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 10:35:42 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA8ARHkc030061; Fri, 8 Nov 2019 11:35:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=C7Ytb5ccJx46yUXyoXndkBMI9CQtxWg5KpH5r3iInZ8=;
 b=GH9uAbmNuzAIytWfQHvJoGGcaa3XfQizakPDih9XTMQcZNv9yhOju/+XEwD4dxMSI6Et
 MYAEj0TBlE1+zZj1WX/k00K4MA/26XQLwWeyUnpBmEOdzBDBNbdypQ0BZzflaf8BJOz7
 O/0OGDlxp3dnVm4cSnw9csIVXklDl+80lcd5vGDItgAMhtlHmLyh2z5jRgtowtpdyXYJ
 3FQuE9kZv35hNGwaI6s2LdO/E2srBP4ovFUwTVnJzax/VeQDlLG3rT9N5MOlbafFP+2R
 1TkjiJ9OaxFD89XLs3rqxWGcTNpX6T1WMPD0OeQ3PssVxWMrlpA2Ejms/k0v8F27yeLk 7g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w41vmu27x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 08 Nov 2019 11:35:30 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 93442100034;
 Fri,  8 Nov 2019 11:35:26 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7CB1F2B0FED;
 Fri,  8 Nov 2019 11:35:26 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 8 Nov
 2019 11:35:23 +0100
Subject: Re: [PATCH V4 net-next 0/4] net: ethernet: stmmac: cleanup clock and
 optimization
To: David Miller <davem@davemloft.net>, <christophe.roullier@st.com>
References: <20191107084757.17910-1-christophe.roullier@st.com>
 <20191107.152640.1457462659040029467.davem@davemloft.net>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <8c4efcce-b46f-ac94-a367-50ff5d78c8a2@st.com>
Date: Fri, 8 Nov 2019 11:35:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191107.152640.1457462659040029467.davem@davemloft.net>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-08_02:2019-11-07,2019-11-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_023541_641797_E56E6181 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, robh@kernel.org, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, joabreu@synopsys.com,
 andrew@lunn.ch, mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi David

On 11/8/19 12:26 AM, David Miller wrote:
> From: Christophe Roullier <christophe.roullier@st.com>
> Date: Thu, 7 Nov 2019 09:47:53 +0100
> 
>> Some improvements:
>>   - manage syscfg as optional clock,
>>   - update slew rate of ETH_MDIO pin,
>>   - Enable gating of the MAC TX clock during TX low-power mode
>>
>> V4: Update with Andrew Lunn remark
> 
> This is mostly ARM DT updates, which tree should this go through?
> 
> I don't want to step on toes this time :-)
> 

I'll take DT patches in my STM32 tree.

Thanks
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
