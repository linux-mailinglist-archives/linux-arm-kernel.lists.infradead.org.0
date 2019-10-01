Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC2DC3A1D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 18:14:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pRbW2UntMxnAkHhTqazXRW3SYOJgdQ76AS5E0ZdwoV4=; b=X4gu0e9HEgP8rz
	Jx2NiMoiv4DRrBgBWZld9a9nVYupuHVv55buwk/lai5ztPegZ1623LLmjZhTTcAcYe7Jtp1YYVbUQ
	DgXDScqZtESlQaYAOzyjW389qbwtqHzgNQce0FSaufDCsCl/AkQMKUu+IbcHWjxq8Nslymb9AsbAy
	Nj3lbnGEfP3p1TBQlDXxq6k42KhUJOtlBrrFYVSgZvzFhlCZTIF7tO4MQfQbS+VUoLO+FRnrqCw7g
	PZoaIBbFHTbCr1P7JkQdoCjtQSJGrkpA/0gY3xtdomF9AEuZlqBqZqs3H3Jbg5J9lUEoANCslvRWx
	sAhVPY/Bcph8k4VUo2zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFKmu-0003SF-9N; Tue, 01 Oct 2019 16:14:08 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFKmm-0003RZ-HQ
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 16:14:02 +0000
Received: by mail-io1-xd41.google.com with SMTP id n197so49353203iod.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 09:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RQBf46agUgTnW8PYnwm3xoRrOXb5piikgXFBHNbVikc=;
 b=QnOYD3djDxO8fg6yb4B52P4HwdD+HJkKlYJVZwEmSqsgwwqEoZN+O9b+rew9dYRfDb
 ASd8fnG5FTD6VYQMeeCnT+S/OFv2VFOQNjQERRVIAMs8CTxwd8bMpUbRaP7Jz/PAgDXw
 SGyAu9X67C4Nj0ZlwKBG3pOFchluO1xAt4QdzHroo11o1PLwAB3/aP7jBWqtE14iSP3r
 Bxj2ENGkSfBgH4sRPQYmaCHi+7W3t3obzDKpB83JA5KncZTg8IGKuAidr37mjk7q7+Xa
 O6hI4rAtQ2HZZB9gzX0iBHLGuyJAT4lNKYtXfP7DY8PQK6or9pr3azMsCIoXlIronAoK
 7F0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RQBf46agUgTnW8PYnwm3xoRrOXb5piikgXFBHNbVikc=;
 b=CQylD04PRktHi7sQ9SE7uGONJhSFiFxVpCKbPMAQNnmW4b7DqwX2CUDx/88ps6x6Oz
 gvqASGeWlup1FmCIOLbeuNvta5bYDWnBOqg42ZnlhSHuJu8boPSmY6CsR0aXVKINoXRq
 TbGVoeoDjyoxqTHq+dhe3qElDpZ9mheF+Zb8Grv32NCYRL/Lenoj14uQ1QylzlLRcDhW
 k7z//wE9OQ8O//ebIwhXNveJgnsuWj1Q641uMZ+B31nG3bgDwPo0R7sKli1nwr2Czvt5
 GwI6VH67t9Vu+F42N9IYClzmO9Dx9uDQF1Yc8wcKLZL62kmcfArtCCLtGF3alueY48TC
 v77A==
X-Gm-Message-State: APjAAAUuovCxO3meMgigTkyBzJR3I9AnRct97duccv0Vt3FfxNmhf7A4
 Oosnqwj1NozQ8fE2OlJiISOErXtwTQzbkEwbLvY=
X-Google-Smtp-Source: APXvYqxVpMHysfbhK1Ax6DTvXrK2vO3Bsu/QNe+hST+Ro1DdMQ1hCtntdSwY95p8PW3HukLh5wPnI+YXsOCKIdPdr4U=
X-Received: by 2002:a05:6e02:6cb:: with SMTP id
 p11mr25365344ils.33.1569946439000; 
 Tue, 01 Oct 2019 09:13:59 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <90114e06825e537c3aafd3de5c78743a9de6fadc.1564550873.git.saiprakash.ranjan@codeaurora.org>
