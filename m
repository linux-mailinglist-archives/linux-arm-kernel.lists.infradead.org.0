Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E644F1663CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:04:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wPeamDuhvhPQN0eMRKGtvwNvaSgrLU0bt6HS990WEdo=; b=NABIzPvNQoPvFH
	h5rQMslun3GtYwCH9r6z9VNyv+DY59u3I/1I6B72bqqpNASeNm1b1ggpPy2bOseNG+5Mz9/HQAlZn
	eQKUmFKOef7yQZmmpk3Wy3E8Zp93IKADUAw3h5iXU89kkb+Gcjlw84g+9UyQa6A2z4UaEo1h4TeYA
	uQt7zznLgixrwT7xlW/Yst5QscxS2Ow1ppaMcOJluPHfg9zc9+DfkuhkRx6yRgBW77MUeKu7x731Y
	Eka8U/rqSd7G18s3v2sZGo8r7t4dqlbV3HvVw3Mj/3m3tzE6byCTIIDZdGO64M35uCL/oaDNdqPvh
	UtcxPV9QERCK0yVFGdng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pFi-0001E8-3K; Thu, 20 Feb 2020 17:04:42 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pFY-0001Bx-UO
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:04:34 +0000
Received: by mail-wr1-x441.google.com with SMTP id w12so5499946wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 09:04:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i7eOTYTHh3oRYEr7KxlGSpxwpMXx1RwVuFN4gvySKeU=;
 b=XY/4gY+8JUa/7ITcrbRS5yhQeMDJLKgcmgfcnMQ0CWPvUZ8uTiNvdcd8X/Mh7Q3zSk
 vgV6JB+6viMvup6k2dB1LWHP/NYpk6et2TvOmMErlqaeVcIdQlko+BFoYy9dXrVg/39r
 IAtqc9rcmSyJKRroqRPM+w0WJlNFiuFiObCmAwJogm4cVZSpJon5xJD8l4vI1mBD2Pab
 gc7NU3rJgkQD2QW3w5q89j6cU4fi4HwM3Pk/exjiugnMf/Ie9pGu8ZsW1mLmzpKf9WDS
 YtF7tiU52j4GqtH1MSaZmWOhXknWGHiF2kgtPih1dzEhpJMNni5Tzy2OtuLrevEOWr99
 Jr2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i7eOTYTHh3oRYEr7KxlGSpxwpMXx1RwVuFN4gvySKeU=;
 b=F7fTs3ehUUYZ3tgFhmWyo1qZz95WY44IEDY+aPoct86/t9EvNFNwtBC/NK7obhjyIZ
 5d2VKGPGL0UJYr63O6NdkowqPEGnR6HykCXrX3ZPfKzGb365G1FwoCoseLyBzKYKLcr5
 5oRkQSf8xsbApQrI964XnedEqvP2DZsAIMjfjVqDDu3P3i96S4tipbWKYNq4eGLCQSIb
 I94Oh02wXeilcbxUt+oMMjRzba1hpJjBpMKVqOmc5ZFZYPxVe1az3BqzkJaF/Bs/UEww
 tCt+FWqkczFstgMxBiMw4gbgF379UYyrSPL+Chsbd1q62nikzvg/Flpj4akwEu0kA4LQ
 sPRA==
X-Gm-Message-State: APjAAAXQAWcrnvMcT0nTPQKahi06Qz3jJKhtDEZTRF3yMGm7gTIjxDM4
 wRwwXT1aZxOONg/rxRqVvlgvSggCmiJMkXE1BO7n5g==
X-Google-Smtp-Source: APXvYqw+zSSFiKJdFbGQsSu3dMAIiapGSlm59sUSzvk+xT5G+aVQ5ypW9IatO7p8HheiKTMU6790g3JAieCaf1qWtbc=
X-Received: by 2002:adf:fd8d:: with SMTP id d13mr43836092wrr.208.1582218270798; 
 Thu, 20 Feb 2020 09:04:30 -0800 (PST)
MIME-Version: 1.0
References: <20200220165839.256881-1-james.morse@arm.com>
In-Reply-To: <20200220165839.256881-1-james.morse@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 20 Feb 2020 18:04:19 +0100
Message-ID: <CAKv+Gu-tPOWyxjsKrL-auC=ZxeNJPgAPyQ2rBd9S8sgMbb=r_w@mail.gmail.com>
Subject: Re: [PATCH 0/3] KVM: arm64: Ask the compiler to __always_inline
 functions used by KVM at HYP
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_090432_983308_DDEB7DCE 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 kvmarm <kvmarm@lists.cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 20 Feb 2020 at 17:58, James Morse <james.morse@arm.com> wrote:
>
> Hello!
>
> It turns out KVM relies on the inline hint being honoured by the compiler
> in quite a few more places than expected. Something about the Shadow Call
> Stack support[0] causes the compiler to avoid inline-ing and to place
> these functions outside the __hyp_text. This ruins KVM's day.
>
> Add the simon-says __always_inline annotation to all the static
> inlines that KVM calls from HYP code.
>
> This series based on v5.6-rc2.
>

This isn't quite as yuck as I expected, fortunately, but it does beg
the question whether we shouldn't simply map the entire kernel at EL2
instead?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
