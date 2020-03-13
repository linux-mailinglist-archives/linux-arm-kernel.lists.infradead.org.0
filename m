Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AF1184701
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 13:37:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AY1ZzPl190TMKzSLl1MN+Avsh87aKgxwIWz6urjSzOg=; b=UeT63jMQygxZT2
	0fL3l0m10rvKkDlbXFEbPD/FLeM84Wlx1CSCJbCznyc1WijwTUWKs9LREjdj06UY7eGCbspKzEaBW
	JeQztOHFxPfTySsLueeh5eVGyO77yvPW2q9g0vLCqruQk3iEXwgfWfsBMqGGqBp9g8FfhV3ZdxMr9
	QXnoqXSI9tNwJtxy6DCHK0jRlhGLJty6WA1LxpB2vpim4J5q3DKy0aVR/6N51ruoJvQN8/McqscEp
	r17etlB7KLsVKTS497WTwtQdTVFxt0EbY3IJiYtt/bMlAAWR1tNO2kJEgp4rlqzQhaS/Wcjch/aXY
	JhMDYFGHHP6aoBK8M9rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCjZY-0000l6-DC; Fri, 13 Mar 2020 12:37:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCjZQ-0000kc-P8
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 12:37:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BAD9030E;
 Fri, 13 Mar 2020 05:37:43 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 16F843F534; Fri, 13 Mar 2020 05:37:42 -0700 (PDT)
Date: Fri, 13 Mar 2020 12:37:41 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vadym Kochan <vadym.kochan@plvision.eu>
Subject: Re: [PATCH] arm64: Kconfig: allow to change FORCE_MAX_ZONEORDER via
 custom config
Message-ID: <20200313123741.GC3857972@arrakis.emea.arm.com>
References: <20200312235037.26072-1-vadym.kochan@plvision.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312235037.26072-1-vadym.kochan@plvision.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_053744_861436_0A410E46 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 01:50:37AM +0200, Vadym Kochan wrote:
> Add missing config option name which allows to change it via custom
> config.

Why? What is your use-case?

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
