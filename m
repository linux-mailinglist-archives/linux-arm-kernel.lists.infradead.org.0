Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C05A049DDA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:56:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Rzf4OHwsoX6a8T7yV04+vZyBUKhrMD3xsMLJiasBeU=; b=KR0PqCWk74WrjD
	d0iuMz2bcTtzQFarZthwtbqvEb4/eSC+KLfw6cicfyB2UEjLwtw0O/sTHKbEAvDk1TGglkTsxpmEB
	FrHlBlH2fTCvAn6+9W8o7U6BKC9Jcnc7FINvs+vcnHhX2aJLNPQPtDoLy3zy5GZNkY/gCdaFPURrS
	hoK6yJtF1Qmtv1FgPiY7wcSCKRnnjfRj5USGeJQhC2ZD91FZFFhV5wsnEUMcP8lKXDalK5vZGBsWe
	IlvhibGNOljjKvtBZovgMwMxNSTGtFh7dJnYJj9Lbapq7ayUbIjBMv9keMxpwG7TRtLzOnApKulfg
	aDWZ1mi/waoostXJAX7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAqb-0001B9-Gf; Tue, 18 Jun 2019 09:56:13 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAqS-0001AB-En
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 09:56:06 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5I9qudb005040; Tue, 18 Jun 2019 11:55:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=6UA/B9nOCc5f1idH3NZT/7FGLUW2DK1pBlQj4NqpSyI=;
 b=VKnDJqq9uoqmEPSwSry8KUis0DkFsCtSGm+Zut614Blnv8yFedzMoBRa8Iu5l7O+MJ0d
 QcTjF3L5SKkPHQ52V7DjaSry2A6TeggE21DCDRSi1l+ixAjdYRLl+1md6zUS9F6ZLshD
 FYtKruQ46cEVPGAKLQGOWhZ9WE0u+iqMlZTUbFsr/NTryGXF6bt/BgJOXdU86KYj2/19
 icFcU0rxRdWLuym9g0dHGGvD+9s274rKGNY0kcpQUyaIv5A1lDcqbXYjtgbWI4zCFIQl
 q/gklpsqNaCFePWQ/3WaGrnhqhAdhFU8ocI/CpzJgRkm0yAXi4ktEodY272RYozQhE47 oQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2t4nt882dk-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 18 Jun 2019 11:55:53 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2283B3A;
 Tue, 18 Jun 2019 09:55:51 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node2.st.com [10.75.127.14])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BBB2F25A7;
 Tue, 18 Jun 2019 09:55:51 +0000 (GMT)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG5NODE2.st.com
 (10.75.127.14) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 18 Jun
 2019 11:55:51 +0200
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Tue, 18 Jun 2019 11:55:51 +0200
From: Philippe CORNU <philippe.cornu@st.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, DRI Development
 <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH 30/59] drm/stm: Drop drm_gem_prime_export/import
Thread-Topic: [PATCH 30/59] drm/stm: Drop drm_gem_prime_export/import
Thread-Index: AQHVIvDp+m2tmeOns0K9ARUDkRE2JKahEJIA
Date: Tue, 18 Jun 2019 09:55:51 +0000
Message-ID: <34a31eef-e720-bb71-9402-6a4a01ddfa8a@st.com>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
 <20190614203615.12639-31-daniel.vetter@ffwll.ch>
In-Reply-To: <20190614203615.12639-31-daniel.vetter@ffwll.ch>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.45]
Content-ID: <B884CE2004CC1745B816A4BE9D9C9100@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-18_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_025604_954516_FFC4E6AD 
X-CRM114-Status: GOOD (  18.76  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Yannick FERTRE <yannick.fertre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Daniel
 Vetter <daniel.vetter@intel.com>, Vincent ABRIOU <vincent.abriou@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

Acked-by: Philippe Cornu <philippe.cornu@st.com>

We will have a look to simplify this part of the code.

Thank you for your patch.

Philippe :-)

On 6/14/19 10:35 PM, Daniel Vetter wrote:
> They're the default.
> 
> Aside: Would be really nice to switch the others over to
> drm_gem_object_funcs.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Yannick Fertre <yannick.fertre@st.com>
> Cc: Philippe Cornu <philippe.cornu@st.com>
> Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>
> Cc: Vincent Abriou <vincent.abriou@st.com>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>   drivers/gpu/drm/stm/drv.c | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/stm/drv.c b/drivers/gpu/drm/stm/drv.c
> index 4026c33ccc39..331f5e8d779b 100644
> --- a/drivers/gpu/drm/stm/drv.c
> +++ b/drivers/gpu/drm/stm/drv.c
> @@ -67,8 +67,6 @@ static struct drm_driver drv_driver = {
>   	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
>   	.gem_free_object_unlocked = drm_gem_cma_free_object,
>   	.gem_vm_ops = &drm_gem_cma_vm_ops,
> -	.gem_prime_export = drm_gem_prime_export,
> -	.gem_prime_import = drm_gem_prime_import,
>   	.gem_prime_get_sg_table = drm_gem_cma_prime_get_sg_table,
>   	.gem_prime_import_sg_table = drm_gem_cma_prime_import_sg_table,
>   	.gem_prime_vmap = drm_gem_cma_prime_vmap,
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
