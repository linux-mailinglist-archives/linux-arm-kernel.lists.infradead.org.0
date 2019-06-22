Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BED644F43F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 09:59:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/1kVegB1areJ0MrtiIE0j4YUkBPjMxnTiDSNeQHTMqA=; b=DzokjaqI/+/n2k
	XS1faBe1OpuDeAHM1UrdrNpH41Hn0Pv049nk0XqrdgGSZnoWdt2vdugDo8JkHefubOpXhdVTX32mT
	7mCUUZjMlsUuDRZJ9rw2T6goe64oDQq7A8yXhSajf4qMBOV3euCRLa+wPpscSLKmmV+pGl8ql1aNS
	CJnsWV8OdOg2h+h78iiZVYGQIN4jVHCucVb2nMYznv+KQjkd07dTFT9XZqxCSuQ84jNLp7aRK25BS
	o/LfqZfTvb1G88oWkH1XEoMy3AmhVdMVzEhhy2RkDh6LTBIqOaH2/h47kVZ83Azn04dbE56ZyRIUV
	CZPssRs6AgS+WTlCDlOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heawB-00032y-T5; Sat, 22 Jun 2019 07:59:51 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heavz-00031f-Q5
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 07:59:41 +0000
Received: by mail-qt1-x844.google.com with SMTP id p15so9398589qtl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Jun 2019 00:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=ElCthtyVkpp3D7OzaN9Wr+2IruvrGmFjxxEU3huFxdM=;
 b=gnUuPyJvg5zipZFWSvr2EWlhyoeYVQ8S/qBgGbjrC9L8THV4O7CfMaZ9WlWb8NOQmU
 oThroHu+z04OkjXtRzTXFfyCY4fC4Hfi5fydYFovnnUzyfWmqcUMFTfho7KyNHrNdU6Y
 Yrb8Ja1J0pGUbcXtmUKz9nB5csl6nv9hDecoI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=ElCthtyVkpp3D7OzaN9Wr+2IruvrGmFjxxEU3huFxdM=;
 b=EpJAa0t5S0+BH1XiFzY2nJOoOdT3QZwVtjveW88mbpuPY8aaqNtiju3uSRE7T1btZU
 ydXvSCGtbPUGzhmxTS9hqptEyNl8rHj8h4ZHiyLxRClASHNvgq+jSRzQJaXoP8+NK8gK
 q9Y7rogiwgXcDnja6KO2jw/IWIaI6v/jhE84evD8i6QQUaV9jjkwe3gZIG2cNGMmSB4K
 0sEiQgBkHTXxAdkq96m2PR6ub/ahrfW1umuTmcVRAPaMJ6yV0Ys0C82/tUcUU7IYlWlG
 hh733SRRi8FdbmIC3WLlSgMJlTKdgbBoSGFTbmno6jtDV4pfoK7w5ixqaRgyYmR5kK5a
 H63w==
X-Gm-Message-State: APjAAAUtgBNkbpryJaEfG4hIQF8Av8mIRRm+kUeESvSH41/KpOcDIk/7
 MqHl+8qIzHs/Z/LkQneBUwznmarrv5HesVIL2wRCFgOm
X-Google-Smtp-Source: APXvYqx/IwkmIiHtRDF2BSfmgwSk1awBdS8Qs9gCV6RU/5T4Ce3sfCirZpzBCSUzB+W61jJcGQdkM1SqKErfGs8fKzM=
X-Received: by 2002:ac8:264a:: with SMTP id v10mr88767490qtv.255.1561190378628; 
 Sat, 22 Jun 2019 00:59:38 -0700 (PDT)
MIME-Version: 1.0
From: Joel Stanley <joel@jms.id.au>
Date: Sat, 22 Jun 2019 07:59:26 +0000
Message-ID: <CACPK8Xdpd3Q7dexOEZqt9rP0KJz1XeRwXe6A1k1azm7eDhRm=g@mail.gmail.com>
Subject: [GIT PULL] ARM: aspeed: soc changes for 5.3
To: arm <arm@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_005939_841615_60225362 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Jeffery <andrew@aj.id.au>, linux-aspeed@lists.ozlabs.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM maintainers,

Here is a small soc change and a fix for that same change. This is the
first time I've had an aspeed soc pull request, so here we go.

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git \
    tags/aspeed-5.3-soc

for you to fetch changes up to c8a3b9b50d8331528fc8d03aadd1fec3d60362d7:

  soc: aspeed: lpc-ctrl: Fix probe error handling (2019-06-22 16:56:35 +0930)

----------------------------------------------------------------
ASPEED SoC updates for 5.3

LPC control driver changes and a fix.

----------------------------------------------------------------
Joel Stanley (1):
      soc: aspeed: lpc-ctrl: Fix probe error handling

Vijay Khemka (1):
      soc: aspeed: lpc-ctrl: make parameter optional

 drivers/soc/aspeed/aspeed-lpc-ctrl.c | 61 ++++++++++++++++++++++--------------
 1 file changed, 38 insertions(+), 23 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
