Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A73A5183CBE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 23:45:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YeF3mK0j/G9VQkmuaoo70lfswZpsYxldKei6i/RGFho=; b=K4JgnG5ookNUyt
	sMrRqJNXP+1Jo12Ni9WnOpZQ5pBxtIr0lrgIuLStwGd9UDtnPF/NygxHwml6ENU8MHS82OmseflXM
	Jw/l7hxVOUCp9C4F8/S+VsNw755mWRF3N6P850dcF8/QTTh+0/bGPGhkeZy+PMYjKaE3v6rnhJxp6
	rnA83DeynfteSGZI+aaqiHYpbt6P5tMpF0BAUuUSm3AJPz22oqMKf1/11ht7tePe4FRm1zLYuWBy0
	FYQSbefB6OpM+SINZ4Qc/yVRSkRW9oN7wXGymxfbGWvB0fb7SQFX4qT1mIZZzD0NjhtlHHcGPuwS6
	iAByG5WE3saYegPrz6Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCWaF-0003m9-HF; Thu, 12 Mar 2020 22:45:43 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCWa5-0003fW-0V
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 22:45:34 +0000
Received: by mail-lj1-x243.google.com with SMTP id 19so8378092ljj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 15:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+ZeV6SGwYz2oD3/6K0sLROfW8IF3ilKt8DtskElDrSY=;
 b=oiPs69xdfQO1PidLik8ECa+vZDnXjhz4IA9cfdIrSFWeQSVkq3f6Vuqtg7nqOSGpzz
 aPWaBfMxN76W6k+YcI62A04x9LTXaoGqfRVdTioZMtxmFIZ2XX/m9C8hi/X99aUXJ914
 9ZtRAdysFJjEsfngds8YFemQQIhGyWn7G4Y+IJL3vZL9RHKV9oZAdCdRXkqabn6itURW
 KehVOuHkxHYZ9iwT8WXYqXYA8GHnZmhc1a05rnJWy6NO2Zi4yA063X/yFhLO6pNOpfVR
 Nonz5KsXWFXaNuIPo/oM14mD6mg9ict9ghMTx/DvkJzdTyQWtVsc+S8eNXdCJTm1ZqhJ
 Kd5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+ZeV6SGwYz2oD3/6K0sLROfW8IF3ilKt8DtskElDrSY=;
 b=E/b2ZM8IU731KsGzxTwf7bTL7CFAK28tEMNyYd14eOtinINoQ7oihonjUAsj2dOQPD
 hK1LpIKKvI48ngkDPwlPNAtjjBbUQFSXtWyXWYCLcxQkqidDTIEinT5KzB5Wf1oycbzj
 euYSFl5grs/YxmQH+BZNTZYBPg/wXykkQv8DcoITeuR3N0bOAt41FBIorXMRY961EX4L
 2Y18imE+KFazL7t/LcChZT1ppQrJnqM2bdrLIGETeFcyXay8fdShdfcxT+XHvqUNYxcI
 0CmlDg8esWBvgsGiTuEA8mQQeEkJkrCsHdsUNlHUWb7NPQkiazsm2c8hw6JcRrRJYW9R
 bePA==
X-Gm-Message-State: ANhLgQ3iTsInLtDSaLXXbOL/Joc2yHLb4Sp1DoRbaPNqPuycgiVpMCrs
 QlzRD5wXQ4qOo8TZXtBUhUYvlILDVpd5dAJ+ZmMDFQ==
X-Google-Smtp-Source: ADFU+vtWfdH9h+8ouBw1URtkmc7DSWqDje0HNsyXDSW5sqzgoSdTiC3LGQo1g/WEOkxlBaUBFPb4j6lbqK8aPWb9ouk=
X-Received: by 2002:a2e:894d:: with SMTP id b13mr5954798ljk.99.1584053130191; 
 Thu, 12 Mar 2020 15:45:30 -0700 (PDT)
MIME-Version: 1.0
References: <CACRpkdYv0U0RmT7snp+UejEXecq4wLkhc11DUniUfGYAgyXC=A@mail.gmail.com>
 <20200312190202.GA110276@google.com>
In-Reply-To: <20200312190202.GA110276@google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 12 Mar 2020 23:45:21 +0100
Message-ID: <CACRpkdZrSHTry1fmFbrAAwbVu_zi1oez-uD5-8RtOVL_H54O+w@mail.gmail.com>
Subject: Re: [PATCH 1/5] pci: handled return value of platform_get_irq
 correctly
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_154533_120779_FFFD2DA4 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ryder Lee <ryder.lee@mediatek.com>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, linux-pci <linux-pci@vger.kernel.org>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Aman Sharma <amanharitsh123@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Marc Zyngier <maz@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Mans Rullgard <mans@mansr.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 8:02 PM Bjorn Helgaas <helgaas@kernel.org> wrote:

> IIUC, in the link you mentioned, Linus T says that "dev->irq == 0"
> means we don't have a valid IRQ.  I think that makes sense, but I'm
> not sure it follows that 0 must be a sensical return value for
> platform_get_irq().  It seems to me that platform_get_irq() ought to
> return either a valid IRQ or an error, and the convention for errors
> is a negative errno.

OK I see your point.

I would be fine of the code is changed from:

if (irq <= 0)
  error;

To:

if (irq < 0)
   error retrieving IRQ

if (!irq)
   error driver requires a valid IRQ

To the driver (this one in specific) the IRQ is expected and
necessary and I think it holds for most PCI hosts.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
