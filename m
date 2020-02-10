Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FB8157FE3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 17:36:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EiGyNDhqjJBXm1IwOFswdBHVtQIAuvGYB/K9ccTzkj8=; b=HRS4k/EQuMTNAzCvaK8Onzp1y
	p9OF2h60tGg7UQM4UNHxEUTgxHA4x7tfzsIOYgl7DDj2F1qHeCMORZvCuorgIGXphDX11zYuxJqdP
	+Jw7Ady+JrIn96rNxHJ0shY+AUzTnB2e5GzUttDO5QO+xe3QzRTprYHA9yC0aygvn3691+pY7cIm2
	5IcmLN27XK911fFzfjXdfaBPrbiz/wsJzmeHHKhcdIfYUntN4hFBU8al31VKsvQCDu3frpbE19uyv
	RJ42cbRfVNeVvEdhzVJaekAv0VlIByKDYDRQ0BuGXhTUpY3wT3ImY8SrgnCQ7h0TgzzqejmxeamCH
	HGpYSfpJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1C2J-0003gn-RI; Mon, 10 Feb 2020 16:35:51 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1C2C-0003g7-Rc
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 16:35:46 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01AGYSUL006129; Mon, 10 Feb 2020 17:35:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=qKZmRcZSi7vak7LyjsXO+fZTe3l2QZ5+0c6nLeoNuM0=;
 b=f8LbZNS5jKiQHR8bOq8usyOskCcN9pGFAKUcejXqO6RNyVAKYR1mI9rf1oQHrsEYSBvf
 nrHYH1Rx2ONn5vaDEl3JxcWFq8Ne9/ToiR9Wmt8i8JXrDo+Qn0h9VkJycwybGOJNVleY
 dQdR0xLfpQ00ZVDaenfepwAaCTBK/1tWhtYoLnwGT33+KeHeXjSDTGcExg1UfKVyaKyl
 15PJJQSRQJ+NZmQTemWgjsjUpl+kG7xLS5UMlnHLC6OG7IqTHmlgFXwQkdbRWlTfsuf2
 zqdNJEbACXzYOW+MfG5TkxvbWOJzwSWkYZl1vuFnRA/XgNXVe5ch6cP9Oxk3IZC42zBo yQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1ud9c424-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 10 Feb 2020 17:35:39 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4BADE10002A;
 Mon, 10 Feb 2020 17:35:38 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 383592A7BFD;
 Mon, 10 Feb 2020 17:35:38 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.45) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 10 Feb
 2020 17:35:36 +0100
Subject: Re: [PATCH V2 6/6] ARM: dts: stm32: Add DH Electronics DHCOM STM32MP1
 SoM and PDK2 board
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
References: <20200119191143.50033-1-marex@denx.de>
 <20200119191143.50033-6-marex@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <1b288811-8ffb-a150-71ef-4c006e6d5740@st.com>
Date: Mon, 10 Feb 2020 17:35:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200119191143.50033-6-marex@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-10_06:2020-02-10,
 2020-02-10 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_083545_255833_47875E76 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Patrick Delaunay <patrick.delaunay@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek

On 1/19/20 8:11 PM, Marek Vasut wrote:
> Add support for DH Electronics DHCOM SoM and PDK2 rev. 400 carrier
> board. This is an SoM with STM32MP157C and an evaluation kit. The
> baseboard provides Ethernet, UART, USB, CAN and optional display.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: - Add stm32mp1 into the subject and commit message
>      - Sort DT alphanumerically
>      - Move all pincontrol entries into stm32mp15-pinctrl.dtsi
> ---

Thanks to add a new STM32 board.

Series applied on stm32-next.


regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
