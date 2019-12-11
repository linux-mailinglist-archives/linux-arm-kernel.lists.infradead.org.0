Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F7E11BB1C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 19:10:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VReVjmabitBy+BLTxrLD7A/HkZeDK7CMbFrlgUyhVNA=; b=el9jDWVUxqCJsq
	y/fsGapyzFxM5GVwQKdG+DiHGSlPsGGEiXp6P/oaek/UbYBAbo0HuEWGdPEnXNDXqZ+woXj6o//YW
	LMex31xZ7y2VyGSXz3IHwW827Yiu3srM/zwwzLNHPwlge2jgKKMLte/cLVTOmfkGVncjaUCFjUl/W
	Wzr98jKSv52QIxB3cC1ErRWsurT8tejKtTkfDReUR6tekdHJ602C4TEb77NGyEfhwdW5rpLigIwzn
	wKtXXy7f84PgNPzZiMS7f+gpOY2qDvnsT+lxOCattp+bNsAwZGkKQ/qcWdis4aD/POZyYgOn1418t
	f2zIlrs92M8LIgcOVpwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6RF-0005GK-OE; Wed, 11 Dec 2019 18:10:17 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6Qh-00052X-Uu
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 18:09:45 +0000
Received: by mail-ed1-f65.google.com with SMTP id cy15so20226184edb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 10:09:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ILp2Lf5P15MYbkV7ek1FJDOE0NtqRWE6/NU2Ipca/04=;
 b=EuJeLz/j59IAZzGkdFQfBX1in2q8msWQ8oWB4FfaWETqu9BUzsZu6PTIKM3gwVj4AZ
 8RwTmlJIin0otj1yHp/k1kAx8ctNwy+2/0VPoQmBvkbgVld7Wy3sFzRpUb+dwI8OqrvY
 sWAPVCFlMdSmwI1BUFD+ngNhwSEfGxH+J4qVm8BXJajHbSn7/esQPWDfV3cxMz4oYd/S
 vglkWGYlzL38XzOMZkXqve6v25OvVOQYn9imIeR/OhlxoPVqegugB9l+ddVr9A1l580h
 klYbmdLsB9F2Zp1E1145CZoKbKvJE36uKEMmsLgat1KgNlGI/uLZPAqzxy1NWtDYhKYS
 DtSA==
X-Gm-Message-State: APjAAAUAG7pzBVREF9JJTnbj8NhKqjkNDroS7TywzydSasmY3+amjfLu
 UcrfWXU733JeHJrMNVEsJS9NDZ/m
X-Google-Smtp-Source: APXvYqxbSc/1pMrFp7jj1xrbhKuiKUxJi3QB/0yA0bRIjtn2bO+hRfiUZUax+luAzlnxU6ZmzIqDVQ==
X-Received: by 2002:a05:6402:1350:: with SMTP id
 y16mr4911656edw.176.1576087781772; 
 Wed, 11 Dec 2019 10:09:41 -0800 (PST)
Received: from kozik-lap ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id o30sm64065edc.61.2019.12.11.10.09.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 11 Dec 2019 10:09:41 -0800 (PST)
Date: Wed, 11 Dec 2019 19:09:38 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH] ARM: exynos_defconfig: Bring back explicitly wanted
 options
Message-ID: <20191211180938.GA6690@kozik-lap>
References: <CGME20191205200017epcas5p446f5f29988e34d939601287a7517fdfe@epcas5p4.samsung.com>
 <20191205200006.5164-1-krzk@kernel.org>
 <08916577-3218-ecd4-a8e2-ab4fbff5332b@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <08916577-3218-ecd4-a8e2-ab4fbff5332b@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_100944_004759_E3FFA66B 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lukasz Luba <l.luba@partner.samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 09:01:07AM +0100, Marek Szyprowski wrote:
> Hi Krzyszotof,
> 
> On 05.12.2019 21:00, Krzysztof Kozlowski wrote:
> > Few options KALLSYMS_ALL, SCSI, PM_DEVFREQ and mutex/spinlock debugging
> > were removed with savedefconfig because they were selected by other
> > options.  However these are user-visible options and they might not be
> > selected in the future.  Exactly this happened with commit 0e4a459f56c3
> > ("tracing: Remove unnecessary DEBUG_FS dependency") removing the
> > dependency between DEBUG_FS and TRACING.
> >
> > To avoid losing these options in the future, explicitly mention them in
> > defconfig.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> I will not mind adding:
> 

Applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
