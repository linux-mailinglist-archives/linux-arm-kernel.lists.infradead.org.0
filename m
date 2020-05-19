Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4101DA23F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 22:08:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bB9VwaVHitnUyl4YYozcyXTkn17E8pzepW/LRQDQ9Lw=; b=pjdatfPItp36hG
	4d7Hnmb6OROp8gcjMZ9wrxztaR9+C+j6F1pfw6CeiF209iYFLF4qeczFni4/5nktik2jHciJ551zg
	4OA74LVpmLn2V/+YZ0KZ4hWVxkK09oYvLQqeVlg44NiPnKVpSil1G/AZYGmaoUl8eyjWHA6RDvtHv
	xJ0iZ3QHjMD9aS44wwiem+M2E87yRU2K8BYyWj6nNIpkToT0mfSsgtyXLfebsaP8yTgHP3uZxm/fY
	ZgRyABQ5H+fN01M30TdFmLwJxxJUYgsaWXrwf5u0ExcZTf5O0r6aSzaryF6BnKIFCkuYNEdsvhyqw
	CW/sq5Hw0uZalh3MpKnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb8Wq-0008SG-KF; Tue, 19 May 2020 20:07:56 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb8Wi-0008Ru-S2
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 20:07:50 +0000
Received: by mail-vs1-xe41.google.com with SMTP id e7so389928vsm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 13:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UXbwGQX7NBj93macBQks6TpgCaCAqI85y6U/Eho5NaA=;
 b=iMBY+L1k7S2P7A4yIvSJy4MuZVOr4X+yr4pt1EqaJLCp6UcTm+kmuYjI5XDEe9FOP2
 SumGBT1xC3NYhOGo+zSCsVuJcjHpynQ2q6oJ45AVzmudv6qxVEOkF4nnIgDJqe8LeQwJ
 yB5S7v/Ar4tfTj9fY0v9m2ouNF1hwJw9OzKyk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UXbwGQX7NBj93macBQks6TpgCaCAqI85y6U/Eho5NaA=;
 b=NxKdhtNyz7yHIwQp4NMBKcF88CCtv8oV3kG8V2ritDcelQBgcDj3WFdnB8nPC6LWk9
 nDawE0Yx6Egt5mINZz4aMJAbCY6Whp4wZceGwJ+DXDQc2wUxG70XqKqRsKmK+4QM8Y0l
 5sLLVYSnLztjTCibkQFShX5XNsHI6sOki3xPFmuX3N8XmZ2ZhgMiTMFZ9n8pMM62ScAT
 DWygUmXSVfIN/B06QGxzIlEqPDwBMQG29EgSYU0bbXNlov/pir2c16MQarzpuwiNYrGu
 6k59ij6h9KmZ2PzSUEQN+xtfzRAb6vPbPrnDE1BTPo5N6q/Ecl+Cz5GHhM8Yu5s4+9Og
 zZFg==
X-Gm-Message-State: AOAM530uLKKaic+ZZPheHfYXBKs1pgR6NZRD+xmYVwmvyAPED/2Cdc4z
 zFTgooOVQzD0m9dSVJJ/kbWCFpuU/A4=
X-Google-Smtp-Source: ABdhPJwSwrT1JIqydH8Cyna/gMvOleU06a1hvUbxyDGsbt3XQJ7NzQo3HxK3yxI9/2ab1qvkv/Kdsg==
X-Received: by 2002:a67:ef1d:: with SMTP id j29mr823971vsr.238.1589918865646; 
 Tue, 19 May 2020 13:07:45 -0700 (PDT)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com.
 [209.85.222.48])
 by smtp.gmail.com with ESMTPSA id 43sm112626uah.3.2020.05.19.13.07.44
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 13:07:44 -0700 (PDT)
Received: by mail-ua1-f48.google.com with SMTP id a37so430652uad.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 13:07:44 -0700 (PDT)
X-Received: by 2002:ab0:b13:: with SMTP id b19mr945772uak.91.1589918864128;
 Tue, 19 May 2020 13:07:44 -0700 (PDT)
MIME-Version: 1.0
References: <1589914405-6674-1-git-send-email-pillair@codeaurora.org>
In-Reply-To: <1589914405-6674-1-git-send-email-pillair@codeaurora.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 19 May 2020 13:07:32 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XXRhh-1cWH5rMPq4W_Dh4yE=++sga_aJ8cwFkKkrAXbg@mail.gmail.com>
Message-ID: <CAD=FV=XXRhh-1cWH5rMPq4W_Dh4yE=++sga_aJ8cwFkKkrAXbg@mail.gmail.com>
Subject: Re: [PATCH v10] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
To: Rakesh Pillai <pillair@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_130748_923550_68975963 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, May 19, 2020 at 11:53 AM Rakesh Pillai <pillair@codeaurora.org> wrote:
>
> Add device node for the ath10k SNOC platform driver probe
> and add resources required for WCN3990 on sc7180 soc.
>
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> ---
> Changes from v9:
> - Place the wlan_fw_mem under reserved-memory node
> ---
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts |  7 +++++++
>  arch/arm64/boot/dts/qcom/sc7180.dtsi    | 27 +++++++++++++++++++++++++++
>  2 files changed, 34 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> index 4e9149d..38b102e 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> @@ -389,6 +389,13 @@
>         };
>  };
>
> +&wifi {
> +       status = "okay";
> +       wifi-firmware {
> +               iommus = <&apps_smmu 0xc2 0x1>;
> +       };
> +};
> +
>  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
>
>  &qspi_clk {
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index f1280e0..19bd7d0 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -106,6 +106,11 @@
>                         no-map;
>                 };
>
> +               wlan_fw_mem: memory@94100000 {
> +                       reg = <0 0x94100000 0 0x200000>;
> +                       no-map;
> +               };
> +
>                 rmtfs_mem: memory@84400000 {
>                         compatible = "qcom,rmtfs-mem";
>                         reg = <0x0 0x84400000 0x0 0x200000>;

This is less wrong than v9, but still a little wrong.  You should be
keeping these ordered by unit address.  94100000 comes after 84400000.

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
