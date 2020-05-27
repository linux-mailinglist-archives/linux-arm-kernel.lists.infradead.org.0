Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A082B1E4397
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 15:27:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PR32VRZ9r4B4doPJs6mfM9LWoMPdEUk07hQ7M5vtvHE=; b=WLv313ErEcuU0k
	j30HECKSHLx2JxxU0GiXnv37OtZW0dvGgO4LojK3MWkkCBPRyexTKyDbYBNKATdn1wI315NJAEHxW
	rxvaRC5oC9V3+1VdZMeHzdmUu/LEM9Z21PkEvhetO68AaSpEV0d5axqL+RA/ar+fXjJ6UWWH3IuiU
	aMlaL2vuwvG2Cft7bxSUAHKwMR4NcE4AOm4Y3b/JQjLHkQKfVTmJ+dDRGhxaXjK83uFFmW8mxE6Qa
	q4cHxa9hBlv0IZiyHXsNk1f7Ui4IItyJ5tlCs6eNU7spG8d5dPCzjqb8M/DytjCI2yP6npkzJRb+i
	ACevR0FXak1zOg1YrOnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdw5n-0002A8-Fh; Wed, 27 May 2020 13:27:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdw5N-0001zL-7s
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 13:27:10 +0000
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com
 [209.85.161.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 30C1620899
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 13:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590586028;
 bh=hlqZFqntjM7gkoXMUWF/APdzToGjhCGqbpGITAdoiKQ=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=S4+BL9+hqW3ZVgVvrNebiSl4b4S3BAqOFkgW8HhAczs7RYPF0csfucR0xkowIxsqm
 7KmtzaTM2YuZEo5VXe+FrZdZ6g9fLBVeUgiu1FpNdPYGyqT+bGOrrBj/PFMXdIpYUa
 qSr6qovvLRCRbdoRT5UV3fZMaUV8n8y7+eE7FeEQ=
Received: by mail-oo1-f51.google.com with SMTP id u190so4963059ooa.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 06:27:08 -0700 (PDT)
X-Gm-Message-State: AOAM531Tx9WyTC8FfDnGQRtiUp27b14uG80+W45BWIAiKFuSQHO5XMrM
 M0U4GkyiZoNPKBRwIWB09ymtMOrZcgGKZFmaBw==
X-Google-Smtp-Source: ABdhPJy+e6I9/1ihldp/xvNMdVcVs6rB6vDnRlLsTUgu2Qgj+NWzgvrWOQZgwq1h6Wj9LZdQUdkbMFF+pAXcpOuTwUE=
X-Received: by 2002:a4a:3790:: with SMTP id r138mr3051334oor.81.1590586027527; 
 Wed, 27 May 2020 06:27:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200527112608.3886105-1-anders.roxell@linaro.org>
 <20200527112608.3886105-2-anders.roxell@linaro.org>
In-Reply-To: <20200527112608.3886105-2-anders.roxell@linaro.org>
From: Rob Herring <robh@kernel.org>
Date: Wed, 27 May 2020 07:26:55 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+vrEE2DBY+c3iVyMLf9oOaGVHVvdiMgdYEGCjJwX7Hcw@mail.gmail.com>
Message-ID: <CAL_Jsq+vrEE2DBY+c3iVyMLf9oOaGVHVvdiMgdYEGCjJwX7Hcw@mail.gmail.com>
Subject: Re: [PATCH 1/5] power: vexpress: add suppress_bind_attrs to true
To: Anders Roxell <anders.roxell@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_062709_325647_1DFC5C6D 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: SoC Team <soc@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 5:26 AM Anders Roxell <anders.roxell@linaro.org> wrote:
>
> Make sure that the POWER_RESET_VEXPRESS driver won't have bind/unbind
> attributes available via the sysfs, so lets be explicit here and use
> ".suppress_bind_attrs = true" to prevent userspace from doing something
> silly.

This doesn't really make sense if we're going to make this a module.
Module unloading and unbind introduce the same requirements of
cleaning up (undoing whatever probe did).

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
