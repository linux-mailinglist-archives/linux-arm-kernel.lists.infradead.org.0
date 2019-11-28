Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4794910C0F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 01:25:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lR72HNY//9kpuIdz/9l0Xrj3MoiSamggAL5z6uXABlE=; b=T7tipaZTpmpPgp
	CnoKA5PtNcmmP53NajSG9NAOToW6asjJXddbTM4uxr5L4iy4KJB8q/2alzkjQ2kqpaURRP/Qo7C4a
	NvRQmUDorJCB72kHHEKMNjniYrXZZZRs3hxsPoM+dAXJ55iDvnuBYgO1WqIVUZW3WM0oaMJq+8E/W
	WH/izfQK8V1a2KCVlQsZxksEo9Ktc+eBBBXQcmO+8rpwe/49mmJDS6GZJ6lXVdF4rd36M9BdZmF4R
	q6mjAIvdkBZkuc3UGUd5KS8pkzSv14wIEMWDo8150YGuno+dun5v99yNE38vgPNT3FAPySJxuXJ5p
	7sZtfWJzQY7oqM/MRP6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia7cU-00027Y-SC; Thu, 28 Nov 2019 00:25:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia7cM-0001Yz-I0
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 00:25:11 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 960D821555;
 Thu, 28 Nov 2019 00:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574900709;
 bh=TSWGxtFnEBAUSbjy6y1UJSnL0fiDiivQOod45cwNQDU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vv91YfHS3njFVAarOYfXa3zub5sETwPlq7s4BybuhtyRAR5aNWos1ybejuP240QIG
 asmaFXBMvgE9NPHgA4Ma1d5MtnKY7cWbb3dn4wXRccG0/CA8X69w+K3edHA4rJPGMh
 QDYa7Q6oTPzyEPr5q9RTx7UGze5B91vNlMyq3XGE=
Date: Wed, 27 Nov 2019 16:25:08 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v4] crypto: arm64/sha: fix function types
Message-ID: <20191128002508.GB303989@sol.localdomain>
References: <20191112223046.176097-1-samitolvanen@google.com>
 <20191127235503.93635-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127235503.93635-1-samitolvanen@google.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_162510_621678_14ECB3C2 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -3.7 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 03:55:03PM -0800, Sami Tolvanen wrote:
> Instead of casting pointers to callback functions, add C wrappers
> to avoid type mismatch failures with Control-Flow Integrity (CFI)
> checking.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> ---
> Changes in v4:
>   - Removed unnecessary returns.
> 
> Changes in v3:
>   - Removed unnecessary inline attributes.
> 
> Changes in v2:
>   - Added wrapper functions instead of changing parameter types
>     for the assembly functions.
> 

Reviewed-by: Eric Biggers <ebiggers@kernel.org>

- Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
