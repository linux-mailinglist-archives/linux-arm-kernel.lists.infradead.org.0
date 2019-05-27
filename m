Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AA12AEE2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 08:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l2iJ7yTE01Km2XNO/PPgft1fJ/dWkBnWrlYHQU+ms/Y=; b=rnm+tTSPZUplem
	MDEVVhbn7p1haAgXB4pvjbujgrwga+iJB+AiAtIoxH7OqvcQrwkzqHEVA7Q4s3TaA5lsAO1GSvaxE
	nC1PEcgiy5JJJ/Bi6bRyZQiaIyh4Z+68M80v9Hq5/AqHLaNkRBpkrrngFbJ4U3rXFG/kgmQKTfXQf
	3g6TBefz8h4h5Fahzdyp8vpwsnaWQGdyvYQUw0h1QjtrhWGOndePhbRnnyKMnDhuEG9Y3rCKKYTiD
	EU2EA60Oax4W6Q8CVR15AgJUTLzpNU35GkboEvflWJ7upIll9m/QcM0zM9ANN1D/INc+1ELXYJrfQ
	G6yjVoz3y92W6Y9FIOpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV9Ll-00049D-GH; Mon, 27 May 2019 06:43:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9Lf-00048t-63
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 06:43:08 +0000
Received: from localhost (unknown [171.61.91.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E4CD20717;
 Mon, 27 May 2019 06:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558939386;
 bh=gyLqhVIAkj4PBMbVcc0X9M/enzefZ96sSBNlv98yeks=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hg+sRuGc6Ky4Jl+fG2LhCGGpkoz0sQG/2vdODooT/gDAg+tYmXcbEwPO5RuYUPT9Y
 4dN6slql8O5VZEdQMtFRlAkUtM6eo4Hh//ZANQaiIvbXInxBwpse3F9IL7fFT1VAl6
 LodFA0Onl6KZtMwtohs+6ssdM6XCDAJ7D1EZ3akY=
Date: Mon, 27 May 2019 12:13:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Weitao Hou <houweitaoo@gmail.com>
Subject: Re: [PATCH] dmaengine: use to_platform_device()
Message-ID: <20190527064303.GG15118@vkoul-mobl>
References: <20190526071324.15307-1-houweitaoo@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190526071324.15307-1-houweitaoo@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_234307_242682_DC214F57 
X-CRM114-Status: UNSURE (   6.76  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26-05-19, 15:13, Weitao Hou wrote:
> Use to_platform_device() instead of open-coding it.

Applied after adding stm32 driver tag, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
