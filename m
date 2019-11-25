Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3355109113
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 16:37:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L0fdiAeo3KakH33u/paz25ZgAudN+Mu2cOsoUMbSVqM=; b=sV0oeB2YBDjq/c
	tqZ30JEfcKBkXHCFDKP+Y2fXwxRiB5Nhc7iBVtQTh5QwGEgK6SqmQVEwRTC6oTC1i7XGpgVq1V/S9
	0x1sUqmx0OswcyNx6TzHmMOq0v7i8AAMiUUgvaL6gtL82IzZkErlC4DGQSCbpT7zRCfE0hQurovnU
	PNvSB8yFniqHHImB/0z3HGT+lcB0fFgtjsvu8h9iGB8ZlNw6VBzTVu8mjgR5K+5enlL55xZes7Dna
	NJlUt3RPQIWFzP+Zy3oSTLtORU6PC6q+Vllx+HCd3SYlnRBGxxcE6rt/sc5+GpC6gPHIDFhhLdL9q
	NpOY0gSObSi6AoFxCO5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZGQu-0000Ey-8I; Mon, 25 Nov 2019 15:37:48 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZGQk-0000Ec-2y
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 15:37:39 +0000
Received: by mail-lf1-x143.google.com with SMTP id m30so9532405lfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 07:37:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tzbbtJJtTXoMbOzUSaKDgvfNOfFeZh50+ac8yg9V7n0=;
 b=bCYcQ+KlvTr9IKnKYuT0eTVP2EIWM613mtRB9VkredrydGTnCjMkbh7IIb/PpLRV//
 0yJL66wan5LVJW79MRsjourVKZjLFE6g/Qkeyfc/Y1QwxnZ4I4Zf4r1lLfEMKNxVfTis
 llQU2bwxnN6eegmqd21fJZIM2m09TblCv0QD5n7rAu73nOPMXbPQVeuyZDqCatiA2Iy2
 hs3ZCDKxF7rIogpktIOBlV7Q0a2imdryR07AwIbOwiGOLBOxxW8ywV94H5k0WweIT8ij
 zxKY2GYJ3g+Gw7RDigIlIaaWz7xdj0Vb9k0NGrv413OKarvvDMjwNPqIPLu9Yz9HuSrl
 RjTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tzbbtJJtTXoMbOzUSaKDgvfNOfFeZh50+ac8yg9V7n0=;
 b=ToN6yodkGGA3qbPmcmoFYwInjbR6EZCShdCDRV2V46UTVTJi8v7dRQP3ijKa5RkXzX
 kqWgHiaDV/zZGOKdHwdc8aGB3GdHxnMqF0Swr2jeLw/63JjAHyXp/FI1Z2ewUltVPfkB
 1Yro8RpSmSF+xjqBxfAn/UXvDFEb5wdY0HwxN3Rbh5XVkdYvaevUzEIt/SNafVQILYrd
 p+uMZG1xmJjFH+2VPhxnVPsPaQfrRFSVknIN2a2DP3wksTNkgiQnNGVL1AdcsZL8DmBw
 d5ZiKAdMtiDOUI+oz3OrVYeznSVJ+PX/ssgso9cdx8WPaFqTTmNZbZgDCpfab9j2TWC2
 zTZw==
X-Gm-Message-State: APjAAAWmJs0Stae5Rex9TnN4JvgRRdHYJBDl8ngBFjaO+Dz564Gb1VEQ
 k0vb23wWiQnJrmXf0bz13mqrbwSfoD09ys1baVJNwg==
X-Google-Smtp-Source: APXvYqxD+JrvdwNziaXkpfYwENyjYfhMX0TCYLhWRXzr0Nmk28hukOQJyU4sgKFYX0MfQDFy6G11DYI4jMJBVwre0x0=
X-Received: by 2002:a19:645b:: with SMTP id b27mr10944903lfj.117.1574696256337; 
 Mon, 25 Nov 2019 07:37:36 -0800 (PST)
MIME-Version: 1.0
References: <20191125122256.53482-1-stephan@gerhold.net>
 <20191125122256.53482-2-stephan@gerhold.net>
In-Reply-To: <20191125122256.53482-2-stephan@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 Nov 2019 16:37:25 +0100
Message-ID: <CACRpkdaM1O6xNE3yNsnnK=ZeOPCcaFTt-pUbMC9fUsSF38fOCw@mail.gmail.com>
Subject: Re: [PATCH 2/5] ARM: dts: ux500: Rename generic pin configs according
 to pin group
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_073738_162276_15728C27 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 1:27 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> Some components (e.g. SDI, I2C) can be used with different pin assignments.
> Before we can add the alternative configurations, we need to rename the
> current configurations to more generic names.
>
> Each pin configuration usually configures one specific pin group.
> Therefore we rename the configurations to use the pin group as name.
> Make up for the slightly longer names by removing the "_mode" suffix.
>
> Rename all existing uses to use the new labels.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Patch applied for v5.6.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
