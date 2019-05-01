Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 384EA10823
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 15:09:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nkES4PbY4oyeJeL1AFGoNoeEFQjuQ5Eb6YrvIXJXUK8=; b=seswqXtOXpbWvK
	3N7wkXp7EXXqx4kXcsRbDnM9wonlaovoqoxEjukXwFmynzG1jIBlFYk8a8xOUJeP2FgXihOvDAXEA
	fG7gK7ZXU6KKtKQdBsfcJlU+z9dB5UavPSoTtApwFTPhFbzpqTUi248Mqt7qDU0mKmdZsIXjt+FO/
	Vwn/Xe7X56gtciBbujqBIxF87cuLEyO4lkxF4OY7L5PsCRe8ywApllXkb7TaqihDxPTWKQLiGDl53
	QnWkRCCmSjqdHqOPixJM+KSJXQNQ7Hvc1bQTFBREHael1qpDD7+i0BoyBsXOSg6TEVt8L8Upz0MYo
	27TmcD1K9pPYax3jkwRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLoym-0001zd-DL; Wed, 01 May 2019 13:08:56 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLoyg-0001zH-Hk
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 13:08:52 +0000
Received: by mail-lf1-x132.google.com with SMTP id d8so1443107lfb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 06:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jwJnkA+EdwZYybzbFFWfTZuoqnVn4+gu+dMRXLR+jDY=;
 b=ZBkPWUv2nRY9BvVtnGu1syTL/Bf4bwiutwAAuCUCpviwp3cAnjhTeCxxgZFgB+Awc2
 E2kleF2rPOQ7YWEULWOOJyEGrL5CmYGC4vkPHK/Zejdqo6S3bhu6crdnoKE2PA27d35w
 zQzgEp2g3n7J3yyKmTWPZs6WLMdGYVPAYrTvxX5dCyUqvNpMT3ewgLBf9/Z2B7KT15/x
 vFMAs8hmq3V604ojUj+YbRGpUlVm55M8yMdOFA/iJYI6wZCsApDWtLOc+3y1JPED97ir
 rG/iffTR6+nbVHR4uc15ZfbFgvgzIHz3BGdfe5RBetMQoKpQe+dvnzxdmIfQwoLaukIt
 BMsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jwJnkA+EdwZYybzbFFWfTZuoqnVn4+gu+dMRXLR+jDY=;
 b=LJ8vgv6liYRomgYHEubKJke+KjUOAOOfAphlaeIEcMuSCHHXk1gNoi1cC4/2YhJI1V
 5v9gK2hJk9X1U2HmCfgMRCYOrPF22NqhJUjIZvrlXQM1iwaBz26q+8roI9drcBt9ZVo9
 jpMlINVPmhhG2b7LYj6ELqm/N+YN3RmKEdYsOJKfu0hhOgyzH+QAOyQagEBP3AB0KtbN
 a9MzX+ZoTTO87Sb+z2y/NpKQ0xebXJEvNmXHiZzoIdUHft01RNX5iAUkoLOqYDNWCa1e
 KtRyBo5vJHqzCTLB7Wx39CFo8vzAtSYF7pgAQwA++I6wmkJQcySdUcwcjYCoJoMSp6FS
 GeCw==
X-Gm-Message-State: APjAAAU7ehrc1WYDX1kt3tIwuOcPqQaSyUpyVvPx6oPW/1N2j7ARHYVc
 BUseUgIIioQzHjIAkkazUJ26n+p2Jfh9fCLKaKM=
X-Google-Smtp-Source: APXvYqy5d0qbLNeE1/RFxRNhCYoITtu7AR3Ata+JWb0JekiPCUAUGPYCCbfw9PxbMBWTxdZik3yjbFelFQ53iM3D+NU=
X-Received: by 2002:a19:f60f:: with SMTP id x15mr38757872lfe.95.1556716128031; 
 Wed, 01 May 2019 06:08:48 -0700 (PDT)
MIME-Version: 1.0
References: <1556660398-25450-1-git-send-email-Frank.Li@nxp.com>
 <1556660398-25450-2-git-send-email-Frank.Li@nxp.com>
In-Reply-To: <1556660398-25450-2-git-send-email-Frank.Li@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 1 May 2019 10:08:40 -0300
Message-ID: <CAOMZO5DA6hikyYEc8wgP5D6jrYksRqbKnyNmU5Fs-yJD82BcyQ@mail.gmail.com>
Subject: Re: [PATCH V10 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
To: Frank Li <frank.li@nxp.com>, Andrey Smirnov <andrew.smirnov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_060850_749526_F73B54B0 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:132 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "lznuaa@gmail.com" <lznuaa@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Frank,

On Tue, Apr 30, 2019 at 6:40 PM Frank Li <frank.li@nxp.com> wrote:
>
> Add ddr performance monitor support for iMX8QXP

Please keep Andrey on Cc as he made lots of comments in v9.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
