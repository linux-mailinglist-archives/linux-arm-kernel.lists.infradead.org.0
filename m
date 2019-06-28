Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEDA59963
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 13:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1I0Psl5RMcWAk48X5aXMpkQZ+qd9PZ46qJOeT7En6M=; b=AWs+TRQXCxhMZ/
	P2s3rqbchmd7Ri2Xm1lzLugYcTJgbvAP57whQTsyrbUkU7+DAST4GLedIVEtrfYGUcXW+/SEvDLek
	+B8a4XR2u3VGIcBJA7LZKZGrvqVBTSMZqkPXYsv4ofwCVwfMflK/6knntckaV4bfc+AlJ0P1xKkDc
	Zx0SDhMWu+W9g5JCBtekPlINBgq/XS+CpE1HkTQyt9os/za5DN38sv5gNEgiCoYASXoEdIu4CMoJ1
	BZFOsm8eiIsq3mpoksAJGhdomr0cVraqYbWN4XqPKzn0ZLJWCs8jhuA+1iVCgS8W+nQV8jevng817
	0TOBPEZIekLOPpUjKdnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgpMF-0003qS-Ik; Fri, 28 Jun 2019 11:47:59 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgpM4-0003px-Jd
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 11:47:50 +0000
Received: by mail-qk1-x743.google.com with SMTP id b18so4475445qkc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 04:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hnrNJm+YPQ9P/zBeIY5Q0s4HopjViLSRE1ga8Evn3gQ=;
 b=nAdwaoFQWMK/thL2OEH/rLDCYdBnzoQTtEM6UcrKBEmJQKF6ko515Bi6qtrIdXDt15
 ixrnyV55XUQ08KxuoymqWCYvAquA66hzFuvBfNRqZUrp4+6Yn8YXtiAOaHTcEAIP6I29
 0kgKXVjJNGQvg7lzEJnk75HtFdgoa1aD+8i7o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hnrNJm+YPQ9P/zBeIY5Q0s4HopjViLSRE1ga8Evn3gQ=;
 b=nUzgKzfE4ILEM3fuJrGcin9zFL7+9102rEHMCogfeeCHfcjxR9uPgC+3MfNyAIZXGj
 y+Hfw4ogd6am0Kq0pNTirCRQx/8D6QJbvGyh2UY+Def5+4CRVd2F0mDgCBLmJDvPPSqu
 gHBQt/tgbT5VN3ft7wW+TSDGFailENn/zjcnPgxInf871yVPI8UESu1Wxnn+w4fNY/A4
 GdOoMYLLKwS0AZOw1qLliFNsS6F1/XT1WIy4SyPTOUE6/YzAGPwKwc3ZPIFDif877XyL
 sx23tFCd7m+XCxYUESN3wosO0/HQbDJ7BsJYvwhHyFI5G0UmkkMf3GSSg1S8hOxrNYN9
 O4pg==
X-Gm-Message-State: APjAAAUXj4EeDTLO/c/MQKej1q+TDcsenOmAd782roZ++Zt5lIRgNuvb
 I/2c8LvzVGG8r98G4anlu+UpuWcZwkDtZHXM2woRfQ==
X-Google-Smtp-Source: APXvYqzQhSBa4VdeP8zdX3MfsDpwnzjGB/9TwQnwrCUPanMsHkJGMPExpgescOhQ+3g3ljoWtSM2K9PaHPvV17b7bgA=
X-Received: by 2002:a37:9e4b:: with SMTP id h72mr8236923qke.297.1561722466499; 
 Fri, 28 Jun 2019 04:47:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190612043258.166048-1-hsinyi@chromium.org>
 <20190612043258.166048-4-hsinyi@chromium.org>
 <20190628094251.GC36437@lakrids.cambridge.arm.com>
In-Reply-To: <20190628094251.GC36437@lakrids.cambridge.arm.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Fri, 28 Jun 2019 19:47:20 +0800
Message-ID: <CAJMQK-iRKkOS9q-qGVj-3o6BVMeANrBoF_4MWQ1g-=4_6HRdbw@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] arm64: kexec_file: add rng-seed support
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_044748_667272_5D04CFDE 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Yu Zhao <yuzhao@google.com>,
 Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Will Deacon <will.deacon@arm.com>, lkml <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 5:42 PM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Wed, Jun 12, 2019 at 12:33:02PM +0800, Hsin-Yi Wang wrote:
> > Adding "rng-seed" to dtb. It's fine to add this property if original
> > fdt doesn't contain it. Since original seed will be wiped after
> > read, so use a default size 128 bytes here.
>
> Why is 128 bytes the default value?
More than 64 bytes should be enough.
>
> I didn't see an update to Documentation/devicetree/bindings/chosen.txt,
> so it's not clear to me precisely what we expect.
>
Rob suggested to update in a newer dt-schema documentation at
https://github.com/devicetree-org/dt-schema.
A pull request has been sent but perhaps it would continue if kernel
patches are accepted.
>
> For 128 bytes, it would be better to use a buffer on the stack. That
> avoids the possibility of the allocation failing.
>
Okay, I'll update this.
>
> If the RNG wasn't initialised, we'd carry on with a warning. Why do we
> follow a different policy here?
>
For failure case, I think kernel can still be boot since this is not a
very fatal case, just same as the seed wasn't provided by bootloader
at first boot. So I'll also let fdt_setprop() failed case carry on
with warning.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
