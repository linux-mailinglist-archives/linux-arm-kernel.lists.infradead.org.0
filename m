Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F001E33E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 01:53:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=32myJZsq+tHL1FwcaIOoY5n8vuPTyaizMOg9Il+pcXA=; b=U9DCIP1xeGJ+t7
	qc/6pn2pzv+wuHwH1vsNJYkJm1biEMjlLIHbg1tWKokezhg0DRPQPO9imd6Bh+e9frzrpbZuVa61e
	pdXsWYuJFrM/n6nbEnxu+01Li6qiE2MY1MtmDmfY91pBIv9YsDdxLrjq5V/urDjJcRtW3CgQtFTDv
	RjCfX7cj+EP8fiHzr+nS+OMuZdnNH0mkIavDVrNcXcEsqSc3cGC/ukxoH0tiIdMy6Pqpe9l+cQ99s
	z+TYTCUFOUM1xM20Oknn6P23H21nDDhlCLQPVJZNvR1aXykasKqKsWjuov88ERCdPWbzJqFicTy63
	BeT6V0jV0iy6ErNWTs5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdjNr-0003Rc-HB; Tue, 26 May 2020 23:53:23 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdjNh-0003R6-KP; Tue, 26 May 2020 23:53:15 +0000
Received: by mail-pl1-x644.google.com with SMTP id m7so9378178plt.5;
 Tue, 26 May 2020 16:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Zn2rot0EJVC/F9TI89vcU1F8o/pKxmCqY4XQMCAo+m4=;
 b=uADltm6w1G/hYcnF1MHKtRnFgwgv5Xb+punhDnVMashu2D+HjRzJ+OMqecC8RX2TRm
 qxmh18DzVqCeIdI+cDXDOBhTJcp2DtcILt7iFWcwb9tgDNCzOro6vT6McugFrhlvfzm3
 6DemceEQS7p4ZG6k6nqZBuci7Qk8ASf/tdb78a5tOCBBJYyGGL+UWyQZlvEGfWRV8pxo
 d9RuO3ZOSlYjPMiFtuQziIwBoSyOioJgQVbo9rLX7/cSQ7oqt16ZnYqA0AMo7P5W/xc8
 rQ3ppd/oEVezQ4YatafPZaP2pUCAb+tZMdSyZ0dGnpxFDDNIdqwNJ2VbYfzldwIMPJdf
 BvbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Zn2rot0EJVC/F9TI89vcU1F8o/pKxmCqY4XQMCAo+m4=;
 b=o8ALQG6SwI+Ub466BuCV4wHOwv9hCB4QxJeR9RiemEFsOHpYKtggr76bPTBbMI9XNj
 SoDvDfPcTU9qpu+Vletqgr+vA3RlDdRwXVbZFkBB9mlM1BLFm7V/uWSVlM/PO0yV4pAX
 G36p4gswORKvgfo7D7cIaNdQuodOtvnt8zUsXEAm2UyTQQ9nkYnTkfBcbcdz98w+Aom6
 VDOMU3J504a0ZEceD2cyK2PeXW0T3Rr7ikww9GGf14G8KXkUX1LiCVDpvOHSpMBa0Ats
 NIiMdaW3Dloxorh1VJnnF+4bNUYDl/exfnji2AREjHGiViuuDm1vbsi4r/x+b9h4sBKB
 XkCA==
X-Gm-Message-State: AOAM530AQbXPKv934zABaHorlMo8xRqZV3+BUEXFkT89wU7UfVjisTF9
 bWgAmmCqiGxiBVgJLffzbbs=
X-Google-Smtp-Source: ABdhPJxBp1OGT4pycrI1+BFnzgLt3BtXbfG+QglwOXmGSDwmTanTZ9BjZzlOfeU7FZlAmz5To1PenA==
X-Received: by 2002:a17:902:c40c:: with SMTP id
 k12mr3229652plk.11.1590537191974; 
 Tue, 26 May 2020 16:53:11 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id y14sm494417pjr.31.2020.05.26.16.53.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 16:53:11 -0700 (PDT)
Date: Tue, 26 May 2020 16:53:08 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 1/2] clk: bcm2835: Fix return type of bcm2835_register_gate
Message-ID: <20200526235308.GA2330247@ubuntu-s3-xlarge-x86>
References: <20200516080806.1459784-1-natechancellor@gmail.com>
 <159053652408.88029.5210144839543172586@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159053652408.88029.5210144839543172586@swboyd.mtv.corp.google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_165313_688255_2DC94774 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Sami Tolvanen <samitolvanen@google.com>, linux-clk@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 04:42:04PM -0700, Stephen Boyd wrote:
> Quoting Nathan Chancellor (2020-05-16 01:08:06)
> > bcm2835_register_gate is used as a callback for the clk_register member
> > of bcm2835_clk_desc, which expects a struct clk_hw * return type but
> > bcm2835_register_gate returns a struct clk *.
> > 
> > This discrepancy is hidden by the fact that bcm2835_register_gate is
> > cast to the typedef bcm2835_clk_register by the _REGISTER macro. This
> > turns out to be a control flow integrity violation, which is how this
> > was noticed.
> > 
> > Change the return type of bcm2835_register_gate to be struct clk_hw *
> > and use clk_hw_register_gate to do so. This should be a non-functional
> > change as clk_register_gate calls clk_hw_register_gate anyways but this
> > is needed to avoid issues with further changes.
> > 
> > Fixes: b19f009d4510 ("clk: bcm2835: Migrate to clk_hw based registration and OF APIs")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1028
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> 
> Thanks. Applied to clk-next.
> 
> > 
> > base-commit: bdecf38f228bcca73b31ada98b5b7ba1215eb9c9
> 
> Please don't base on some random linux-next commit though.

Sorry, should have just used clk-next directly instead of the HEAD of
linux-next at the time. Just hard to keep track of all of the different
maintainer trees so it is easier to just use linux-next.

I do forget to use the output of --scm from
get_maintainer.pl though, I should use that more often.

Thank you for picking it up!

Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
