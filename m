Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 502B911AD50
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 15:24:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P5NLPDBGTehF6zZbKGsofrvAm5PYoYL9lJlbG2p6yyI=; b=sByno8ixQIjpWK
	wAq6bCf5Ry0yS1S/xtuT7cjkyHJEQ+1q5w7IwEAssp1pj/+x7snBiWzEpBaOI02lEmv65d0Cjxoh4
	cJnNAmzbSzJ+zIxKfqOzWJp0dHZmB2YXww8H9i8erAucwk5hE0RLpFSMfQ2KIfUi3W3VXshWAUnjH
	oIOdSgxIuHNJFzHz4RlGiFPktBLymAoo65HxyOthsuUUTYYWhI2k0GBMhS+nvxey2OgioTrTT86iR
	T5caq0EVfUNPXq9QjfYE3dh/h8+ms6VCTYdX7bfWsjCQzfVYj137Du2aA8MvMFQHfION6csLHCKqs
	ohqz9gSZT3quPi71XpVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if2uM-0007lv-7I; Wed, 11 Dec 2019 14:24:06 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if2uE-0007kZ-Gi
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 14:24:00 +0000
Received: from sntmail12r.snt-is.com (unknown [10.203.32.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id C5A2767A6F1;
 Wed, 11 Dec 2019 15:23:33 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail12r.snt-is.com
 (10.203.32.182) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Wed, 11 Dec
 2019 15:23:33 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Wed, 11 Dec 2019 15:23:33 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Horia Geanta <horia.geanta@nxp.com>, Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH 1/2] crypto: caam: Change the i.MX8MQ check support all
 i.MX8M variants
Thread-Topic: [PATCH 1/2] crypto: caam: Change the i.MX8MQ check support all
 i.MX8M variants
Thread-Index: AQHVp9kQe4CI+Rf8yUmun0IOEuspVqe0/KsA
Date: Wed, 11 Dec 2019 14:23:32 +0000
Message-ID: <d82428e3-326b-db80-2e40-4ef1bdbca060@kontron.de>
References: <20191130225153.30111-1-aford173@gmail.com>
 <e8e429dd-4508-9835-fd01-825d2de8871e@kontron.de>
 <CAHCN7xLkV1WC=9ACj1Mi8+uE8kRCEjCEe+Y36pXwkNeNrgrNVg@mail.gmail.com>
 <VI1PR0402MB34857B8C5560B912B34674AB985B0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR0402MB34857B8C5560B912B34674AB985B0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <AA2FCE7CD7265A47BE96B7819248829C@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: C5A2767A6F1.AF622
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: aford173@gmail.com, aymen.sghaier@nxp.com,
 davem@davemloft.net, devicetree@vger.kernel.org, festevam@gmail.com,
 herbert@gondor.apana.org.au, horia.geanta@nxp.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com,
 robh+dt@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_062358_884794_0E585F0B 
X-CRM114-Status: GOOD (  24.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.68 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "David S.
 Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10.12.19 08:56, Horia Geanta wrote:
> On 12/6/2019 9:55 PM, Adam Ford wrote:
>> On Wed, Dec 4, 2019 at 5:38 AM Schrempf Frieder
>> <frieder.schrempf@kontron.de> wrote:
>>>
>>> Hi Adam,
>>>
>>> On 30.11.19 23:51, Adam Ford wrote:
>>>> The i.MX8M Mini uses the same crypto engine as the i.MX8MQ, but
>>>> the driver is restricting the check to just the i.MX8MQ.
>>>>
>>>> This patch lets the driver support all i.MX8M Variants if enabled.
>>>>
>>>> Signed-off-by: Adam Ford <aford173@gmail.com>
>>>
>>> What about the following lines in run_descriptor_deco0()? Does this
>>> condition also apply to i.MX8MM?
>>
>> I think that's a question for NXP.  I am not seeing that in the NXP
>> Linux Release, and I don't have an 8MQ to compare.
>>
> IIRC the i.MX BSP releases use the JRI for initializing the RNG,
> and not the DECO register interface.
> 
>> I was able to get the driver working on the i.MXMM with the patch.
>>
> You are probably using a newer U-boot, which includes
> commit dfaec76029f2 ("crypto/fsl: instantiate all rng state handles")
> 
>> NXP  Team,
>>
>> Do you have any opinions on this?
>>
> Since current U-boot initializes both RNG state handles, practically
> instantiate_rng() is a no-op.
> 
> A simple experiment is to "lie" about the state_handle_mask, to exercise
> the DECO acquire code (or, as mentioned above, to run with an older U-boot):
> 
> @@ -268,12 +272,19 @@ static int instantiate_rng(struct device *ctrldev, int state_handle_mask,
>          struct caam_ctrl __iomem *ctrl;
>          u32 *desc, status = 0, rdsta_val;
>          int ret = 0, sh_idx;
> +       static int force_init = 1;
> 
>          ctrl = (struct caam_ctrl __iomem *)ctrlpriv->ctrl;
>          desc = kmalloc(CAAM_CMD_SZ * 7, GFP_KERNEL);
>          if (!desc)
>                  return -ENOMEM;
> 
> +       if (force_init && (state_handle_mask == 0x3)) {
> +               dev_err(ctrldev, "Forcing reinit of RNG state handle 0!\n");
> +               force_init = 0;
> +               state_handle_mask = 0x2;
> +       }
> +
>          for (sh_idx = 0; sh_idx < RNG4_MAX_HANDLES; sh_idx++) {
>                  /*
>                   * If the corresponding bit is set, this state handle
> 
> In this case boot log confirms the DECO cannot be acquired:
> [    2.137101] caam 30900000.crypto: Forcing reinit of RNG state handle 0!
> [    2.172293] caam 30900000.crypto: failed to acquire DECO 0
> [    2.177786] caam 30900000.crypto: failed to instantiate RNG
> 
> To sum up, writing to DECORSR is mandatory.

Thanks Horia for providing the details.

Adam, can you update your patch to enable the code in 
run_descriptor_deco0() for i.MX8MM?

If I understand this correctly, this is necessary to have the RNG 
initialize correctly no matter what version of U-Boot is used.

Thanks,
Frieder
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
