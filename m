Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8377A14548F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 13:50:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hti2hwrD6kSH//IJMsO8wnEjedtISS8ffXzOVK8ROcs=; b=GptnJeX5p5a8Ka
	Kk5r7WnitXlIdL0+XvsYwStkorqpwm1RP+dn3yBrONJWWE0BkVyRhyX7rYl9pXGrGDkIa2Q7uvsNQ
	zOot8R9WS1XTrhacl1g9H2QDK4ZR/STchi+tzm2NVDo5qQ4xUASfBSethdwUCWJx4L+idL13pY6ek
	+eoUzkqZk3hbFgh49AoYDSP7g23to6Vfm+DJDGxSMXXGxkjnEBjv14nKD5l3BRjq7HoXO5nsgrkBV
	AOjn2z+Hqniv37N+ijxodqh9FchiYIOTBp4MafnGDo3iBqbmiPaYkw9UX+twa5h7HT0J6J9/EOJzz
	Qycncg2isg3k7+eoFXXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuFT7-0003uj-E2; Wed, 22 Jan 2020 12:50:49 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuFSw-0003uE-NO
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 12:50:40 +0000
Received: by mail-lj1-x243.google.com with SMTP id q8so6615356ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 04:50:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=07WlnPQqN2uoismVasPmAAyjv5IXoHElLeWbFoBeyUw=;
 b=Vu9Nj7FnpCPollNYKLbqq1L8FSy6F9DtGFvaYSzQCMWc93j2exzx8HnbySWUkfWw9L
 kiE5HYC+OJW8YWI5VbwphQECvPBKuDJZSWQ6HmuAxcDsUw+FVJ/0RZwGz3KeRjRqtKeC
 UYAmXPyXQsFXEvyAJSMPyYaLKKHFBn57nNvFLpkouJvEMZQTXz6u3E+0Zd4AotYwPf55
 xsjs1tYb+T8Vkw6Rg0HTqdL/ebOWRsI0vx44XqXZlGFUu0D+I7gkLYf1CbxmEZ7qsIcm
 t01Qq/MFfag/gSMU6p73QYPs5hqzst76rauC7iYKVGGyZknp/CssSveDHjmWbM6E2qWH
 Mw6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=07WlnPQqN2uoismVasPmAAyjv5IXoHElLeWbFoBeyUw=;
 b=UD2TZeNdZD6FI/9wL5zoXnB9yKW/YjJJUU+HXPd70fb5P+owDMIxLkfpe7OaG/lKK4
 AsYJXJcEdBFOxVhtCN6NOjNpym4KDz+eZgzNCg28MKE8be2jUPnk6XG4R2pOKCcQnTzP
 HBhEOmPaneruab9tGikvmX6o7uyafoSoST5yGozf4pxeymEbX/Z/QUtF33RxFkLhOR0R
 3+yOz1hw4x94z1wz0CHBJ9OP1y2Nr2OkQva0ULKjV3POEm3Va3L8oVDqMNDaV8SqKDRG
 FLI/YWAlTIswfSlJ584pTB8fBapYBBrn9fbc80wvYwwOrJrWECUeqiWIhPwJ7viXn+QE
 3hDA==
X-Gm-Message-State: APjAAAVXa11dQ07HB5W07pfzf/QkxHNUJw6Pquf3Hr4dx1NFglGugbYc
 ev+05GFoHHB8deU79fR9b++nFcTmk1oTuSqQjioLGdu8
X-Google-Smtp-Source: APXvYqyJsyhjTnoUtKbCXaH0AYpsZXwJfrEAYRU7PJA+gYDRlnzOYMJXaJRemThPil9qazVGwgtwg7NnK/Ok5l4c62w=
X-Received: by 2002:a2e:8197:: with SMTP id e23mr19273747ljg.250.1579697432926; 
 Wed, 22 Jan 2020 04:50:32 -0800 (PST)
MIME-Version: 1.0
References: <1538278348-7716-1-git-send-email-Anson.Huang@nxp.com>
 <20180930073332.GO26692@dragon> <0581e252-2ebc-c813-9c93-a8d542a9a7f6@denx.de>
 <99f64ec5-ab1e-7d43-9cb5-623f25138c3e@denx.de>
In-Reply-To: <99f64ec5-ab1e-7d43-9cb5-623f25138c3e@denx.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 22 Jan 2020 09:50:28 -0300
Message-ID: <CAOMZO5D1PdGgHxJDzX07JW-h7ERsOnC=Zqhkwn8Qn92=bAyBww@mail.gmail.com>
Subject: Re: [PATCH V3 0/3] Add i.MX6ULZ SoC support
To: Stefan Roese <sr@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_045038_791971_3009DF80 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dong Aisheng <Aisheng.dong@nxp.com>, Ping Bai <ping.bai@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, NXP Linux Team <Linux-imx@nxp.com>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan,

On Wed, Jan 22, 2020 at 8:53 AM Stefan Roese <sr@denx.de> wrote:

> Answering my own question: I missed the already available mx6ull specific
> pinfunc.h header, sorry:
>
> arch/arm/boot/dts/imx6ull-pinfunc.h
>
> But this file is missing the EIM definitions for the MX6ULL/ULZ. Before
> adding them myself, are these available in any downstream repository?

I don't see the EIM definitions in the NXP kernel either:
https://source.codeaurora.org/external/imx/linux-imx/tree/arch/arm/boot/dts/imx6ull-pinfunc.h?h=imx_5.4.0_8dxlphantom_er

Regards,

Fabio Estevam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
