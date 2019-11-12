Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB1DF9AAC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 21:29:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iiemX5PrIMfstOeoqMKZXx4U0jb3iCyZptphmmIaDis=; b=qwaNDmfmuZpApa
	ZTNeKHRClvsp7/PRfWslOXUcSVuKwX7DZFTVBR3c4ro0hRAkLrPO9urpOF1s8KSeva7TScank10sX
	raWi05ev4tIQYdOuqI52487H4eOsj6dWZqftWM26XLObBDlHyVHr0dbXe1kiqyxU3LW5lppk088KQ
	+/QnrOd3DR0P8VPh9sZgd48sg59uw5SiyjP/aL1v1NNj36UGqUPSDYpWehVzpOajGc5hufoHHvNmj
	cilLqyDhAxtBqitbP5znsIau1x/t1nJsF34MUquBzjMaNrWSId2hbDfdnbvGbIsdbw+Sp8jbFRiaE
	wQpJXJQ0ayslHCqykcBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUcn6-0004zQ-P1; Tue, 12 Nov 2019 20:29:32 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUcmz-0004th-9G
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 20:29:26 +0000
Received: by mail-lf1-x142.google.com with SMTP id i26so2891382lfl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 12:29:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zIggQvsLjw5/GKJs2QizxH1e6sO5J4u5NXBkTQlNHx4=;
 b=Pm7EryixgzSrwpEIlecvGLtcvGoL6KyiCIV4cvPb/ScMz+vfz+wY8dfG9mRNImLsGW
 Xi37PUrOa/ApG44a8SFr9XPQYettDQOw69RRdsBp5sOdjY5qKwYQg89T3iEwULPVVzl3
 AHMbSPok76A2afzdhxxmZC+4kJiVN6549bvzvojrBsz+DcYTwqcFULGMno41vxmCBoJz
 c+m+yKjQxYt5NCDRbrxIGNiDpReG1EH73Q3z7RO8sSeAvvcByGenB+AGQvTNyQViNSLN
 CUieQHax4hhjAPnncmyUCSnZ9UguOMRiGCT3/T65L24PWAVg6ygRNkWfrqaMn9hGKmAA
 bDOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zIggQvsLjw5/GKJs2QizxH1e6sO5J4u5NXBkTQlNHx4=;
 b=GALVU5l9D9YGFz9XtfIiiOPxZ9AUQzh7mti9xaz+CPeqZdqEbg2C49wcR/IQ18OKnR
 VXIcixSAChDVQ8kfDfgZmoofh60CEez2l/fZAGLbIli3qQSTMarD0+0ULwTsRMn5fX8Q
 swc2wVrPCu1JhMfzSnDmajVSx4KUhVa9nkU1FrpUtPgb/3buIMpqZprW/e9tLlrMsdTm
 xOEeyOvW+bSeGA82I3+RsUvw95vHUB/kV/GDOYDXPv2CUAS8nskfByrcRpOKJucLBnfv
 ZhV71tu3nVNsaXAN40v0ouVE57ive7OT/8yvSEjGw14FMntW9NorR7U6ynbMGQg17MOZ
 2jFA==
X-Gm-Message-State: APjAAAWINVzSM1hfj0VbObU0JO0DfKvlZfOb0PjePVLxa7vXH9Yerp+l
 W0CBp2Kd8XP4lb76yvJM8ivzDrRqFmEVA5d4qKw=
X-Google-Smtp-Source: APXvYqzNLkwu0NxW/0pt4F6VhlKtlGUv/Q0HSQly3OQKZMNA6b8Jik4th1y4GDw72oNgE62F3BJ3p7HMbyUYq0GtrFM=
X-Received: by 2002:ac2:484a:: with SMTP id 10mr3190310lfy.80.1573590562691;
 Tue, 12 Nov 2019 12:29:22 -0800 (PST)
MIME-Version: 1.0
References: <1573586526-15007-1-git-send-email-oliver.graute@gmail.com>
 <1573586526-15007-4-git-send-email-oliver.graute@gmail.com>
In-Reply-To: <1573586526-15007-4-git-send-email-oliver.graute@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 12 Nov 2019 17:29:12 -0300
Message-ID: <CAOMZO5Dwt6yJ45gE91opUf3nNx24AG00Lk1KPLJ_7Z4F0os7zA@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: arm64: fsl: Add Variscite i.MX6UL
 compatibles
To: Oliver Graute <oliver.graute@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_122925_325529_C73ACEF9 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Anson Huang <Anson.Huang@nxp.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Oliver

On Tue, Nov 12, 2019 at 4:22 PM Oliver Graute <oliver.graute@gmail.com> wrote:
>
> Add the compatibles for Variscite i.MX6UL compatibles

You missed your Signed-off-by tag.

Also, you should remove arm64 from the Subject line as this is a 32-bit SoC :-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
