Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8DF1BDF7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 21:30:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A9yJoVDSebaywXU8ZE6+ggZIB3JW1l3k6tau0NKc2Pw=; b=tQUoAMcZvc7rNd
	NcId29xe80C/CeYyjSIiKm8i7ac/XFDgS9Qth/30TQ+IBAxdkf28Dz5ztcdKLfJeGZf57Vho748X+
	jvK0c8Y31Vung9nkjouMDQ8AaGHOwr45H84nDLlbz1SZq9MKNboOop4FGAooVGCQ/uLu1Ct9bZqey
	aLoFH4mM/Hf143lTIVPStN7fu0oi08/tF50wtUvWqnvra79jMC+A+01y2rZbgoDCe1TqcadXSZYcM
	a8/Svdm60+XBODLYizh/Odzf2AViP3Gna4oXiQVYXrexl3d92glQDUdTjz/+BwkV5gWyzZiBkr/hX
	M2qMmorWv0FdPHHqBXxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQGec-0008I4-TV; Mon, 13 May 2019 19:30:30 +0000
Received: from smtp06.smtpout.orange.fr ([80.12.242.128]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQGeV-0008HT-MD
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 19:30:25 +0000
Received: from belgarion ([90.76.40.119]) by mwinf5d29 with ME
 id BvWG2000H2aFDoA03vWGuq; Mon, 13 May 2019 21:30:19 +0200
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Mon, 13 May 2019 21:30:19 +0200
X-ME-IP: 90.76.40.119
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Daniel Mack <daniel@zonque.org>
Subject: Re: [PATCH] ARM: dts: pxa300-raumfeld-speaker-one: Add channel output
 mapping for STA320
References: <20190509160439.18827-1-daniel@zonque.org>
X-URL: http://belgarath.falguerolles.org/
Date: Mon, 13 May 2019 21:30:16 +0200
In-Reply-To: <20190509160439.18827-1-daniel@zonque.org> (Daniel Mack's message
 of "Thu, 9 May 2019 18:04:39 +0200")
Message-ID: <87k1eukv93.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_123024_006411_E31D30AA 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.128 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robert.jarzmik[at]free.fr)
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
Cc: linux-arm-kernel@lists.infradead.org, haojian.zhuang@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Daniel Mack <daniel@zonque.org> writes:

> These settings are needed to make the hardware operable.
>
> Signed-off-by: Daniel Mack <daniel@zonque.org>
Queued to pxa/dt (change "Add" to "add" in the subject line).

Cheers.

--
Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
