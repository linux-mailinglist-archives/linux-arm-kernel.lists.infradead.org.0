Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B825B6453
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 15:25:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ksu5FBusVtEwNWCCsHgUzxUgUwh5JnpadxphJKzqxVU=; b=FYCje8a52ZFexm
	HNQoKPhw+uAnTLg9Uq3Ny2JMXU8uHgcvYur5iR0duRXd1rw9xMAKgSgiawOfoynjWaKKor6D2s0gL
	XDBVNF52hQJvyPK7G0/BhvPGDfwL57vlecxIa3w9h+xr8smyQn9rzCj0xYSSN4M9zkGKOmiRUCSDI
	K+IhoNjqKUd7SnL3L7eWbWcq1nS/UjQdh3QfTw0+dxaSxw/ttCYQHxqDBZpw7MSOv6g5PPt1nlxpP
	eb4XNOxWAgcMr7ja5TfNpFerhC2oEe8Tk5YWPQvLfPo6LhS93ETF8CgameXIdYDvaHzG7YpvCAyUu
	zPBXiV2V7pxUDTbUq4Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZx2-000766-Id; Wed, 18 Sep 2019 13:24:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZwp-000758-In
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 13:24:44 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 61BD820856;
 Wed, 18 Sep 2019 13:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568813081;
 bh=kmtuLqsXp25Pzyx5e07dlFP/VBX5rncUIclNI68hxAk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ov/fbA4mF3qn6h7SEVhwWYSvG/tu4zuxLjrvBuNr+igYmnor2NU0q1hcTwB+GKlTs
 2alpTXwRJM8rAyIKtIlAYEYGoBH06HIEHs7HtYw6xPYAcA9mTgildeCv3oizS3eRGK
 azcDGx6NqICvxZ6ljr8x5QCJndtOhRDWyOmd7UZQ=
Date: Wed, 18 Sep 2019 15:24:38 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Pragnesh Patel <pragnesh.patel@sifive.com>
Subject: Re: [PATCH] media: dt-bindings: Fix building error for
 dt_binding_check
Message-ID: <20190918132438.yagtnqghomaksrvd@gilmour>
References: <1568808060-17516-1-git-send-email-pragnesh.patel@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568808060-17516-1-git-send-email-pragnesh.patel@sifive.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_062443_638919_4D925C86 
X-CRM114-Status: UNSURE (   8.59  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 05:31:00PM +0530, Pragnesh Patel wrote:
> $id doesn't match the actual filename, so update the $id
> 
> Signed-off-by: Pragnesh Patel <pragnesh.patel@sifive.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
