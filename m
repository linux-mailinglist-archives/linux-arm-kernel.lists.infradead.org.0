Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA39E54E7F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ICQB+Gz3uZ3PGBK+Cfh9O8AlcIXRmkj1LnXV4cbTX4M=; b=N5gSdbA6f/Ic2e
	MboUaZKf4+TdRfV4pqGSa0vZMO20TbCJBPEA4yEANhK9s0AmUob1mECwirenrKTQehW9MOol8FZCT
	TzJHhWsXOZhqytZwgJp6NgsDt+GMHKX070NQfBT1BjoST0KBwGoisoACo0xVjOWwIwOpSscVkSe0l
	lHfAxEo2vLjIWh4AOmkg5xz7hFgvJHvmgyFWaAQrs+nbqo72BaZA2VjwfAj/WMEHXMhkjnyL2sWKY
	WWOHv0y8ol/gXQ4DGcNRpKbrm2u0N24IHQtKBfghbKhxe9y197nVWkZRZIakTtbMVdvl0y+b6D8Wu
	0A5XTR7lA1fgI73PamIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkJV-0007PQ-Lq; Tue, 25 Jun 2019 12:12:41 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkC4-0000Ch-EY
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:05:05 +0000
Received: by mail-lj1-x241.google.com with SMTP id x25so16013961ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nY+BqXk1DYP4ITKpAYz7cAkQx4t8hhoZE7RF+CM52r0=;
 b=zOmu3vsCxLVqISYOnmVYZhCs7CT53fctmhP8BlWKY+2gfwLTAcVkIFh7RgY7AgJOBU
 dbp7yEEk8IInO3AADrw7CJ/r+h85zuCWkraMFy3Xvak4UNlTdmcMfJG+9bZIRN19K3GD
 I43N/FNmLEFQjhyruUVuBSc6mxT8OxRk4QIp49IheuJ4xizgac3a/E5dGh0LdbEhixkn
 kEOXv81gUEirOHvyqIc/5g9Jo4Q/T0EqPSsERz28ZfrLyGiWrHTLhQ0AvnISTdSzadU6
 o/hBoVJv14VtEzb6W1SqnIcS5TIqnYUKwjm0YSBY0ql/qY2HOfe0Ae6REzBIMEhAacGq
 N5SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nY+BqXk1DYP4ITKpAYz7cAkQx4t8hhoZE7RF+CM52r0=;
 b=AxHLbTcn//F+VQJR0xdixtZL370UeYop0gK0qTw7VOuX3xlOWHYeZx3slIYvxTE/0p
 jIWDW+SYzP3eHYGitch2UaYlBa+oYWg22RfoUPFlbgGdmwqhX9AHd+IIV2uFvsAEopWd
 CwaN0zllPLdM9xCBc5AsCGXldnSp8ZL7hAvxAuQEb4MbMyUCRMyXVfh5t5igRjRi0HVK
 YKgw1+upIUCXhEdt9VQaJ8383/QUL3MOLFBzuenPxwlokmEYDFcFAGEhzym5/sSQAV0k
 TXXqkcRVBTJfIcggYddXtgnk5o2b45YT+UnFfgE/6znRao/Pu7rhY/BlHC7rdSgOE1Jp
 uU8A==
X-Gm-Message-State: APjAAAW6ox3quR0QTMniSAlR05JBqdZuFu0zcR5QN5kk2k2o/+SUwYub
 bx3fee3MDragLe78+sUY1hid2g==
X-Google-Smtp-Source: APXvYqyR9IfrHikX5KfgDSjiJreYpoSpQLjGYC446cIDL9nWxOpmG+cH10oHQdDdQZjL1au08tK74g==
X-Received: by 2002:a2e:8847:: with SMTP id z7mr22326937ljj.51.1561464298849; 
 Tue, 25 Jun 2019 05:04:58 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id u13sm1958867lfl.61.2019.06.25.05.04.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:04:57 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:46:01 -0700
From: Olof Johansson <olof@lixom.net>
To: Simon Horman <horms+renesas@verge.net.au>
Subject: Re: [GIT PULL] Renesas ARM64 Based SoC DT Updates for v5.3
Message-ID: <20190625114601.emnljkmjuw7tlaa7@localhost>
References: <cover.1561107232.git.horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1561107232.git.horms+renesas@verge.net.au>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050500_646147_5239E879 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 11:16:27AM +0200, Simon Horman wrote:
> Hi Olof, Hi Kevin, Hi Arnd,
> 
> Please consider these Renesas ARM64 based SoC DT updates for v5.3.
> 
> I apologise that this pull request ended up somewhat larger than I
> expected. It would have been better if I sent what was ready a
> few weeks ago at that time. However, by the time I realised this
> it was too late.
> 
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-arm64-dt-for-v5.3
> 
> for you to fetch changes up to f6130381e2a20b0503838477462a3f55f7672434:
> 
>   arm64: dts: renesas: hihope-common: Remove "label" from LEDs (2019-06-19 16:32:13 +0200)


Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
