Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1A9B1D3E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 14:18:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tREgIwCcEvXoOzLKMv8aLZ7lDzDebzBhvo3hArOaopo=; b=o1YHoU4D0kyb6O
	9Y0VfEm4Au9Kg/uE7sYlNlIq86ZSSt3lqHqaMeK1MX6l0VVNYWZGypnWNdw1F9o99rme237AFxqYn
	pty1RaDpysVN2g5uH1iXBhRsCXVxgvXFIxNmEZw41bdPms5XOhFt+39rZHn17TWCyFw80Aa0ztO3c
	RofgTvTEfrjNok5geh+Tcs7qcdAtOsE+SK0d2eo+OAe4BMBrIA2w0t2AnIbni7PkRPqyL/GNyYYQ5
	DdRhvGptqedZRr8Bxfe7mdmOcGSnrsrL+xXmNwIfxbEQt+EWeeYYt37VnKBakUaL00kLJ4Mx7oy4y
	p3Hrped22BdJn2nDhU9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8kX7-0000UB-V6; Fri, 13 Sep 2019 12:18:38 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8kWu-0000Sh-4E
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 12:18:25 +0000
Received: by mail-wm1-x344.google.com with SMTP id v17so2020964wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 05:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=L2Cakw64Ur8nPCw1uUR/WlbNeQH+sAcuv7OY6j+C6MA=;
 b=YVvMeOhDewiCpmZozcwGl4ejAK+9WK/9Z+J7H9sDgMudKaYbPEB5ff4hPlFam6HtG7
 SKq47C2uL/08Gx8QHB0TYCtI4xqOneLcbwhi7VzlUUQCw9oJghWbJ7ZIRh2hIMMlfcg5
 rPmMDfxt7UqaefTshjYFNJZUpgl24TlzeLDsgNgpmAzRNbDcsOpR3SfGmDMGGS6TS7xT
 DI9zuLWyL9aADGPPthbbWgyZpRLLDUjYk7Ey8y8iti1YFh7AcMNEFGQbfEnGi3oZ4azQ
 /iJ472WSAhndN+55EK1kMnAOEvwD9t767WUbB0OSWv7n2c81rPeN1nPh0hStPXtJOugn
 M3tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=L2Cakw64Ur8nPCw1uUR/WlbNeQH+sAcuv7OY6j+C6MA=;
 b=MdiZk3nbv5NCbH2cIakLuDilLIErOhjC/vW1HIYRDOWk/AEBPzw3yN1EPHV/XTgcIY
 odnNyZCTwpU/hvIFVWD6vGtxlflgljflZ+vQGk5gzAgEi70uaGVY54iYVLx9Qz6L5qTC
 sN55EkpMWLj7RLiG1/hMhzi8J1TNVYtIbUsmBCtCIxF84IFeiHDzDj221kE75gumX5cq
 1Rx5FtzvcwayBOJ9XlR9y7HrELSxof5WB52cyhp64kkAinFskODmM2+bvm8nLGB365Po
 2e81nz8M7VHpoeua++mfl8tvWrCRKnUmH52MzpIYTbjlPp6rDEtbXQLAtyfswouNT6qn
 DPyA==
X-Gm-Message-State: APjAAAWyw8tA6I88UVwe1a3bgsjCges6CWOylqcddxD5bYmC3eAtVffh
 8lp9VDk6/INAACbHNH/ZxaA=
X-Google-Smtp-Source: APXvYqzCo3gG3+eVr790S6I7T0wbEvLoOdwHeYlzsyGjVmOJug5XAhqAn64Ep5+tD9TX3lLN5L+S1g==
X-Received: by 2002:a1c:2302:: with SMTP id j2mr3071322wmj.174.1568377101707; 
 Fri, 13 Sep 2019 05:18:21 -0700 (PDT)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id a11sm2283446wmj.21.2019.09.13.05.18.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 13 Sep 2019 05:18:20 -0700 (PDT)
Date: Fri, 13 Sep 2019 14:16:08 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: Dong Aisheng <aisheng.dong@nxp.com>
Subject: Re: [PATCH V3 00/15] arm64: dts: imx8: architecture improvement and
 adding imx8qm support
Message-ID: <20190913121608.GD16292@optiplex>
References: <1568302252-28066-1-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568302252-28066-1-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_051824_193828_17904CD3 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, dongas86@gmail.com, catalin.marinas@arm.com,
 will.deacon@arm.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/09/19, Dong Aisheng wrote:
> IMX SCU based platforms (e.g. MX8QM/MX8QXP) are comprised of a number of SS
> (Subsystems), those SS may be shared between different SoCs while most of them
> can be reused like Devices Resources, Clocks, Power domains and etc.
> 
> This patch series aims to improve the MX8 architecture to comply with the HW
> design to save a lot of duplicated codes and benefits us a better
> maintainability and scalability in the future.
> 
> This patch series depends on another clk new binding series:
> https://patchwork.kernel.org/cover/11046287/

Thx for your update of this patch series. I'am running into the issue
that my linux next-20190904 unfortunately is not booting with it on my
imx8QM board. Kernel is just stuck during boot see below.

I applied your v5 of your clock binding patches series and applied this
series in v3. Your former two patch series worked well with next-20190716.

The last messages from the kernel are:

[    1.019208] imx-scu scu: mbox_request_channel_byname() could not locate channel named "gip3"
[    1.027316] imx-scu scu: failed to request mbox chan gip3, ret -22
[    1.033480] imx-scu scu: failed to enable general irq channel: -22
[    1.039646] imx-scu scu: NXP i.MX SCU Initialized
[    1.047414] a35_clk: failed to get clock rate -22
[    1.058682]  lcd0-pwm0: failed to power up resource 188 ret -22
[    1.064314] imx-scu-clk: probe of pwm_clk failed with error -22
[    1.070538]  lcd0: failed to power up resource 187 ret -22
[    1.075690] imx-scu-clk: probe of lcd_clk failed with error -22
[    1.085965] mipi_csi0_core_clk: failed to attached the power domain -2
[    1.092359] mipi_csi0_esc_clk: failed to attached the power domain -2
[    1.098777] mipi_csi0_i2c0_clk: failed to attached the power domain -2
[    1.105278] mipi_csi0_pwm0_clk: failed to attached the power domain -2
[    1.115744] imx8qm-pinctrl scu:pinctrl: initialized IMX pinctrl driver
[    1.123923] gpio-mxc 5d080000.gpio: IRQ index 1 not found
[    1.130276] gpio-mxc 5d090000.gpio: IRQ index 1 not found

I see similar messages also with your older working patches, only the
last two lines are new errors.

Best regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
