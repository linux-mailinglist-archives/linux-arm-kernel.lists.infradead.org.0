Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAED9C451
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 16:11:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4kyRzxEX3NZwEHs2jg8joMNUG8n0Tiw8CKKj1Ze1kpY=; b=MyIlvKtJNpL5Mi
	GzzOG4uTczpagxUv4pD03pO7OOtVtJsYmLFALfFyj57aNExg0HPAwflCWzjZi/F2daeYnLqM25hqt
	lx9lvtiDAuUZIbVVuuRLA83D8o91DpYTvpNQdh4xP0AD9jdCEF1pzXkYux9zfXmlKY55vnNSlLvv8
	TrXTL97C9LjTroY8lp5fgT0+63wxXQhDjEOoIs3BBLOq8QMfpAi1nCU/G+VeWx555ifqsPf5rv73E
	ofgvSR9EwW2FXLMCwEhifzi86e2w8JOcZxyUeBtuh5TXdTMf87CpXiTwzqNZw6Fa31dqButr/niCR
	MswD5wyabJotftyIOkQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1tEa-0004ou-3G; Sun, 25 Aug 2019 14:11:08 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1tEJ-0004nl-B1
 for linux-arm-kernel@lists.infradead.org; Sun, 25 Aug 2019 14:10:54 +0000
Received: by mail-qk1-x744.google.com with SMTP id 125so12135226qkl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 25 Aug 2019 07:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=SyQPCPo5RRaBB/tZw0QQxTZ/KuTgWlGJeIl51xGbja0=;
 b=Nt1+7YFtAthX8FC4XmZF/HX+uvgq7g/fXtqFVHftkXDiGjLhziMTW4HXi9MPPbnXtp
 lxyuacPoVopJetmPKlIAF/HouWewlmdimZvf1kYCxgSIepib6SaDSEPeLP3yx01zIYRW
 XVZIQzCmj1GPy5ImdiRak222lw5pEeOV5KDrc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=SyQPCPo5RRaBB/tZw0QQxTZ/KuTgWlGJeIl51xGbja0=;
 b=LFneMlb6w5dRE46oQoXJs5CeM3iX3FN/uAU7rG7P0pyrWvb8kuyab0R3tGd9p5fsBc
 Hi5w8AdiIrwj+DufG+BhSAY4C0MTeYWOG3ucmugyWmg3yGNb+ibmTuowZqNJII2mP+Yd
 5nlu6am4WesCrrJiUBUsCyz3MZ8g55SngPeM3SyZizFXZHnZIHhCV0QonVQYdMIO79K8
 ropno67TCEjnIx2AfDlg5rrZzO4u3F/UN6omcB4zjW7o1A3vTMxgwt+FxDedaeUHDpkY
 qDrjm0kOs22XXTC2nvpFMKYE7d17/emgEBYGASsqmrEaY6Kt7ds9e2AzlpzUYvFGPz6I
 0chg==
X-Gm-Message-State: APjAAAUf+tKZEf1l/RoDh77gP3vIIT62CAQ/weYH5XE9WFOup/Xui+PF
 Rva8wTpaEqQ9/Ti0vLuxQ1v8LCUs6PIPw5XnRjc=
X-Google-Smtp-Source: APXvYqzCShrBbnLD0I8IGPZMUfLXTDOJd2ECnf5hkfsCppiBA2GH4tFCp/bgmUFf3qmBfIXjG2dTD5ovD8WONQHjm44=
X-Received: by 2002:a05:620a:70f:: with SMTP id
 15mr12442213qkc.171.1566742250111; 
 Sun, 25 Aug 2019 07:10:50 -0700 (PDT)
MIME-Version: 1.0
From: Joel Stanley <joel@jms.id.au>
Date: Sun, 25 Aug 2019 14:10:39 +0000
Message-ID: <CACPK8XdyWzghA0QPDzA_MK5FYwhT5afqDJHNdhc8mfD2uk8MfQ@mail.gmail.com>
Subject: [GIT PULL] ARM: aspeed: defconfig changes for 5.4
To: arm <arm@kernel.org>, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_071051_374969_3AC42DDB 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
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
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello ARM Maintainers,

Some bits and pieces for the defconfigs. The multi_v7 one applies to
linux-next with a bit of fuzz, but let us know if you run in to any
issues. I'll be away for this week, but Andrew will be on hand to help
out.

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git \
   tags/aspeed-5.4-defconfig

for you to fetch changes up to 4cdabee7d6d2e439fea726a101e448c4ca6837f4:

  ARM: configs: aspeed_g5: Enable AST2600 (2019-08-25 23:22:54 +0930)

----------------------------------------------------------------
ASPEED defconfig updates for 5.4

 - Enable the new AST2600 in multi_v7 and the aspeed_g5 configs.

 - Regenerate defconfigs to drop old options

 - Clean up network options

----------------------------------------------------------------
Joel Stanley (3):
      ARM: configs: aspeed: Refresh defconfigs
      ARM: configs: multi_v7: Add ASPEED G6
      ARM: configs: aspeed_g5: Enable AST2600

William A. Kennington III (1):
      ARM: configs: aspeed: Enable commonly used network functionality

 arch/arm/configs/aspeed_g4_defconfig | 50 +++++++++++---------------
 arch/arm/configs/aspeed_g5_defconfig | 68 ++++++++++++++++++++----------------
 arch/arm/configs/multi_v7_defconfig  | 19 ++++++++++
 3 files changed, 78 insertions(+), 59 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
