Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 688D015D5FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 11:45:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EN4RF/j2BGAMkEkPqWIOOxhPZQEkqRVB85TT/vmFDF0=; b=NSzW5LEejwheGN
	bBTUyKxvo1SJw95U6z5N5FQxhMNbWpKffUia84d1LuRDvZMy6Z2bwCh63e9S6PMXNs8vaICF/8N2m
	n7h6KtPpJgUWYVeKixGWzkIhpAKJWTuGqWXHnMdi+pTvjJhIcCfD6Hvft4Wso5TrBDslFzO+DQxTy
	NM+qpAMpflJXfydmh0Fo4Mk1K6ucLD+vmFcrFMGty1a+c4/mDKN2QkVyEKsBughny+ZRN3mlrNXnv
	goS/UoQcMRlDHsNwUqaT4jBHQ1TPb8jIRwFfAWruwQks1oQUhem9EYKkJk85e+OgyFgyXjBlamvhN
	PfQl2rKY1W99MHmKmwjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2YTN-0001xs-UY; Fri, 14 Feb 2020 10:45:26 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2YT3-0001P6-IS
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 10:45:07 +0000
Received: by mail-lf1-x142.google.com with SMTP id b15so6461950lfc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 02:45:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cvXb6lwZjce3PLG/MA2XMSg4vriIBn550FVcP/H65XE=;
 b=aFDyq4vu3uOf2uXlywW6qqw5sw0hsgKMMLwIvssQzEzgKkboCNOWJ1CXjmd0n8rtUL
 R4Fw2Kf9jQ/VrkF7xqX+426GH7bS+WIOmC655a0Sy0tMVlbdovzSyde1lrWxffpgkPUi
 ARRVuArlWlQ1oUkw8em5cZFmSZSVS8SmYZEcpMKEgLz2tmREUQy4ChyXuOaXOVi4zhmG
 Wp1B2WHpwJBu5s5PhmDOPhP3QItxtc2Sicr/geLXj2l4IQLTvYnrz51xsM0/y+MmeJhB
 IbB57deQrOeEeSzVyjZXCgEIJtTgtEsC8IZKeM1u5zX2zI8QNdPJgsXebwT1AuJmfnef
 yrxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cvXb6lwZjce3PLG/MA2XMSg4vriIBn550FVcP/H65XE=;
 b=RbEW0pdhKQ4l+TL2lkEIxYctrNOK0Pm8Bob6lSIpuoX33KNVJKoNIyES84oEVyBjqh
 bhu+Uu4MiH8CkucHKwGmMsOP6ygztbGSUB55zOl+DI/8dxzGpl1B300I0PtYf7eOxqS0
 7OY8SfES7a19hmBIL62YTrrOIdPe90uesHnxlT6YeTekb+RLuTY6qb5cljWbjTGZ4SFV
 keovVnpBenxnrakae1RbXLdS/CVaAOxeBineejad9Xouuof7sKyUXrFJs3V2tFuEcRP3
 qiq81rtjPozsppOMH2LOi6DbyWILZnGTGlyeHziWkiGCi+r1wNTmSIhHQkoC9Y4UOggx
 IrtA==
X-Gm-Message-State: APjAAAUMVtCN1z6ST1xY5A/VFyf+yKhvsfKDbLe3wNwkSXhtnf5TriAE
 x1tN8JUnfdIKBcSFb8/YP3oO77AkjgfikBQYCZH2xQ==
X-Google-Smtp-Source: APXvYqzbavOHLFo0u6rpYEyH+TC6gjN1NBg1u/L6aiNTBOjJAVE43SE5VWcs0xtZh2jZ0iyBr5Mka2oROJIAqLxc8XE=
X-Received: by 2002:a19:850a:: with SMTP id h10mr1403689lfd.89.1581677103410; 
 Fri, 14 Feb 2020 02:45:03 -0800 (PST)
MIME-Version: 1.0
References: <838d8378-1a6a-11c4-fad8-aeb4b861478b@castello.eng.br>
 <20200124133758.10089-1-matheus@castello.eng.br>
In-Reply-To: <20200124133758.10089-1-matheus@castello.eng.br>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Feb 2020 11:44:52 +0100
Message-ID: <CACRpkdaniAko8rP1JxcoVqXV5KijAR3AnEdRv0H2_u51MH8Ycg@mail.gmail.com>
Subject: Re: [PATCH v2] pinctrl: actions: Fix functions groups names
To: Matheus Castello <matheus@castello.eng.br>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_024505_641508_B4C43581 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, pn@denx.de,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 24, 2020 at 2:38 PM Matheus Castello
<matheus@castello.eng.br> wrote:

> Group names by function do not match their respective structures and
> documentation defined names.
>
> This fixes following errors when groups names defined on documentation are used:
> [    4.262778] pinctrl-s700 e01b0000.pinctrl: invalid group "sd0_d1_mfp" for function "sd0"
> [    4.271394] pinctrl-s700 e01b0000.pinctrl: invalid group "sd0_d2_d3_mfp" for function "sd0"
> [    4.280248] pinctrl-s700 e01b0000.pinctrl: invalid group "sd1_d0_d3_mfp" for function "sd0"
> [    4.289122] pinctrl-s700 e01b0000.pinctrl: invalid group "sd0_cmd_mfp" for function "sd0"
>
> Fixes: 81c9d563cc74 (pinctrl: actions: Add Actions Semi S700 pinctrl driver)
> Signed-off-by: Matheus Castello <matheus@castello.eng.br>

Fixed up the subject as requested by Mani and applied!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
