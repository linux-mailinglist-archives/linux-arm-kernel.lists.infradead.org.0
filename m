Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6963BFCA61
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 16:57:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFtFe4CIsntwnFZBkFeuSHz2IWq9Ps0SCX1ZEynnZM4=; b=e+dYWZqAjZtIuM
	4/BPU3tUu1P/c/Bg9SIPk77V99dlEsKuhWo5b2qGfX5/mMwtoMHoXMu1chq0CmS269T7UgIQt76md
	izXxZfZk0R1N6ACZuBrsh/mWZIBRPZie1Lxn8PHMqzT3J3G9EFaejXv9UjsSAmbRsNxrRYHuKcViA
	nkx0zQ6llg1NyxvOTc5lpWTuOv6sd6OqlYnAWkupSeQpwgmHdj1dUor62T3JUqet88RLms1bhuZJV
	aWcUCAMF0up/f00H/LCds2GpxDpP2ZMbzHfzyOMaCwBbBUuXVv9UES84dt3abw7Pu+B2tEg/4PAwT
	8gBm8GctWCTJXdFfDFCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVHUn-0004Zl-Km; Thu, 14 Nov 2019 15:57:21 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVHUc-0004Yz-Hg
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 15:57:11 +0000
Received: by mail-oi1-x241.google.com with SMTP id v138so5694058oif.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 07:57:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yjMXCbazTOSF5ZA1NpqAV9Px3HPrhaWxcfkJjI+LIPY=;
 b=wss5Uy39oJlSYHFFHHEOWzpAvbWEgcIP3BFM8PM3bJBmSYB5EXD9/2b6UZMZUiiJb9
 yLhZ2DyPKwFcRVAZkdxSjetdSPm0YuTCliwOyZKPAH6SNN2YXCW7A2CccOccn3vyw/wu
 icYtnF9cSXXIopsv8FpEvj3zWIClYBExFqIcLxdKVzmqfQKrVu/eMrO+/f4OtTUmtYma
 1kE6I14Mxtait7vHzk49xNI3TkVimWfzP3/dDbIrBP6XVVZ7NpZuZ0ujOaQuruHXfRc4
 dhy2SdCZklRn/3RI6JWPKBhtBtoWiXndUT/TCfVWXwvCmoFARhJrMmUcwdGcdOPCKGlb
 1F+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yjMXCbazTOSF5ZA1NpqAV9Px3HPrhaWxcfkJjI+LIPY=;
 b=eeXWAhk9W9dgMKTukwy5HSjj6FU/CDTwNlOmwvGp0LZ4E3jn1QI70rcretuB4bKAOR
 +0ZuRZ8movV45/YhFS+2Ztb0lOa6w7NfgSUIJKzbLEdX98TpTPjFl8qawGhn++dHt/VK
 XmKYjqDDLawrV2bVl1FJeDox9t7hADRx8C9RmjYdt6skqgowUvBH7cbChQlF9t4Kia4L
 BJnn/+TTJLJFa4Eg4MEK6d/oDxuJ/ZmjBDOQtmKKB52VSlzdgFU6VUp5OsG0BoolJ5qE
 Uqi/ZCAHplOwOhg0Z/6as1OI1GEVdFObs+qUyXTpqQnIWaHGDGAOeK8DeCHhGdFW+H1p
 Kr3g==
X-Gm-Message-State: APjAAAUVzAzjwQ02hPASK4U02TuPQAvVE4ADFK2iwqF4rL3UMtG5lkOO
 LD1OKIgriB2hJqTddO34ChvZ49qm2ZyL69Vj3XXilQ==
X-Google-Smtp-Source: APXvYqz5IQbjutZdvvYa/3o0Mr6hqGWXbe7G7tQsit1pTz8/pYN9OG6VZnW+z/gr1RizUorqEyF5YU2yY3mz3vzG/rg=
X-Received: by 2002:a05:6808:b04:: with SMTP id
 s4mr4127338oij.163.1573747029581; 
 Thu, 14 Nov 2019 07:57:09 -0800 (PST)
MIME-Version: 1.0
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-10-andre.przywara@arm.com>
 <2e14ccd4-89f4-aa90-cc58-bebf0e2eeede@arm.com>
 <7ca57a0c-3934-1778-e3f9-a3eee0658002@arm.com>
 <20191114141745.32d3b89c@donnerap.cambridge.arm.com>
 <90cdc695-f761-26bd-d2a7-f8655ce04463@arm.com>
 <187393bb-a32d-092d-d0ea-44c58a54d1de@arm.com>
 <CAFEAcA_kcQwrnJxtCynX9+hMEvnFN0yBnim_Kn-uut5P4fshew@mail.gmail.com>
 <241e3df3-e3e3-14a0-3fbe-5398a1bf9d00@arm.com>
In-Reply-To: <241e3df3-e3e3-14a0-3fbe-5398a1bf9d00@arm.com>
From: Peter Maydell <peter.maydell@linaro.org>
Date: Thu, 14 Nov 2019 15:56:58 +0000
Message-ID: <CAFEAcA9-BPCN2VC5qJO0oPPPdVbai05KM68eMUxA3tDn_10LFw@mail.gmail.com>
Subject: Re: [kvm-unit-tests PATCH 09/17] arm: gic: Add test for flipping
 GICD_CTLR.DS
To: Alexandru Elisei <alexandru.elisei@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_075710_610179_1C6FFAA3 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vladimir Murzin <vladimir.murzin@arm.com>, kvm-devel <kvm@vger.kernel.org>,
 Andre Przywara <andre.przywara@arm.com>, Marc Zyngier <maz@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 Nov 2019 at 15:47, Alexandru Elisei <alexandru.elisei@arm.com> wrote:
> On 11/14/19 3:27 PM, Peter Maydell wrote:
> > The virt board doesn't do EL3 by default, but if you add -machine secure=true
> > to your command line then it it should emulate it, including a
> > trustzone-aware GIC.

> Indeed, and that made the test fail because apparently qemu implements it as
> RAZ/WI (which is allowed by the architecture). Thank you for the suggestion!

Hmm. The behaviour QEMU thinks it's implementing is:

 * if we have only one security state, then CTLR.DS is RAO/WI
 * if we have two security states, then:
    - for access from NonSecure, CTLR.DS is RAZ/WI
    - for access from Secure, CTLR.DS is initially 0, and is
      writeable, but if you write 1 to it then the only way
      to get it to go back to zero is to reset the system

thanks
-- PMM

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
