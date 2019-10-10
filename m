Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C144D347C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 01:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cK1GU9nqyASl7fxnDBxZyX0EHxrio7ByaaOEyCvKgls=; b=td+aqIRp0u2fM5
	Ne/E5Is5DK8g+2ID4BtYoUjn70PRW9DVOk6+7T4c3WbILC5ctRavsD+lTcoN8w1SlWFJcogWfLnZU
	sGuN+Y+7vtiwyB+VmUD25qvUJ6tvSRqY2RS3GdRlbxSSq4Edf8+ebDdt7nHM192Dwsw6fimszVpSU
	jmiRLMpXmF7DlwCSo3olVPl/b6oDfnDfEDr/a/X9ihEgenK/gF/H6TrX/R5L4JZjmDxQYhvAN00es
	mKPBok98Lkt+kWU3t/8nbmB2vXHLYRn37R9lu6qCK7g82hm4qe/SdSvZxwWIpfCcsUaCcf8HFMgi1
	nilZq9GxJ16LNbg+FwlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIi4h-0007Ht-96; Thu, 10 Oct 2019 23:42:27 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIi4Z-0007HV-V7
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 23:42:21 +0000
Received: by mail-qt1-x843.google.com with SMTP id j31so11304637qta.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 16:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v9QoBYfKdHi53Oe2RDIOZ1fzd9eCKG99mcIBTMrkokE=;
 b=cO4Crqi0GzQ/SvRKjHRewM/6j5N3rPugEyhlFQAZBlUAKfoJTxKICJKQKZ8FBeVlAr
 zuquO0vrc7zgoMnhK45GwcTxKyziTrdzB+PgfKobgtANFJHI1/2RXmDgqtidhyqVrGOL
 pjOUdH0J3wO5zQ2DAm8yztXLZqxwAdj9HLUyQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v9QoBYfKdHi53Oe2RDIOZ1fzd9eCKG99mcIBTMrkokE=;
 b=fNV30+0n+st9nnADA73hRPBaGlfFk95WSuWHr9L5tC5IVeI6SPS+aoBjLseHyx+GD2
 EHz6LCCQAPuJZoZlxROFnaYQmADCnemJKbjloJAMteRVhWohZ0th7TowaZN57/b+Vps0
 Rt/P4NNgMjUpshjyR5F+wiAk2kQMOZZz68dc/lfmnTb+peseOjAUB/8EUXpqHZ8zvOza
 6bUSCZh88n6XZKU7VTa64GIQhZavkHHl8LdR3txN1hxOMMIw2Jo+RbC1RaP+eDATCkqu
 W8Op/0lVixhSD5iPCN8fBDZvmrCPtaiUHofVjG0WEU1FaKaCmeHJAqw/Rr4vu9cqvPOP
 jxbQ==
X-Gm-Message-State: APjAAAV0iLzHLmlQ382ryXwGY6Yl50A3r+oAoqBgo4OisaupLYCnz8Ga
 eAIoB0xSH92ZN9jbXJXHlo2r11z72dnQJmDyhXUpYrSuwhs=
X-Google-Smtp-Source: APXvYqzWepm2QMbtM7Mlxs1tWOx71xVvtmYjHL4TbcTYDDyesblSnW1JaBWkhPEpMEvXlcb/54LEXpm0ZrudpV1tBa8=
X-Received: by 2002:a0c:f792:: with SMTP id s18mr12877457qvn.20.1570750938971; 
 Thu, 10 Oct 2019 16:42:18 -0700 (PDT)
MIME-Version: 1.0
References: <20191010020725.3990-1-andrew@aj.id.au>
 <20191010020725.3990-2-andrew@aj.id.au>
In-Reply-To: <20191010020725.3990-2-andrew@aj.id.au>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 10 Oct 2019 23:42:07 +0000
Message-ID: <CACPK8XfqA3O+qWASdZdua8oDqe4GWVjB9HkSu_Aw8jqbQ9QHBw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: Add AST2600 RMII RCLK gate
 definitions
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_164219_997108_5EB77DF6 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 10 Oct 2019 at 02:06, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> The AST2600 has an explicit gate for the RMII RCLK for each of the four
> MACs.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

Reviewed-by: Joel Stanley <joel@jms.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
