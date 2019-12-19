Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A207125C3B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 08:47:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oVWkOc5rzt+HP5wHCmROIut4VFVw0kOSrZIzj3MpzgM=; b=Qe3jP9kK3Oe7Cx
	rjxF5+qZzl6cCOdCWm0rD5O5aTrmWopNloUVdPFG7qdME7HiBpMAyds9rw1VHSDsRDT7ib2JrxSLo
	keuiiEsH3XCbL5+LkyZpttXVDRVT5EeyuezTnEUIpKWUt2jFeg8nbBppiVfxxLtF/yaWoRkUDkcMO
	HgvhgfAXH4G93neAVYu0FIsOJMzKYcnHTmwruc1SUIUILq/jjEBPALrNgC/1u+kOoJiG8StV9wwPd
	rn1yo+Vy6hjt6FwvWOQT4ur4HIBf7k8MAechltQuoNuicsaamgF/ZgSoOh1RhE8H3J3XwzTN9/xkw
	4dGhN2SQg+L71nDybWMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihqWX-00062j-Hk; Thu, 19 Dec 2019 07:47:05 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihqWN-00061p-2m
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 07:46:56 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576741614; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: Date: Subject: In-Reply-To: References: Cc:
 To: From: Sender; bh=8YiI0foaaoHDCVG3pyS8rW20b8Igs060tW2Y+QH4tNc=;
 b=NVqq4U3lpfxSYwSq4LOfWsm810v9xS7XsfPveII/rOg946PAZM1+AdAmldfsnvnYzX4Zn944
 AQ0qUzoTICCky+G8JUt8QSIZy/NtY/yMGkvU08yfiBj65bh9L4iBuPKFxokmzYINyv9z/aKN
 6oE89QrOBSrwokizbl9kZ13CN+w=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5dfb2aed.7f8b23be65a8-smtp-out-n02;
 Thu, 19 Dec 2019 07:46:53 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 1AA2BC63C67; Thu, 19 Dec 2019 07:46:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from Pillair
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8DC98C63C50;
 Thu, 19 Dec 2019 07:46:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8DC98C63C50
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: <pillair@codeaurora.org>
To: "'Bjorn Andersson'" <bjorn.andersson@linaro.org>
References: <0101016ed035d185-20f04863-0f38-41b7-b88d-76bc36e4dcf9-000000@us-west-2.amazonses.com>
 <20191211075301.GI3143381@builder>
In-Reply-To: <20191211075301.GI3143381@builder>
Subject: RE: [PATCH] arm64: dts: qcom: sc7180: Make MSA memory fixed for wifi
Date: Thu, 19 Dec 2019 13:16:47 +0530
Message-ID: <000f01d5b640$7a293220$6e7b9660$@codeaurora.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQG5QEUJ3PrdBpu9docuawAIGGG9XQL5bjGgp+I0uXA=
Content-Language: en-us
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_234655_182088_657B297A 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.25 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sure Bjorn.
I have sent v2 for the patch "arm64: dts: qcom: sc7180: Add WCN3990 WLAN
module device node", where I have squashed this change as well.

Thanks,
Rakesh.

> -----Original Message-----
> From: Bjorn Andersson <bjorn.andersson@linaro.org>
> Sent: Wednesday, December 11, 2019 1:23 PM
> To: Rakesh Pillai <pillair@codeaurora.org>
> Cc: devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
linux-
> kernel@vger.kernel.org; linux-arm-msm@vger.kernel.org
> Subject: Re: [PATCH] arm64: dts: qcom: sc7180: Make MSA memory fixed for
> wifi
> 
> On Wed 04 Dec 01:20 PST 2019, Rakesh Pillai wrote:
> 
> > The MSA memory is at a fixed offset, which will be
> > a part of reserved memory. Add this flag to indicate
> > that wifi in sc7180 will use a fixed memory for MSA.
> >
> > Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> > ---
> > This patchet is dependent on the below changes
> > arm64: dts: qcom: sc7180: Add WCN3990 WLAN module device node
> (https://lore.kernel.org/patchwork/patch/1162434/)
> 
> As mentioned for that patch, squash this change into that patch please.
> 
> Regards,
> Bjorn
> 
> > dt: bindings: add dt entry flag to skip SCM call for msa region
> (https://patchwork.ozlabs.org/patch/1192725/)
> > ---
> >  arch/arm64/boot/dts/qcom/sc7180-idp.dts | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > index 8a6a760..b2ca143f 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > @@ -250,6 +250,7 @@
> >
> >  &wifi {
> >  	status = "okay";
> > +	qcom,msa_fixed_perm;
> >  };
> >
> >  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
