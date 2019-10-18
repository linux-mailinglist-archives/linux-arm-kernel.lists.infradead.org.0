Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1645DDC76C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 16:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:To:From:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aM3mIhChY+gQjYMcRPaXyi0MzL9VYvKiJYs0/AMMfyg=; b=BMexHYpHYojUSD
	RSnnQIe0PzyJUnkBxB5UG0dFBtHTwObOm1NVJcdtfOtGs9o7h8KnuQ058DiFJQvG3fbmoalZfGE7S
	PXzKP5JgwdtxKiwTXyYS9yQUmhnGeajxNaQFyivNdjoXDqLR6KTRKaSgRwzHAyasLBd+06sF5vtWF
	1z38++VU52U4CgyPyBPBke6X6TxB4asadldIT5gKMYLLLyKsNRJsq3jKvfS/Pj18U0lnVri2Vnebz
	yMQeQ2lzaorZKGRJa5uBFrV9pCup+3kJRFxMaWrW+DEyU4RIDVxOqBnyBtTve7scwI6oaxPEOxELB
	h0XFGEeWSX34RolDl5xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLTK1-00044F-Pe; Fri, 18 Oct 2019 14:33:41 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLTJs-00043c-3h
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 14:33:33 +0000
Received: by mail-pf1-x443.google.com with SMTP id q12so4010314pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 07:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:from:to:cc:subject:user-agent:date;
 bh=9FdeX//RORLUFpjlpqzmkWcuma9KNw3Y4e/bxxikMGs=;
 b=mgZQm0sR8WKQrmUO/Ec704rT1C8wtIciVL2b+nWpl29cgS7J33UQ+t7jNOVMR6jF+U
 HWGLTBl6M8wNDuU43rK33SZdn5y+IWVauGkxXFYBzcNcsiN5dQzXV/G31uWt17CosPZZ
 0eGrFDR6iOrxg05bdnB8FmUzVEDvTXB2AZ19c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:from:to:cc:subject
 :user-agent:date;
 bh=9FdeX//RORLUFpjlpqzmkWcuma9KNw3Y4e/bxxikMGs=;
 b=OtYcRkGzmjmXMayTZMToAXlhSE0hLhsd9JVfvBH4+oyAVVNRwFapQzYKKPczYhE7Pq
 f1Cegwto8tSDhnyrEA1ADRIN3mTtRBcmV0jW8aAlWYJVueTMK4+KBG8qUjBT6ZtIxBig
 O6oQRbEGJjjK+pvSl/Q2KaKENo/hTZNlKQ7a+UpW3Pt58LiZ7Te/0gXGFNDWLIqGFLOU
 sPkbBm96xcvs/n4v1rTx9ptRXIRVjNyDR5AOpha3Oij0jlocxynjZk6cIR3BD8Ny88Jv
 lJiw/KCXQzNgkUC1yoQ/shVEMxO2hYtFpcQJWbN0c0ed8BHynNoVM/aW3Nm3Tbe8zOgy
 tlGg==
X-Gm-Message-State: APjAAAVWqX3Q11KcBo0gRW1NG3tVYONzfinSYWAOlqcNVOmd4uao/NfY
 THoobJrAJleGZ8R510CiOt1QJQ==
X-Google-Smtp-Source: APXvYqxSlXq4d41beIN21IYEkdivZabzNQu+TLotvUAaXFaTv2YNZH6ZxASkgzaeHk7uRZoKe62kbQ==
X-Received: by 2002:a62:685:: with SMTP id 127mr7241020pfg.227.1571409211238; 
 Fri, 18 Oct 2019 07:33:31 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id y22sm5468041pjn.12.2019.10.18.07.33.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 07:33:30 -0700 (PDT)
Message-ID: <5da9cd3a.1c69fb81.95e9.e5e2@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <c9285391dbbe936d3f242bdd0d226b93@www.loen.fr>
References: <b3606e76af42f7ecf65b1bfc2a5ed30a@codeaurora.org>
 <20191011105010.GA29364@lakrids.cambridge.arm.com>
 <7910f428bd96834c15fb56262f3c10f8@codeaurora.org>
 <20191011143442.515659f4@why>
 <ac7599b30461d6a814e4f36d68bba6c2@codeaurora.org>
 <5da8c868.1c69fb81.ae709.97ff@mx.google.com>
 <c9285391dbbe936d3f242bdd0d226b93@www.loen.fr>
From: Stephen Boyd <swboyd@chromium.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: Relax CPU features sanity checking on heterogeneous architectures
User-Agent: alot/0.8.1
Date: Fri, 18 Oct 2019 07:33:29 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_073332_150852_42092E06 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>, rnayak@codeaurora.org,
 suzuki.poulose@arm.com, catalin.marinas@arm.com,
 linux-arm-kernel <linux-arm-kernel-bounces@lists.infradead.org>,
 marc.w.gonzalez@free.fr, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
 andrew.murray@arm.com, will@kernel.org, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Marc Zyngier (2019-10-18 00:20:56)
> 
> If this SoC is anythinig like SM8150, 32bit guests will be hit and 
> miss,
> depending on the CPU your guest runs on, or is migrated to. We need to
> either drop capabilities from the 32bit-capable CPU, or prevent the
> non-32bit capable CPU from booting if a 32bit guest has been started.
> 
> You just have to hope that the kernel is entered at EL2, and that QC's
> "value add" has been moved somewhere else...
> 

Ok that's good.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
