Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C75FA116FC6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 15:57:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ooFGqWjgUf/WcPR6pPG5Y2H0Iq0rS0gR0HfBl0KRgpk=; b=Tf2yf6dj5AJCZK
	2PDmbW+3/dP4gSkG7Rys9Xl1qwuWKdY5y8QhuTD3E2SqMVFhhwgrFfGc4ib5FXHpMGOtOxTInU/1D
	XVXD4nq1BAZ6BD2hr9zV1/1OUZ/KH37pnKYzUeTmyIyHTuGHMwTgEFUN4f6RWZqaO5eU8+/hy/lDL
	S3+FkcGfnd+uGyO1st/LC/6JF/r7SiLDVROuyg1A1MN7vIQOjocBfpglUTW/JGEXDEpxizIGrPY8A
	0SMKccREs4t9DX0A+5zeGJHbjgPNdToM0aPHNoHXig1EAPwLZRcGggkvizEvh5g8QrjiXUvZThIZy
	dcO6zYcbhSm2qqyHxe0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieKTD-0003QB-FD; Mon, 09 Dec 2019 14:57:07 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieKT3-0003Oh-5q; Mon, 09 Dec 2019 14:56:58 +0000
Received: by mail-il1-x142.google.com with SMTP id f6so12943645ilh.9;
 Mon, 09 Dec 2019 06:56:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GZjkca3Zp9sYYYIS/QPCEF0H2DGmE3kQodC7U7RI6jg=;
 b=Jo1DFtbfEqbVJQq5XZ5LYzCv5LfIMXre5rs2IBqXAEswSM4ZyGHTOACUpAWl/JxobF
 HLX/pPfXm0RL9M3l645yavzaROmAbjPrumBgCxOs+qt0jECTLvAP2saRGhxDiE4oVabe
 x5ksCotFtF8bz+kAXYWj99jBeJUme6AdylQlFhZHK5Pd5Gk1t3eZiddRZuYK0LK40RxD
 YSVYDjyxUtLqzzIQK4xOZoi+glaFkyr5SiLcxWGHnk44UhVVdqwlxJe//NV2RaRGPTNP
 gl8tmVv118OmwBXVwaHHpaVbbEq1vi6cVvltYUcazpnix7+plbZ6LF5IODbwmjQ4/C3R
 9miQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GZjkca3Zp9sYYYIS/QPCEF0H2DGmE3kQodC7U7RI6jg=;
 b=CQnoLY2AIiinvXXOJHg20vyTFgScMhGs/G42CXO+rhE369Qj2EYDU/AIEmP/u3/O+x
 +UrcUyYxMmnf6dj+uqPUXNOfud6k2GX+B/v26A+Lnpy9B5kcp4yS++bXDdRt6xnNzs7V
 kyXqZTnQmUsPQUTa8zLFVG7ahUu0zkzQSibntUamn05d90b2FItihEQgA44uwFGr78PM
 YT6HNuHyI99rr9RVK4SwA/UK26/2bl0p8zwLW41uURNfSDcBKXP3rsnyKjDxWcuv0vRE
 hkVnmaMkcOW1LnmUsqSXvtxIpLtcJLlS4hpDBgyl8yM7dorjjKHPGu+OkovJJGLKHXPo
 OIAQ==
X-Gm-Message-State: APjAAAWEAuQV5+3be/JmJfnylYvaPsfZ0RdXVDp2Jt9hcxZxMFY2O+kJ
 /SH1+WUovBd1ZT0VhjWtVP9tTZ4tI73tFnG5CJY=
X-Google-Smtp-Source: APXvYqxlvrvi0P/1yFULp5Ov9uTz23XUXUnTAB4CPJ8ux5bZ/ALMike0pN8bBYyFrKhz/ds6VBHl/XO9ocuzIVo34UE=
X-Received: by 2002:a92:3919:: with SMTP id g25mr10786954ila.221.1575903414183; 
 Mon, 09 Dec 2019 06:56:54 -0800 (PST)
MIME-Version: 1.0
References: <20191206184536.2507-1-linux.amoon@gmail.com>
 <724aa7db-3838-16f9-d344-1789ae2a5746@arm.com>
In-Reply-To: <724aa7db-3838-16f9-d344-1789ae2a5746@arm.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 9 Dec 2019 20:26:42 +0530
Message-ID: <CANAwSgTPrP5FS3xb7SadZ+BwASWQxfO8rBmno8ZW0JzAxcqWKA@mail.gmail.com>
Subject: Re: [RFCv1 0/8] RK3399 clean shutdown issue
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_065657_254599_EDD3D2AE 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Daniel Schultz <d.schultz@phytec.de>,
 Heiko Stuebner <heiko@sntech.de>, Linux Kernel <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On Mon, 9 Dec 2019 at 18:59, Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 06/12/2019 6:45 pm, Anand Moon wrote:
> > Most of the RK3399 SBC boards do not perform clean
> > shutdown and clean reboot.
>
> FWIW reboot problems on RK3399 have been tracked down to issues in
> upstream ATF, and are unrelated to the PMIC.

Yes I am aware of this changes.
But, I have tired to study *RK808 datasheet V1.4* [0] below section
*5.2.3 Power Channel Control/Monitor Registers*
for clean reboot I was going to try disable some bit in below
into reboot handle in the future patch.

DCDC_EN_REG
SLEEP_SET_OFF_REG1
SLEEP_SET_OFF_REG2
DCDC_UV_STS_REG

I was going see if this helps to do clean reboot.
further more use this in suspend/resume operation.

[0] http://rockchip.fr/RK808%20datasheet%20V1.4.pdf

But I feed that their is some more issue with related to mmc or PCIe
not able to cleanly release the resources while reboot which caused
then to disable after reboot.

>
> > These patches try to help resolve the issue with proper
> > shutdown by turning off the PMIC.
>
> As mentioned elsewhere[1], although this is what the BSP kernel seems to
> do, and in practice it's unlikely to matter for the majority of devboard
> users like you and me, I still feel a bit uncomfortable with this
> solution for systems using ATF as in principle the secure world might
> want to know about orderly shutdowns, and this effectively makes every
> shutdown an unexpected power loss from secure software's point of view.
>
> Robin.
>
> [1]
> http://lists.infradead.org/pipermail/linux-rockchip/2019-December/028183.html
>

Yes I have follow the mailing list and I read this thread.
I am not aware of ATF complete architecture.

-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
