Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8283E1B9FCD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 11:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hnVs6ss7k53KjRtuDTuBgy39big028PZTqs8DF+Q/Lo=; b=TAmnfnzpp/FKQC
	lZiBdbRn1ECiFw83ADNIYGDJJPfL3+hW4ZMXKRv73TnBxkibM4SLDuJtaJMAreiuGwVlQ5cKbinDb
	2fgHgqwvjB+FbLVtbg0QfMN/eKPcuBkMhWFv1T1p39gieI8aMr9Bnk+UA5JSALFTrQBOluZUgQeDX
	mNzuLPKxSlDb9YzwGSl/+RH1Sanjl0QZ13jWG+5QS8wjuNz4PIDeBeu8al8cYaLsZXf8U1534J5jk
	zys6tbTzQUcL2cv7l0iML7YPVVP6oRx5PwGesb2fQb4+xiHJRZcj/KRThbkOgDz5Lof98kOVjoL+y
	AHJrpt9R6ehdUwSSCLsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSzzP-0001K1-FO; Mon, 27 Apr 2020 09:23:47 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSzzE-0001Ik-Dc
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 09:23:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1587979412;
 s=strato-dkim-0002; d=chronox.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=8AIbUURSuhkjyDjFCzUOEIbS/Bgw02Kr8qCPJU3dtH8=;
 b=Znw7K7NyQ7agkZOEA7z6HHrwQ+1hfOMyEENahXgAe65ujFWe5vPmbS81r1UBHkTl4y
 oy+ysRqOYZgJj8UY7vNsyG94GFXuvl3+FmFJluZoHunwyuX2vUNbcH4KJR6U0lPf2Qrd
 OoDwm2QViuNA+lZ5wgf/08D4HsN8ug+Pj42sA2YNifdJbO4FgBYeV/txAl/AS2UZZ7RE
 BkrWzHVX/drVDiFQsLssc04Pfsi+giYlhPUZf0CLp3u7tg/EP5+CkjhnU0+lW2awZj9I
 TKsmk7bkFkq3IsApS62PMo4q+X0+VBe/HyVrU84ADYTQkr8IYLXlth4liGB4mLb6APXF
 iSow==
X-RZG-AUTH: ":P2ERcEykfu11Y98lp/T7+hdri+uKZK8TKWEqNyiHySGSa9k9xmwdNnzGHXPaL/ScjTZA"
X-RZG-CLASS-ID: mo00
Received: from tauon.chronox.de by smtp.strato.de (RZmta 46.6.2 DYNA|AUTH)
 with ESMTPSA id u08bf3w3R9NFS1y
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Mon, 27 Apr 2020 11:23:15 +0200 (CEST)
From: Stephan Mueller <smueller@chronox.de>
To: LABBE Corentin <clabbe@baylibre.com>
Subject: Re: [PATCH v2 13/14] crypto: sun8i-ce: Add support for the PRNG
Date: Mon, 27 Apr 2020 11:23:15 +0200
Message-ID: <5634597.9v007L4FOH@tauon.chronox.de>
In-Reply-To: <20200427084137.GA8787@Red>
References: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
 <2397344.pSczEbEFGg@tauon.chronox.de> <20200427084137.GA8787@Red>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_022337_049080_FB93A335 
X-CRM114-Status: UNSURE (   6.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5301:0:0:3 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 27. April 2020, 10:41:37 CEST schrieb LABBE Corentin:

Hi Corentin,

> > Shouldn't they all be kzfree?
> 
> Yes
> Probably it miss also a memzero_explicit, I think that seeds/data are
> sensitive

kzfree uses memset_secure since very recently. So, kzfree should be all you 
need.


Ciao
Stephan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
