Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0A11D9FFD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:51:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=07OMKjhrg4Ntra/s9QO1JDc5rGupYndCZDc6lM94HdA=; b=Umb32GV2wZ0cBu
	7QGTYeU8dVUsenirrRoZgZkQrrgKttpAdQeml5L14KuYoIPZP+2QXO6gO1b/2WNfPGHfbN9isfAhf
	vQW9ku/yTFIE+S0nCwk2cz8LxuFva32UcTSVM0BpGx9lxoGgURJmfQIzYe5QZ8u/3RDhhZCTtc9oW
	uwSa+gEjmDYPLGMR3AXbU0kPYRthYQ8yYBlFTK911hu0Ptf6pO0OM6fvMEWkDUprDRIegJMNKdWSa
	0iRxtW0ZYctcptkibarG6gLMSJmmYy5tEoGOfRJf4LCik16MwrN8b1m7jl3WtE9Rwz6HHxvimf9Sd
	dSc65/fIuq5KKPUPmr0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb7KJ-0007bk-MY; Tue, 19 May 2020 18:50:55 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb7KA-0007bK-2a
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 18:50:47 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589914245; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: Date: Subject: In-Reply-To: References: Cc:
 To: From: Sender; bh=i1KDNTEcQpMlZ8oYJUcWWelkymnM8rNqtXNDYGMt8AU=;
 b=CPfYbIgCp92hQpNsWFtKe7fjKBJ05hCBzjWTRRfkhAogYO8HnJviF+ciAf2u8AiAw5ubfkSC
 O2Qzj7RteSbrrlURmnfXzj9ouYIjon9SLFrIOM4Tto+zb4Mv6iRwLKIxmc9dG/YUFqecTzaT
 QibCKTxl7YMDFVbeJvOj3fbfYaE=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ec42a84.7f9b22d3e8f0-smtp-out-n01;
 Tue, 19 May 2020 18:50:44 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 61EE8C432C2; Tue, 19 May 2020 18:50:43 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from Pillair (unknown [183.83.68.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0A23CC433D2;
 Tue, 19 May 2020 18:50:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0A23CC433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: <pillair@codeaurora.org>
To: "'Evan Green'" <evgreen@chromium.org>
References: <1589712411-26718-1-git-send-email-pillair@codeaurora.org>
 <CAE=gft577zxP5F6OdFXt6taLuLyye+tdRqZa63mPSRtPXO3Lcw@mail.gmail.com>
In-Reply-To: <CAE=gft577zxP5F6OdFXt6taLuLyye+tdRqZa63mPSRtPXO3Lcw@mail.gmail.com>
Subject: RE: [PATCH v9] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
Date: Wed, 20 May 2020 00:20:36 +0530
Message-ID: <039201d62e0e$65d16590$317430b0$@codeaurora.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFK6cBZDXagU4txI1QUeQtvgRsTqwIox4YXqbUCpuA=
Content-Language: en-us
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_115046_181021_4B391F24 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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


> -----Original Message-----
> From: Evan Green <evgreen@chromium.org>
> Sent: Tuesday, May 19, 2020 10:58 PM
> To: Rakesh Pillai <pillair@codeaurora.org>
> Cc: open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
> <devicetree@vger.kernel.org>; linux-arm Mailing List <linux-arm-
> kernel@lists.infradead.org>; LKML <linux-kernel@vger.kernel.org>; linux-
> arm-msm <linux-arm-msm@vger.kernel.org>
> Subject: Re: [PATCH v9] arm64: dts: qcom: sc7180: Add WCN3990 WLAN
> module device node
> 
> On Sun, May 17, 2020 at 3:47 AM Rakesh Pillai <pillair@codeaurora.org>
> wrote:
> >
> > Add device node for the ath10k SNOC platform driver probe
> > and add resources required for WCN3990 on sc7180 soc.
> >
> > Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> > ---
> > Changes from v8:
> > - Removed the qcom,msa-fixed-perm
> > ---
> >  arch/arm64/boot/dts/qcom/sc7180-idp.dts |  7 +++++++
> >  arch/arm64/boot/dts/qcom/sc7180.dtsi    | 27
> +++++++++++++++++++++++++++
> >  2 files changed, 34 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > index 4e9149d..38b102e 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> > @@ -389,6 +389,13 @@
> >         };
> >  };
> >
> > +&wifi {
> > +       status = "okay";
> > +       wifi-firmware {
> > +               iommus = <&apps_smmu 0xc2 0x1>;
> > +       };
> > +};
> > +
> >  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
> >
> >  &qspi_clk {
> > diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > index f1280e0..dd4e095 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > @@ -63,6 +63,11 @@
> >                         clock-frequency = <32764>;
> >                         #clock-cells = <0>;
> >                 };
> > +
> > +               wlan_fw_mem: memory@94100000 {
> > +                       reg = <0 0x94100000 0 0x200000>;
> > +                       no-map;
> > +               };
> 
> This node is not in the right place. Up through v8, this lived inside
> reserved-memory. Here it seems to apply into the clocks {} node, which
> is not the right spot.

Thanks for spotting this. This was a rebase problem.
I will post the next patchset by fixing this.



> 
> 
> >         };
> >
> >         reserved_memory: reserved-memory {
> > @@ -944,6 +949,28 @@
> >                         };
> >                 };
> >
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
> Should any of the *-supply regulators be specified? Or are they all
> board specific? Or just not needed? The example has these:
> vdd-0.8-cx-mx-supply = <&pm8998_l5>;
> vdd-1.8-xo-supply = <&vreg_l7a_1p8>;
> vdd-1.3-rfa-supply = <&vreg_l17a_1p3>;
> vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;

These votes are optional and were required for older targets.
We do not need these proxy votes in host now.


> 
> 
> 
> > +                       status = "disabled";
> > +               };
> > +
> >                 config_noc: interconnect@1500000 {
> >                         compatible = "qcom,sc7180-config-noc";
> >                         reg = <0 0x01500000 0 0x28000>;
> > --
> > 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
