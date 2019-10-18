Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6468ADCAD0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:17:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=T8KGKVfpuLtXGQVlOyGDi7MlPtmw+LvZ8n718B4Ycfg=; b=DPas1I5b7P7WLraseCiZPDICZ5
	+9vjWBxWlzcx5n88p+fk48y7Ut+D9o+BupEERLrM3IdUzpuBozG75lb+qXyjB5RJCVmIrXL7NO8OE
	Uhg3EqOoo6secmblMnedE61r723ffeomQyIAyK5pKKR6+S096FdBZArZRzif5C+ED69S1zMbiHZX6
	PiTuP2ZvpYRGpuipqV3A3ppCNdJIfwqC090i/4zmky0Vp7tQNo4FSwTPEQw9ckubpga9vNB0VSJ4A
	SNHi8FtR283+v3N+jPFNvmgQFbc5RMsyxIfdupZDB1uQjc6qaC+4poxEo/z+/7/HzJyAh+sxYLuXW
	JBOKlsxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUwl-0000Ho-1O; Fri, 18 Oct 2019 16:17:47 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUuc-0007AC-6H
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:15:35 +0000
Received: by mail-wm1-x342.google.com with SMTP id 7so6801416wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=NiPnnXybYfsCEoSCgSQ6VkI98y5AUTMUbQ2sEfUh8lM=;
 b=LJ3VYJOWqENNeg46QP9EUkyyoZpR3YjGZPsjYq4Ja8jvNdAIgR3+F/71fH0Omf3eJh
 /U0rpku9ScDIwQFscwzHngVX7QNE7yJkRqaMaj80QmZVgYT6mO32dHzZiUy/pSTqPLnL
 QiEOvZJI2dhrgBG+DmnrmZVe6Y+1YZ1rs+XPatSiiubP4xHvauVIk5Q+PQAijWcwsMjn
 JFBZKRyEbymUsXSVNoRfH4xMTuVPgtJ/Too1ONx/p+TYKecOqfRAzFsdy4hxu5UPyTy1
 arvjFs/yI2gXxqOJ5g0MBTcrdLzbDt9o/4ibDY8tLIC9VCuyBapDxMnEoMiVvSNcQ5jS
 ShNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=NiPnnXybYfsCEoSCgSQ6VkI98y5AUTMUbQ2sEfUh8lM=;
 b=Tc20QZXflWCPxEI59hPMqdRhtvb13XvvRgzdWvu3KedFshJ6UcJIsDpNitUYbcV12R
 rbZdG8xgwJyCYfp2/dI7mnKqzhEiqLdPD+zyCEFJ4RYqgZWAbkIB4nbbUA7Hk0ACRWNK
 4UMt/Dg0ytRhrdTtYSNaNA/tnfalkRxcoLeUog/i6kHR9RfVCmZOM6a9+VRofQVaxst1
 5P4zXKl5YjfPrXwdrd5Glov5cwhprHwyDbFWfXetFuGU5y5eyycTjYlQWhmsHMyp7Mgq
 GwEJlx//gIMXPKYUlMZ83XAliVAFSBpteJ3G2Tk8/bG9sMwGdLTGiDqu6CFVUh7gBOZo
 UBPQ==
X-Gm-Message-State: APjAAAXDUfaWf/0sDiaMYnA4lhustvdZVjSQ95eNdnfYEbE6vor2uWwt
 pNQtj2ZlHP4kB5Bx3/85dC4WYg==
X-Google-Smtp-Source: APXvYqwVNEtt08u0F9IheP0GbcIL5/IMCNWStusFtmWS4tmcB8YxFZjDBcaMwAOipydLI72D7t6IGQ==
X-Received: by 2002:a7b:c4c6:: with SMTP id g6mr8379512wmk.126.1571415332059; 
 Fri, 18 Oct 2019 09:15:32 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id f6sm3023324wrm.61.2019.10.18.09.15.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 09:15:31 -0700 (PDT)
References: <20191018140216.4257-1-narmstrong@baylibre.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, khilman@baylibre.com
Subject: Re: [PATCH] arm64: dts: meson-g12b-khadas-vim3: add missing frddr_a
 status property
In-reply-to: <20191018140216.4257-1-narmstrong@baylibre.com>
Date: Fri, 18 Oct 2019 18:15:30 +0200
Message-ID: <1jbluef2sd.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_091534_327445_F28C2EE0 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
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
Cc: linux-amlogic@lists.infradead.org, christianshewitt@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Fri 18 Oct 2019 at 16:02, Neil Armstrong <narmstrong@baylibre.com> wrote:

> In the process of moving the VIM3 audio nodes to a G12B specific dtsi
> for enabling the SM1 based VIM3L, the frddr_a status = "okay" property
> got dropped.
> This re-enables the frddr_a node to fix audio support.
>
> Fixes: 4f26cc1c96c9 ("arm64: dts: khadas-vim3: move common nodes into meson-khadas-vim3.dtsi")
> Reported-by: Christian Hewitt <christianshewitt@gmail.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
> index 554863429aa6..e2094575f528 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
> @@ -152,6 +152,10 @@
>  	clock-latency = <50000>;
>  };
>  
> +&frddr_a {
> +	status = "okay";
> +};
> +
>  &frddr_b {
>  	status = "okay";
>  };

Acked-by: Jerome Brunet <jbrunet@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
