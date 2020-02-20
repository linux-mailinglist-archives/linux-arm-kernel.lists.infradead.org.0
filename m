Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA269165A24
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 10:27:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R9y1I+C8t3HwPOnUkEx3/cU1cAIFFcnl5P36Y095UXI=; b=RzEgQg3MPCSoV7
	46ma2PNhOzk+WXDs0qky+dmzyuXs+9HwpVkSnH8eK/5FleeFAuYx+LSnUPWprX3eH+bFvtVQi8LLA
	gbzI9xjCzWEK8yMMJULHRLcieJxf6nfnaBSn3+xcEGPtND5eS9Y/ZU+64u485drbiOehNUTbNU2Bo
	42tatktaBTKYVc4qjpj6PRyRYJl+H7EJcEFBrYu1NZ0DFktQQy5jt8OV27oUuoX2z7r0ZHGlMI/gN
	6zWygekA4Td92BT8RFqBSVGKYiTdRA1+RQV1GwB9Zaj7BBhcu8uDVaame1LNAdmTJ4Leid7Y14uEy
	BUOpyvQz9AqN0noR0szQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4i7N-0004QK-I0; Thu, 20 Feb 2020 09:27:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4i7E-0004Pm-39
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 09:27:29 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C9EB820801;
 Thu, 20 Feb 2020 09:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582190847;
 bh=XgKAWIq9e6qAgZoVDhw9r2LNsJdmFShHckDTrw/YwQY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=a0hINo/Z0z0lHhBBiiUKy1fk51vRDZ8cxOvOQ0UFCdwyy5Hd9E/z9sUBe2gYguR0s
 eZMkfFLEY84H4JrrB24U/XbanQSWUBvjHnLYKv4zxSawW+Zthkn4+fOANXlAYOv3XF
 LicQQ/pCuojfq6hcKl7i/bxGdFc90S6Ppl5jJDlk=
Date: Thu, 20 Feb 2020 09:27:22 +0000
From: Will Deacon <will@kernel.org>
To: Scott Branden <scott.branden@broadcom.com>
Subject: Re: [PATCH] docs: arm64: fix trivial spelling enought to enough in
 memory.rst
Message-ID: <20200220092721.GA12780@willie-the-truck>
References: <20200219221403.16740-1-scott.branden@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219221403.16740-1-scott.branden@broadcom.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_012728_157589_AD379D44 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jiri Kosina <trivial@kernel.org>, linux-doc@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 02:14:03PM -0800, Scott Branden wrote:
> Fix trivial spelling error enought to enough in memory.rst.
> 
> Cc: trivial@kernel.org
> Signed-off-by: Scott Branden <scott.branden@broadcom.com>
> ---
>  Documentation/arm64/memory.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

I can take this along with the other arm64 fixes I have pending.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
