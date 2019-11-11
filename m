Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8973F7304
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 12:22:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=21yfNpGI69Arbxcz+BTSx4uDDyeKGAJWvIkqFabMF+s=; b=rXtUuIvBFACYCv
	7EvYCeduJ78dk0y7/mUzwWOKBXbO27eg2YhpcxqRbqIXHAZL4PObzwbNzia1SSQT8Ix/tMANweHBv
	cij5bGf6cT/vVUrBGniDDW54iYni4Kcx1YxH0zcV9zaIkM/fONzWGY+oFGoNcAv46t+itANQ8f8ff
	pU7aBq4yQjhVGmFCyUSl5GiXjxO0bI2Rt8+YEK9axlSxXIRLZWufsKUkURXuvBAsGDyqYm76bqMyo
	vW/LBqtYxt2hoppieudJVS7kpgjMTBDjJZXBVZ1FN/S2LlHRaFFS/kDDJsVgclWb6bIEfhp7Jgxrl
	d3qZLnqWh3ajzmWU3bRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU7lq-0000ME-Fm; Mon, 11 Nov 2019 11:22:10 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU7la-0000KV-51
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 11:21:58 +0000
Received: by mail-lf1-x141.google.com with SMTP id y6so9554079lfj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 03:21:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8D7FBZWNeYQoIdRr1oY1OfdugIxxf8OTSU99lGfG9qQ=;
 b=ugA74A81U6n8SMIfSZr7aZqtzweH40047f8NhMqylHmOvtbnQ6zBRuto0AFvq+2hqV
 fNiKl+Z8TmgIAs5e01YW5+dVYQCiZVL2gjG5tyOsTUp6Dr6Duw9z9djzZvX6YXILUoZj
 Oipl/zxgQ/PfXRbni4LxMcT0k9AUoPE0U8Di0iUuwpbWbZRzqKvT32pKNmtTMhm4aVA8
 79lpF1a495r9WPjRHlXT4zPewP0/ZiDBkToH5kStc804V+wThWDJ9ZtoT98IEYCug6gQ
 lA/C3M52KjeX2OFHK1mE/IgK/n1wr8/T9sbZyS9k2BfN1uDyQF/4PUJDI0OPzb6hG6mb
 1/Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8D7FBZWNeYQoIdRr1oY1OfdugIxxf8OTSU99lGfG9qQ=;
 b=jsiZCE4xEqnDONrW8keFrlVdW/KOgIaktwEDjz+c3ow6ZNwBFMSx0oZ1qC8/1aiFKK
 EKfecgdy5iZtg7Iro/0MLDFpn1WScddkczZeAjGNfUKwd6NYZAfSFWN5rqe12cx8e6c9
 DPrhK4jw3sU7qXgGHm4XhTUq5p4/dpLDiW50lvHcWgVEFtQG0ey6B9MTmzJFx4g2kl5j
 WsgIzxyvGx/PywKcZf3xaNmI/4AnNat6iJ2aD1gOq5eYEjeGscjOeyg3B+SQFBYJqCY+
 gRXoLu0FJUz8ABMYsFN7vcrydhYtGFPHvPKXdniCzummC7TJ2/Eh6EWxGL6JCNwZabbi
 ZovA==
X-Gm-Message-State: APjAAAWqms6dJlTE0/cpswoVM03JVIINeZ4xWsu+CJWyZmE2L2Zf+d7O
 tNIuJkJGlQBx2EkiNpz+S3/Hefk7vNcM3KXPMGg=
X-Google-Smtp-Source: APXvYqzdYoiEJjshCXOPVIThPM0dEfQ7V560bnYDQA4R2ViUh18tXK3rrzo8/na4YLv0MOp0RVHKUNeJF/uN0xTJHUk=
X-Received: by 2002:a19:2358:: with SMTP id j85mr10685518lfj.20.1573471311279; 
 Mon, 11 Nov 2019 03:21:51 -0800 (PST)
MIME-Version: 1.0
References: <1573435732-30361-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1573435732-30361-1-git-send-email-Anson.Huang@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 11 Nov 2019 08:21:46 -0300
Message-ID: <CAOMZO5By4Tvk=KFxEC+8BC+FZ498pCzOpskvWst1=gWsDnb=Gg@mail.gmail.com>
Subject: Re: [PATCH V2 1/4] ARM: dts: imx6sll: Update usdhc fallback
 compatible to support HS400 mode
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_032154_218647_2B503276 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <Linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Nov 10, 2019 at 10:30 PM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> The i.MX6SLL SoC can support HS400 mode, hence "fsl,imx7d-usdhc"
> should be used as compatible string to support HS400 mode by
> default.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
