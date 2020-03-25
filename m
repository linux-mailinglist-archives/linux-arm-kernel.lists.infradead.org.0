Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6D2192EE4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 18:08:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VyUqDnF4t4sglg8+necIDIt0pdot/brSZRMGy2ve6pU=; b=QpS1BSZooNPOlo
	uvcemzB00Ex1sAnLhu8BkQIOu4ffAA1ewtZulYLz8c8RisogbNDmJkuOxpgoidDjjZelPHaxlrg/C
	DRx1OyFrcu1pVUIMzCBuwUSz9vA6ApRWHpnNZc+a+UQPhF8+a8AdEifX3qrIsOBpN6KIHAYcCp3P7
	JaMzJ4Tz0dwScs0KYOpuKLTNYrVmxz9Zv+VD2usG7K3b1/Uja4Ni0UH+98nEkswvrkawholdh9j1G
	RjN5DjvEJqs6/6t9ggGEFmLIA58AjWu1iifh2jjC1Y72XQblJKQ5vPqL8Rd/QX42fnVvOQuJXtbfQ
	2EgB3XFY702eS+sfJ37w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH9Vi-0007Jz-7o; Wed, 25 Mar 2020 17:08:10 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH9Vc-0007JR-T7
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 17:08:06 +0000
Received: by mail-lj1-x243.google.com with SMTP id p10so3083324ljn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 10:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=600/ZX+MXM/TMsIs1XX7CkmCtp0K7z5KZXUXr8Gs7Hg=;
 b=rRKgRr5Jnyl7HxB3olqq6jFXS0WdFWFQnInzVomqkuvmAaC5V2Vea6f2E/Sq65LWcj
 uKGrcjI01BnHmCH3PusaCNieeBBsXSux6pmw/pSYGCjVvD5qHQi6tPyuqayvxygaAayW
 sjUpf+/3frRBl2xnx3kb5brnXjrkkjQmga3z2TCGG64LryF7gUujp+vB+AbedXMaU+iH
 ey+IXzbsz4tIvmEeTlzG4wo4dhC5JcTF5Cewo5i99AgXsPKECXmtYSqK3o5V/Odyho4T
 NMk63S2XT52Qx+Y+WIEZ94ubqFsQq0bDPbdLj3YVf/sB037RjMxV5D5ZzppmV23zDfji
 c6Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=600/ZX+MXM/TMsIs1XX7CkmCtp0K7z5KZXUXr8Gs7Hg=;
 b=g0fQD1YfJJ8SG3bP12EiTB3t0/+wlA+5vK8zCfSusgCB70Jx1/ai+eURXHv4y2EGjM
 Guce4X8Vhne9uTR8NnfOwdI5f+p+LlUF19yHaPWc9hSIwheBtXyy3oo0QywbVe/Tn65+
 +6sn5bmXjFtLEydViYHRHFRJQxdrwXfVm+MYoVilQpiA4Dx/uRBerVdyfdfh11D3iwwM
 WwpiIhf3zhDjO6xWcF+yZZ7TI3VhXbmZzmn7znoMZAAgBiNP3MnGI0SfOoD1di1HoFXJ
 bVbYeK0zq3qzCxRDFTk6swiOmyqLgW9FGE/Ox+hBB6/+F6xbAZXZEOBvgA8YjlFV+l4z
 XBQw==
X-Gm-Message-State: AGi0PuYXCmTc8XNwG+sgvzjqmiyjaIIPQ+asTax3ZM0o/S8PJqtchQlJ
 CE528TbETH1AvS8SqEk7WXwTAZ2AghOSVfM8gFoZK9/1
X-Google-Smtp-Source: APiQypLgprDFyeg9zyYsI/utcFejWPg2CkEwryZZEk3z9PPhdmklTvXiftwi+mmWkXFKvkUs/UNHYJD+Fg/3B7VKg5g=
X-Received: by 2002:a2e:9757:: with SMTP id f23mr2525601ljj.269.1585156082224; 
 Wed, 25 Mar 2020 10:08:02 -0700 (PDT)
MIME-Version: 1.0
References: <1584651135-29266-1-git-send-email-tharvey@gateworks.com>
 <1585153582-21127-1-git-send-email-tharvey@gateworks.com>
In-Reply-To: <1585153582-21127-1-git-send-email-tharvey@gateworks.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 25 Mar 2020 14:07:54 -0300
Message-ID: <CAOMZO5DLLPtbVp=nZ9B6O78F8pSGH7Oj9bfmtSQ_MayGi2SyuQ@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: imx: fix audio SSI on GW551x
To: Tim Harvey <tharvey@gateworks.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_100804_964747_EF515570 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tim,

On Wed, Mar 25, 2020 at 1:26 PM Tim Harvey <tharvey@gateworks.com> wrote:
>
> The audio codec on the GW551x routes to ssi1
>
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>

You could also add a Fixes tag so that this could be ported to stable kernels.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
