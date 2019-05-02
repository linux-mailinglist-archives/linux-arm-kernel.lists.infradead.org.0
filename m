Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 630CB1182F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 13:32:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DjuO2hgbSwU0q+NPSxFoCLlAvtR6PnyzsD1HrMysLaM=; b=tw5vP+gloXTH23
	sAePQK9ReyfsZf/bjMmWqru/pT68WBPFoLckUkRpUzCWlBREtLGHsRJDfZB90jUlhzQ3h74sIIyqQ
	j1RIGJ0L892I9Vmsl9phLWWq3ZEVjWTOd89Pw1w7YRqAKo02wJwZeDFG23nzQ0Y12hyKKTjaXM6Qz
	CRyFkOc7T3NCfKF93V3BEX11yxKXtwY7O4YQs4eXCmi6g2fEXZtVKD03f+PcqwzJ0dIyoqUIJ92ux
	ONBblRmfaBVL1rR17EUegSJii30sry77Oj44ycE/CKQykxBHPRKcFPjLkG4+MDUCLAO75V+7L20T0
	Wdrp5sHgJ20x6I8lWX2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM9wm-0003Sn-Vw; Thu, 02 May 2019 11:32:17 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM9wY-0003KL-1F
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 11:32:08 +0000
Received: by mail-lj1-x235.google.com with SMTP id q10so1843664ljc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 04:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qVFah4rxlea4NvGzxcSgojiQwwje8YG+C0Gi7vR3PU4=;
 b=qvYK+d96O9hSEJNMT5PrNc2noLhObQhQyz5iCmSKFY48dHUvsqA8cRA5HUZO/y+Ung
 /i84StLm1NoVdEcepXGbhS7zs6OMXY2mNijinSL4FNREoIFDpsTnMEi1qT5I2tYUxZ3U
 vfgriEJnqbsorahCFZcmhX6CtW1v2qKnZ1edMnts35/myWqcHB6neifD+zdhyOiY+TMU
 W6FykYjKcc3Mj1LC0bu84pxdltf7C1vDaB5ddQdvej3c++p+1GigD5dPc6a9hcL6lR+J
 CsCozwSSQEy7fxV9T2iZa+5E9mWchOr5xGNO3GLvaRQR9sX1paxcYkdKg+kmBnyLUM5s
 vtLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qVFah4rxlea4NvGzxcSgojiQwwje8YG+C0Gi7vR3PU4=;
 b=RmL79c6bn9YzfcYWoDfm8fp65NXlbTDIqhe2UsH57WUnzUuuyEIBZ8/a6IX22BsMAE
 KSb8Fgf7STZOzReiApuxjTXQ61KQ2x6pKKN38KhmWhmExuKbY2Busb14nnGXABDDFoIa
 3k7L4hahcKGnqFKdrj8Fho41NZs+qhU14z6umW98JIN3IWdh2Dmzv0SPElV+lxOw4zLD
 KqH2n2Ak6bPbDT2Q+U0JlzSO+dJ1A4qsXsbmDKDbDmDXyeVeo7Bw/kK51h75MQCrstAY
 y4PJ8vVoN7xFE1ElfqvKQV4vxn+5U/rW9LDsd/oxx9JWPTfhYbcWQMvaao8s0gSmxV7G
 YDcw==
X-Gm-Message-State: APjAAAV/JOnHKcb/Aadz2I32DVmKMhLLRdIAy+1s7B1kZ+mAUrmSowVS
 deCxOz7VXLjMPvFyZNwee3LslGHKKFl+PL3YUJg=
X-Google-Smtp-Source: APXvYqxVtYv6Z9kKqgxvj7kWOQzQyAL1jeXr8qe2xzCHj6I4vWt17/m4tdEEzeSCQ/by0c6QzB4D+SIsxSbC9lhs7lc=
X-Received: by 2002:a2e:7318:: with SMTP id o24mr1502267ljc.138.1556796719898; 
 Thu, 02 May 2019 04:31:59 -0700 (PDT)
MIME-Version: 1.0
References: <kcis.DC82F67FDB724ECD9A98DE07DACAC907@DHPLMX01>
In-Reply-To: <kcis.DC82F67FDB724ECD9A98DE07DACAC907@DHPLMX01>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 2 May 2019 08:31:54 -0300
Message-ID: <CAOMZO5DmeaxZTvOLeJrvb8_YbzTuYQVUZhLU1z2s-tm98gPf1A@mail.gmail.com>
Subject: Re: cpu power up timing changes causes UART rx character loss on
 imx6ull
To: Christoph Niedermaier <cniedermaier@dh-electronics.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_043202_584405_17091AE6 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:235 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Anson Huang <anson.huang@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

On Thu, May 2, 2019 at 6:40 AM Christoph Niedermaier
<cniedermaier@dh-electronics.com> wrote:
>
> I have tested the patch with kernel version 5.1-rc7 and I could not reproduce the loss of characters any more.

Excellent. I have just sent a formal patch.

> Couldn't it perhaps be better to name the define SW2ISO_IMX6SX instead of SW2ISO_IMX6X?

Yes, I have changed it in the forma patch. Please reply with your
Tested-by when you have a chance.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
