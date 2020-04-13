Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D518A1A6BBC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 19:57:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RwsY/MTZ1TgWAkmN+o3EPz4N3aJvUwfGG9dDE9lF+ck=; b=sFOkfTdcO/aSsI
	TXxME2SCO5zjybfcHeqnXh3rexBmnWLabOQa9W8bLRWvG+wAU7QGBxrypbTmANzlxr2w3TSQuvoTX
	tlEzbPiIEaTly3k+j0Vp1IG8NnTw7GnsMjMCmqk7mPZxYoTdW9uAGmHUANRVUIInlOB1mmkj5u+n2
	4AwyU77sPrGucSa88AQ0NVlF6KpocsuaxcETo403SO4hrB8SHZwHIJ3DKvlxWljSfo2VR4IbOBpmj
	ExJPfyDL7RnxzABOIGJrQjSJ7N0r51dZ1sOfnMlzDcguIoQpxRpV2RQSF7yq8uPq10GtiGiNKjY4e
	NXZk3LQM9Tg8BHLDLKDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO3L3-0002S1-Kv; Mon, 13 Apr 2020 17:57:41 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO3Kv-0002Rb-Df
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 17:57:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id x3so4577477pfp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 10:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FBJb5sqjJ8vOREAZLQxqAw0hd2Q6mzHw1XH+BWE4S8E=;
 b=XLwbkay2J5oAJWs36C6cPK2HFxTO3KM3W/zQs6rCSmGQaK4xerLfeznksjryD1/MuP
 wQKKt0Rjsy+dZYJ1EiF+YWQdZppOPhJKa7lRlf42mRg38VxpAHCFT+Gu79yUpOKiULGR
 9+uCXLityF76wxykB9c6hkQSYjd7o4T9op2vPzpXDSD39N0nq1aFcbhQ/zBnkLEYscYr
 +neMn8NUo6vKgDYY7wNZUeDtQrBkwACnMyG01nirfJptwFBN/nyijS4oY1E941zr0cog
 uF3mNO4eQ/En21OOBWDu2AlVJUdqwvcrdkfujshC7QjGTD2MOHBD2/xBORppxlqigzw3
 q9CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FBJb5sqjJ8vOREAZLQxqAw0hd2Q6mzHw1XH+BWE4S8E=;
 b=ZTUWyT1TEPWbn9Mx5S3T/qUmI5yEYH9h+6Rlq11HCVPuDSqxtulAR5DwHZSEdKBAZg
 MULOCHexl8oAC33cR3Ht1bbvLv8X2yR0IlPmeAqGKNTufk8XNulVyOZkf8BBpkTfmA7U
 +snFb7vXcfCIvnWUMSoqQ7ReF4ZF4eSYcs6XO17E159R3q56hJp/BxZr+669SlizjK9i
 QiKJlmuUsUuF9YYjEQ+Zq04VnS0U9yicS++OHLp/S3q+r7E/E9885EhkagGynFPWUbX0
 tdH2fPIrk5MEg+TdTMaFoKGmX4AzGfnfVhALZMSNN9z/BeW0iXIbhH5og0QwRh0xnApH
 rIoA==
X-Gm-Message-State: AGi0PuY/Bxg0ScZStMZV9xXUlTPerCi294JqfCmn5hxnFLMQAD4V/SyE
 c02xp1feU4xRmlOsRcSz8WjG5Q==
X-Google-Smtp-Source: APiQypK6cKhDRMHxFaHeoAg59jflJori9ZnZXsx30TY30ANqzFw43ayR1RkRqyTeoHnE0A26J4LGjQ==
X-Received: by 2002:a63:f50c:: with SMTP id w12mr17922741pgh.253.1586800652111; 
 Mon, 13 Apr 2020 10:57:32 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a2sm1281987pgk.90.2020.04.13.10.57.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 10:57:31 -0700 (PDT)
Date: Mon, 13 Apr 2020 11:56:50 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCHv2 0/3] Add coresight support for QCOM SC7180 SoC
Message-ID: <20200413175650.GD28804@xps15>
References: <cover.1586263250.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1586263250.git.saiprakash.ranjan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_105733_472705_D82A2367 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 09, 2020 at 05:13:35PM +0530, Sai Prakash Ranjan wrote:
> Patch 1 adds the ETM UCI IDs for Kryo 4XX CPU cores.
> Patch 2 adds the DT nodes for coresight components on SC7180.
> Patch 3 replaces ETM PIDs with UCI IDs for Kryo385 CPUs on SDM845.

I have picked up patches 1 and 3.

Thanks,
Mathieu

> 
> v2:
>  * Placed the DT properties for ports in one line as suggested by Stephen.
>  * Add UCI IDs for SC7180 and SDM845(Kryo385 CPUs) as suggested by Suzuki.
> 
> Sai Prakash Ranjan (3):
>   coresight: etm4x: Add support for Qualcomm SC7180 SoC
>   arm64: dts: qcom: sc7180: Add Coresight support
>   coresight: etm4x: Replace ETM PIDs with UCI IDs for Kryo385
> 
>  arch/arm64/boot/dts/qcom/sc7180.dtsi          | 471 ++++++++++++++++++
>  drivers/hwtracing/coresight/coresight-etm4x.c |   6 +-
>  2 files changed, 475 insertions(+), 2 deletions(-)
> 
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
