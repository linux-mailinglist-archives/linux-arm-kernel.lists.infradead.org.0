Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FAD2FD3B5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 05:36:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wp2QTKbcQ/4UIJRGcWq2+8q+dlqLmX9ABc+tl8rVDE0=; b=k/q0OczVnUj8BY
	rqIeBAGgtRRsKB8eSbGeMrvxcl0ag5z+3pEi4Zuq3Esy8rLxHdPmtCKozFyjkoyRjih9xibVI9Zhc
	XckiUkwfV6BG5IKEVzvk7XPPxD74wE5Tn6iA7OZTn+TXr/CtFSL3sH0FyVlce5peeAWo83ePx46ga
	aRL/408kUp7BDO2tcbCabbCGxXeqwYdmRbM0ub0lTlN4/2EkvRbOBXD5bL0g8q/+02lHNoWyHiwhA
	i3aWJpCFHOU66tCva5KABpZAEL3XoYDfi28LeJrbcGvD/1iK0WM8h6I07rOx9GlSTvHAFjDI6rykZ
	2tt6WxGczZNp4nnECO6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVTLT-0001RL-Py; Fri, 15 Nov 2019 04:36:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVTLL-0001Qp-Pz
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 04:36:25 +0000
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 305ED20730
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 04:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573792582;
 bh=MPH8c5t2q8tDKDcSoX1E0hyx3wDVfXgAkaiLLTOUl9c=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZjZudCcCLdf/g3NWLZHBvRh82XdZnMk7eJ22sQiOlw7tmajsXZKqdyDAe98emgwvY
 6nwvYvjTKteew+ll87yWHPn1c4j5ZnjfE9a9TggXJ8gjIhD6YjphSF3VjD6dWrKRdo
 PqU3R7d1u6K3zfYsHYrO7wKOKe9dIj3mDw5EZhWs=
Received: by mail-qt1-f169.google.com with SMTP id y39so9553205qty.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 20:36:22 -0800 (PST)
X-Gm-Message-State: APjAAAVkC7lfcTs279Na3SkKPubIL+7S79DOu2xyGs2rI6Sdh16uq7AC
 a53hjcILQNlDh27J21Mtv5e+qdmiHsgIrCGVWuU=
X-Google-Smtp-Source: APXvYqyEVfUJcKNuJBdUvGkZuJhPdcKZNhu5NkZlypIG9JAM/A9WKKwqK8Q92zF/Y3Kh5IOc/QoPwWQgkR3S7XljIAA=
X-Received: by 2002:ac8:1858:: with SMTP id n24mr11375005qtk.334.1573792581301; 
 Thu, 14 Nov 2019 20:36:21 -0800 (PST)
MIME-Version: 1.0
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-47-linux@rasmusvillemoes.dk>
In-Reply-To: <20191108130123.6839-47-linux@rasmusvillemoes.dk>
From: Timur Tabi <timur@kernel.org>
Date: Thu, 14 Nov 2019 22:35:43 -0600
X-Gmail-Original-Message-ID: <CAOZdJXUX2cZfaQTkBdNrwD=jT2399rZzRFtDj6vNa==9Bmkh5A@mail.gmail.com>
Message-ID: <CAOZdJXUX2cZfaQTkBdNrwD=jT2399rZzRFtDj6vNa==9Bmkh5A@mail.gmail.com>
Subject: Re: [PATCH v4 46/47] net: ethernet: freescale: make UCC_GETH
 explicitly depend on PPC32
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_203623_865621_CB2A7DCC 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, netdev <netdev@vger.kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 7:04 AM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:
>
> Currently, QUICC_ENGINE depends on PPC32, so this in itself does not
> change anything. In order to allow removing the PPC32 dependency from
> QUICC_ENGINE and avoid allmodconfig build failures, add this explicit
> dependency.

Can you add an explanation why we don't want ucc_geth on non-PowerPC platforms?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
