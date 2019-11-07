Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 989B6F2D4B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 12:18:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z8wmjOW6lpRG2p6jWt5QnoHwExKkoPP1+QCbpXpXeWo=; b=CVEQqAcqlLTc70
	qEQC4+KccBc+oBZY0RG99JCX9uOkg1v3jtwVZJzYZ4YP2r2rJsF7+TOPY7vOLiZONn8Vh3SFVTuwV
	KtsmKluzt225WYvKhOnXACpoa0Isnx+KLPlmh0sy+oAVrUHLnayK3lGnDk39pAcQeROe/rAOqNarn
	q+WQV9fCN+YjflKb/QNOGyhzbRF6iu3uYvcq4KzpHKbnkQJp1XXQN2qvbtU9apsk99+7IuiRMMsXb
	2e+73k62KS/D/wA0WR87hogUVMESfQJne6WEsVRnHNY47ytSkknZTUw2Vl80u1z+Xp8wUchuQiLWU
	m8EF5psd5LtIZIYz/xKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSfoB-0002Bs-7O; Thu, 07 Nov 2019 11:18:35 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSfo3-0002As-LF
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 11:18:28 +0000
Received: by mail-qk1-x741.google.com with SMTP id e187so1610201qkf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 03:18:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=cHp2qtZCmJzlBoq/Xk9LsI9551B1bvQtpCRnAo5FMd0=;
 b=O1wJTP+Xz/KnGDPT+YLVktyZOIFCCfum9Jhex6rkfO7ebfRcTJjXTt7lQE+xS96HY8
 syHjUp5wUWUbw3SlIDrymLfNTyssvx280v36/rXvcfmxuXs1gUoQQiyAnIlxypoy9BLe
 bropARI+KOLli1lDJv3BiJBkEyr7bxYX7Tt3c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=cHp2qtZCmJzlBoq/Xk9LsI9551B1bvQtpCRnAo5FMd0=;
 b=XHFXuOZwTVZxpMA0MLBI9Lgp+BZiPQqr+KOHCMGfDppdXjKagJLh0cnLkXlFr5RYau
 z+jaGM3BY/hyD6xGc+nzsSSTF0whj7pwk1rq5R30UYc++k/k2NRrarzYibuKLWK5vHbX
 QUn06hxz7t7kDMgLkwSxjWIUtUe+UmKJ6QMQV+XqB1Z9UDHFaA6JGG4gskdfwX81in+Y
 ZsIioawsGpzcjrJcM3Z0lviugqFbEKqlJ5Epqrjz7v5YwGjvvxl3KWl5JV0BTzFWccZ+
 8uEQAgwhHy9+S+RljYuRhNcc3K+6MLVD/Q/eGhlBv0gtghbJi1eQYTijofjZ9w0z/tGP
 GhlA==
X-Gm-Message-State: APjAAAWFyiXGyUNwtiwuaACftzf7xO+AF8y5mEIF8y0cD2vhkGq3V7Ao
 9jQ1ljVbwfkaVxzc9IJqwI1eVBapPcZbUPjSCgk=
X-Google-Smtp-Source: APXvYqxK9ze2gG5qRJC4Skh438B2WONVorpHWqG1x35JtcctN5cgUOYyPqSJ4sY0dW2SpjoR4Jwq+7U4zR07xEE5vf0=
X-Received: by 2002:a05:620a:208d:: with SMTP id
 e13mr2239020qka.208.1573125502255; 
 Thu, 07 Nov 2019 03:18:22 -0800 (PST)
MIME-Version: 1.0
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 7 Nov 2019 11:18:10 +0000
Message-ID: <CACPK8Xe8XiJ+oEp3_AXO5Mox-mXWVrOJKQLJMKJxg1WdYCTzMw@mail.gmail.com>
Subject: [GIT PULL] ARM: aspeed: devicetree changes for 5.5
To: arm <arm@kernel.org>, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_031827_738222_D0FA7FF8 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello ARM maintainers,

Here's the ASPEED dts tree for 5.5.

The following changes since commit 3eca037f2dfce07a31da0a837ac35d6d846614b0:

  ARM: dts: aspeed-g6: Add timer description (2019-11-07 21:23:56 +1030)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git \
    tags/aspeed-5.5-devicetree

for you to fetch changes up to 3eca037f2dfce07a31da0a837ac35d6d846614b0:

  ARM: dts: aspeed-g6: Add timer description (2019-11-07 21:23:56 +1030)

----------------------------------------------------------------
ASPEED device tree updates for 5.5

 - Lots of work on the AST2600 boards as bringup continues. There's the
 eval board, and two IBM boards called Tacoma and Rainier

 - A new flash layout for OpenBMC systems with larger flashes

 - Better support for the MAC clocking when talking to a NCSI device,
 making Linux less reliant on u-boot having done the correct thing

 - LED fixes for vesin and fp5280g2

 - SGPIO support

 - Facebook network BMC cleanup with the common hardware moved to a
 shared dtsi

----------------------------------------------------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
