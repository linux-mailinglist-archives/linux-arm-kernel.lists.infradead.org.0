Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC6D11CA9C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 11:24:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zZWruVBU4R6wBKjnQpoghsnyWqo6RyoYqElTCDwSyjA=; b=qIbT0bL+IoQiawvXxeD9LIBg3g
	36ZTQPCCQLk9lvV6zJ/FQ5uWme9ngU4Ooh2flMiT+4Sxk0ajFAOP8ybuKwsy/eJRU+pulvfEtDuEv
	ovAW7CPJXL9d8gG5FiUrBnM91uIwsryHmXqYDtnlo66upubMVLbSi9qi6W2aFI52dRysvHlCejsWl
	zcNt86nkkqvH6jg0+M+AYuSFH7X9aXIzwrWWATKwZfD9ZccY+TJ28lJcP/HttwQ4VrDdXhwMWLnUm
	UNZZ8jk2bYKT09BlS7LCFodcJcfJQiZt+25mu4tNeG2m3d+3b6PDY3Rtp7zWdc8kvpsRqWUSfAesW
	wNBwjVRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLe6-0003Pf-O1; Thu, 12 Dec 2019 10:24:34 +0000
Received: from lb2-smtp-cloud9.xs4all.net ([194.109.24.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLdw-0003ND-Ce
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 10:24:26 +0000
Received: from [IPv6:2001:983:e9a7:1:1c4a:480a:7ba1:9c65]
 ([IPv6:2001:983:e9a7:1:1c4a:480a:7ba1:9c65])
 by smtp-cloud9.xs4all.net with ESMTPA
 id fLdjiYmsvGyJwfLdkixg5f; Thu, 12 Dec 2019 11:24:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1576146253; bh=h7SHLMHrD8uj41X4wnpu6GqJYOqSsd1mpxSu3eljAjs=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=TRmr5LVEZcatS8B7CYupHY4TV/M7SzJrsswMibhxJy+M47pVBdknl76cz8JPpl7AC
 QgHpbr3G6gUu6d1Tr4QvLZU/AxjlMImZAB+Iy/tzRe49ZD/qREBplansx5TnE0Ag/f
 APddN6PE2CoDpgd6g57UHa5ZRNJkY0FZg2RDmyUBX8F0x19NkjeAjm8INgtJ8OfjjO
 KffT66G323XdBrcyml0Bn9x9/fLg5K1XHmbNQ2es7HLAG8aBfpecJwVxUjD7xT4dUb
 Xa8ILXqBHzyzKj/oook8u/WJ80M3x6gqhFx+t6CbxQBo0GajDI3AJexet50y65sc7c
 0E9FKeypiJ78g==
Subject: Re: [PATCH v2] media: atmel: atmel-isc-base: expose white balance as
 v4l2 controls
To: Eugen.Hristev@microchip.com, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1574157784-6505-1-git-send-email-eugen.hristev@microchip.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <738cd3a2-f221-c6b9-b500-630c66f1ce6b@xs4all.nl>
Date: Thu, 12 Dec 2019 11:24:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1574157784-6505-1-git-send-email-eugen.hristev@microchip.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfFFOp/7uh4osBacccShPvaSKPtr2ykypnBjBXeSmYJAkZbghO8P1yvYY9KNyk2L+5Ua0CD47TacpeGmJ0yV3tuJYfNKVn+ylQfXLD0wiTP6gmJfv0dKm
 W3il8bljRRLhV+rQJsZpDgj7/2qZQLfTEP0gDhpAcSuS+dqdaj63dUO2dbshBiPNP9SR+hnqOur5t++mb5L/zoxvsskRHpjwgzid2ntYpl5aQjHwpMwdiLmz
 rYwk8VBvMg6DPMjWXLsbRgZnByAeV68RTkdifey/LFAhHfmDB8qbl52HqGx1DREEExWTKX82IJqmxS8WGF7uHfqn4A0kJ5tRiLrM78EDVa0+qQ+twl+rwZwd
 rmvlI5/9NML1GMT8FGvdMV5n5d76iuO6WVqhelD3zVQ4zZdTvEbZI2W4p2Gqjk0LqbKaGZaK
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_022424_600096_B5E5C1ED 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 11/19/19 11:03 AM, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> This exposes the white balance configuration of the ISC as v4l2 controls
> into userspace.
> There are 8 controls available:
> 4 gain controls , sliders, for each of the BAYER components: R, B, GR, GB.
> These gains are multipliers for each component, in format unsigned 0:4:9 with
> a default value of 512 (1.0 multiplier).
> 4 offset controls, sliders, for each of the BAYER components: R, B, GR, GB.
> These offsets are added/substracted from each component, in format signed
> 1:12:0 with a default value of 0 (+/- 0)
> 
> To expose this to userspace, added 8 custom controls, in an auto cluster.
> 
> To summarize the functionality:
> The auto cluster switch is the auto white balance control, and it works
> like this:
> AWB ==1 : autowhitebalance is on, the do_white_balance button is inactive,
> the gains/offsets are inactive, but volatile and readable.
> Thus, the results of the whitebalance algorithm are available to userspace to
> read at any time.
> AWB ==0: autowhitebalance is off, cluster is in manual mode, user can configure
> the gain/offsets directly. More than that, if the do_white_balance button is
> pressed, the driver will perform one-time-adjustment, (preferably with color
> checker card) and the userspace can read again the new values.
> 
> With this feature, the userspace can save the coefficients and reinstall them
> for example after reboot or reprobing the driver.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---

<snip>

> diff --git a/drivers/media/platform/atmel/atmel-isc.h b/drivers/media/platform/atmel/atmel-isc.h
> index bfaed2f..23adb4e 100644
> --- a/drivers/media/platform/atmel/atmel-isc.h
> +++ b/drivers/media/platform/atmel/atmel-isc.h
> @@ -213,7 +213,6 @@ struct isc_device {
>  	struct fmt_config	try_config;
>  
>  	struct isc_ctrls	ctrls;
> -	struct v4l2_ctrl	*do_wb_ctrl;
>  	struct work_struct	awb_work;
>  
>  	struct mutex		lock; /* serialize access to file operations */
> @@ -223,6 +222,28 @@ struct isc_device {
>  
>  	struct isc_subdev_entity	*current_subdev;
>  	struct list_head		subdev_entities;
> +
> +	struct {
> +#define ISC_CTRL_DO_WB 1
> +#define ISC_CTRL_R_BAL 2
> +#define ISC_CTRL_B_BAL 3
> +#define ISC_CTRL_GR_BAL 4
> +#define ISC_CTRL_GB_BAL 5
> +#define ISC_CTRL_R_OFF 6
> +#define ISC_CTRL_B_OFF 7
> +#define ISC_CTRL_GR_OFF 8
> +#define ISC_CTRL_GB_OFF 9
> +		struct v4l2_ctrl	*awb_ctrl;
> +		struct v4l2_ctrl	*do_wb_ctrl;
> +		struct v4l2_ctrl	*r_bal_ctrl;
> +		struct v4l2_ctrl	*b_bal_ctrl;
> +		struct v4l2_ctrl	*gr_bal_ctrl;
> +		struct v4l2_ctrl	*gb_bal_ctrl;
> +		struct v4l2_ctrl	*r_off_ctrl;
> +		struct v4l2_ctrl	*b_off_ctrl;
> +		struct v4l2_ctrl	*gr_off_ctrl;
> +		struct v4l2_ctrl	*gb_off_ctrl;
> +	};
>  };
>  
>  #define GAMMA_MAX	2
> @@ -242,4 +263,13 @@ int isc_clk_init(struct isc_device *isc);
>  void isc_subdev_cleanup(struct isc_device *isc);
>  void isc_clk_cleanup(struct isc_device *isc);
>  
> +#define ISC_CID_R_BAL			(V4L2_CID_CAMERA_CLASS_BASE + 1000)
> +#define ISC_CID_B_BAL			(V4L2_CID_CAMERA_CLASS_BASE + 1001)
> +#define ISC_CID_GR_BAL			(V4L2_CID_CAMERA_CLASS_BASE + 1002)
> +#define ISC_CID_GB_BAL			(V4L2_CID_CAMERA_CLASS_BASE + 1003)
> +#define ISC_CID_R_OFFSET		(V4L2_CID_CAMERA_CLASS_BASE + 1004)
> +#define ISC_CID_B_OFFSET		(V4L2_CID_CAMERA_CLASS_BASE + 1005)
> +#define ISC_CID_GR_OFFSET		(V4L2_CID_CAMERA_CLASS_BASE + 1006)
> +#define ISC_CID_GB_OFFSET		(V4L2_CID_CAMERA_CLASS_BASE + 1007)

1) You need to document what these controls actually do in this header.

2) You need to claim a range for these controls in v4l2-controls.h.
   Search for "The base for" in that header to see how it is done.
   Currently private controls are all for USER_BASE. I think that should
   be done here as well since these controls all relate to the white balance
   control. In fact, control clusters whose controls are in different control
   classes are a bit weird.

Regards,

	Hans

> +
>  #endif
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
