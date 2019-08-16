Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF1C908E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 21:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cBeBoE3qOqp5w2QNK3TrM7zZqu+rOtraEpVCK5JvCiQ=; b=V1Lgm4VbVJjLwx
	eFB1frq/6JtK1gDp5ZHsfHXFwzscpUCRnIPwtwIpDiL1inAKZN5stMpx35r0+bH7n3SHgfEr0Dotl
	YhVQpkeU3k+4AUhcQAYoDQGrHhxBhkKCHd4GjQWMeOSByYkwSUG1atgeOwqBNgnqLIdNLI3+ITeJ1
	IPQOxkB35LYJ+l5tqZBBPHLhvsEY0twwr3tLnBlzw8AuZVxmLRNo0CrIJzQny6bxbCPkXfAydibeE
	ATVBk7UWJl6vnNR/eVQHK94+fuYdoUlEDnAYEd9bq2ZkmCi7WYC5DtEHGqfvgCyB5u1waDY7g1Fij
	TNIbkejVvGtNVrwEuYWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyiA8-0001cp-BX; Fri, 16 Aug 2019 19:45:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyi9r-0001Ma-I8
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 19:45:10 +0000
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 473D32173B
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 19:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565984706;
 bh=KzTWxmEu6v0xr9Hn+OmqkbU9wqNoAf9onn0WZItZQ8w=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=C1f4/0Difu8NwVOGgwQLA44FJxkNPd5cak2I9kBTVIVNOYgl1LXsmyZpgcZ+2P/Pe
 HBTzPRYUrAlcUjeJjmn3xyGoTXI3jWp/CcuTapJbzmzP84dudLYcsBFG8L447gONyr
 c5o6VWzFE1/5dUVs/CbkXO/S7VWtaGkSwF2fg9OU=
Received: by mail-qk1-f176.google.com with SMTP id 201so5657529qkm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 12:45:06 -0700 (PDT)
X-Gm-Message-State: APjAAAVLWkPuqZ2WZB6EIC0fwbNug4tsNya2yhEKphRRkgyrDX90o2f+
 fVWqkYUDLMRtXXzB7r23KWyTMflJI+le+t7trA==
X-Google-Smtp-Source: APXvYqzU/sQLWZmEUyGPNZBgopXitRzgXPRHAgAi2jpIl9kVzaTAUknmMEbeU/L35JSuQaNruf8lttCiD7ojvcKtId0=
X-Received: by 2002:a37:a010:: with SMTP id j16mr10658432qke.152.1565984705423; 
 Fri, 16 Aug 2019 12:45:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190816064710.18280-1-bshah@kde.org>
 <20190816084309.27440-1-bshah@kde.org>
 <20190816084309.27440-2-bshah@kde.org>
In-Reply-To: <20190816084309.27440-2-bshah@kde.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 16 Aug 2019 13:44:53 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK_j_AK5wa3cOw_SpVZAX+m_iSvnR+Sgh0dbqxYxHKr=Q@mail.gmail.com>
Message-ID: <CAL_JsqK_j_AK5wa3cOw_SpVZAX+m_iSvnR+Sgh0dbqxYxHKr=Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: i2c: mv64xxx: Add compatible for the
 H6 i2c node.
To: Bhushan Shah <bshah@kde.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_124507_631156_7D47D660 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Wolfram Sang <wsa@the-dreams.de>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Linux I2C <linux-i2c@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 2:44 AM Bhushan Shah <bshah@kde.org> wrote:
>
> Allwinner H6 have a mv64xxx i2c interface available to be used.
>
> Signed-off-by: Bhushan Shah <bshah@kde.org>
> ---
>
>  Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
