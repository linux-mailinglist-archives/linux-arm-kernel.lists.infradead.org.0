Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5BB1CA56C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 09:49:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kqrGWbLalZeMUYec1yeI0Jl4SmAqb0G0sMMDWtn/jCI=; b=MzWznDCPjmL0vI
	pI+D6qSDGZG8yVFvFhVlkLW+h0/TsQth4aSRCd6wA93lMPNI1f9+MTeoeGhHnpxnEKkzdAX/V+5aU
	4oThcbGkX7H0AisktncUfPSm/fSEYOrjlYAZsJzbKOp9f0oszQ4M7VclL4Ra+6K5y1LyzdTqZg7SG
	6QPcSRJPkt3jYPiwzuTAl/EHr+5FBNN6DTC4dmGLfaoEwuL/HippybgKk/COuzroDgptKFUkiAzP4
	ILa6i/FzDKgzDjGWtr/reOAFHCMZXh0FGzG16OuA0g8P90mZ2lBwtK9cWSd2/HREteGJKbkQ7oEMn
	rDmm7HALgEwZs8ay79SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWxlT-0007DD-0c; Fri, 08 May 2020 07:49:47 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWxlL-0007Cq-N9
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 07:49:41 +0000
Received: by mail-ej1-x643.google.com with SMTP id n17so581862ejh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 00:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=2ojn62szLR5yAed7Cpk2YDlU98vpC3/PF24hZzNfukc=;
 b=PxOeyEL/WMCKE3MykeDNUl697V1NpTyQ+qyuJgQxQ8veMFpQxgpdy0q0uitmgCQku3
 AnlRbwLIqljlfpjrPUWg2Tch4lPIPqQrWF1Dnoo0vadM5KzPZH53D9+GueDnlWl+v2j5
 IcKBukPfZVftBM8Wyrfw3H54TI86QA0J6V/4Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=2ojn62szLR5yAed7Cpk2YDlU98vpC3/PF24hZzNfukc=;
 b=FqfhggZwKldpsaLe3s75xheRhlMLyCKoMcWwjiqgQRsZ3rTgQd7ysYoeVhRCeLP0Wm
 bucNcmbQHm57xH+IX4ZZKUetJm5sUIRMX9HNbF7521vSrRdT2gI1dj1aM/vMdQCFWWy8
 V3Ty5ZlJ3LzPHA7uxDhOpguC5vgN/4m9TpxJKvJXb6tOWy/K1lgbh37hnIBlKZJIrzUR
 mXs3fvpO2Yl+dDxtgV6ztwEXIAngFH2/Q5PA/mZbFU5x1PGvlTdycXKOij2aWyRhUUYv
 5efmHmMEQxgQH5R/17obc5QpR0HrDA4hyzsppn0SbRJVMppR0+73tQi2m8IeLh+V5NOK
 Fg4g==
X-Gm-Message-State: AGi0PuaaA9I60K4V1M5jIOJ7OaJseLFBP94qi5dgPxNPcwqL/6fa7Gkn
 zdAhpUF3BdMEBYXcGDQc8B4sPHofBsxGM6S6BtX/7FjH
X-Google-Smtp-Source: APiQypJt1hvsyUFF0tzsQJYCtHjMMGdAT3QaHxDwrq0/Tkfdj2zjCuSUV+TqJSyReKLbgKVtk0+DWLYID9k0DtsoTxw=
X-Received: by 2002:a17:906:4c8e:: with SMTP id
 q14mr881699eju.208.1588924177282; 
 Fri, 08 May 2020 00:49:37 -0700 (PDT)
MIME-Version: 1.0
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 8 May 2020 07:49:25 +0000
Message-ID: <CACPK8Xd-=XFREvvS-mK_ECyn14y0GPAMyy5BpEEUYfaw4jAgsw@mail.gmail.com>
Subject: ARM: aspeed: devicetree changes for 5.8
To: arm <arm@kernel.org>, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_004939_946816_E8D67B63 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrew Jeffery <andrew@aj.id.au>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello ARM Maintainers,

Thanks to covid chaos there was no aspeed pull request for 5.7. We're
back for 5.8 though!

There's a patch in here that causes some build time warnings from the
device tree compiler. I've sent a patch for that to the dtc folk:

https://lore.kernel.org/lkml/20200508063904.60162-1-joel@jms.id.au/

The following changes since commit fa4c8ec6feaa3237f5d44cb8c6d0aa0dff6e1bcc:

  ARM: dts: aspeed: Change KCS nodes to v2 binding (2020-05-05 16:37:17 +0930)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git
tags/aspeed-5.8-devicetree

for you to fetch changes up to fa4c8ec6feaa3237f5d44cb8c6d0aa0dff6e1bcc:

  ARM: dts: aspeed: Change KCS nodes to v2 binding (2020-05-05 16:37:17 +0930)

----------------------------------------------------------------
ASPEED device tree updates for 5.8

New machines:

 - YADRO's ast2500 OpenPower P9 Nicole BMC
 - Facebook's ast2500 x86 Yosemite V2 BMC

The AST2600 machines Rainier and Tacoma were fleshed out.

Machines have started describing the GPIO names as userspace attempts
to use the GPIO chardev API.

----------------------------------------------------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
