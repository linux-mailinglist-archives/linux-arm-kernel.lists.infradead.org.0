Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4923213258A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 13:01:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3XOpp1+xTKRNfXoZlQOAtzdNKcLTpwu1tsBCHghpnlI=; b=eacTJdQW+WwyYF
	1smYgwrOnVYvPb9Cvtc2B+w8Q/lB9+zo7HFjwmgxNnaTDWeYp+MG2fxyI9cBWWeJSKyBEFbyoOuXP
	MIrdsxur38pt5NTcxxH3obqEPCkbpWxiqI9nedP/c7xztpTSJtrxOD3vTmml2TO5MqZdmFk2lZeQL
	YKTRZgoJXnFp+XmwyFSRABucpu2JAFlBprq0MmovyhJB3u8XDx9mtp/wW5KKrpEq5vIEf9ysK7+wp
	n++pLQhrphWSWItQ4lT2CBt1VtdgmnQ2d7cd80ErGpBNB+Z+qvwP+englGA/m6wEHr9ckSQtn4q2k
	34o9wFU0S660jbqNhP8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ionYU-0002i3-SC; Tue, 07 Jan 2020 12:01:50 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ionYM-0002hT-1f
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 12:01:43 +0000
Received: by mail-lj1-x241.google.com with SMTP id r19so54438460ljg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 04:01:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mLtNFMYZWtPhEKvur4VjuvVAPi0N1wL36Q6jCtiHfeE=;
 b=kzsDCX30f0Ec0JSPVS+j5bCMaV1MEdQdwUvAhfFWwLBYywuqsohIZB/CwqFxo2+Wpd
 xgSPZNnspuxr1JNmr9CTelVTIWd2tj//1wDsUbLSuMFvQWHW+kpfp5MTO0mKFK+Nd6xc
 N+mQPHlQDj8xdAFTBbpJS5dX0nRK5WuOqwauMc8zuJ+Q0Lkik9401WV07qylSSehTbb3
 53EkNPcDR6UzG8NwsunjUL2rrhSUvGL8fofUa1O0ZNw3nApGoUDzETIl+1ohMWhrsR0W
 4mXZE5hT/InAifSSYrra61Lm6c2GabDFSl+9stC08onKuQA5NEiaK+iOYtzd80/5Z9r4
 T0dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mLtNFMYZWtPhEKvur4VjuvVAPi0N1wL36Q6jCtiHfeE=;
 b=bVqSsjNaiY7lublcvLrrtkPUQW3YnasoBQDnGJMTCV+TIvKtDzKSX1pkJTmYXxOfgB
 QkACq4Gak+jN08wRs1Q7axfC26Arv5Xzk2Gt4sIDT6yLLHuzYPmNYthxZLakUG1g2oKV
 NYu+2Cgufko/mEpKDQ5gcLsIZOv4iU+A/A6OrwzCIfKLytldVH3hJtMPDtePsVllIbGR
 UfJRBJmf6JJL1xaGmlu6eKz6anaKXUJVNdbJ0w7Ma7vzIGdoWi6ivO8tyR83OIBUAXZi
 FcLVZKOf6UosaavMw71c1FM/wOVRYKWP5+mdGS2Id5wE+F7v5JGqOuQveoo7uIsY6rMG
 NXHQ==
X-Gm-Message-State: APjAAAWctdQJZsf6bUrkAc86dhr9G7BREXUZEhhfP8Vrye55uop/Ef8P
 bjUfiV8d+YuOcR1XxvKMmqI6xk1uqMSpt2c8xVPThQ==
X-Google-Smtp-Source: APXvYqxYVYIleP/nRgbENo3Yfgwk8OenCerefUQZlVEJcsgDGSH/BBARur4Ym4DwvHBVMCf6Xow3cwPKUVUV93X9mVk=
X-Received: by 2002:a2e:85cd:: with SMTP id h13mr61458408ljj.191.1578398500619; 
 Tue, 07 Jan 2020 04:01:40 -0800 (PST)
MIME-Version: 1.0
References: <20191226191425.3797490-1-martin.blumenstingl@googlemail.com>
In-Reply-To: <20191226191425.3797490-1-martin.blumenstingl@googlemail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 7 Jan 2020 13:01:29 +0100
Message-ID: <CACRpkdZ3uc30Efwe_2YtNJBK4FTt+dWLbY3pnh1uWSPwGu_-SQ@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: meson: meson8b: add the GPIOH pinmux settings
 for ETH_RXD{2,3}
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_040142_095846_9CFAD2A7 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 26, 2019 at 8:14 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:

> GPIOH_5 and GPIOH_6 can have two Ethernet related functions:
> - GPIOH_5 can be ETH_TXD1 or ETH_RXD3
> - GPIOH_6 can be ETH_TXD0 or ETH_RXD2
>
> Add the bits for eth_rxd3_h and eth_rxd2_h so the ETH_RXD function can
> be disabled when using the ETH_TXD function of GPIOH_{5,6}. No problem
> was observed so far, but in theory this could lead to two different
> signals being routed to the same pad (which could break Ethernet).
>
> These settings were found in the public "Amlogic Ethernet controller
> user guide":
> http://openlinux.amlogic.com/@api/deki/files/75/=Amlogic_Ethenet_controller_user_Guide.pdf
>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Patch applied with Neil's review tag.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
