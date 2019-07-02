Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 662AD5CF6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 14:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/O68JiB+artEDIkC9+W89Cu585+u9F0ZX4cRnYa0NXg=; b=J8F8ECvYHZvXpp
	CDdZKx0lyjKb/wKNhaKXwP6eKOdhWaPLCK1qiSazkhE+s3+MbF3pQhzdnNq2yUytyy1dTgZJEzSTN
	6mYEwFW0zcNOdd+MxaaY/QotjTeFXNwjZhH6Gw3RXCl/vbN4byw4HTD6Y6dLltGJIAuohnz6AJUnO
	3wusrnhn8StyyEzjJLVhWLZF76H1jwR9DadxwrJ84B4aSJawfEUSzJ6SuwAvAgKewPm7E2qED6bRv
	+PypydWF7qjiqs7CXK9Turz2Y2s/yQjEhyhUBxok7MVxrqzhZaW5Q3Dq7S/TSGf6S2poQ8ktHIxNI
	P099Lzl6dgrA3NaBMbhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiHv5-0003zw-Nq; Tue, 02 Jul 2019 12:29:59 +0000
Received: from mail-io1-xd34.google.com ([2607:f8b0:4864:20::d34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiHuq-0003i2-NS
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 12:29:46 +0000
Received: by mail-io1-xd34.google.com with SMTP id i10so22701302iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 05:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3U4B7llMouxQsyQ5vX8kdI32sc6qNG1eXKEQKXlOr7A=;
 b=egUkjsyPneaaC80Ff624VnsWePzGExF3z+cG2gD+mV1b63+jRscz3dfhE3vv2X4qvh
 evu+c2dI0o8HAkVBvSGOL+nG8ZfjKxfxQIpoRp4qg95AHFp/6OeriqhbEHkHyEzH9la6
 KnaOr7hc2VnJnGs0sChxGzb6I3sKwfBR3KuN15xTLX5Rmf21zh5oh2XJqKhysM348cAd
 Ah7xl2oIKnfe/Ikqy55+vKZlQB3gXkyXmDMJxethSqcnDtS6dKWP6Qx/jP65irsHq4u3
 j3k9/R7XQwL0xa9gOAXVy/1MeTWCRRKANTnmKyyCzGdqqsOQfekC3unwKdYHS6wR3mRw
 Z5Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3U4B7llMouxQsyQ5vX8kdI32sc6qNG1eXKEQKXlOr7A=;
 b=TB+syuOXYK12bhQ71i5TxoBDAEiqyBeHr3rOJAB6JuihSC3WDtEtfTHLkxCBOmHUHF
 Qtch81Wup9PjCTjOy/AmjdkiugfEBnRfPSPU9tLNwYTYVaOFHE8y6axbaAroFtklq9rl
 SuqCsNKFZwTACUusBmzzwDlFJmX3ddFrSoxPh18gqPuzJ95prXS3VPyqvh0UG2+9mmZy
 JLfcW+nGCRDmhqCJInVc2unsjGBGrt+NaWtGhxMAjIEBgMeTSvT3a3j66f28M+wkyM3D
 QrFffe+MSqXRAsEO0pyjzdxXybwAvq19dVNNBZXDu3MzDaQfm8i0zlVF0ZwnjLYfCnuk
 /rrg==
X-Gm-Message-State: APjAAAXDIovwb0ix4/QlXuKtNT7LdL8R0HfMnDZIKKFVjd55sUDeH+4D
 BG+764ckOJeREKjahDUmvAnQeA+QZj2L898OBg==
X-Google-Smtp-Source: APXvYqxoAGafFHisVAPse6RlbF7yPtzJgT7C1jtUIFYVppWatdVtaTbR78RSxVRH6tRhEmOIidX1DeNXyZKuV1JFRT4=
X-Received: by 2002:a02:b90e:: with SMTP id v14mr35184681jan.122.1562070579172; 
 Tue, 02 Jul 2019 05:29:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAKKbWA6SFgy=4+L4xXz7dy8OKFxtgZnqchzVuuq1XHXpC=2MnQ@mail.gmail.com>
 <22ed84e8-04e0-9f32-1deb-b51f58382f91@arm.com>
In-Reply-To: <22ed84e8-04e0-9f32-1deb-b51f58382f91@arm.com>
From: Avi Fishman <avifishman70@gmail.com>
Date: Tue, 2 Jul 2019 15:28:56 +0300
Message-ID: <CAKKbWA58J5HmOfg6FtjApU5R+BPgs3Gvccq2UCD+uTP3SrFS+g@mail.gmail.com>
Subject: Re: support for aarch64 + gic v2
To: Marc Zyngier <marc.zyngier@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_052944_776409_DEF807B4 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d34 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (avifishman70[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (avifishman70[at]gmail.com)
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
Cc: uri.trichter@nuvoton.com, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, eyal.cohen@nuvoton.com,
 yoel.hayon@nuvoton.com, Tomer Maimon <tomer.maimon@nuvoton.com>,
 ofer.eilon@nuvoton.com, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Great, thanks!

On Tue, Jul 2, 2019 at 3:01 PM Marc Zyngier <marc.zyngier@arm.com> wrote:
>
> Hi Avi,
>
> On 02/07/2019 12:20, Avi Fishman wrote:
> > Hi Catalin & Will,
> >
> > I approch you as maintainers of arch/arm64/include/asm/arch_gicv3.h
> > We have an architecture of Cortex-A35 (v8) and GIC400 (GIC v2) in development.
> > 1. Do you think there will be in the near future also arch_gicv2.h?
> > 2. If not, can we use GIC v2 with arch_gicv3.h (maybe with some
> > CONFIG_ selection)?
> > 3. Any other solution?
>
> GICv2 is fully supported already (see CONFIG_GIC), and enabled by

I believe you meant CONFIG_ARM_GIC

> default on all arm64 builds. No need to do anything, it should work out
> of the box.
>
> Thanks,
>
>         M.
> --
> Jazz is not dead. It just smells funny...



-- 
Regards,
Avi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
