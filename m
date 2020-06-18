Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 994C61FEBA3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 08:43:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e6tSTwpxzStFJ5bmkDs8zji33Q8rqAfcXyMmiHIXhdM=; b=ggd/nB0gmjkqlv
	pCX9Nf/7fQ3ihsJ6yc7I7VzZ/n38EXRu6szPSRIsDx1FWVXkrpjzZGylyrpZi9QgvvL9h0yBgofBk
	QixY1wuG4k/Fo8bTNMgNLsoPL/+3J5EIOPtxIilOX8QnXluNPeHJZdMLdJumEVAtulIroY/rSLUss
	DVTsXU2kTll6QZ/t+N9anIrvPQY3e+KHXCcoElfuLkePHBlLgOCVEJ5U818/j6cQWPbub/yH9m7Q6
	9KAEcmBqjYKURqWiAWzJ2lexnLPmo8i5fw17ccmP3S0i21/cF89j02C9+Dc0kWABClAdiOBx9LuGJ
	XvjZCD+qjz3J/b9MK1CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jloGN-0007lQ-TX; Thu, 18 Jun 2020 06:43:03 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jloGF-0007kt-RI
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 06:42:57 +0000
Received: by mail-lf1-x142.google.com with SMTP id g2so2817725lfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 23:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K6hCnmc25bPhM8Zds15z3T5k2ctR9P+E0kmH5eedao4=;
 b=LvLtQrHK+FRlk5/sD/8n+NvY5OlKXKDXtDGMvGAWEV8LStu+H5SMcJeof/D1Bi311E
 iG2SVk2aU8L6UtTvMM8QqgfobAoSZA/4MszA+QHc6H9+WyoduT5HIfL3NiYOClb4mgyQ
 sWSi05++HNZSaCzaYuMbRzFE/0UM0074HyCLCvUzrlUKp9M2DFy94o8jLGFyaPfQRSRB
 vUi6H6KpwDixktHDOVJdezLiS2MP8TfPZ1UtIASSqww607WvpGLOrH5fk+dmANcJlVEi
 LblDqZh3z5oDKbVxry/Q7EUNdmW19cHib1w0FFgAFPAmFzAtBbVtvd2OsQMdNed0x+IO
 CTaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K6hCnmc25bPhM8Zds15z3T5k2ctR9P+E0kmH5eedao4=;
 b=FUuX9aeb4IKJyZaPRoGBECmg7crZu+xKfCmuhccjGKDYP3JpEWtbfkHchDGbrPc5gC
 v0fE8a19ZLHBhJtdwgU5l5QIRYJQf9Hpldtn+dg8ZPfmhJAMmd4BboywkJpwPFF/oipI
 G/hUqSHZfqkTWRep+5wgZzcJA5kUv+gUBPW7rNodqVnpTiCXuDhbh9lGvFrEi2lJ0Uy3
 IcY1U8Qj1VHf4hwe8cZsKxluR3leyONdwjDw9I+bj37Yyhz5sb3shNPYv4DUTRJJivAF
 KZyTx8Q9t1mk4Je/IDdxkfG2P4zzp5P9YFON/6RrD0KA9I0lzsVk6E5RLvHNXudTmOZc
 CcfA==
X-Gm-Message-State: AOAM5333WxDV8P3anmTMNRE+0FYp/9LIrtcfmAqsSUFekCPx3viAakfp
 lIjlrXC6YilG1cjj11RT2o9OP8MiLQeNb0LqJRS2Qw==
X-Google-Smtp-Source: ABdhPJx4QxcHzkbgPAk3c9tXd5/s0nYZNRG6j8i+HfERTJzJ+F0FGPMbAipjRTc9ukWM5DOXoFi2vtfz2V+2oSbLHwA=
X-Received: by 2002:ac2:41d4:: with SMTP id d20mr1489555lfi.204.1592462573264; 
 Wed, 17 Jun 2020 23:42:53 -0700 (PDT)
MIME-Version: 1.0
References: <1591107505-6030-1-git-send-email-sumit.garg@linaro.org>
 <1591107505-6030-2-git-send-email-sumit.garg@linaro.org>
 <20200615182457.GB5416@linux.intel.com>
 <CAFA6WYNEnXm5FOGHGAg4XB-+GXD=C+YMh+6t976=pStU0WshAA@mail.gmail.com>
 <20200617231429.GD62794@linux.intel.com>
In-Reply-To: <20200617231429.GD62794@linux.intel.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 18 Jun 2020 12:12:41 +0530
Message-ID: <CAFA6WYOdtwnewqY0ASnMf7fyw3s_hQx0+oWJRhT3CpkkkxYpDA@mail.gmail.com>
Subject: Re: [PATCH v5 1/4] KEYS: trusted: Add generic trusted keys framework
To: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_234255_956857_E6D37115 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "tee-dev @ lists . linaro . org" <tee-dev@lists.linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>, Luke Hinds <lhinds@redhat.com>,
 op-tee@lists.trustedfirmware.org, Jonathan Corbet <corbet@lwn.net>,
 James Bottomley <jejb@linux.ibm.com>,
 Janne Karhunen <janne.karhunen@gmail.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 James Morris <jmorris@namei.org>, Mimi Zohar <zohar@linux.ibm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>, linux-security-module@vger.kernel.org,
 "open list:ASYMMETRIC KEYS" <keyrings@vger.kernel.org>,
 Markus Wamser <Markus.Wamser@mixed-mode.de>,
 Casey Schaufler <casey@schaufler-ca.com>, linux-integrity@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 18 Jun 2020 at 04:44, Jarkko Sakkinen
<jarkko.sakkinen@linux.intel.com> wrote:
>
> On Tue, Jun 16, 2020 at 07:02:37PM +0530, Sumit Garg wrote:
> > + Luke
> >
> > Hi Jarkko,
> >
> > Prior to addressing your comments below which seems to show your
> > preference for compile time selection of trust source (TPM or TEE), I
> > would just like to hear the reasons for this preference especially if
> > it makes distro vendor's life difficult [1] to make opinionated
> > selection which could rather be achieved dynamically based on platform
> > capability.
> >
> > [1] https://lkml.org/lkml/2020/6/3/405
> >
> > -Sumit
>
> Hmm... I do get the distribution kernel point. OK, lets revert to
> dynamic then. Thanks for the remark.
>
> /Jarkko

Thanks, will revert to dynamic mode in v6.

-Sumit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
