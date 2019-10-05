Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6244CCB53
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 18:40:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4D+0hN3gaziYI18H/iVBnah3eAaUCG2f/ntNqtRt9Gs=; b=jc85kZhZrWztJH
	A4KZk9lOwtvMXZ7Ep/bC4MSv8825G55CgOoyPpNSLroJgrHuOd+3ft1m0igImHuLiIhOCz2kVoDV1
	PWtVplP/C0rOySCm8UNshx+kFc5Djwaqn56IWr6DrTEa/HdXIONOc7xBx+8nw3zFpost0o609NG2f
	LPnmgqb7rmJl+qA8Yg6Uh3y86mOSMXlaWTK+EIlITV9ht1jCq3LXlaLxYExlZCbezQ/nCFOpSLoi2
	T/oKR+1e+a9S0Ws5XlZyRHU6PIVNZseJtaBkSpyQ+g72P7fCMKjnXoFG4iouQLIfxu7tJDYXmAga8
	xaXxKzot3JaU1RHQCPcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGn6M-0007Pb-KQ; Sat, 05 Oct 2019 16:40:14 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGn66-0007P8-DN
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 16:39:59 +0000
Received: by mail-lj1-x244.google.com with SMTP id l21so9539697lje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 09:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vPHHQsCm9P5lZAOoBEEQkMv+jTLHYjpWxfU2c8iJm+s=;
 b=km/R+P3zNivGmATXsVjC0pwOaNaLVsp770WNbE2ZdpnVhPJLTNALAk1pY+eMZE8pxA
 YkojbQcoOTs9kZM5JOF2Rv46YYNSaKgBPCmQW9HOvbS96RPuJAla8Sb2VPqcElrCO5UR
 2/6Sh6fMfSddcEzFcz14tMESk62O3II7RDYFrnC07gcpY0285wxcVavUiG4u/u7lIT8k
 Str8vwDdfk6qaSpKCDpAnHPxIlzLBsALXel32/ueZHebYUHkyCAb/fvINXvtN+ErP4hp
 AyA6Qc+BWhszgGMCLMW3ME4lR8pJoWEG1nEZYcfMy0G/Z1RZcXMUMIAIqKhzlESl60G8
 HHXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vPHHQsCm9P5lZAOoBEEQkMv+jTLHYjpWxfU2c8iJm+s=;
 b=b+MNkIFlNu4ClVOrCfI5ew29IM2obi1zL1bO4G6+5Ci4JH8XOSIO1zP77JOm2s+vdF
 LlOM1tANz6AyBKcqQnZsr2VTJSZukljKFh9mpqWdvMA/k7J9wx9ZYh08A9eyPGQGRaH0
 eW+G2NnYhaki0HHVpd9aDwBYEGyhGGLSmRctmBskF+OlJB/nf+ahNBtdQw4O6V7EnJm3
 WKGTUuBfrqPNI/z/EtGrykpLI/F8nL1c6VCG6biD2tDllX0T0ecyucvT0h6yL/EJroph
 Nsoy52mgMeILvIGEwSgfCEqU24yDfQ+87aWEKLM2iwS8wByi+Q+B2U0i1kSffoO8Qe7U
 +3IQ==
X-Gm-Message-State: APjAAAU0WrvnUIzfgBv9GkHKXoUO/N4OHUOnaTIDgy7XX/1W5fplAtoL
 kYfGzJGuBfmFVeBd8m0txj741XA5yzNMHvDIPPLIRiHvGjc=
X-Google-Smtp-Source: APXvYqwgSpaaFyzXdZShSpDLB3i/tHQGn7PDveIUsSUQrgOPp7Y4zvvhnbMGw/WaUGyUixEqB0xsj3nUp2bpy3kvhqM=
X-Received: by 2002:a2e:894b:: with SMTP id b11mr12889974ljk.152.1570293595719; 
 Sat, 05 Oct 2019 09:39:55 -0700 (PDT)
MIME-Version: 1.0
References: <20191004122342.22018-1-amelie.delaunay@st.com>
In-Reply-To: <20191004122342.22018-1-amelie.delaunay@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 5 Oct 2019 18:39:44 +0200
Message-ID: <CACRpkdbhoAp7Zif_7pbvJLoFeLdbT9u+RRgZk94cJEH+NadBmA@mail.gmail.com>
Subject: Re: [PATCH 1/1] pinctrl: stmfx: fix null pointer on remove
To: Amelie Delaunay <amelie.delaunay@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_093958_462538_34BEB780 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 4, 2019 at 2:23 PM Amelie Delaunay <amelie.delaunay@st.com> wrote:

> dev_get_platdata(&pdev->dev) returns a pointer on struct stmfx_pinctrl,
> not on struct stmfx (platform_set_drvdata(pdev, pctl); in probe).
> Pointer on struct stmfx is stored in driver data of pdev parent (in probe:
> struct stmfx *stmfx = dev_get_drvdata(pdev->dev.parent);).
>
> Fixes: 1490d9f841b1 ("pinctrl: Add STMFX GPIO expander Pinctrl/GPIO driver")
> Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>

Patch applied for fixes.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
