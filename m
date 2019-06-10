Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4BF3BA2D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:58:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHJoLyzjKrm02EPksTwkdZloyKwJKNv/vhIF4v6b3ig=; b=hUya6Z+7qhgJz/
	R05uLa0XTW3kG84Y89LlnhC1/86Q6N7UuOWOoshhNPrRgrnp84p36vU60TOWchionbU9Pa8MJ3jQ6
	H1TswZrMTmcPz6HWQ64DEiyoSqicPH7cPdwPbK9K4QjhzyBk9j7ZsOpkv7eUSzyAPC+QDggjPqmWz
	GuIX9LFLsFsyj8X0X3W6XYS35WWi7AMRcPdGp7HcM3RNgH6nPX64EyFmsTKgRhhJ4LO6kMrtlxktj
	h066FHaoccpjk9fkFhg/hc/Qi09akZFRJggyV75UQmd9AxF+Ta7YoEQk38QJOlEfo5JwFJ+o3t36g
	3QDToMjtx8QNR+7Ujztg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haNcY-0001Rc-JR; Mon, 10 Jun 2019 16:58:10 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haNcO-0001RE-NB
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 16:58:02 +0000
Received: by mail-pg1-x544.google.com with SMTP id n2so5337982pgp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 09:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=02QlD+dQyEGO4EEKFz1uYHazBVRik/r7SAjjSQVxSs4=;
 b=r9/fS6LliK6b9sWK/JXRrCplVnHPfXh2dJwY828nS9aFx1N6M2Rh2OrZ45pBoNUz+6
 63L0i4B6ANOoEgH5b0WSX0iqrBjWAHbZOq071SW5w1UWdAcvPXt8VxuhGzrk9if+tGIw
 5e0WH98Og+FomJIfAkK0vKnnVblD2abzMxb3oRzmZqihkkCJlgErDdnomlw+kS7CB9rh
 KiEOeKyJ1maFp146hlz1gTOSHRt60wGOBfmBrhdO+UzW/IohTj3wiStbyB3w5WbpbkZ/
 BoK0X0O4fERQ6zcUNNdpuyGYzyUku+AaJdj4AYDSfNeBBQ9PVARyBxt+cyEqOth/ycO4
 viIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=02QlD+dQyEGO4EEKFz1uYHazBVRik/r7SAjjSQVxSs4=;
 b=o8Kuz2n12DhEQj72erQgsSJNwk+d7r2eehY0iBUPxBjLXjjiWuMJKaMhyJCY0Eo4bB
 hmwhiMU0GH7FaW9f0Z2wLEg8on6PIYLP9PkG1Vvy3/7GgcPbZJXlxOQQGkxY1G6jUYZL
 azADaFxi8sRprx+U4reRU00KFL71ygauNKTkCK/VeH6WmDDVaAp8gShLeiURJvHXzxeY
 WwGY7siWBjO0zaSov+F9SfWHDbeGLlHPlX1AT8hqO4JRkr+lR1+jGjQVAhy7yNhZLv2d
 9gs2cG669LqtznR5DMATm0IiFvJGghe849YCDKvRZEAnbQyct09oemGqRhhCdHtJdo5W
 2qIw==
X-Gm-Message-State: APjAAAXUPMz1SVhGtdvDoXJJD7cdDxxI6CqYvA0ls8YYKo4cRRkvyHaA
 36efaaGa6SR+NiJWY2lQwFJ8Pw==
X-Google-Smtp-Source: APXvYqzVfNPgK3styQsjXZr91PyrqVn2vP6x01Abxia0xpHcW5BIME9JyPDGk9UbFVDoMQ6TMxihtQ==
X-Received: by 2002:a63:8841:: with SMTP id l62mr14744140pgd.246.1560185879548; 
 Mon, 10 Jun 2019 09:57:59 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id a192sm470040pfa.84.2019.06.10.09.57.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 09:57:58 -0700 (PDT)
Date: Mon, 10 Jun 2019 09:58:43 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Sricharan R <sricharan@codeaurora.org>
Subject: Re: [PATCH 4/6] clk: qcom: Add ipq6018 Global Clock Controller support
Message-ID: <20190610165843.GC22737@tuxbook-pro>
References: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
 <1559754961-26783-5-git-send-email-sricharan@codeaurora.org>
 <20190608033229.GE24059@builder>
 <6583f576-acf4-a71b-d691-bce548e2c008@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6583f576-acf4-a71b-d691-bce548e2c008@codeaurora.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_095800_757190_B4B0D076 
