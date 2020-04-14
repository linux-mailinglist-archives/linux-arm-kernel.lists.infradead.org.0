Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C24871A7E1F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:32:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9EaSlbzwu7wq71XfxFZGQJ9NM2v+88nGdhVTJ4FF/kc=; b=kFCFip7cn6+M2P
	k8E0b6NOWSAOkRW+HcY0BUyBiv1ZzrpLBMqHLiLDFMnuxrQ90oKIIqadAVFX+9OBLAuEONOTSUS23
	IFp9ScnSaA1D5nbx5FMSXW+caF2GpFzputZ5J+kCF/sGkm7UuGmENiIZn4cTWTv6jA5Ijr9byRL46
	cuGpI6qAwVmu7i7g6q9VIxqatMm+EEBYQwG8Tqz5HenwpgD0RLVy6UFhj+Rpe0LWr+fi6ojy9EmoH
	qK7SwZVwJdhQAKVue+IH37q1a0d8WsUqVkIaPqZM8cHpsw6LOCxzDsdtqzG6qf/aHNgvmSq77BI5R
	j1G+HqV5+02G8PYM0Lgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLg2-0006H8-PO; Tue, 14 Apr 2020 13:32:34 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLfv-0006GY-VB
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 13:32:29 +0000
Received: by mail-lj1-x242.google.com with SMTP id y4so6278411ljn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 06:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PL1qV4rNoqECyojOXOX+qjKZBMB6ykqsNqwBvbzionM=;
 b=fj6dRfJueU93JLtAj9ltpUVcudfQ6pO7neITBQlY+zpG6krZTSQsunTafyhAjXMpK1
 Sva0c3U/fX3f3JvRVWlfEIjYPScaxmnLuqclj6a4NdeGwNoSsX2Wx7a4ip0eao289Fin
 qdlAqvJJ87cbEOmfSRuC0b6WBxWBG3XOhX3UEvBIQ5g/FveRd43VMRP/M/6XQ5BUEwvo
 WV6IdOdd+U8qFKYDOswpjJRsY5rzgV7i/KMHghU7RIoA5esKeHDdjaQ8qGMa2oXJgBxF
 Vsqkmia17d6EDjMNq96T9083nVCoQfNq2qhcBJ48p+TTv1D6CSER0536aoUNEUAxSXhM
 MjSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PL1qV4rNoqECyojOXOX+qjKZBMB6ykqsNqwBvbzionM=;
 b=Jgz+O+V96nyI55PXc/MqeaIAKYwk3kp0CbXP1y4zUajCQYMsY+AsjUS76V0m7UW8n2
 3dChvAE0DUeC86hb8GYLl7RxyEWwxSuEK8lgaenIKfx7VS/7E+sTLQbpE8KkgQfDgXXn
 UH9+H1ZpObdIQX1v9MUZpfLYV6zu3eqyuJBAmbZ5eWvFRKlIqtpSthCP49lSaPsNTo+U
 d5yrbuLzP+GgQZs2CQeW8sH1vRKtl71RopE/WMU3EVPVSCLLTGRega6IacaJlF9BZQBE
 kxu9ZGnWE0N/yTYX8PPpk9xCZCgNijgajbCosKMMAY15+qtfNd54MuV/06h0NtqxOMON
 IvcA==
X-Gm-Message-State: AGi0Pual0QGefN/KZQyjIowc1Nlis4gi3qz1iZ4qOPn1GdsMwbe1LIGS
 lO+8P2fhKwNWgkYGTgagrQoKcDHNmeuGzrTLXUdrxZDp
X-Google-Smtp-Source: APiQypL9ubPg9X2xTig9P1oQmBHUPak5Twtx59MPEa+o38OQeAQhiuoTlIIp3kNs2Qco2pjx0xEiKcJuOZkCLhAy8Dc=
X-Received: by 2002:a05:651c:30b:: with SMTP id
 a11mr137759ljp.164.1586871145310; 
 Tue, 14 Apr 2020 06:32:25 -0700 (PDT)
MIME-Version: 1.0
References: <1586870475-32532-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1586870475-32532-1-git-send-email-peng.fan@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 14 Apr 2020 10:32:54 -0300
Message-ID: <CAOMZO5APoqzvptc9gY2r69MzZ=gjTnsr2UV519xJmKmEkcx3=g@mail.gmail.com>
Subject: Re: [PATCH V2] mailbox: imx-mailbox: fix scu msg header size check
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_063228_025495_C542F8CC 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Yongcai Huang <Anson.Huang@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, jassisinghbrar@gmail.com,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peng,

On Tue, Apr 14, 2020 at 10:30 AM <peng.fan@nxp.com> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> The i.MX8 SCU message header size is the number of "u32" elements,
> not "u8", so fix the check.

Since this is a fix, please add a Fixes tag

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
