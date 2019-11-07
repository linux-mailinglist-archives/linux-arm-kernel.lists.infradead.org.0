Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0BEF2BB1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:59:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXkddd6aRjiHg+OQx85OlFno95rRnbPkSwIRS+RSFGE=; b=DraR53ew+Y/Wbv
	2kGi+J8owdYKSUXokjhNQVSRRXdzncwINsIONKWjTrtsRSqu2yegedzjvJlKmEXIcuQ52Ta3mPQzQ
	kR+76lcd4rfIB7jzKnSBxGvPpMZ+sf7+sWvvGAbwqCujb0pF0vm09klrAyzyt4oHcSvMjwgoIwstx
	dFbE869ncbFnfWyTTpT9mY4nqyPpipkeeqKdQQKlxHhgu1GnzwhcXPDnTgrleClgIe+DI3BQ6h2UU
	oTpUkxf1teiiy6CQMsLkAwhA+C9iAv/WAGlg8cXyP3eSnwf9ZUv9bK+E5aLPbNv9FHtbcdOMtfFfX
	kdrqveNXD6KOZFSZR25Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSeZk-0006WA-FW; Thu, 07 Nov 2019 09:59:36 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSeZa-0006Ue-FY
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 09:59:28 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA79unK7010798; Thu, 7 Nov 2019 10:59:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=2DOWtu8jCuxYV13WHI7tGlkOex/ugFLRvmjsqa3AGzE=;
 b=FOSRhCJjNn32aKkzEJTN3A1O5PriISPyOomQwedz3yh3T7+GKAwsi6T7C022D3PCYLlP
 6DEsPRsy1zzYM481yuDCvMMC4Os/kjVUXZsvVet5916FDF9IXDea7cYeulbypBZkKxhv
 LNPfT43muLoFLr9WER2hxIZjtFPQxv+kL9hCbpqhlgwbiNe+Wlc9QRwehvb1KLWaNLUT
 b7l1JL7zADTysPkn5iWVkrcm7e8DNblznLSG7venTTYj5WpGwMeFopnGMcYPHeJYpZu9
 kgS+GssbIJhMInfD7SEp6iLqVrLCYoAucSKGR9BDzhpdO8Nb1hURP6pxqVRmsInOecGK fQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w41vdvdce-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 Nov 2019 10:59:18 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 430B910002A;
 Thu,  7 Nov 2019 10:59:18 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 347922AA4DB;
 Thu,  7 Nov 2019 10:59:18 +0100 (CET)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 7 Nov
 2019 10:59:17 +0100
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Thu, 7 Nov 2019 10:59:17 +0100
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Subject: Re: [PATCH 10/17] media: platform: sti: c8sectpfe: c8sectpfe-dvb:
 convert to use i2c_new_client_device()
Thread-Topic: [PATCH 10/17] media: platform: sti: c8sectpfe: c8sectpfe-dvb:
 convert to use i2c_new_client_device()
Thread-Index: AQHVlOgn5rnZLf3S8UOcZMZWPlClMKd/aXSA
Date: Thu, 7 Nov 2019 09:59:17 +0000
Message-ID: <e4fd1be9-9406-7701-9864-56981d486f6f@st.com>
References: <20191106212120.27983-1-wsa+renesas@sang-engineering.com>
 <20191106212120.27983-11-wsa+renesas@sang-engineering.com>
In-Reply-To: <20191106212120.27983-11-wsa+renesas@sang-engineering.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
Content-ID: <CB0A9BA7A9BF554983B74248C1130533@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-07_02:2019-11-07,2019-11-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_015926_830684_0A16F9EF 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 11/6/19 10:21 PM, Wolfram Sang wrote:
> Use the newer API returning an ERRPTR and use the new helper to bail
> out.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c b/drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c
> index a79250a7f812..103872266565 100644
> --- a/drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c
> +++ b/drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c
> @@ -170,8 +170,8 @@ int c8sectpfe_frontend_attach(struct dvb_frontend **fe,
>  
>  		/* attach tuner */
>  		request_module("tda18212");
> -		client = i2c_new_device(tsin->i2c_adapter, &tda18212_info);
> -		if (!client || !client->dev.driver) {
> +		client = i2c_new_client_device(tsin->i2c_adapter, &tda18212_info);
> +		if (!i2c_client_has_driver(client)) {
>  			dvb_frontend_detach(*fe);
>  			return -ENODEV;
>  		}

Reviewed-by: Patrice Chotard <patrice.chotard@st.com>


Thanks
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
