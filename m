Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EFADE290
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 05:35:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Rb4ljYUqydAyc0ubVxkJhyviX9Xjvj9+z5l3ylCaqr8=; b=qoog0ejcOYdpZ0E3SMAsaH2Xv
	QVKs1cJvHyKwppexAjFj6OeKUS5rsSszzCXHNR/5BPs71GZ3OReyIAIuQ3Wm8N4+6ltJuzMRladLO
	2fOAqhtyqjEvufmwY9rAN/U20ItmxPJ4z1dSiqdfUUL/NtZSt1WJt9Zh1q9utsIGRi0CABh2knAhQ
	oTx9CahGzEAvszoA9IT7CksoGGDYXxOWZpTEbIFB2RVnsXoAnYznAVQV4x2qXd1eOW90qlBvge541
	Vn5kgGI7In97uie1THTDkhR1pxDyS10KL7kf6PwIJoQyWtqKbvT0T4Gd57wiQCf/q7A5OO7xRrmrR
	cBv4bkbUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMOTD-0002Ne-86; Mon, 21 Oct 2019 03:34:59 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMOT2-0002NI-IZ
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 03:34:49 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 318BD6039C; Mon, 21 Oct 2019 03:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571628887;
 bh=fI7tTnZ9WhKA6PLwrHG4qATFBHcajJ5p+pnrXJfRTag=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hG5mgXE6cUFDxekZFIruNrN7BRBh68GopMGYkdyEr8mCo6gx9zOORNWcmNCS9KuvF
 clIWEvsjA0mWxz9/kzGZBb1pmLPN1xaCs9PbdTgBJWp5xgM563dixnSUmDE+xM0q79
 LdpJdWIJwmW+mY0sCtzNMSPj/VRswBACxcTkjg0A=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id B038E6030D;
 Mon, 21 Oct 2019 03:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571628886;
 bh=fI7tTnZ9WhKA6PLwrHG4qATFBHcajJ5p+pnrXJfRTag=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VWcoC3UUUfb1pJYIb6nwXlPxdc8u412Q8OmUxlkZRVMyxP3E1CX8xMg/Hf8iZlkd+
 ATJIBC8mXtB4R1FBq15H35/j+bzYui9p1F0z3/9GfiM2cuyjRgAWl3tZPfBLJcGoDf
 n2RWz7C9PnNbfI6SJTSA5mR/YQ0Y6E96M0HUGVRM=
MIME-Version: 1.0
Date: Sun, 20 Oct 2019 20:34:46 -0700
From: cgoldswo@codeaurora.org
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH] of: reserved_mem: add missing of_node_put() for proper
 ref-counting
In-Reply-To: <20191021020624.GE4500@tuxbook-pro>
References: <1571536644-13840-1-git-send-email-cgoldswo@codeaurora.org>
 <20191021020624.GE4500@tuxbook-pro>
Message-ID: <7c57d99e9240e1e7198b835a35089cf5@codeaurora.org>
X-Sender: cgoldswo@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_203448_636342_D0D17BEC 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,

On 2019-10-20 19:06, Bjorn Andersson wrote:
> Cc stable@ is used to assist in making sure your patch is backported to
> stable kernels, other than that the purpose Cc here is to indicate that
> specific people have been requested to comment on your patch.
> 
> So please skip these from the commit message in the future

Thanks for informing me of this, I've re-read the patch submission
documentation and will omit the Cc's in the future from the commit
message (other than Cc stable@).

Regards,

Chris.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
