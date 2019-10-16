Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DFDD92C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 15:44:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I/q1feZLDwwroKEUyu8AbojdV1Og+fJNEDkFEgQP6Zw=; b=Wl+I2AsGkCjJrmaDg+UYAkjWFz
	+XR+IzuzEqgiroOnCEWf4MPTlHtEoEN8Nkx5swWK0PJPnAYD/asYPy9xg7k6AxNtS3s3vXeox8aQ2
	CnqY805vDx1oXvLQQWpPB4uvC6z9jFoJw9JkCgSaRGyUel2sELJX2jQdDR5k5BwAo6ACW+etrsvGh
	obVW+aiL4HR+FgdqSqphQ8RkhDEK1/CCJrY2wVOJJkqnVgR/nTLJTucdXJcaBTIc0ZXf/Wyih+eOs
	ei0NlYp61GvQjamYtOM1xgMIymlb/xHMLNFnwg2rEFzgU84g/DOdnek/8BcmsJdvFmXEIy9KzBcIf
	HiXNlO5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKjb6-0000LU-Ou; Wed, 16 Oct 2019 13:44:16 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKjay-0000JI-Nq
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 13:44:10 +0000
Received: by mail-wm1-x342.google.com with SMTP id r19so2996604wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 06:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=Bafgp4jYGnLo/xet8UtFIBOpzKesPTarPqBx8mm1ghI=;
 b=PR02Gxdt3nLUj5CA3FhgPxpb2Pejo0uJv6oewhFi4gFnZfhfQLk1KDR6cRT5Bg1Y8G
 b0Z8H6bCwhLBqk5nevl2yYyz3hmUxRfSO0R3TlgGrw3CLY/hcpwBPOgP9lX9wfc3GgV2
 9oF7evBFpNZl8hoN5ENCFZ7nFmZNRJ2bSfKgR3P4NqbOKqz7XTgNkaa1w0fOZqroxfQy
 FRpBjAUAO4h3dChpTRrnH6DYycnW8hLiOjGTgK5sHDL5oRtptBl6QspTY1ITso1CmtmR
 58U2hXO6xsWqgSwp1aQt2TqWCNyDO2UX0pP6hPm7zLbV9oQp8M93Tq8VqCMREHy0toHv
 PRsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=Bafgp4jYGnLo/xet8UtFIBOpzKesPTarPqBx8mm1ghI=;
 b=jUdwxXSRJ4vC2FR4UtdSyY9VERDXYNcGFTRivlfg/IF8vz/wHmisTACis9qe/9gt7R
 Wp5N2XyN60v3ey2s/yIpuWGGnalFOSWo2sEODmpaBDea2eIkiTL5IdWBqbkwYsdQ7++g
 6YfPCzAGkxeT1V6PJQ+3WPO00aF3a1c8rvqJ2VuXd2NpRxmwD0y3MqCG9xgIFZCm3rAc
 llPM8dGJZJdF7mfFD1B3sKYiBabnG4FaNiePyjLWFf1uIvHczSeBfcwU4BPUSPVwd4yt
 ePB1kXhHWTrIDG4dWe09ZMlVwtC2l3JpgHih9CH17rkx8PfKTP2Y7SMDWpNJrK0HdtRp
 zY/Q==
X-Gm-Message-State: APjAAAXOxahrLoa8TOjwWIXRTKy+CB/DaGv58l3n/dntVCZHQQXgt0GY
 k8PdHZn1ebaNOAriG6p/16U=
X-Google-Smtp-Source: APXvYqyB+z261XSi/xNHUTIkW7HCqAaCgNNk5jZlZTw9o+jzwNhtu889hivFUMlUicQi2ELvoiv9yA==
X-Received: by 2002:a1c:c90f:: with SMTP id f15mr3723254wmb.127.1571233447045; 
 Wed, 16 Oct 2019 06:44:07 -0700 (PDT)
Received: from arch-late (87-196-73-205.net.novis.pt. [87.196.73.205])
 by smtp.gmail.com with ESMTPSA id r13sm37949311wrn.0.2019.10.16.06.44.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 06:44:06 -0700 (PDT)
References: <20191015135915.6530-1-hslester96@gmail.com>
 <20191016090628.7l5u4ytdqr2jlasg@pengutronix.de>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v2] media: imx7-mipi-csis: Add a check for
 devm_regulator_get
In-reply-to: <20191016090628.7l5u4ytdqr2jlasg@pengutronix.de>
Date: Wed, 16 Oct 2019 14:43:59 +0100
Message-ID: <m336fsst40.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_064408_874296_8903D45A 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rmfrfs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marco,
On Wed 16 Oct 2019 at 10:06, Marco Felsch wrote:
> Hi Chuhong,
>
> On 19-10-15 21:59, Chuhong Yuan wrote:
>> devm_regulator_get may return an error but mipi_csis_phy_init misses
>> a check for it.
>> This may lead to problems when regulator_set_voltage uses the unchecked
>> pointer.
>> This patch adds a check for devm_regulator_get to avoid potential risk.
>>
>> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
>> ---
>> Changes in v2:
>>   - Add a check in mipi_csis_probe for the modified mipi_csis_phy_init.
>
> Did you miss the check for -EPROBE_DEFER?
>

I think nothing special is really needed to do in case of
EPROBE_DEFER, or am I missing something?
It just return to probe and probe returns also. I just talked
about it because it was not cover in the original code.

---
Cheers,
	Rui

>
> Regards,
>   Marco
>
>>
>>  drivers/staging/media/imx/imx7-mipi-csis.c | 8 +++++++-
>>  1 file changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
>> index 73d8354e618c..e8a6acaa969e 100644
>> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
>> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
>> @@ -350,6 +350,8 @@ static void mipi_csis_sw_reset(struct csi_state *state)
>>  static int mipi_csis_phy_init(struct csi_state *state)
>>  {
>>  	state->mipi_phy_regulator = devm_regulator_get(state->dev, "phy");
>> +	if (IS_ERR(state->mipi_phy_regulator))
>> +		return PTR_ERR(state->mipi_phy_regulator);
>>
>>  	return regulator_set_voltage(state->mipi_phy_regulator, 1000000,
>>  				     1000000);
>> @@ -966,7 +968,10 @@ static int mipi_csis_probe(struct platform_device *pdev)
>>  		return ret;
>>  	}
>>
>> -	mipi_csis_phy_init(state);
>> +	ret = mipi_csis_phy_init(state);
>> +	if (ret < 0)
>> +		return ret;
>> +
>>  	mipi_csis_phy_reset(state);
>>
>>  	mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>> --
>> 2.20.1
>>
>>
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
