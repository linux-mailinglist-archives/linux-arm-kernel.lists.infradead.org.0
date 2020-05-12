Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B38581CF668
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:04:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+9rVNkhGFh/Hm+SjLNHW/7rmynoEI+rIJBfpDbEF/2I=; b=M/01VMKbGEJx2W4dAvL0nlWgc
	V8RZmdktM1yPd5hI7x2V8hig1BVNHqzNFxAba4vDIyPUW1VhZmlbG/0dVhmpaAcbi19vUKZlsNoSe
	tKEk0cA/pPpSjnfF1EsUGDCjLoXhRbkMRsoILs4umpIAaeFAWpsBYW1M7r4JZwpUh5pD0EUrJQMwO
	NuFwXtqsPgrft6QbieMHmfsjmkF0Qg7cPI4e+5lcSGFq1GSwH6obzLzBrGPb+dA72NP9QlwaBzDTR
	nnzSpYyUjquY4bD4PBDsimBapTvYhjjncxkqfK1ecZFcsSQBF6nqk0LHR1/1Ydcxm1NS+jBQikHnI
	UR1NPQW6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYVWI-0001Aj-MC; Tue, 12 May 2020 14:04:30 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYVW9-0001AA-TL
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 14:04:23 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04CE4GWK104112;
 Tue, 12 May 2020 09:04:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589292256;
 bh=RYLxeYyV14EWrGllI+5nxV7VKhyVKweYLlCJbrn+/wQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=YzO/t206C/tOJSoUonzoDfABTdJRCAuyp6RPO8/ZrH4cJqkrPnCYmOR2OoiN2CdHz
 7ZoqZv5HgEdxwuXZKU2YZ1shTUzta+AkkHxBOYF1SGD6XNseWRo3IpNw2nzF3t4i4o
 ThbQv7vxkhNfuBbr6FvyZyW3k1L3+NHi5qldIDLI=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04CE4GxK004618;
 Tue, 12 May 2020 09:04:16 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 12
 May 2020 09:04:16 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 12 May 2020 09:04:16 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04CE4E0i097923;
 Tue, 12 May 2020 09:04:14 -0500
Subject: Re: [PATCH v2] mfd: stm32-timers: Use dma_request_chan() instead
 dma_request_slave_channel()
To: Lee Jones <lee.jones@linaro.org>
References: <20200107105959.18920-1-peter.ujfalusi@ti.com>
 <20200416084651.GW2167633@dell>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
X-Pep-Version: 2.0
Message-ID: <b50b4568-88d6-3475-f3c5-84331d66632e@ti.com>
Date: Tue, 12 May 2020 17:04:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200416084651.GW2167633@dell>
Content-Type: multipart/mixed; boundary="------------CF3D3B72ECF4F393ED0CA57E"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_070422_023383_1DA82C51 
X-CRM114-Status: GOOD (  20.99  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org, vkoul@kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--------------CF3D3B72ECF4F393ED0CA57E
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable



On 16/04/2020 11.46, Lee Jones wrote:
> On Tue, 07 Jan 2020, Peter Ujfalusi wrote:
>=20
>> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
>> eating up the error code.
>>
>> By using dma_request_chan() directly the driver can support deferred
>> probing against DMA.
>>
>> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
>> ---
>> Hi,
>>
>> Changes since v1:
>> - Fall back to PIO mode only in case of ENODEV and report all other er=
rors
>>
>> Regards,
>> Peter
>>
>>  drivers/mfd/stm32-timers.c | 32 +++++++++++++++++++++++---------
>>  1 file changed, 23 insertions(+), 9 deletions(-)
>=20
> Apologies for not spotting this patch sooner, it had slipped through
> the net.  If this happens again, please just submit a [RESEND].

No issues, I have also forgot about it ;)


