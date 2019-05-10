Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A01319931
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 09:51:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7NyvBClxhYlIkOV/VzM0yOF3wpAG0K/tjSI4fyCM2uA=; b=ZgJ8Nk6e9leZQ1
	k7PgwsrZTGNsG7J7bOQ5Ca+YlKqYYCOe+HchjqZKAztuE/h4jnjZZweB581nk1GI9ZxwfuJyV8+0p
	my88UY9rfTYNKXFOkNgDqXPTtlAxyRkFzZg0GtqAnyubFM5YH2NEyehcWuAQ17zq30YYeuakUqteT
	r7xqLURosUNFU6omU289aDhStCnTDs3aSzMCT5EBq18laVtxfyr2CvECEubDe+LXBf4LmbWNhoXWy
	17kcwYoBzUBhe0SYiKM4ejntiCE3jfM5DNuukyShelPXIxVYix7/80VPlE1VOTMzr7DxO2VpoIqJ4
	mj4mlWo1Jtm3zIbvg7+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP0JO-00080g-In; Fri, 10 May 2019 07:51:22 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP0JG-000800-De
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 07:51:16 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4A7ke2e019336; Fri, 10 May 2019 09:51:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=nmDxg4+93XGhQH+CBc6pkLSbg19CIe1swFbFgCL8ynY=;
 b=uR/72ikBnHLXDX5yi8jl/nbg4R6bAWIlVXcz+WyWuipKJP7UA4+VROg3MFgElPvXKUu+
 PrAexkTBVIP4hZvUSn3QFTiBL/0r8aRlUL33o9THxXKlkhyz5LuG668SvRR2d77uRgYR
 M/rENVvB5J8brAwKB4ZCsUnECND3xm58KDJtaUdq4jzUIj+R90IbaWrTd51J6ZryrrdQ
 OEDsDGHUo3K8vAu7mCrb8bwT1NIpnrAZyXoj7ylz1ceOibnGzdXqbSCOlkxgiaGKw7Hp
 G1CYGHSnbQ1RR4cAl9bndfPzGH7buA5hNwhCCSQAnJ/wXMwyg6CBKYzauGASOmzG6XEN LQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2scdjp7fum-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 10 May 2019 09:51:04 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9800A3D;
 Fri, 10 May 2019 07:51:03 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 10EFC15CE;
 Fri, 10 May 2019 07:51:02 +0000 (GMT)
Received: from [10.48.0.167] (10.75.127.44) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 10 May
 2019 09:51:02 +0200
Subject: Re: [RESEND PATCH v5 0/3] Add PM support to STM32 LP Timer drivers
To: <thierry.reding@gmail.com>
References: <1555580267-29299-1-git-send-email-fabrice.gasnier@st.com>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <45e934af-d677-d7d4-09ea-3ed01872dab6@st.com>
Date: Fri, 10 May 2019 09:51:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1555580267-29299-1-git-send-email-fabrice.gasnier@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-09_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_005114_752544_046412E3 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 Loic PALLARDY <loic.pallardy@st.com>, tduszyns@gmail.com,
 Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
 linux-pwm@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 u.kleine-koenig@pengutronix.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/18/19 11:37 AM, Fabrice Gasnier wrote:
> This patch series adds power management support for STM32 LP Timer:
> - PWM driver
> - Document the pinctrl states for sleep mode
> 
> It also adds device link between the PWM consumer and the PWM provider.
> This allows proper sequencing for suspend/resume (e.g. user will likely
> do a pwm_disable() before the PWM provider suspend executes), see [1].
> 
> [1] https://lkml.org/lkml/2019/2/5/770
> 

Hi Thierry,

Please let me know if you have some more comments on this series. It's
been under review since quite some time now.

Thanks in advance,
Best Regards,
Fabrice

> ---
> resend v5:
> - update collected acks
> 
> Changes in v5:
> - improve a warning message, fix a style issue.
> 
> Changes in v4:
> - improve error handling when adding the PWM consumer device link.
> 
> Changes in v3:
> - Move the device_link_add() call to of_pwm_get() as discussed with Uwe.
> 
> Changes in v2:
> - Don't disable PWM channel in PWM provider: rather refuse to suspend
>   and report an error as suggested by Uwe and Thierry.
> - Add patch 3/3 to propose device link addition.
> - No updates for STM32 LP Timer IIO driver. Patches can be send separately.
> 
> Fabrice Gasnier (3):
>   dt-bindings: pwm-stm32-lp: document pinctrl sleep state
>   pwm: stm32-lp: Add power management support
>   pwm: core: add consumer device link
> 
>  .../devicetree/bindings/pwm/pwm-stm32-lp.txt       |  9 ++--
>  drivers/pwm/core.c                                 | 50 ++++++++++++++++++++--
>  drivers/pwm/pwm-stm32-lp.c                         | 25 +++++++++++
>  include/linux/pwm.h                                |  6 ++-
>  4 files changed, 82 insertions(+), 8 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
