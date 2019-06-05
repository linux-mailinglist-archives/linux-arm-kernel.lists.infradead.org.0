Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EB9359E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 11:53:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FFklh+R6ZHg958Tyq8u4Q1xSmxeseAmburPyTmxE+Qc=; b=dYMZgGfFeD1eDr
	b4CP/nn5KDHiQjz7s6ZEMmPBKF+T4KDjPxwBj5pQ0DVjkW0xCICVUwq0t9GxBpKCNAc/Qk4At5plu
	nttKkuG6kqnl4kQ2u1xhbRQW7cJB6p/XsUr+QK1xiMLcQvRd/97wafFvczz6J9IYDPiMlWu0QydcN
	jJYE0mlLQcYbn9eTEsDbwYfDKik/oE1HXP0oAhiHJtYB6ulHm9x1c6hfNHUY2ZeRIsxXLwc0aASET
	61IE5bgST+H/Y9+hNUBdxPB2S/2wJIOc/hIXlbGlmXr7EGVqajZIDy6hZBeM2T60r0sOScuK10tGm
	jfx0P2p1eHzBfnupYsHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYSbe-0001YG-0i; Wed, 05 Jun 2019 09:53:18 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYSbW-0001Xr-RN
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 09:53:12 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x559qAUa006990; Wed, 5 Jun 2019 11:52:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=QAM96c5x86qtvrcwPA8iFjsdl0keQYZLN5l0wUdrcH4=;
 b=T+xYyd3lN4+QwhVqtmPs285cdb1IwzOyokvWfCgDUhtMnnleJ+BuThjGe8BQC2qPG8gm
 Xlg2+3138kxiOTKGnX9wFhkTKzzPINpNhcBeGUIuubEwd+tUOMNXByaVLtlhBFff4gvN
 5s7Rpk9bXV14j/KHy4i9OJklJregeb2wB56k46ilh2evMQUZxxoTAShYL4aqyjcVtKKK
 4gXY0TRZjhlLKZfOy4n2SGJDuL8CmofQInzBaCGAf6Cmn1BAaQHO7nvzi7GifL+O0JdY
 IoEkKl/8Gh2DT/4dQcbq6vqrjRgcCOnRYftv3OR2pQGbtK0FTXGKSro921+UJbN6tICE tA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sunds5v86-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 05 Jun 2019 11:52:45 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8974334;
 Wed,  5 Jun 2019 09:52:27 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 608C425FA;
 Wed,  5 Jun 2019 09:52:27 +0000 (GMT)
Received: from SFHDAG3NODE1.st.com (10.75.127.7) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 5 Jun
 2019 11:52:27 +0200
Received: from SFHDAG3NODE1.st.com ([fe80::1166:1abb:aad4:5f86]) by
 SFHDAG3NODE1.st.com ([fe80::1166:1abb:aad4:5f86%20]) with mapi id
 15.00.1347.000; Wed, 5 Jun 2019 11:52:27 +0200
From: Erwan LE RAY <erwan.leray@st.com>
To: YueHaibing <yuehaibing@huawei.com>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "jslaby@suse.com" <jslaby@suse.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>, Alexandre TORGUE
 <alexandre.torgue@st.com>, YueHaibing <yuehaibing@huawei.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
Subject: Re: Fwd: [PATCH -next] serial: stm32: Make stm32_get_databits static
Thread-Topic: Fwd: [PATCH -next] serial: stm32: Make stm32_get_databits static
Thread-Index: AQHVG22K0BtbDefYo066WH7MNa5zfKaMsGAA
Date: Wed, 5 Jun 2019 09:52:27 +0000
Message-ID: <1eb3edf6-054d-be59-340c-312f57815912@st.com>
References: <20190528090449.22868-1-yuehaibing@huawei.com>
 <e7a74cb7-fd9f-89d2-8314-5e216eae2d13@st.com>
In-Reply-To: <e7a74cb7-fd9f-89d2-8314-5e216eae2d13@st.com>
Accept-Language: en-US, fr-FR
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.50]
Content-ID: <BB60DC7AEE09EE43BA33DB5BCAA320CD@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-05_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_025311_226917_5903738B 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

OK for me.

Erwan.


On 6/5/19 9:08 AM, Fabrice Gasnier wrote:
> Un autre qu'on avait pas vu...
>
>
> -------- Forwarded Message --------
> Subject: [PATCH -next] serial: stm32: Make stm32_get_databits static
> Date: Tue, 28 May 2019 17:04:49 +0800
> From: YueHaibing <yuehaibing@huawei.com>
> To: gregkh@linuxfoundation.org, jslaby@suse.com,
> mcoquelin.stm32@gmail.com, alexandre.torgue@st.com
> CC: YueHaibing <yuehaibing@huawei.com>, linux-serial@vger.kernel.org,
> linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
> linux-stm32@st-md-mailman.stormreply.com
>
> Fix sparse warning:
>
> drivers/tty/serial/stm32-usart.c:603:14: warning:
>   symbol 'stm32_get_databits' was not declared. Should it be static?
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>   drivers/tty/serial/stm32-usart.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/tty/serial/stm32-usart.c
> b/drivers/tty/serial/stm32-usart.c
> index 9c2b04e..4517f2b 100644
> --- a/drivers/tty/serial/stm32-usart.c
> +++ b/drivers/tty/serial/stm32-usart.c
> @@ -600,7 +600,7 @@ static void stm32_shutdown(struct uart_port *port)
>   	free_irq(port->irq, port);
>   }
>   -unsigned int stm32_get_databits(struct ktermios *termios)
> +static unsigned int stm32_get_databits(struct ktermios *termios)
>   {
>   	unsigned int bits;
>   -- 2.7.4
>
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
