Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7AB1A62B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 07:46:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zc9FXSdgt2soEd9aSyFzQjpco4yJH+Lk/dg5hslwBZI=; b=JmZMZMJTE3cjJ1
	DdvbrQGE9f5vQgw7LFnxxLQZFip7PkimhEhHiPuUTC28nzXxLzQwzNOKOcMuPseGRsCpocfcnfK1f
	Tg5U2Fo5m8X2KWjEdx/idAYmIbrmYV/bHqCyU8iEBxjIwdQ3O1VlXvnggFW77pguh0A16TTCB8FE1
	6R3yAgaUFnwPxMNLSd0TB2OLM8i7DxjkcTeZPBqkZo9E+6NOS6D03TXKIMPPnNajyPVBG+jd3QgAJ
	747S87JdVajVRxhJvSgWZAZLSFrPTIzdFOoldGFyX9sidT2kFhzMm89Q0PnLtxSwmV0z91lZVp9IT
	FcJGZgcUpN1OGGGIWNhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNrvD-0005Er-Sj; Mon, 13 Apr 2020 05:46:15 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNrv8-0005EU-7N; Mon, 13 Apr 2020 05:46:12 +0000
Received: by mail-ed1-x543.google.com with SMTP id p6so10681659edu.10;
 Sun, 12 Apr 2020 22:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FlXaTOr+kqY8flt8h5iVXY9Br/kqLO22K8KEByA6izQ=;
 b=tc6UrvOXwr3sXjeRrbWvKAa8Tlze9SysPRyOZENraq3tE4I0I/tBPhJG2EBV9hh0Fj
 gxiVIkO3ELJsAWl/FjrQeUkLDFjKKvknUqC4do40feBzjfef2B+aYOeBj2G1H6ZleXLa
 zqoiWKEVEtYed5vFpDV57oSul37uvT5xMRrWAIHxmVaP5UKLbJFSYqt4adESQC/Fdgol
 Yx+RlMFYtDnlyDnSbbwEX4KSdh/kwLhIT7Bq6SjDvLp1K7Rjv/UwNMJuiZSpoOCV4Ryn
 TWU4Oy/HH61rj+3hP6PGB1bdf48FFHS/i74A/uuTSXltzQyxdYS2Ovnh970wz9jFFKhN
 Gdzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FlXaTOr+kqY8flt8h5iVXY9Br/kqLO22K8KEByA6izQ=;
 b=Z80JuiwJMtOk8jDK1EAzTm4oOc771RsIg7ROtuewK6idvIY9jwnKsa2p3oUbVDu7d2
 lOh8TjrNjrR4YlZuWd/7Sh8F23rFvKxcwsxQbfErDpdyOzST5Q1dl+qEhDJ+ggFWBhdE
 VPI+VfX+vYznMx4VziinuK6xXuCioSCtBojmvidB5iFoJY0sr1Gpe7g3NmVQ2jaKYLPH
 aeVfuPxI1CCN9N5AMnFpkXeK/EAsSsVpMkJoZvZZLV7tT/Xtl+wyhxTpwGyK/j1p4ZYo
 9hVA7+Gi7lHlB9N0R6pE+gkRKprRqzc/QX5E+VC5RmcDLDmxdYTfxx0wYyc9vJuCWFx6
 7ehA==
X-Gm-Message-State: AGi0PuYcs4HwA9zso03SWQk3pg1JmYFnB4Nq7HWC3Qy6hdYu2UawMjgU
 qKzd4lATntek79HX8l6ARgzbt/SIMwP+S3Hw+VE=
X-Google-Smtp-Source: APiQypInrvlU5bGjQlx0jw89DxxNYX+O4NcAzxruo5nm5KOED5jzqWzENORa8AnHwL+1rP6V+Lu2MrtiqCa8KYrLssI=
X-Received: by 2002:aa7:d588:: with SMTP id r8mr15358689edq.17.1586756766896; 
 Sun, 12 Apr 2020 22:46:06 -0700 (PDT)
MIME-Version: 1.0
References: <1586702060-3769-1-git-send-email-amittomer25@gmail.com>
 <2d629e23-ddb1-6033-5ea3-fe9e02476e18@suse.de>
 <20200413044959.GA3071@Mani-XPS-13-9360>
In-Reply-To: <20200413044959.GA3071@Mani-XPS-13-9360>
From: Amit Tomer <amittomer25@gmail.com>
Date: Mon, 13 Apr 2020 11:15:30 +0530
Message-ID: <CABHD4K_HS9QmL+X6hS-4gHfMYr9UW7_J0KL+byR1Wt4V5mvpiA@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: actions: fix function group name for i2c0_group
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_224610_289703_CB1AC8A9 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: matheus@castello.eng.br, Andre Przywara <andre.przywara@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-actions@lists.infradead.org,
 linux-gpio@vger.kernel.org, =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mani,

> Amit, you can use something like this
>
> git log -1 --abbrev-commit --pretty=format:"Fixes: %h (\"%s\")%n" <commit-hash>

Yeah, I already had this enabled in my git config:

[pretty]
        fixes = Fixes: %h (\"%s\")
        picked = Cherry-Picked: %h (\"%s\")

and then I generated it using:

git log --pretty=fixes -1 6f87359e8bcaf88381b9c9c038929e0e6872d308
Fixes: 6f87359 ("pinctrl: actions: Fix functions groups names for S700 SoC")

But seems to only generates 7 chars for commit hash

Thanks
Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
