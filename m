Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3B370207
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 16:16:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3TzpwniF9mriPk3+zMcCC1a3Q78fACRDVLHHyiWSWM=; b=hyde/7dkRRXhaf
	JzZXj5r3fx5srZgcZVtTsjTBDucbqUOEv9zZd+Sbre0vJZznzENIPvbtcfab2V1dOgK02DSpIwcF0
	GjijoJUPVuMRtooWbxudx9kjYEqCwXL+ZbsaIiatTATnuTjv6AyEdhSBjFAUxscazw4im/hZn87DA
	h+kArFY2unheoLzUBy1ALUuw4GrRZWBuvKX71Q7j3g35/TQLK1h51re24kEXEN2j6p7gLxm6cUTlx
	y6QfQQAXmFrSYWjRswABv30S97g9zukVKDsJIyDZLB3Sr3nhjaAxb1imN1Xjh1lbO1BkcLoHnnotP
	3Wv8tXevOKPdiGoUvDDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZ6u-0002ks-5M; Mon, 22 Jul 2019 14:16:16 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZ6f-0002kY-EW
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 14:16:04 +0000
Received: by mail-lf1-x144.google.com with SMTP id x3so26843970lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 07:16:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O3ZJqqse2sY9Al729xwcBJ5XWLzQ0+aUy+8Tg7DRPqo=;
 b=uA/EjzgnbkDwKObeWEh5yYYUtXDAkL/8kRyIl3pJHE8S+1+8X18na5+iFpn+ViJDI/
 CqM7DqAAJyNFpCezwbFxdDELT3ifBQqDH/YCNjK6FGr8++LGdxK4+bP0w6oSCmSY47Gh
 YyY48cZZj8POJjx6Gs/YElImSf/cQa1Qs1pLjbkV0qkbdXyMjRNBuoa2gvMyg3qkwY3q
 VZS5cbWky5jF+10dVlao9SGdzTaoXyeeWAVZPalviPtXU/k/q/eDR7gW8hslEHTCG284
 D1TUJME72Efyc2wtegfAmpGNswYVXVIy0YuQWj4kExvCjym375klq335uW9D2OHS9ZfT
 PCJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O3ZJqqse2sY9Al729xwcBJ5XWLzQ0+aUy+8Tg7DRPqo=;
 b=en5E2kMh3pmIjArBXAW6Sf4tnsTokWp6QGnwkwFdquAYhGp3CncGYjk2DDXKaera+U
 OGLWJjIMSYXWXZ1gx05k1XmFr+TisqnFCS7QdOS9HHfyGYSoYP3+xPNVqJ4wnq5s3Zc+
 bCruSZLzro5dMa+3DWBBYDjLNmWKTaCR3m6+TZirh5/+0Te/L7WyUaj/XA/qJ2Ro3VKQ
 iVH65c5F+Eq577HL/mfF811cCZHoLqvq0FtBd2iSriUSXnxqJcYxYx6e2S8jTHPC1Xqd
 Ev+3zySHh9OZ3BZopr1o7+tbALYRty2bdgfWQYpp9Lyn2mcZYIvV9N4+8Bx0JaYcUrz1
 Es7A==
X-Gm-Message-State: APjAAAW7YfCYjxRVLTlV/+RDBREcGAdY7AG1J2m9p/FAROvxXbpQGNPu
 yFGPvU4cjZE4uhAcXHVRh7QuLZK3akmCCx875kg=
X-Google-Smtp-Source: APXvYqwbrQ15rbJ8uDWMJvQJbcYuQSJwkedI7IrIyJnWwzjnWoIgRhokDunMIE5VO35kvGUPoFzLz3mSRIYSNrBIscw=
X-Received: by 2002:a19:6e41:: with SMTP id q1mr21768735lfk.20.1563804959171; 
 Mon, 22 Jul 2019 07:15:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190722133651.14729-1-festevam@gmail.com>
 <dde3ab7c7a7058b05251dbe49a826d33a11b4c40.camel@collabora.com>
In-Reply-To: <dde3ab7c7a7058b05251dbe49a826d33a11b4c40.camel@collabora.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 22 Jul 2019 11:15:51 -0300
Message-ID: <CAOMZO5BfrmqZJbrnZVNRdkuy-RcKtOsvA1C_cWtdSGJjRkLp4Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx6qdl-wandboard: Add OV5645 camera support
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_071601_486478_AB397C5B 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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
Cc: Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 11:14 AM Ezequiel Garcia <ezequiel@collabora.com> wrote:

> Ooops, some unrelated imx8 managed to get here :-)

Yes, I noticed this problem and sent a v2.

Regards,

Fabio Estevam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
