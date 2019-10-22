Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86086E055B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 15:42:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KYcq8iLV6UNjOg/O7mNevGNs7TkSVbwYkSnu/jlviv8=; b=PT6e5VRN+1RGhx
	jmlpernwju1d/OE/IfqfDY0RMullQoVHBRZgPz9rH4x4Lb78nMe8QJzrS+5/PtkipY1CiWmHXn8un
	4R5r1FihOeh2xPUzREBCqJIa5vAwwNXOHwL/uUTLPy/xx4kCkbuhQMWMD1iRECKYgus3tiH2mO5zv
	uvit1yhjEDBIpsGZyAoGwmChafGUvZVUwRBAUisPFSPiH2J/U+v8iEn4rFzNGDyfZAwOFV4mrUQoB
	MPEXQgYNfY+r1sgLV1LkqzPNSgqINdpA3j5xfNYDHyGxnfZNSczK86D0OW8KXexQf6Bxv7CDhXLqn
	gm3ALF14OPqth6bDxMsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMuQN-0005wI-Bk; Tue, 22 Oct 2019 13:42:11 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMuQ7-0005vo-QO
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 13:41:57 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9MDfKcR013037; Tue, 22 Oct 2019 15:41:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=6OiFUl1fdaeRq1DoqLpiVMazeaoQpnE/nLtSGyzhd/8=;
 b=lpZh7ZFe5rXJeK1A8+nZpUxIAl5J+lyHSBolGt5yILdDdCixYyq0pd75X4DHt5qw4iN6
 Chhy29zxH9wMp5nLYqg5X0Ww9SS4s/n1uZmnzN1jToNgKBMQ+/BqpK+sA7OTfgraKDJ1
 EkESAXyPc64j9G8WxNAC4qz1xjqLBKlsot1KbBJ3kcEffBg6as2XW6HB0aOLkymTtF50
 U1TjOid7B2eWC8OQO/cVGRICKfvuuL+DuXXydzPOFe2BDYCqh4EI1/O5kKBpyouROIyI
 Zzb2YWpKOBD8XLYWe1r2fnugylUGykNsBjGxdiT6XNV5O8/OXyuEz2f7/etuXGkSMu+N Ew== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vqqy17uyd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 22 Oct 2019 15:41:50 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6E57310002A;
 Tue, 22 Oct 2019 15:41:50 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node2.st.com [10.75.127.14])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5C9BB2AE210;
 Tue, 22 Oct 2019 15:41:50 +0200 (CEST)
Received: from [10.48.1.171] (10.75.127.51) by SFHDAG5NODE2.st.com
 (10.75.127.14) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 22 Oct
 2019 15:41:49 +0200
Subject: Re: [PATCH] i2c: i2c-stm32f7: rework slave_id allocation
To: Alain Volmat <alain.volmat@st.com>, <wsa@the-dreams.de>,
 <robh+dt@kernel.org>
References: <1571144589-3066-1-git-send-email-alain.volmat@st.com>
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
Message-ID: <7092a0d6-2f6a-fa1f-2999-17418b479c5f@st.com>
Date: Tue, 22 Oct 2019 15:41:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1571144589-3066-1-git-send-email-alain.volmat@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG5NODE2.st.com (10.75.127.14) To SFHDAG5NODE2.st.com
 (10.75.127.14)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-22_03:2019-10-22,2019-10-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_064156_164948_2DCB01DD 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello

Looks good

Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>

Thx
Regards

On 10/15/19 3:03 PM, Alain Volmat wrote:
> The IP can handle two slave addresses. One address can either be
> 7 bits or 10 bits while the other can only be 7 bits.
> In order to ensure that a 10 bits address can always be allocated
> (assuming there is only one 7 bits address already allocated),
> pick up the 7-bits only address slot in priority when performing a 7-bits
> address allocation.
> 
> Fixes: 60d609f3 ("i2c: i2c-stm32f7: Add slave support")
> 
> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> ---
>  drivers/i2c/busses/i2c-stm32f7.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
> index d36cf08461f7..cfae01b15243 100644
> --- a/drivers/i2c/busses/i2c-stm32f7.c
> +++ b/drivers/i2c/busses/i2c-stm32f7.c
> @@ -1265,7 +1265,7 @@ static int stm32f7_i2c_get_free_slave_id(struct stm32f7_i2c_dev *i2c_dev,
>  	 * slave[0] supports 7-bit and 10-bit slave address
>  	 * slave[1] supports 7-bit slave address only
>  	 */
> -	for (i = 0; i < STM32F7_I2C_MAX_SLAVE; i++) {
> +	for (i = STM32F7_I2C_MAX_SLAVE - 1; i >= 0; i--) {
>  		if (i == 1 && (slave->flags & I2C_CLIENT_PEC))
>  			continue;
>  		if (!i2c_dev->slave[i]) {
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