X-CRM114-Status: GOOD (  21.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org, linus.walleij@linaro.org, agross@kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 linux-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 10 Jun 04:47 PDT 2019, Sricharan R wrote:

> Hi Bjorn,
> 
> On 6/8/2019 9:02 AM, Bjorn Andersson wrote:
> > On Wed 05 Jun 10:15 PDT 2019, Sricharan R wrote:
> > 
> >> This patch adds support for the global clock controller found on
> >> the ipq6018 based devices.
> >>
> >> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
> >> Signed-off-by: anusha <anusharao@codeaurora.org>
> >> Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>
> > 
> > Please fix your s-o-b chain, as described in my reply to 1/8..
> > 
> 
>  ok.
> 
> >> ---
> >>  drivers/clk/qcom/Kconfig       |    9 +
> >>  drivers/clk/qcom/Makefile      |    1 +
> >>  drivers/clk/qcom/gcc-ipq6018.c | 5267 ++++++++++++++++++++++++++++++++++++++++
> >>  3 files changed, 5277 insertions(+)
> >>  create mode 100644 drivers/clk/qcom/gcc-ipq6018.c
> >>
> >> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
> >> index e1ff83c..e5fb091 100644
> >> --- a/drivers/clk/qcom/Kconfig
> >> +++ b/drivers/clk/qcom/Kconfig
> >> @@ -120,6 +120,15 @@ config IPQ_GCC_8074
> >>  	  i2c, USB, SD/eMMC, etc. Select this for the root clock
> >>  	  of ipq8074.
> >>  
> >> +config IPQ_GCC_6018
> > 
> > Please maintain sort order.
> > 
> 
>  ok.
> 
> >> +	tristate "IPQ6018 Global Clock Controller"
> >> +	depends on COMMON_CLK_QCOM
> >> +	help
> >> +	  Support for global clock controller on ipq6018 devices.
> >> +	  Say Y if you want to use peripheral devices such as UART, SPI,
> >> +	  i2c, USB, SD/eMMC, etc. Select this for the root clock
> >> +	  of ipq6018.
> >> +
> >>  config MSM_GCC_8660
> >>  	tristate "MSM8660 Global Clock Controller"
> >>  	help
> >> diff --git a/drivers/clk/qcom/Makefile b/drivers/clk/qcom/Makefile
> >> index f0768fb..025137d 100644
> >> --- a/drivers/clk/qcom/Makefile
> >> +++ b/drivers/clk/qcom/Makefile
> >> @@ -22,6 +22,7 @@ obj-$(CONFIG_APQ_MMCC_8084) += mmcc-apq8084.o
> >>  obj-$(CONFIG_IPQ_GCC_4019) += gcc-ipq4019.o
> >>  obj-$(CONFIG_IPQ_GCC_806X) += gcc-ipq806x.o
> >>  obj-$(CONFIG_IPQ_GCC_8074) += gcc-ipq8074.o
> >> +obj-$(CONFIG_IPQ_GCC_6018) += gcc-ipq6018.o
> > 
> > Ditto.
> > 
> 
>  ok.
> 
> >>  obj-$(CONFIG_IPQ_LCC_806X) += lcc-ipq806x.o
> >>  obj-$(CONFIG_MDM_GCC_9615) += gcc-mdm9615.o
> >>  obj-$(CONFIG_MDM_LCC_9615) += lcc-mdm9615.o
> >> diff --git a/drivers/clk/qcom/gcc-ipq6018.c b/drivers/clk/qcom/gcc-ipq6018.c
> > [..]
> >> +static int gcc_ipq6018_probe(struct platform_device *pdev)
> >> +{
> >> +	return qcom_cc_probe(pdev, &gcc_ipq6018_desc);
> >> +}
> >> +
> >> +static int gcc_ipq6018_remove(struct platform_device *pdev)
> >> +{
> >> +	return 0;
> > 
> > Just omit .remove from the gcc_ipq6018_driver instead of providing a
> > dummy function.
> > 
> 
>  ok.
> 
> >> +}
> >> +
> >> +static struct platform_driver gcc_ipq6018_driver = {
> >> +	.probe = gcc_ipq6018_probe,
> >> +	.remove = gcc_ipq6018_remove,
> >> +	.driver = {
> >> +		.name   = "qcom,gcc-ipq6018",
> >> +		.owner  = THIS_MODULE,
> > 
> > Don't specify .owner in platform drivers.
> > 
> 
>  ok.
> 
> > [..]
> >> +MODULE_DESCRIPTION("Qualcomm Technologies, Inc. GCC IPQ6018 Driver");
> >> +MODULE_LICENSE("GPL v2");
> >> +MODULE_ALIAS("platform:gcc-ipq6018");
> > 
> > This modalias won't be used.
> >
> 
>  ok. But it looks to be there in other clk drivers as well.
>  

It serves the purpose that the driver will be automatically modprobed if
someone calls:

  platform_device_register*(...,  "gcc-ipq6018", ...);

So for everything that is only going be probed from DT (or ACPI) this
does not add any value. As such there are several other places where
these aliases should be dropped.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
