Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C07D647BB8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 09:55:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4MH0bGL6hnsUdBoX22a4y+r/4fnMBPuJETWFq8NQh1M=; b=foTDWmZzkOYQ9U
	C3lY334E4chYwpbdltJVJDiYcdC01KTH3PSHKXZzdo3+9bLhe4xnfijVSjicCx9gKJHQub6uHyl4K
	lzPjdh0/UTDnVu4URMpl5QJgwCUiYvONHlxk1xljry2zcWhePVX6132G03uXZLNG4/vazi4jdqgGR
	8pbvv0AzPIPXlJSpuefuZ7eKDJmRtoVTqszJMJP5frSH20zZ7cdCeMiTlzyJEyo/7eNiRRkq4RpCl
	fhLw+051vjaUogMfA3x0RLxx+3KFSYbczmo0nKA99z75cao6FOtFLhBzzQHicp3Jrbmnmx2IC+Vfl
	rROgb66MkXaa3j5hGUTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmTh-00085Q-8U; Mon, 17 Jun 2019 07:54:57 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmTM-00084q-GC
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 07:54:42 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5H7rvFm026612; Mon, 17 Jun 2019 09:54:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=t1pIXwC6qKMp7Evdyj53O8stjYaD2xF5xcWOfJEKCQM=;
 b=1BUzi8rYjfd3WsBgAkJxfn5BE6hVwyPAZLfVhsAK98Q1s+kQeiwYRwQWznB/j/mprjDM
 pAD0yIVXV8rz9gw17zwLiqv/+7KNwOG6Fi50uAWk0N+2wgD5IimxLb3GsdpIVM3gaN9I
 T1/m146BnSTl0/4E42WwI9qRJti4n8VL3WtrWtx1zbySpH0FapzYbUnj7Vg3VRNaazFQ
 klmbJZ2a+lh2hEqLZFd27GljA2dsmsntpUU0IKIKgWaM2f25bVGTFNluB4BAp362E2/H
 Ra6KIPoZ+OIfUg3/e7fCV9Hb4mxeIUQN31seC9Y4hvwr+P6TwqnBh8RTcYEZb04oI3NY PA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2t4nt81hc3-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 17 Jun 2019 09:54:33 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 51CF031;
 Mon, 17 Jun 2019 07:54:33 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CDCD9166A;
 Mon, 17 Jun 2019 07:54:32 +0000 (GMT)
Received: from [10.48.0.167] (10.75.127.50) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 17 Jun
 2019 09:54:32 +0200
Subject: Re: [PATCH v2] i2c: i2c-stm32f7: fix the get_irq error cases
To: Wolfram Sang <wsa@the-dreams.de>
References: <1558020594-1498-1-git-send-email-fabrice.gasnier@st.com>
 <20190614205322.GA17899@ninjato>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <b1fb50c0-b5ee-dd73-0b8e-f025dd843cbe@st.com>
Date: Mon, 17 Jun 2019 09:54:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190614205322.GA17899@ninjato>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG8NODE3.st.com (10.75.127.24) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-17_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_005436_843342_3897F65E 
X-CRM114-Status: GOOD (  13.88  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.torgue@st.com, pierre-yves.mordret@st.com,
 marc.w.gonzalez@free.fr, linux-kernel@vger.kernel.org, fabien.dessenne@st.com,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/14/19 10:53 PM, Wolfram Sang wrote:
> Hi Fabrice,
> 
>> +		return irq_event ? irq_event : -ENODEV;
> 
> Maybe -ENOENT instead of -ENODEV? I mean you have a dev_err there, so
> the driver core should probably also complain?
> 
> You could also shorten the ternary operator to:
> 
> 	return irq_event ? : -E<whatyouprefer>;
> 
> However, both are minor nits. If you prefer to keep the patch as is,
> fine with me.

Hi Wolfram,

Thanks for reviewing,
I've sent a v3 with your suggestions.

Regards,
Fabrice
> 
> Regards,
> 
>    Wolfram
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
