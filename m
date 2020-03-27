Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2727F19533B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 09:47:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ODuU7tFGGZEJyt42cfj3Ky85X0iW4L3obdqc3+wg0qs=; b=LfX58H+M0KsJ6h
	p9fOHldhEN2/XE/nG6UW77UxOszftfN0JNlX7QlzNv6wDkm/Z93D8wQatO3ggGKcmZ9bORQnBD/m+
	x+tR4BNBJo6S0qiuDyZRT2G5s/doFp2qJf6PJWG6RKPc+NVHkJnU+9Eig6PzjzjzrQ6DKLO8fggZT
	lp/YdC/3pgOOi/8ODKnzogDO6WN31idYjNd8xN3hk2fmbVyLJAyAwAJs0063kZzvI9wDGCtx+217I
	x17DSI7K8NmJWo5hZrN5KUoVXp28y8tFCj2P5/c11jC2Qhj8XqNxoQkI4wAhz9m/VyrmeIiAdHuwd
	5Ez4tNpgZL2s1f0pVxeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHke7-0005CO-Lo; Fri, 27 Mar 2020 08:47:19 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHkdv-00059P-Fp
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 08:47:09 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02R8gLtS031851; Fri, 27 Mar 2020 09:47:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=YJw8XoTO1v1PRGqYcjUGZSKR+X2/a6Uk4mv/NSHkJo8=;
 b=SnI+snLZWTU/DrJFlg1DOyaQQ0TcS9te3M3/UemSgMwEcK+W/YEWs45YsFX/iEMeZ8Th
 RVi63AgBytgWVMQpl0mXOmy1H8Vq3o8qdBful3gsK9VR7ABDne1VWwlWw6T2PFmi+h3z
 2lxhYojVMu86AYcWR404xVcthmdBodsxAAT3JXns5rRdY4oTUX0fyKlt+bPfWaP3iRhb
 wehSPUNKi+7Hf4r+R3zhRTJbdT8COLEukz/Ifpqp5M9fE+frmTmsEAPhN30R3y4tRM0e
 H/vkrlbnoR5LvyfCOaMJiAzUH/aTyBoIUp5MC61QFtMibE3fBn3hBGN/eDQ0YqEAUl8V Og== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2ywappgpfx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 27 Mar 2020 09:47:02 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BD9BF100034;
 Fri, 27 Mar 2020 09:47:01 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B138921F663;
 Fri, 27 Mar 2020 09:47:01 +0100 (CET)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 27 Mar
 2020 09:47:01 +0100
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Fri, 27 Mar 2020 09:47:01 +0100
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Alain Volmat <avolmat@me.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-i2c@vger.kernel.org"
 <linux-i2c@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] i2c: i2c-st: fix missing struct parameter description
Thread-Topic: [PATCH] i2c: i2c-st: fix missing struct parameter description
Thread-Index: AQHWA7S25N2xB719JUWj+X22ne9jPKhcEGIA
Date: Fri, 27 Mar 2020 08:47:01 +0000
Message-ID: <0b432170-8ae0-d5c3-7557-fe6d606782f7@st.com>
References: <20200326212243.17363-1-avolmat@me.com>
In-Reply-To: <20200326212243.17363-1-avolmat@me.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
Content-ID: <679754E3029C214598936C34C70CF6F2@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-27_02:2020-03-26,
 2020-03-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_014707_981243_3A2458F3 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alain

On 3/26/20 10:22 PM, Alain Volmat wrote:
> Fix a missing struct parameter description to allow
> warning free W=1 compilation.
>
> Signed-off-by: Alain Volmat <avolmat@me.com>
> ---
>  drivers/i2c/busses/i2c-st.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/i2c/busses/i2c-st.c b/drivers/i2c/busses/i2c-st.c
> index 54e1fc8a495e..f7f7b5b64720 100644
> --- a/drivers/i2c/busses/i2c-st.c
> +++ b/drivers/i2c/busses/i2c-st.c
> @@ -434,6 +434,7 @@ static void st_i2c_wr_fill_tx_fifo(struct st_i2c_dev *i2c_dev)
>  /**
>   * st_i2c_rd_fill_tx_fifo() - Fill the Tx FIFO in read mode
>   * @i2c_dev: Controller's private data
> + * @max: Maximum amount of data to fill into the Tx FIFO
>   *
>   * This functions fills the Tx FIFO with fixed pattern when
>   * in read mode to trigger clock.

Reviewed-by: Patrice Chotard <patrice.chotard@st.com>

Thanks
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
