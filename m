Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D50811DDC5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 06:31:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=koeD819YccPvSCtsNy/zQM5OfRTAh1o0b2KvZnb/9uE=; b=l2sD7aWI6ehSxsB8JFhXSYuEl
	1hHKSuU9SqzC+Q21TaJAV+rBEQIFYBHhJbHtmyG5/IxxxyO6oKvf0ZwVibdXAf7CgZByjerCWJKBc
	jHrNBKn3b8AD3Kht6zfnBByPLb7QmmrT0VNRsMeY+3S0Q8DJQ9+TFXmCSoHzY831zg8mNgy9tvsE6
	OR7ZaB6UpNhdBkRkkHnPwk5s7dreHP/53oHRJQAN6olgAdQ9DwNgezO9oO/b//DWSjPFn3l7zCxiF
	dXionz2inzSuv91nbp+XNcZMQ72YgmbnMK458kRmFMev+otYCT5E0sW1/BQ0OtuM2Kp/ildYN3SDA
	5ecbleNvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifdYB-0007qz-VY; Fri, 13 Dec 2019 05:31:39 +0000
Received: from m228-5.mailgun.net ([159.135.228.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifdY0-0007q8-My
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 05:31:30 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576215086; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=YrvqTP9z2N2j9Eee0g2uwcZZNKGFYVYmedHWIpnWR2A=;
 b=slRoN7tQ4GZ5Z+vji1lSY6X8vY0kigKtKJkDbtRxxFlFp1j7X9NFnceZ0rpXKMaiXQ0k8MHp
 3MY7Pqf3nZi6HV8KNEEMNREzeXtRxdiU9mXOTTKGjZoaSKBl/MkXysg+vNLxmu4Zz1Q2ubDK
 A8IFVse4rHFHhhN5YeZIopN2HVg=
X-Mailgun-Sending-Ip: 159.135.228.5
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5df3222c.7fce4352a848-smtp-out-n01;
 Fri, 13 Dec 2019 05:31:24 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A5319C447A4; Fri, 13 Dec 2019 05:31:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C1B48C433CB;
 Fri, 13 Dec 2019 05:31:23 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 13 Dec 2019 11:01:23 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH 2/2] drivers: edac: Add EDAC support for Kryo CPU caches
In-Reply-To: <5df16ebe.1c69fb81.6481f.a011@mx.google.com>
References: <cover.1575529553.git.saiprakash.ranjan@codeaurora.org>
 <0101016ed57a6311-e815485c-4b77-4342-a3de-203673941602-000000@us-west-2.amazonses.com>
 <CAE=gft5JvCegmrjkKuxYr9dgASPFCkgy97O1XGRyKDF6xT=BMA@mail.gmail.com>
 <5df16ebe.1c69fb81.6481f.a011@mx.google.com>
Message-ID: <624229b9b2d5bf4b5eccf7778b420e2d@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_213128_803286_FF15617E 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [159.135.228.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
 <devicetree@vger.kernel.org>, Tony Luck <tony.luck@intel.com>,
 James Morse <james.morse@arm.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, tsoni@codeaurora.org,
 LKML <linux-kernel@vger.kernel.org>, Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Andy Gross <agross@kernel.org>,
 Robert Richter <rrichter@marvell.com>, psodagud@codeaurora.org,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-edac@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-12 04:03, Stephen Boyd wrote:
> Quoting Evan Green (2019-12-11 11:32:37)
>> Hi Sai,
>> 
>> On Thu, Dec 5, 2019 at 1:53 AM Sai Prakash Ranjan
>> <saiprakash.ranjan@codeaurora.org> wrote:
>> > diff --git a/drivers/edac/qcom_kryo_edac.c b/drivers/edac/qcom_kryo_edac.c
>> > new file mode 100644
>> > index 000000000000..05b60ad3cb0e
>> > --- /dev/null
>> > +++ b/drivers/edac/qcom_kryo_edac.c
>> > @@ -0,0 +1,679 @@
> [...]
>> > +static const struct error_record serror_record[] = {
>> > +       { 0x1,  "Errors due to fault injection"         },
>> > +       { 0x2,  "ECC error from internal data buffer"   },
>> > +       { 0x6,  "ECC error on cache data RAM"           },
>> > +       { 0x7,  "ECC error on cache tag or dirty RAM"   },
>> > +       { 0x8,  "Parity error on TLB data RAM"          },
>> > +       { 0x9,  "Parity error on TLB tag RAM"           },
>> > +       { 0x12, "Error response for a cache copyback"   },
>> > +       { 0x15, "Deferred error not supported"          },
>> > +};
>> > +
>> > +static const struct error_type err_type[] = {
>> > +       { edac_device_handle_ce, "Kryo L1 Corrected Error"      },
>> > +       { edac_device_handle_ue, "Kryo L1 Uncorrected Error"    },
>> > +       { edac_device_handle_ue, "Kryo L1 Deferred Error"       },
>> > +       { edac_device_handle_ce, "Kryo L2 Corrected Error"      },
>> > +       { edac_device_handle_ue, "Kryo L2 Uncorrected Error"    },
>> > +       { edac_device_handle_ue, "Kryo L2 Deferred Error"       },
>> > +       { edac_device_handle_ce, "L3 Corrected Error"           },
>> > +       { edac_device_handle_ue, "L3 Uncorrected Error"         },
>> > +       { edac_device_handle_ue, "L3 Deferred Error"            },
>> > +};
>> 
>> A comment is warranted to indicate that err_type is indexed by the
>> enum, as this would be easy to mess up in later changes.
> 
> Instead of a comment please use array indexing.
> 
> 	[KRYO_L1_CE] = { edac_device_handle_ce, "Kryo L1..." },
> 	...

Will do this in the next spin.

-Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
