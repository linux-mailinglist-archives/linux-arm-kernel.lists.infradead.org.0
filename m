Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E225B1926A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 12:05:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nnmJWa/JBLuVeBQHTtFEGvD8ObBMuL8xDfc690Sxfm4=; b=PmFnOxdfQBQmfc
	9mdt5wmIcNaJg/8jxG0iJPFSA/CRJCfi0viuvoRFupDWxaMdBNnNQilfYxd/eTKCQTs1oAOZtxSov
	VM+TPbqukOrf6gJX1+jT7gF0RVzKVFquvJ3AFudoqB1QtSbICACjE0mbbftl6WW6pPBFcLcUniWYd
	cuu2srv3n0C2uP5M+OBoQxgECwbEeSyWDCJ5itdWmtZzSznjxd2u/4vv8RfzNqRxLaGwOH5hXQOt4
	PvxDUBrk/k0hf0IERVhLTjImEudFaEN0oFQCQlJ2clBT0MMH5fgoIrkNlgtta4aemvUocQAB56Yms
	FHbHWNqltzYMR18zOX+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH3qu-0001VC-KJ; Wed, 25 Mar 2020 11:05:40 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH3qT-0001Mb-Ur
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 11:05:17 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585134314; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: Date: Subject: In-Reply-To: References: Cc:
 To: From: Sender; bh=JepPCPGEarX1ss6ZbVvaIoXfTJutoTJE1MiruN2+lF8=;
 b=e39D7H/eM7mxjgc112/Uw1MmqPF2LoFsJm4v7CxVltu5FuT9iecosyFHlwlI0vZLTHUfpK2V
 b1eeMBtTnVaPKMT8X7A/nSBstb54qe3xs7efNwzn2qRDLCBcZfQ8ZW2MR1GFSIU3EQ/5y7PU
 7+XrRAodeA746t1vPuzxqTjJ+co=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7b3adf.7f9ac2d245a8-smtp-out-n02;
 Wed, 25 Mar 2020 11:05:03 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 232A6C433D2; Wed, 25 Mar 2020 11:05:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from Pillair (unknown [183.83.66.17])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 83978C433F2;
 Wed, 25 Mar 2020 11:04:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 83978C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: <pillair@codeaurora.org>
To: "'Evan Green'" <evgreen@chromium.org>
References: <1580822300-4491-1-git-send-email-pillair@codeaurora.org>
 <CAE=gft7EOALEMUWzoR3+pjoxCUTYWbiXoXY=dXH1BDhS3KwBzg@mail.gmail.com>
In-Reply-To: <CAE=gft7EOALEMUWzoR3+pjoxCUTYWbiXoXY=dXH1BDhS3KwBzg@mail.gmail.com>
Subject: RE: [PATCH v6] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
Date: Wed, 25 Mar 2020 16:34:54 +0530
Message-ID: <000901d60295$3acc79b0$b0656d10$@codeaurora.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIr1eNiqDxek+JigOIeIUW3T4FxSwDFrKGDp6dQ2yA=
Content-Language: en-us
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_040515_162001_A4D03FBD 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "'open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS'"
 <devicetree@vger.kernel.org>, 'LKML' <linux-kernel@vger.kernel.org>,
 'linux-arm Mailing List' <linux-arm-kernel@lists.infradead.org>,
 'linux-arm-msm' <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Evan,

I will send out a v7 for this patchset.
Since I have to configure the S2 SIDs, it is dependent on below ath10k patchset.
https://patchwork.kernel.org/project/linux-wireless/list/?series=261367

Thanks,
Rakesh Pillai.

> -----Original Message-----
> From: Evan Green <evgreen@chromium.org>
> Sent: Tuesday, March 24, 2020 11:10 PM
> To: Rakesh Pillai <pillair@codeaurora.org>
> Cc: open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
> <devicetree@vger.kernel.org>; linux-arm Mailing List <linux-arm-
> kernel@lists.infradead.org>; LKML <linux-kernel@vger.kernel.org>; linux-
> arm-msm <linux-arm-msm@vger.kernel.org>
> Subject: Re: [PATCH v6] arm64: dts: qcom: sc7180: Add WCN3990 WLAN
> module device node
> 
> Hi Rakesh,
> 
> On Tue, Feb 4, 2020 at 5:21 AM Rakesh Pillai <pillair@codeaurora.org> wrote:
> >
> > Add device node for the ath10k SNOC platform driver probe
> > and add resources required for WCN3990 on sc7180 soc.
> >
> > Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> 
> What is the status of this? Looks like you have some feedback from
> Sibi. Can you reply and spin this? Also a comment below:
> 
> > ---
> >  arch/arm64/boot/dts/qcom/sc7180-idp.dts |  5 +++++
> >  arch/arm64/boot/dts/qcom/sc7180.dtsi    | 27
> +++++++++++++++++++++++++++
> >  2 files changed, 32 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > index 388f50a..167f68ac 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > @@ -287,6 +287,11 @@
> >         vdda-pll-supply = <&vreg_l4a_0p8>;
> >  };
> >
> > +&wifi {
> > +       status = "okay";
> > +       qcom,msa-fixed-perm;
> > +};
> > +
> >  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
> >
> >  &qspi_clk {
> > diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > index 8011c5f..e3e8610 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > @@ -75,6 +75,11 @@
> >                         reg = <0x0 0x80900000 0x0 0x200000>;
> >                         no-map;
> >                 };
> > +
> > +               wlan_fw_mem: memory@93900000 {
> > +                       reg = <0 0x93900000 0 0x200000>;
> > +                       no-map;
> > +               };
> >         };
> >
> >         cpus {
> > @@ -1490,6 +1495,28 @@
> >
> >                         #freq-domain-cells = <1>;
> >                 };
> > +
> > +               wifi: wifi@18800000 {
> > +                       compatible = "qcom,wcn3990-wifi";
> > +                       reg = <0 0x18800000 0 0x800000>;
> > +                       reg-names = "membase";
> > +                       iommus = <&apps_smmu 0xc0 0x1>;
> > +                       interrupts =
> > +                               <GIC_SPI 414 IRQ_TYPE_LEVEL_HIGH /* CE0 */ >,
> > +                               <GIC_SPI 415 IRQ_TYPE_LEVEL_HIGH /* CE1 */ >,
> > +                               <GIC_SPI 416 IRQ_TYPE_LEVEL_HIGH /* CE2 */ >,
> > +                               <GIC_SPI 417 IRQ_TYPE_LEVEL_HIGH /* CE3 */ >,
> > +                               <GIC_SPI 418 IRQ_TYPE_LEVEL_HIGH /* CE4 */ >,
> > +                               <GIC_SPI 419 IRQ_TYPE_LEVEL_HIGH /* CE5 */ >,
> > +                               <GIC_SPI 420 IRQ_TYPE_LEVEL_HIGH /* CE6 */ >,
> > +                               <GIC_SPI 421 IRQ_TYPE_LEVEL_HIGH /* CE7 */ >,
> > +                               <GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH /* CE8 */ >,
> > +                               <GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH /* CE9 */ >,
> > +                               <GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH /* CE10 */>,
> > +                               <GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH /* CE11 */>;
> > +                       memory-region = <&wlan_fw_mem>;
> 
> The clocks are missing:
> 
> clocks = <&rpmhcc RPMH_RF_CLK2>;
> clock-names = "cxo_ref_clk_pin";
> 
> > +                       status = "disabled";
> > +               };
> >         };
> >
> >         thermal-zones {
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