>> diff --git a/drivers/mfd/stm32-timers.c b/drivers/mfd/stm32-timers.c
>> index efcd4b980c94..add603359124 100644
>> --- a/drivers/mfd/stm32-timers.c
>> +++ b/drivers/mfd/stm32-timers.c
>> @@ -167,10 +167,11 @@ static void stm32_timers_get_arr_size(struct stm=
32_timers *ddata)
>>  	regmap_write(ddata->regmap, TIM_ARR, 0x0);
>>  }
>> =20
>> -static void stm32_timers_dma_probe(struct device *dev,
>> +static int stm32_timers_dma_probe(struct device *dev,
>>  				   struct stm32_timers *ddata)
>>  {
>>  	int i;
>> +	int ret =3D 0;
>>  	char name[4];
>> =20
>>  	init_completion(&ddata->dma.completion);
>> @@ -179,14 +180,23 @@ static void stm32_timers_dma_probe(struct device=
 *dev,
>>  	/* Optional DMA support: get valid DMA channel(s) or NULL */
>>  	for (i =3D STM32_TIMERS_DMA_CH1; i <=3D STM32_TIMERS_DMA_CH4; i++) {=

>>  		snprintf(name, ARRAY_SIZE(name), "ch%1d", i + 1);
>> -		ddata->dma.chans[i] =3D dma_request_slave_channel(dev, name);
>> +		ddata->dma.chans[i] =3D dma_request_chan(dev, name);
>>  	}
>> -	ddata->dma.chans[STM32_TIMERS_DMA_UP] =3D
>> -		dma_request_slave_channel(dev, "up");
>> -	ddata->dma.chans[STM32_TIMERS_DMA_TRIG] =3D
>> -		dma_request_slave_channel(dev, "trig");
>> -	ddata->dma.chans[STM32_TIMERS_DMA_COM] =3D
>> -		dma_request_slave_channel(dev, "com");
>> +	ddata->dma.chans[STM32_TIMERS_DMA_UP] =3D dma_request_chan(dev, "up"=
);
>> +	ddata->dma.chans[STM32_TIMERS_DMA_TRIG] =3D dma_request_chan(dev, "t=
rig");
>> +	ddata->dma.chans[STM32_TIMERS_DMA_COM] =3D dma_request_chan(dev, "co=
m");
>> +
>> +	for (i =3D STM32_TIMERS_DMA_CH1; i < STM32_TIMERS_MAX_DMAS; i++) {
>> +		if (IS_ERR(ddata->dma.chans[i])) {
>> +			/* Save the first error code to return */
>> +			if (PTR_ERR(ddata->dma.chans[i]) !=3D -ENODEV && !ret)
>> +				ret =3D PTR_ERR(ddata->dma.chans[i]);
>> +
>> +			ddata->dma.chans[i] =3D NULL;
>> +		}
>> +	}
>=20
> In my mind, it doesn't make sense to keep requesting channels if an
> error has occurred.  Please remove all of the added complexity caused
> by the for() loop and simply check the return value after each call to
> dma_request_chan(), returning immediately on error.

Yes. I have intentionally done the patch this way to _not_ change the
behavior in any ways as it is not up to me to decide what is good or bad
for a driver I can not test.

>=20
>> +	return ret;
>>  }
>=20

- P=C3=A9ter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

--------------CF3D3B72ECF4F393ED0CA57E
Content-Type: application/pgp-keys; name="pEpkey.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment; filename="pEpkey.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

mQENBFki4nsBCAD3BM+Ogt951JlaDloruEjoZk/Z+/37CjP0fY2mqLhBOzkpx95u
X1Fquf0KfVk+ZzCd25XGOZEtpZNlXfbxRr2iRWPS5RW2FeLYGvg2TTJCpSr+ugKu
OOec6KECCUotGbGhpYwBrbarJNEwDcAzPK7UJYa1rhWOmkpZJ1hXF1hUghB84q35
8DmN4sGLcsIbVdRFZ1tWFh4vGBFV9LsoDZIrnnANb6/XMX78s+tr3RG3GZBaFPl8
jO5IIv0UIGNUKaYlNVFYthjGCzOqtstHchWuK9eQkR7m1+Vc+ezh1qK0VJydIcjn
OtoMZZL7RAz13LB9vmcJjbQPnI7dJojz/M7zABEBAAG0JlBldGVyIFVqZmFsdXNp
IDxwZXRlci51amZhbHVzaUB0aS5jb20+iQFOBBMBCAA4FiEE+dBcpRFvJjZw+uta
LCayis85LN4FAlki4nsCGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4AACgkQLCay
is85LN4QjggAzxxxXqiWpA3vuj9yrlGLft3BeGKWqF8+RzdeRvshtNdpGeIFf+r5
AJVR71R1w89Qeb4DGXus7qsKiafdFGG7yxbuhw8a5wUm+ZncBXA+ETn3OyVtl8g8
r/ZcPX420jClBNTVuL0sSnyqDFDrt5f+uAFOIwsnHdpns174Zu9QhgYxdvdZ+jMh
Psb745O9EVeNvdfUIRdrVjb4IhJKNIzkb0Tulsz5xeCJReUYpxZU1jzEq3YZqIou
+fi+oS4wlJuSoxKKTmIXtSeEy/weStF1XHMo6vLYqzaK4FyIuclqeuYUYSVy2425
7TMXugaI+O85AEI6KW8MCcu1NucSfAWUabkBDQRZIuJ7AQgAypKq8iIugpHxWA2c
Ck6MQdPBT6cOEVK0tjeHaHAVOUPiw9Pq+ssMifdIkDdqXNZ3RLH/X2svYvd8c81C
egqshfB8nkJ5EKmQc9d7s0EwnYT8OwsoVb3c2WXnsdcKEyu2nHgyeJEUpPpMPyLc
+PWhoREifttab4sOPktepdnUbvrDK/gkjHmiG6+L2owSn637N+Apo3/eQuDajfEu
kybxK19ReRcp6dbqWSBGSeNB32c/zv1ka37bTMNVUY39Rl+/8lA/utLfrMeACHRO
FGO1BexMASKUdmlB0v9n4BaJFGrAJYAFJBNHLCDemqkU7gjaiimuHSjwuP0Wk7Ct
KQJfVQARAQABiQE2BBgBCAAgFiEE+dBcpRFvJjZw+utaLCayis85LN4FAlki4nsC
GwwACgkQLCayis85LN7kCwgAoy9r3ZQfJNOXO1q/YQfpEELHn0p8LpwliSDUS1xL
sswyxtZS8LlW8PjlTXuBLu38Vfr0vGav7oyV7TkhnKT3oBOLXanyZqwgyZSKNEGB
PB4v3Fo7YTzpfSofiwuz03uyfjTxiMGjonxSb+YxM7HBHfzjrOKKlg02fK+lWNZo
m5lXugeWD7U6JJguNdYfr+U4zYIblelUImcIE+wnR0oLzUEVDIWSpVrl/OqS3Rzo
mw8wBsHksTHrbgUnKL0SCzYc90BTeKbyjEBnVDr+dlfbxRxkB8h9RMPMdjodvXzS
Gfsa9V/k4XAsh7iX9EUVBbnmjA61ySxU/w98h96jMuteTg=3D=3D
=3DeQmw
-----END PGP PUBLIC KEY BLOCK-----

--------------CF3D3B72ECF4F393ED0CA57E
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--------------CF3D3B72ECF4F393ED0CA57E--

