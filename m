Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB08113787
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 23:22:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SosaipE1iYBUxFS3qA5y7LDPBBDFeHY3XmY9z7F6Sf8=; b=Kf0PhQr5zEEIjU
	MP4chKJzdLFSBA+RkW2QBi6RVSz8Q3g0+8/4kAtJj0E8pTg2GD32epfPpGxhkn44byl/5JcRgLB4R
	0bKiYka8tizj3Ka9F6S/rwT9yuNyX6VqA4Hh2jgT5RjLchMHFQZ0kk+kS1FjEiTjEMzNklW9VOHNl
	ydVOVDRhiUJLwo+zteFBDmB5Csr1F/5ytpIjrHjnBVUjkThvIgP5dCmahdbO5h2K+X5r+nrkdx0SV
	P1ghivkV4UTi+m9k+AThbEhhFK/9Io1kK1Y+F6k+hMaMZJQlwogJK/akm3SyQ/zm6nwEtQQEDU3Ti
	a+jheOivC2acpr44wIvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icd1t-00028Q-VH; Wed, 04 Dec 2019 22:21:53 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icd1n-00027f-Bl
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 22:21:48 +0000
Received: by mail-oi1-f193.google.com with SMTP id b8so814049oiy.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 14:21:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0YMXPK0MWLWyfIyxG2mVwtUXfMBfXzC4dJTyDwiUSCI=;
 b=LxCVu2AamyRNqNYybf/e6CNAHeQOz+LyhH2ePLC8lxm3AH1v+96ru2/sgvz1Dq8M3M
 tODRxbbyXgeNrpWiRJ+ffMg0oals9PhuPzd6Cr0aCRDp4OFHs1h1a8xvBN/AtgEI0Vq5
 084QN1nl4GCzVB6cKssBF98e/mcL0SzajQSdqHSUiEjhOfCQxsXfNgCWUPcjEEYmLmJD
 AoOefb5MbNwDW4XwernBttycAR1VuDymxyU1snEg05UPqetWOwaNxjYW3/U7BD19B5rc
 ENzxBD7S24thnGUBuxvmt7/5TeGdaRnfmhGTyeSDRkja/vZj4fuGX2sfbH3jxfOvxxFq
 vyFg==
X-Gm-Message-State: APjAAAXXF0ZvFDa58aZXkrLYKkc5yPJFiYCgnDnk9bTXHxKQrbnGitG7
 A3biZS4L9JwCPkwuMM13OA==
X-Google-Smtp-Source: APXvYqxd6OOdNmobqARjtlfaN0LLudPr5TKfnJ4uyLbrkH6cblTCYO0/yUZjNuu/J1TAHun4I2prDQ==
X-Received: by 2002:aca:d5d3:: with SMTP id m202mr4421120oig.161.1575498106026; 
 Wed, 04 Dec 2019 14:21:46 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y24sm2784605oix.31.2019.12.04.14.21.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 14:21:45 -0800 (PST)
Date: Wed, 4 Dec 2019 16:21:44 -0600
From: Rob Herring <robh@kernel.org>
To: Arnaud Pouliquen <arnaud.pouliquen@st.com>
Subject: Re: [PATCH] dt-bindings: remoteproc: stm32: add wakeup-source property
Message-ID: <20191204222144.GA25718@bogus>
References: <20191122125402.14730-1-arnaud.pouliquen@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122125402.14730-1-arnaud.pouliquen@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_142147_403479_A74A42E6 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, linux-kernel@vger.kernel.org,
 Fabien Dessenne <fabien.dessenne@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 22 Nov 2019 13:54:02 +0100, Arnaud Pouliquen wrote:
> If the optional wdg interrupt is defined, then this property
> may be defined.
> 
> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
> ---
> This commit is related to the merge conflict issue reported by
> Stephen Rothwell: https://lkml.org/lkml/2019/11/21/1168
> ---
>  .../devicetree/bindings/remoteproc/st,stm32-rproc.yaml          | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
