Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6000663C6B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 22:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cleSLZdIwlx6yCLX1eujmSYsAsKinE5nq4IXkjn2bAE=; b=YDULDc4jH+05VN
	L/fiBpSJSmsRyCLAUCBXQxgN4Kb8tW+jhrMVi0oe9p2K/q2xrcmHh3xWB+z4sw/RC1+uaJPEJ0DiP
	S2reUkniFVxQzj11AUGwrILrCLTnLqa/v0u0YYxktxxpqoLtFzW6J6WaLVq64TMZKi3ZnugR3cniC
	NcNxy16eADWX/mHXt1HkclP0Mr7mll6r0uFU+ic0mM0Uchl/NniG2IU8k0o7iapbHrS4GY2cEKSYv
	a9cX7VIzS7H1FvpuhlA7bi+thWnNlKhMV+lq2XeSXDKFPgt+7yeQoTXWCvJ9QcflHwX5Pcbhml9yb
	5gubPRoUheSIpOVQw1qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkwMU-0004EU-MN; Tue, 09 Jul 2019 20:05:14 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkwMC-0004E8-9v
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 20:04:57 +0000
Received: by mail-io1-f67.google.com with SMTP id q22so24063022iog.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 13:04:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yMWvhTwdTx4eCPgZpMKqdo6YtJFGRY4W4k7r7rWwQq0=;
 b=du+PEVivLfUitexPhKYkpUsjOen3yFHvdBNG+qiP7Df+qych0R6F4Rqy83tnMZppwa
 DM+4fiDskPvEUKcSJw11MQ2+NwnlrKClpD1gnFsJPkngH/Gb/H7Wv3OCmXUR5SzXe89Z
 Wq7mbQq8DEXlez+rxkoGAaj/LZo0kFy3y4DmSemSKoE7tKh7e5ooTP1YrC1tsYKLQOxD
 re/O8ZMY6wPFvRI75eY3WldBTv0CP38Zp0eI/vLzu0M0NiIh11cnKG6Oad0QTzPWHCTd
 LJSVxPd3mfcjgxPobnHlxvpbfbq/fgosC/7XHneGwViy0K+qqry62f6XhwKSbg2tCO0W
 VOSg==
X-Gm-Message-State: APjAAAVQUWX4HE5I5NCd3qr4XVExWib7VdbwV+014h8fHgJGLWkatPuG
 je0M1QvnFx4yntjFSPN/ZQ==
X-Google-Smtp-Source: APXvYqym6yoyImjtZ4uA33nv3VEFPdV5kZxtSC8ErJEyWJqeGfIzXNMCldgpv1NB9zrEilSNLO/USg==
X-Received: by 2002:a6b:6f09:: with SMTP id k9mr2513338ioc.223.1562702695542; 
 Tue, 09 Jul 2019 13:04:55 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id h19sm15504351iol.65.2019.07.09.13.04.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 13:04:55 -0700 (PDT)
Date: Tue, 9 Jul 2019 14:04:54 -0600
From: Rob Herring <robh@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH 1/5] dt-bindings: pwm-stm32: add #pwm-cells
Message-ID: <20190709200454.GA328@bogus>
References: <1560937925-8990-1-git-send-email-fabrice.gasnier@st.com>
 <1560937925-8990-2-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560937925-8990-2-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_130456_344122_7C9CB705 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-pwm@vger.kernel.org, linux@armlinux.org.uk, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, thierry.reding@gmail.com,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Jun 2019 11:52:01 +0200, Fabrice Gasnier wrote:
> STM32 Timers support generic 3 cells PWM bindings to encode PWM number,
> period and polarity as defined in pwm.txt.
> 
> Fixes: cd9a99c2f8e8 ("dt-bindings: pwm: Add STM32 bindings")
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
>  Documentation/devicetree/bindings/pwm/pwm-stm32.txt | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
