Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD8F1464D8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 10:50:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GXfbNpm0YxNP9bfOqHnKdkkHCg5exzUaQfje7q28I4c=; b=I1gojkBbdBRpSJ
	TzoItdOizjK+8ss38k8EGF5NscF3NrPQ6sApKy+QGFkVT8TmxqR2/PnH7ohR2m8LHuOxjtFBynqBn
	Qy2SJWU9eW6X9L8K8acYPxIGBKy1ZPDFBlGyRwXZRKe7YPfhKy2XJ7oRgdE90XbjkDL6AUG4kl+8o
	D1uaPPmmEVr7JRxxWk/UNl8T73Wpg7tPj3iiv4nDCf4/qXNN2dV+AWGdVv8k3eRYrQNpH7YSbr2vE
	6lLLmYX4g6+4e8I7c7udwtHG6Q/s6ujGyuZ8KEb0MsIVtCw1CEmHGMbEWvLjsH2u/v2QVw47eLiVc
	tQc1YBo1LPUK/RkEjrgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuZ8D-0000yX-UK; Thu, 23 Jan 2020 09:50:33 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuZ84-0000y6-16
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 09:50:25 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00N9mC5Q013055; Thu, 23 Jan 2020 10:50:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=VwFgZA3ENkr4wIyA31Obvdi/AAKtkni3+KY4rJlzHMs=;
 b=LVsT6ioG6OWPssN+/S4MezG3RsJ7evvEmpBY5yKBRmoyWM1WPp0X6TcfK9zov3b3S3lA
 SOLxChz8C4O/SGFFan4wZwx+LtdyBjvec4V1/j134J2UIDyK54ri6A+LuTJZ+xWQiTYM
 6R8sCHbiNbJHJjvc+kFtMKjyoY7w2TP0jwEfCT81TZA6Aq1R5OHUDz4akunIjVKu/xEO
 q5vO3vDpdZmRusqK9a/Evp81qCKpDEigTEBEpyCpqBt8o5nWLQHIzXr9AEkQIPH/Qey/
 8cgRFs/b7BFSZxPFlvirB6IHS6oHR0iVn3BxEmkjb+AnaIVOaLPrhu7YAhzq5gpjGguA ug== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xkr1e9hdd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 23 Jan 2020 10:50:20 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E174C10002A;
 Thu, 23 Jan 2020 10:50:15 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CFF1E210F62;
 Thu, 23 Jan 2020 10:50:15 +0100 (CET)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 23 Jan
 2020 10:50:15 +0100
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Thu, 23 Jan 2020 10:50:15 +0100
From: Philippe CORNU <philippe.cornu@st.com>
To: Yannick FERTRE <yannick.fertre@st.com>, Benjamin GAIGNARD
 <benjamin.gaignard@st.com>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Alexandre
 TORGUE" <alexandre.torgue@st.com>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] drm/stm: ltdc: check crtc state before enabling LIE
Thread-Topic: [PATCH] drm/stm: ltdc: check crtc state before enabling LIE
Thread-Index: AQHV0EOHho8B9v26AUyqZ6ivXPGugqf387oA
Date: Thu, 23 Jan 2020 09:50:15 +0000
Message-ID: <f925ddf5-3265-638b-14b9-71b549b5a9ad@st.com>
References: <1579601650-7055-1-git-send-email-yannick.fertre@st.com>
In-Reply-To: <1579601650-7055-1-git-send-email-yannick.fertre@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
Content-ID: <82F3CF1E33F8AD498EA79D13D2A5A156@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-23_01:2020-01-23,
 2020-01-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_015024_361303_EC12590E 
X-CRM114-Status: GOOD (  21.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Dear Yannick,
Thank you for your patch,

Acked-by: Philippe Cornu <philippe.cornu@st.com>

Philippe :-)

On 1/21/20 11:14 AM, Yannick Fertre wrote:
> Following investigations of a hardware bug, the LIE interrupt
> can occur while the display controller is not activated.
> LIE interrupt (vblank) don't have to be set if the CRTC is not
> enabled.
> 
> Signed-off-by: Yannick Fertre <yannick.fertre@st.com>
> ---
>   drivers/gpu/drm/stm/ltdc.c | 7 ++++++-
>   1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/stm/ltdc.c b/drivers/gpu/drm/stm/ltdc.c
> index c2815e8..ea654c7 100644
> --- a/drivers/gpu/drm/stm/ltdc.c
> +++ b/drivers/gpu/drm/stm/ltdc.c
> @@ -648,9 +648,14 @@ static const struct drm_crtc_helper_funcs ltdc_crtc_helper_funcs = {
>   static int ltdc_crtc_enable_vblank(struct drm_crtc *crtc)
>   {
>   	struct ltdc_device *ldev = crtc_to_ltdc(crtc);
> +	struct drm_crtc_state *state = crtc->state;
>   
>   	DRM_DEBUG_DRIVER("\n");
> -	reg_set(ldev->regs, LTDC_IER, IER_LIE);
> +
> +	if (state->enable)
> +		reg_set(ldev->regs, LTDC_IER, IER_LIE);
> +	else
> +		return -EPERM;
>   
>   	return 0;
>   }
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
