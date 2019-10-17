Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FA5DA8CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 11:44:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tOn6Wqy2w7o/u8t4pFfR3+1WA7sZHCeAN7H/+zn/5CY=; b=Fn0HEQD+YsNYD3w14KOV7Elbk2
	4joN/PDYzP0oIloH1/EJb8Gyh7+GgddjvJZyACVEotrGParqycwWXj45U3Zn8o/+cYqE1Rlgdy9eT
	5Co7KYUCymTVS1lYsAbh5bjoDYvciaSw+p1IG2ilGh/jMxeCta4GhkFKQy26qZdXL3510mwcFWWat
	QBSIY8RoaEguIluPMnmEWjGXXeRYh5PO0nTa4CUCRnZQkMjrIfiabMMfHBQaXcxQlMPMoa2+2c8jp
	1ELSQkzd86ZZSaVrqaIJYsUFkUxBa5N2OV/ny624ok9TrnAfdDmFFdQ/LZVmaoKwfZATHYCeeFk3e
	65bYnq0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL2KQ-0002rq-Ng; Thu, 17 Oct 2019 09:44:18 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2KD-0002qk-0s
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 09:44:06 +0000
Received: by mail-wr1-x443.google.com with SMTP id r3so1549101wrj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 02:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=WPP8fM4BAgo7I+1NaWLWc92Edu33AT6FVJmg54ang5E=;
 b=oFG2LIf7gajsb1vY737nWpSi1k5VHzfQkzRpD7x3c85lOQJ6Jkt2T8u3kcOc9nOhE+
 TgBvPebcdlDPtp2ZRqFXNlrPxycI1gNkzCBSweqroMK8j97AfkcTQt4c7LWCfv242Hvo
 KUMfDyaw+dDGWKZzYClD5adoZGlbE0cAI5hwIdturEeAOvGiXij34J8DtVby5JLcwGKt
 XfdtGRzNjLxoxGNJiYpjjb5YITtSF90Y4bYVBLiCuj6czPEytj4GVNyHotyb4kqtDFi9
 TImjph6EFB1tCC/7muPqBrGqoxzX9ry1d5IcbKnvE1k5+1pS1TXgSIs7hCvJf4Ml/h5H
 BWIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=WPP8fM4BAgo7I+1NaWLWc92Edu33AT6FVJmg54ang5E=;
 b=tdrdr0CtpVPLAKv3I+kfdtenAwXvAJ081fuacxMzFS3TcGOHrvkjWsPey7LU2uoNjO
 B1CS/91f+4/LxUhWfHfwlkjOfjCVo3kFcVOdpUptTQjGM60+Mo2XNZUYINmfW85jhJ/d
 Dsu/NgycNIOfTBMFqPQT+Pcj8LJ/x/XfQhZ0VEYZT4Jg6bhFEbRWI7SD/M78Vqc/mOih
 NPlUJXOOq81pxfsYj+ndWcW7SgJSjdfVQHMOCNJnwRZh4j2WNfX1MNTii+dYoQWVB4i1
 butCw/D/5GdXnTOHC8c6H/tW6yzAkKqpePD0DXEVFRZ04LX9M6dcrPft4FBWUkZp6JYf
 KFmQ==
X-Gm-Message-State: APjAAAVF7g6CmotkpiRdGuHp5zH267Zq5DZLQXbuxP+HmzPefrzQlxR6
 4SCNK2yN8se9dKatbUyjgjM=
X-Google-Smtp-Source: APXvYqyKkWTNWIuO9WZL6fxrNNqgIZcALneckDsL6VuBs7BrD8IMByxj+/XAJIzCKjHSblzF1dV5dw==
X-Received: by 2002:adf:d848:: with SMTP id k8mr2241596wrl.189.1571305442983; 
 Thu, 17 Oct 2019 02:44:02 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id z13sm1591519wrq.51.2019.10.17.02.44.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 02:44:02 -0700 (PDT)
References: <20191015135915.6530-1-hslester96@gmail.com>
 <20191016090628.7l5u4ytdqr2jlasg@pengutronix.de>
 <m336fsst40.fsf@gmail.com>
 <20191017081029.q2czy7y5zlbj4ogr@pengutronix.de>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v2] media: imx7-mipi-csis: Add a check for
 devm_regulator_get
In-reply-to: <20191017081029.q2czy7y5zlbj4ogr@pengutronix.de>
Date: Thu, 17 Oct 2019 10:43:59 +0100
Message-ID: <m31rvbso4g.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_024405_063511_434A2301 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rmfrfs[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
On Thu 17 Oct 2019 at 09:10, Marco Felsch wrote:
> Hi Rui,
>
> On 19-10-16 14:43, Rui Miguel Silva wrote:
>> Hi Marco,
>> On Wed 16 Oct 2019 at 10:06, Marco Felsch wrote:
>> > Hi Chuhong,
>> >
>> > On 19-10-15 21:59, Chuhong Yuan wrote:
>> >> devm_regulator_get may return an error but mipi_csis_phy_init misses
>> >> a check for it.
>> >> This may lead to problems when regulator_set_voltage uses the unchecked
>> >> pointer.
>> >> This patch adds a check for devm_regulator_get to avoid potential risk.
>> >>
>> >> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
>> >> ---
>> >> Changes in v2:
>> >>   - Add a check in mipi_csis_probe for the modified mipi_csis_phy_init.
>> >
>> > Did you miss the check for -EPROBE_DEFER?
>> >
>>
>> I think nothing special is really needed to do in case of
>> EPROBE_DEFER, or am I missing something?
>> It just return to probe and probe returns also. I just talked
>> about it because it was not cover in the original code.
>
> Yes, your are right... I shouldn't comment on anything I read with one
> eye. Sorry.
>

ehehe, no problem and thanks for your inputs.

---
Cheers,
	Rui

>
> Regards,
>   Marco
>
>> ---
>> Cheers,
>> 	Rui
>>
>> >
>> > Regards,
>> >   Marco
>> >
>> >>
>> >>  drivers/staging/media/imx/imx7-mipi-csis.c | 8 +++++++-
>> >>  1 file changed, 7 insertions(+), 1 deletion(-)
>> >>
>> >> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
>> >> index 73d8354e618c..e8a6acaa969e 100644
>> >> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
>> >> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
>> >> @@ -350,6 +350,8 @@ static void mipi_csis_sw_reset(struct csi_state *state)
>> >>  static int mipi_csis_phy_init(struct csi_state *state)
>> >>  {
>> >>  	state->mipi_phy_regulator = devm_regulator_get(state->dev, "phy");
>> >> +	if (IS_ERR(state->mipi_phy_regulator))
>> >> +		return PTR_ERR(state->mipi_phy_regulator);
>> >>
>> >>  	return regulator_set_voltage(state->mipi_phy_regulator, 1000000,
>> >>  				     1000000);
>> >> @@ -966,7 +968,10 @@ static int mipi_csis_probe(struct platform_device *pdev)
>> >>  		return ret;
>> >>  	}
>> >>
>> >> -	mipi_csis_phy_init(state);
>> >> +	ret = mipi_csis_phy_init(state);
>> >> +	if (ret < 0)
>> >> +		return ret;
>> >> +
>> >>  	mipi_csis_phy_reset(state);
>> >>
>> >>  	mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>> >> --
>> >> 2.20.1
>> >>
>> >>
>> >>
>>
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
