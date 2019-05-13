Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 837AA1B0E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 09:11:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6uaj4IFViwVYuxePYh+SE08jAJzIZSy8n9Va/1OTM7s=; b=pK1AWuhAEVn7oo
	sxd60mLdhSpp+GPXoDsli/YMbUmPqQX48Mserh1aYkeRBityctH7xjB3PP4AbY/Bn9Kff64QHZJUT
	65ImAAWV4r2QcoZutG9Vu9ukvplUVftPCoEWCEeVfGmpOGU/2hffT/zw/BFa6CixgsjuWD9hqOgFj
	/C1l7fzJ45q4CA7IL2O+je0yv7U/4c5O7T6lxuo2BLfj6YQ65XMFF9/Q6IaHZCjxgI7zO1NAxBIEw
	a9OlGU3I+KbuXRpxKFC5KiM2W/dV/cPlPJM2j57bqe+EafLSMRv86m2k0n3ADMpyVXNdP3JVVVKzq
	VCuUmBn0bkwIXg6ZxHTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ57G-0003ce-Hn; Mon, 13 May 2019 07:11:18 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ577-0003bl-Mh
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 07:11:11 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4D76Z3g018397; Mon, 13 May 2019 09:11:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=JYRjcj+5cTxazjxY/B951yi7qS02YpZMEXM7PHXUwy4=;
 b=yk3DRz8jkDR7UA6D2eC8U4dsHgdTPmqaRYz8IjGjLOcH1jX1pB0SyAHUIJjl24K1zRir
 gTa4zIQm5w45UNYq3hGZqti1aoq0LUd7NAp5h+FQa0ErQ4B+Pn5SKKL+Xl+xgga3bPPr
 Vkp+10au+5USjn4foWaHAYETXA9y60PxWa7PsXTEtBr9RcHf470PDc97ZZGGFrrh2BKr
 fYtD0u9n8XJe6grNK5CQmy3S8PBSEBxFDnnMl8erehwfHP20IHz6D7RE0RFe9Wp0bTsx
 ByQLHvmQTB5fqzIALQRrobxDIynF0FipT0AtxkuYLGoRbOnPt4UiwMyg/UM0A4ykoM5M dQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sdm5tsars-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 13 May 2019 09:11:01 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 37CF734;
 Mon, 13 May 2019 07:11:00 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 153CB13AC;
 Mon, 13 May 2019 07:11:00 +0000 (GMT)
Received: from SFHDAG3NODE2.st.com (10.75.127.8) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 13 May
 2019 09:10:59 +0200
Received: from SFHDAG3NODE2.st.com ([fe80::b82f:1ce:8854:5b96]) by
 SFHDAG3NODE2.st.com ([fe80::b82f:1ce:8854:5b96%20]) with mapi id
 15.00.1347.000; Mon, 13 May 2019 09:10:59 +0200
From: Amelie DELAUNAY <amelie.delaunay@st.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Lee Jones
 <lee.jones@linaro.org>
Subject: Re: [PATCH] mfd: stmfx: Fix macro definition spelling
Thread-Topic: [PATCH] mfd: stmfx: Fix macro definition spelling
Thread-Index: AQHVB5gud9k1UvxEHEasdnpmS8J2KqZohVCA
Date: Mon, 13 May 2019 07:10:59 +0000
Message-ID: <954f759a-4e13-ef95-d461-03cdb385e0a3@st.com>
References: <20190511012301.2661-1-natechancellor@gmail.com>
In-Reply-To: <20190511012301.2661-1-natechancellor@gmail.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
Content-ID: <A0B9C8FAB4FD1041A984A48DD3EB2CCC@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-13_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_001110_205602_023AAC91 
X-CRM114-Status: GOOD (  18.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/11/19 3:23 AM, Nathan Chancellor wrote:
> Clang warns:
> 
> In file included from drivers/mfd/stmfx.c:13:
> include/linux/mfd/stmfx.h:7:9: warning: 'MFD_STMFX_H' is used as a
> header guard here, followed by #define of a different macro
> [-Wheader-guard]
> 
> Fixes: 06252ade9156 ("mfd: Add ST Multi-Function eXpander (STMFX) core driver")
> Link: https://github.com/ClangBuiltLinux/linux/issues/475
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Reviewed-by: Amelie Delaunay <amelie.delaunay@st.com>

> ---
>   include/linux/mfd/stmfx.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/mfd/stmfx.h b/include/linux/mfd/stmfx.h
> index d890595b89b6..3c67983678ec 100644
> --- a/include/linux/mfd/stmfx.h
> +++ b/include/linux/mfd/stmfx.h
> @@ -5,7 +5,7 @@
>    */
>   
>   #ifndef MFD_STMFX_H
> -#define MFX_STMFX_H
> +#define MFD_STMFX_H
>   
>   #include <linux/regmap.h>
>   
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