In-Reply-To: <90114e06825e537c3aafd3de5c78743a9de6fadc.1564550873.git.saiprakash.ranjan@codeaurora.org>
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Date: Tue, 1 Oct 2019 10:13:47 -0600
Message-ID: <CAOCk7NrK+wY8jfHdS8781NOQtyLm2RRe1NW2Rm3_zeaot0Q99Q@mail.gmail.com>
Subject: Re: [PATCHv9 2/3] arm64: dts: qcom: msm8998: Add Coresight support
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_091400_607510_A0890B20 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffrey.l.hugo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rajendra Nayak <rnayak@codeaurora.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Marc Gonzalez <marc.w.gonzalez@free.fr>,
 lkml <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, Andy Gross <agross@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Vivek Gautam <vivek.gautam@codeaurora.org>,
 Leo Yan <leo.yan@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sai,

This patch breaks boot on the 835 laptops.  However, I haven't seen
the same issue on the MTP.  I wonder, is coresight expected to work
with production fused devices?  I wonder if thats the difference
between the laptop and MTP that is causing the issue.

Let me know what I can do to help debug.

On Tue, Jul 30, 2019 at 11:59 PM Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Enable coresight support by adding device nodes for the
> available source, sinks and channel blocks on MSM8998.
>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  arch/arm64/boot/dts/qcom/msm8998.dtsi | 435 ++++++++++++++++++++++++++
>  1 file changed, 435 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> index c13ed7aeb1e0..ad661fcc9e1b 100644
> --- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> @@ -822,6 +822,441 @@
>                         #interrupt-cells = <0x2>;
>                 };
>
> +               stm@6002000 {
> +                       compatible = "arm,coresight-stm", "arm,primecell";
> +                       reg = <0x06002000 0x1000>,
> +                             <0x16280000 0x180000>;
> +                       reg-names = "stm-base", "stm-data-base";
> +
> +                       clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +                       clock-names = "apb_pclk", "atclk";
> +
> +                       out-ports {
> +                               port {
> +                                       stm_out: endpoint {
> +                                               remote-endpoint = <&funnel0_in7>;
> +                                       };
> +                               };
> +                       };
> +               };
> +
> +               funnel@6041000 {
> +                       compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> +                       reg = <0x06041000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +                       clock-names = "apb_pclk", "atclk";
> +
> +                       out-ports {
> +                               port {
> +                                       funnel0_out: endpoint {
> +                                               remote-endpoint =
> +                                                 <&merge_funnel_in0>;
> +                                       };
> +                               };
> +                       };
> +
> +                       in-ports {
> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +
> +                               port@7 {
> +                                       reg = <7>;
> +                                       funnel0_in7: endpoint {
> +                                               remote-endpoint = <&stm_out>;
> +                                       };
> +                               };
> +                       };
> +               };
> +
> +               funnel@6042000 {
> +                       compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> +                       reg = <0x06042000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +                       clock-names = "apb_pclk", "atclk";
> +
> +                       out-ports {
> +                               port {
> +                                       funnel1_out: endpoint {
> +                                               remote-endpoint =
> +                                                 <&merge_funnel_in1>;
> +                                       };
> +                               };
> +                       };
> +
> +                       in-ports {
> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +
> +                               port@6 {
> +                                       reg = <6>;
> +                                       funnel1_in6: endpoint {
> +                                               remote-endpoint =
> +                                                 <&apss_merge_funnel_out>;
> +                                       };
> +                               };
> +                       };
> +               };
> +
> +               funnel@6045000 {
> +                       compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> +                       reg = <0x06045000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +                       clock-names = "apb_pclk", "atclk";
> +
> +                       out-ports {
> +                               port {
> +                                       merge_funnel_out: endpoint {
> +                                               remote-endpoint =
> +                                                 <&etf_in>;
> +                                       };
> +                               };
> +                       };
> +
> +                       in-ports {
> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +
> +                               port@0 {
> +                                       reg = <0>;
> +                                       merge_funnel_in0: endpoint {
> +                                               remote-endpoint =
> +                                                 <&funnel0_out>;
> +                                       };
> +                               };
> +
> +                               port@1 {
> +                                       reg = <1>;
> +                                       merge_funnel_in1: endpoint {
> +                                               remote-endpoint =
> +                                                 <&funnel1_out>;
> +                                       };
> +                               };
> +                       };
> +               };
> +
> +               replicator@6046000 {
> +                       compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
> +                       reg = <0x06046000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +                       clock-names = "apb_pclk", "atclk";
> +
> +                       out-ports {
> +                               port {
> +                                       replicator_out: endpoint {
> +                                               remote-endpoint = <&etr_in>;
> +                                       };
> +                               };
> +                       };
> +
> +                       in-ports {
> +                               port {
> +                                       replicator_in: endpoint {
> +                                               remote-endpoint = <&etf_out>;
> +                                       };
> +                               };
> +                       };
> +               };
> +
> +               etf@6047000 {
> +                       compatible = "arm,coresight-tmc", "arm,primecell";
> +                       reg = <0x06047000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +                       clock-names = "apb_pclk", "atclk";
> +
> +                       out-ports {
> +                               port {
> +                                       etf_out: endpoint {
> +                                               remote-endpoint =
> +                                                 <&replicator_in>;
> +                                       };
> +                               };
> +                       };
> +
> +                       in-ports {
> +                               port {
> +                                       etf_in: endpoint {
> +                                               remote-endpoint =
> +                                                 <&merge_funnel_out>;
> +                                       };
> +                               };
> +                       };
> +               };
> +
> +               etr@6048000 {
> +                       compatible = "arm,coresight-tmc", "arm,primecell";
> +                       reg = <0x06048000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +                       clock-names = "apb_pclk", "atclk";
> +                       arm,scatter-gather;
> +
> +                       in-ports {
> +                               port {
> +                                       etr_in: endpoint {
> +                                               remote-endpoint =
> +                                                 <&replicator_out>;
> +                                       };
> +                               };
> +                       };
> +               };
> +
> +               etm@7840000 {
> +                       compatible = "arm,coresight-etm4x", "arm,primecell";
> +                       reg = <0x07840000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +                       clock-names = "apb_pclk", "atclk";
> +
> +                       cpu = <&CPU0>;
> +
> +                       out-ports {
> +                               port {
> +                                       etm0_out: endpoint {
> +                                               remote-endpoint =
> +                                                 <&apss_funnel_in0>;
> +                                       };
> +                               };
> +                       };
> +               };
> +
> +               etm@7940000 {
> +                       compatible = "arm,coresight-etm4x", "arm,primecell";
> +                       reg = <0x07940000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +                       clock-names = "apb_pclk", "atclk";
> +
> +                       cpu = <&CPU1>;
> +
> +                       out-ports {
> +                               port {
> +                                       etm1_out: endpoint {
> +                                               remote-endpoint =
> +                                                 <&apss_funnel_in1>;
> +                                       };
> +                               };
> +                       };
> +               };
> +
> +               etm@7a40000 {
> +                       compatible = "arm,coresight-etm4x", "arm,primecell";
> +                       reg = <0x07a40000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +                       clock-names = "apb_pclk", "atclk";
> +
> +                       cpu = <&CPU2>;
> +
> +                       out-ports {
> +                               port {
> +                                       etm2_out: endpoint {
> +                                               remote-endpoint =
> +                                                 <&apss_funnel_in2>;
> +                                       };
> +                               };
> +                       };
> +               };
> +
> +               etm@7b40000 {
> +                       compatible = "arm,coresight-etm4x", "arm,primecell";
> +                       reg = <0x07b40000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +                       clock-names = "apb_pclk", "atclk";
> +
> +                       cpu = <&CPU3>;
> +
> +                       out-ports {
> +                               port {
> +                                       etm3_out: endpoint {
> +                                               remote-endpoint =
> +                                                 <&apss_funnel_in3>;
> +                                       };
> +                               };
> +                       };
> +               };
> +
> +               funnel@7b60000 { /* APSS Funnel */
> +                       compatible = "arm,coresight-etm4x", "arm,primecell";
> +                       reg = <0x07b60000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +                       clock-names = "apb_pclk", "atclk";
> +
> +                       out-ports {
> +                               port {
> +                                       apss_funnel_out: endpoint {
> +                                               remote-endpoint =
> +                                                 <&apss_merge_funnel_in>;
> +                                       };
> +                               };
> +                       };
> +
> +                       in-ports {
> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +
> +                               port@0 {
> +                                       reg = <0>;
> +                                       apss_funnel_in0: endpoint {
> +                                               remote-endpoint =
> +                                                 <&etm0_out>;
> +                                       };
> +                               };
> +
> +                               port@1 {
> +                                       reg = <1>;
> +                                       apss_funnel_in1: endpoint {
> +                                               remote-endpoint =
> +                                                 <&etm1_out>;
> +                                       };
> +                               };
> +
> +                               port@2 {
> +                                       reg = <2>;
> +                                       apss_funnel_in2: endpoint {
> +                                               remote-endpoint =
> +                                                 <&etm2_out>;
> +                                       };
> +                               };
> +
> +                               port@3 {
> +                                       reg = <3>;
> +                                       apss_funnel_in3: endpoint {
> +                                               remote-endpoint =
> +                                                 <&etm3_out>;
> +                                       };
> +                               };
> +
> +                               port@4 {
> +                                       reg = <4>;
> +                                       apss_funnel_in4: endpoint {
> +                                               remote-endpoint =
> +                                                 <&etm4_out>;
> +                                       };
> +                               };
> +
> +                               port@5 {
> +                                       reg = <5>;
> +                                       apss_funnel_in5: endpoint {
> +                                               remote-endpoint =
> +                                                 <&etm5_out>;
> +                                       };
> +                               };
> +
> +                               port@6 {
> +                                       reg = <6>;
> +                                       apss_funnel_in6: endpoint {
> +                                               remote-endpoint =
> +                                                 <&etm6_out>;
> +                                       };
> +                               };
> +
> +                               port@7 {
> +                                       reg = <7>;
> +                                       apss_funnel_in7: endpoint {
> +                                               remote-endpoint =
> +                                                 <&etm7_out>;
> +                                       };
> +                               };
> +                       };
> +               };
> +
> +               funnel@7b70000 {
> +                       compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> +                       reg = <0x07b70000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +                       clock-names = "apb_pclk", "atclk";
> +
> +                       out-ports {
> +                               port {
> +                                       apss_merge_funnel_out: endpoint {
> +                                               remote-endpoint =
> +                                                 <&funnel1_in6>;
> +                                       };
> +                               };
> +                       };
> +
> +                       in-ports {
> +                               port {
> +                                       apss_merge_funnel_in: endpoint {
> +                                               remote-endpoint =
> +                                                 <&apss_funnel_out>;
> +                                       };
> +                               };
> +                       };
> +               };
> +
> +               etm@7c40000 {
> +                       compatible = "arm,coresight-etm4x", "arm,primecell";
> +                       reg = <0x07c40000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +                       clock-names = "apb_pclk", "atclk";
> +
> +                       cpu = <&CPU4>;
> +
> +                       port{
> +                               etm4_out: endpoint {
> +                                       remote-endpoint = <&apss_funnel_in4>;
> +                               };
> +                       };
> +               };
> +
> +               etm@7d40000 {
> +                       compatible = "arm,coresight-etm4x", "arm,primecell";
> +                       reg = <0x07d40000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +                       clock-names = "apb_pclk", "atclk";
> +
> +                       cpu = <&CPU5>;
> +
> +                       port{
> +                               etm5_out: endpoint {
> +                                       remote-endpoint = <&apss_funnel_in5>;
> +                               };
> +                       };
> +               };
> +
> +               etm@7e40000 {
> +                       compatible = "arm,coresight-etm4x", "arm,primecell";
> +                       reg = <0x07e40000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +                       clock-names = "apb_pclk", "atclk";
> +
> +                       cpu = <&CPU6>;
> +
> +                       port{
> +                               etm6_out: endpoint {
> +                                       remote-endpoint = <&apss_funnel_in6>;
> +                               };
> +                       };
> +               };
> +
> +               etm@7f40000 {
> +                       compatible = "arm,coresight-etm4x", "arm,primecell";
> +                       reg = <0x07f40000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
> +                       clock-names = "apb_pclk", "atclk";
> +
> +                       cpu = <&CPU7>;
> +
> +                       port{
> +                               etm7_out: endpoint {
> +                                       remote-endpoint = <&apss_funnel_in7>;
> +                               };
> +                       };
> +               };
> +
>                 spmi_bus: spmi@800f000 {
>                         compatible = "qcom,spmi-pmic-arb";
>                         reg =   <0x800f000 0x1000>,
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
