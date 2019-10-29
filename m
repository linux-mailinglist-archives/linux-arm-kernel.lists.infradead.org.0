Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8478E896F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 14:27:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4wW05IhKVY95rw185Oh+1tGz0jfkV11ukeR2FoTi0A=; b=Jh98H+Y0FQgCjT
	pWCVGIMK3T7opG85lYxRK0vweTf5XmsN7t6L5Vi6ymQmsLMJIiXJMCqOG/VXBP4+N8j2bDejsAiXp
	r35AgyXU9+NU23p0gfSvMjl/TdMw65wgT7A/5RHpQ87adEoJcIQu6D3KKMtEgXoAwM7CcJIkU8Mt+
	lqhnTvfNpL3YYh9nFeJklfiHbB2dT6pRAYlNLVFD94KmMFilN53gDSdbV1Ecg7N5VsXMWwFTL+Jio
	VyE0KY29iW4Qa2ITIInHBm4PSqgy1T1QIekWDHCB9D3Ga1TyG96PRWckRK0niSn93IEtksW2Zr5QD
	yyv9m+vEH0s2Y1K5q8fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPRWz-0001VK-Ry; Tue, 29 Oct 2019 13:27:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPRWo-0001UX-Mu
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 13:27:19 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iPRWk-0005lm-Ad; Tue, 29 Oct 2019 14:27:14 +0100
Message-ID: <94cf60ad24d1f544f2b508c13642ce7fcff0956a.camel@pengutronix.de>
Subject: Re: Reset controller fixes for v5.5
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Olof Johansson <olof@lixom.net>
Date: Tue, 29 Oct 2019 14:27:13 +0100
In-Reply-To: <20191028155620.j72vxqnp6sqdl5j3@localhost>
References: <cbc2af1aece3762553219ba6b5222237dacaea9d.camel@pengutronix.de>
 <20191028155620.j72vxqnp6sqdl5j3@localhost>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_062718_743736_00F29CFA 
X-CRM114-Status: UNSURE (   6.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: arm@kernel.org, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-10-28 at 08:56 -0700, Olof Johansson wrote:
[...]
> Please send these to soc@kernel.org from here on out, so they get captured in
> our patchwork (I bounced this time).

Will do,

> Also, I don't see your GPG key anywhere. Please get it signed by some fellow
> developers and upload it to the kernel.org repo (public keyservers are no
> longer usable, unfortunately). See:
> 
> https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/tree/README.rst

and done, thank you.

regards
Philipp


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
