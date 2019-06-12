Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5790341DB3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 09:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gz2cgGY2HHw/g8eJ4C2AGawh0sAe5lRLjRguXsoqCYI=; b=sfIWLvrcSBLUiV
	UPfTWEZjVPB+hODdS2T8vL4iaisabJ3z4EcD7YIFz504cKN0cXPBV7imc+JkSS4O846/bXPQMUCSc
	NOjsRUzfkjWZM8xKYYgdT4RvyTDc24nOtOLR1HgOsOnyaxm8/VAiAlO5/Rv9EHuFG6JwPLtiL4Kkf
	wAKO98Gk28M+7alQ2ozdZwcifrcZnw+6gCKWsADWwiMMfXJ2Rtym8JSrhVCl4nD3t6dZXb/xF7A1A
	yJ8XrZUJGaULBSOl+mHMCELYOrT4JyU/xvaRxnMf9F60SlX4DqESmEMyOMb+PDI9JeFb+F5VnNKjt
	RcoFvIeFfTSRlUW/xrPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haxev-00006u-MF; Wed, 12 Jun 2019 07:27:01 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haxdw-0007yE-Ka
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 07:26:02 +0000
Received: by mail-lj1-x241.google.com with SMTP id v18so14148336ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 00:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=msM4dgHT7OChSN8YMEnC/hlz7O4CQA3Qt/8x5kRoeWA=;
 b=b/xNVmBGr774Ie44vkdUYzW5g96u3La3k0A9SkL3ZCvZkJF98mYXDQ6oP9LRZh7Wp/
 2vvQhSHA3r4OQBrQ7F92Mofp94Op3kqIQEKS8O+hSDMP2fnYaKO61aP1PbwJcYdaNkud
 Uyg/uruiDUcv2DAYwC7O9pg8remPu1Uh3BpmwKar4uCP4Sp2HYDx1JVC3VEx1wjMqJNo
 bRXEiIeSR30mKPOoa8C77KYigxq3DHc3oCTvWo7Qzb1rVN30/VnNJ2zgp/VN1Is2rgqC
 Y+sDCDqKg9uQcSI7N022tg6lqvie69RffAY9o34iLiLGyXRl91cmjVEhOhil7iISNP/k
 aFrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=msM4dgHT7OChSN8YMEnC/hlz7O4CQA3Qt/8x5kRoeWA=;
 b=Yw5FSyVgb+N3VxD8vpknMOn9EUcrI63CHx6HcJ4u6zRTgJmgS3WekSjo6CFImB+mfe
 FIYHChtX0liiMM6SJM2fnBCfsf08wZn3yTUiY7CsmAWijBeRnep7LtSGbY9tQbEnh1JE
 7RND3al2hOssCBDIl5hJxhLs9xZXunCGuu1dF9xP57EHendltZKu6NDN0deJyICJbuyg
 W+gbYNCR5bmLH9xlhp9d6NirsfANfN9fNEcDL8RCd6cNR83jEuNbyXJFBzNTDttyAatF
 K0KfsDY6ANsW9RXxzkLYil6e/6L6ePSMC76/bD65mkCMAnlYwptJWX4SJQINkhYWH7hh
 8OfA==
X-Gm-Message-State: APjAAAV81bn7+o7BAtxLgHp+DTVJoGn5NbyVbgf6QcMrEd/XTrORJ7LS
 YdstHzZWc/Y+w+Bc7dt9YNbTIZ2W/zLHrySTWglzxw==
X-Google-Smtp-Source: APXvYqx5YwbEg0avWvoTtMnv22p8ShuveFC0J0UpmFk2uYfKnJ2tkg9tfFI9Py8uT6FyJuuL+H4KmQND6QpZjMGZBTE=
X-Received: by 2002:a2e:7508:: with SMTP id q8mr26602026ljc.165.1560324358738; 
 Wed, 12 Jun 2019 00:25:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190610084213.1052-1-lee.jones@linaro.org>
 <20190610084213.1052-3-lee.jones@linaro.org>
In-Reply-To: <20190610084213.1052-3-lee.jones@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 12 Jun 2019 09:25:47 +0200
Message-ID: <CACRpkdaXHC6dfOMMOj-a8o1zCzqqZoeQLEEAZ=XpPWKN_nf=9w@mail.gmail.com>
Subject: Re: [PATCH v3 3/8] pinctrl: msm: Add ability for drivers to supply a
 reserved GPIO list
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_002601_026950_215EE50F 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Felipe Balbi <balbi@kernel.org>, linux-usb <linux-usb@vger.kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, alokc@codeaurora.org,
 linux-i2c <linux-i2c@vger.kernel.org>, MSM <linux-arm-msm@vger.kernel.org>,
 Andy Gross <andy.gross@linaro.org>, Jeffrey Hugo <jlhugo@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 10:42 AM Lee Jones <lee.jones@linaro.org> wrote:

> When booting MSM based platforms with Device Tree or some ACPI
> implementations, it is possible to provide a list of reserved pins
> via the 'gpio-reserved-ranges' and 'gpios' properties respectively.
> However some ACPI tables are not populated with this information,
> thus it has to come from a knowledgable device driver instead.
>
> Here we provide the MSM common driver with additional support to
> parse this informtion and correctly populate the widely used
> 'valid_mask'.
>
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

I have queued patches 3 and 4 in the pin control tree on an
immutable branch with Bjorn's ACKs:
git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git
ib-qcom-acpi

I have also merge this to pinctrl's devel branch for next.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
