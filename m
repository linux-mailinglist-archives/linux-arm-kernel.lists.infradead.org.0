Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C922B18DA0E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 22:22:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1LWmla9PQm5mqESMj+dEaGJEfKOvhpQgaQNFwzfH4fc=; b=hSejiUDFwg3h9f
	ed2cXf2m4LBIR6m8dRVNrQzZYWG6KLGjPIi8XFf3VLFhGHvxtknrNfxccAekQYCFspphKEdqf4pCN
	dxIbTiBfCJOe+aBBP/47Yo3LOn/OZLCazWHWDtQxPng7IsqUKEjPZUzDLfc3/XKY/FwNNah1/Iirb
	Xn0xBHQDwoSWgeOJI6/FkQx0ClNTSxQvQufuDJsn0oXUmyetl18OxLY/UpOcP1qYqolKUPUbhKUp0
	azFqU43rXpi9T5vNJ9nYAWqiw8ltGAqa/qjQtnGZ+OsKORW8zbQu+hMcg7mCOccQv5bOTMdozIKWo
	69H49Y7hU+hxO6Ql7GKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFP6H-0007BZ-Sb; Fri, 20 Mar 2020 21:22:41 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFP6A-0007B7-4d
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 21:22:35 +0000
Received: by mail-ed1-x544.google.com with SMTP id z3so8772906edq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 14:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KONxL1gLly0kDknOxQGf1bky+nzLW4IJ8avrVIhiwBc=;
 b=MZOdI2m/LjSObXiGz8zmm+Snpx+PSfA+sycrJpO0dB0yFTuWJC96L3teFfNB/3o/6O
 PYVmv/I2gExBSVOTSAGCHG/Qzx9T0XAwlHdGbMoufInB+Iain6qVA4UDauvbeykHjQH/
 zPuugubn8aLwRmN/aGEOdcPOef0WU9pzBeX+p59QuU4S0Ol/9Z2867yR/R0APlhFULf0
 PIdxurTgyeiA0m2tyMahNWUEAIMr6d+QfpIm+GGkSm9esVDKi1oeDqNDfGc5kvxnYZTf
 +dZG9O2CPoes01/4cyucqjRwNqEWiEjV/NqWs9lJHhIzXaiGPGMGT1y5e4AA8hrgb8J+
 Ixiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KONxL1gLly0kDknOxQGf1bky+nzLW4IJ8avrVIhiwBc=;
 b=NuVXEm2OIHyQNO1lyDkIcwO07dItbXg8dSEPWTUoHbPkQiNv3MtJ7QCp4oRF9h/L1K
 Tq2XGrMvf8JYV1D74GjalW3K5ctyUih7I+ln0boCYvlmC460m4yesshQ2cf+lx74odnN
 tjhHMeK/z8dhnPXIdxGl7xNd0+KOA5CqMRCouLnHjIox6UuMPICzPdwBZ+1tCBf4CPEx
 C0zStPhiO5pS5OULyvby/OHppMvnJdnGc1GP2MBKmwfn5A/SHnrZiHNkMfLNeAS4w70a
 JilMoSPuiGJd5b/WwDOUi93Kp8v0ttsnF2Rkq4AUmu5oDb7RpfAVV1gCyJgfirjUM6rm
 zfCQ==
X-Gm-Message-State: ANhLgQ1qkgce9G04ftUdB60bAMAHRlkE+L6zImLRgNQ1HXczO94QTrpR
 sZ/7Dm79CKvI/401nxprkU44w7LGQCVnpT4tKtH2Kw==
X-Google-Smtp-Source: ADFU+vujvXgHbxTCcC9K1V64O9XtDcJZGReYC5vYcwd6qybiafpANiW6C/l9L/mbLzpY4BsBQLIigzcZLdxiAqV7pxc=
X-Received: by 2002:a17:907:420b:: with SMTP id
 oh19mr10309566ejb.50.1584739351080; 
 Fri, 20 Mar 2020 14:22:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200115143322.214247-1-james.morse@arm.com>
 <20200115143322.214247-4-james.morse@arm.com>
In-Reply-To: <20200115143322.214247-4-james.morse@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 20 Mar 2020 17:22:20 -0400
Message-ID: <CA+CK2bAEyp7Kcc_qEOfchNvyEHSVnjAXD-LB9NGbUOJ_xZV1AQ@mail.gmail.com>
Subject: Re: [RFC PATCH 3/3] arm64: hibernate: idmap the single page that
 holds the copy page routines
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_142234_259275_10766E13 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

Sorry, for a slow response.

Soon, I will send out updated MMU enabled kexec series which will have
this work included. I appreciate your help with this.

> Today the address it uses for this mapping is arbitrary, but to allow
> kexec to reuse this code, it needs to be idmapped. To idmap the page
> we must avoid the kernel helpers that have VA_BITS baked in.

Makes sense.

> Convert create_single_mapping() to take a single PA, and idmap it.

I like the idea of using idmap in both places!

> The page tables are built in the reverse order to normal using
> pfn_pte() to stir in any bits between 52:48. T0SZ is always increased
> to cover 48bits, or 52 if the copy code has bits 52:48 in its PA.

I do not think this will work for kexec case. In hibernate we map only
one page, so we can allocate every level from bottom to top, but in
kexec we map many pages. So, upper levels might already exist. I think
we will  need to modify the loop to still go from top to bottom.

Otherwise, this work makes sense. I will integrate it into my series.

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
